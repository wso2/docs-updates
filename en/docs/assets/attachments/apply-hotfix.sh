#!/bin/bash

#
# Copyright (c) 2023, WSO2 Inc. All Rights Reserved.
#

set -e

PRODUCT_PACK_PATH=$1
HOTFIX_DIRECTORY=$2
USERNAME=$3
PASSWORD=$4
CURRENT_DIRECTORY=$(pwd)
UPDATE_BINARY=""

export WSO2_UPDATES_SKIP_CONFLICTS="true"

function print_usage_and_exit {
    echo ""
    echo "usage:"
    echo "{$0} <product_pack_path> <hotfix_directory> <username> <password>"
    echo ""
    echo "product_pack_path:    Path to the product zip"
    echo "hotfix_directory:     Path to a directory which contains hotfix zip files"
    echo "                      corresponding to the update-level of the product pack"
    echo "username:             Username"
    echo "password:             Password"
    exit 1
}

function validate_os {
    os_name="$(uname -s)"
    case "${os_name}" in
        Linux*)     
            UPDATE_BINARY=wso2update_linux;;
        Darwin*)    
            UPDATE_BINARY=wso2update_darwin;;
        *)
            echo "UNKNOWN:${os_name}, Supports Darwin and Linux only"
            exit 1;;
    esac
}

function validate_inputs {
    if [[ $# -eq 0 ]] ; then
        print_usage_and_exit
    fi

    if [[ ! -f "$PRODUCT_PACK_PATH" ]]; then
        echo "ERROR: Product pack '$PRODUCT_PACK_PATH' does not exists."
        print_usage_and_exit
    fi

    if [[ ! -d "$HOTFIX_DIRECTORY" ]]; then
        echo "ERROR: Hotfix directory path '$HOTFIX_DIRECTORY' does not exists."
        print_usage_and_exit
    fi

    if [[ -z "$USERNAME" ]]; then
        echo "ERROR: Username must be provided."
        print_usage_and_exit
    fi

    if [[ -z "$PASSWORD" ]]; then
        echo "ERROR: Password must be provided."
        print_usage_and_exit
    fi
}

function extract_product_pack {
    directory_name=$(date +%Y%m%d%H%M%S)
    mkdir $directory_name
    unzip -q $1 -d $directory_name
    product_pack_directory="$directory_name/$(ls $directory_name)"
    echo $product_pack_directory
}

function initialize_update_tool {
    cd $1/bin
    ./"$UPDATE_BINARY" current-state -u"$USERNAME" -p"$PASSWORD"
    cd $CURRENT_DIRECTORY
}

function validate_hotfixes_sequence {
    cd $1
    count=1
    for hotfix in `ls $2 | grep .zip | sort --version-sort -f`;
    do
        hot_fix_number=$(echo $hotfix | sed -n  's/.*-hf-\([0-9]*\).zip/\1/p')
        if [[ "$hot_fix_number" -eq "$count" ]] ; then
            ((count=count+1))
            continue
        else :
            echo "Hotfixes are not in sequence. Please check whether all hotfixes are present in the given directory."
            exit 1
        fi
    done;
    cd $CURRENT_DIRECTORY
}

function install_hotfixes {
    cd $1/bin
    for hotfix in `ls $2 | grep .zip | sort --version-sort -f`;
    do
        ./"$UPDATE_BINARY" apply-hotfix $2/$hotfix -u"$USERNAME" -p"$PASSWORD"
    done;
    cd $CURRENT_DIRECTORY
}

function create_docker_image {
    cd $1/bin
    ./"$UPDATE_BINARY" create-docker -u"$USERNAME" -p"$PASSWORD"
    cd $CURRENT_DIRECTORY
}

validate_os
validate_inputs $PRODUCT_PACK_PATH $HOTFIX_DIRECTORY
extracted_directory="$(extract_product_pack $PRODUCT_PACK_PATH)"
initialize_update_tool $extracted_directory
validate_hotfixes_sequence $extracted_directory $HOTFIX_DIRECTORY
install_hotfixes $extracted_directory $HOTFIX_DIRECTORY
create_docker_image $extracted_directory
