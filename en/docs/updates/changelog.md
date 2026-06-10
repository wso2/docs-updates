## Changelog Generation

After every successful update, the Update Tool automatically generates a changelog markdown file inside the `<product-home>/updates/` directory.

### File naming

The changelog file is named using the starting and ending update levels, each zero-padded to four digits:

    changelog-<starting-update-level>-<ending-update-level>.md

**Example:** `changelog-0000-0010.md` for a fresh pack updated to level 10.

### File content

The changelog lists every file that was added, updated, or removed during the update:

```
# Changelog

- **Product:** wso2am 4.2.0
- **Update levels:** 0000 -> 0010

## Added Files (1)

- repository/components/lib/new-library.jar

## Updated Files (2)

- repository/conf/carbon.xml
- repository/components/lib/existing-library.jar

## Removed Files (0)

_None_
```

### Skipping changelog generation

Use the `--no-changelog` flag to skip changelog generation:

``` bash
./wso2update_linux --no-changelog
```

### Changelog on conflict resolution

If conflicts are encountered during an update, the changelog data is stashed. After you resolve the conflicts and run with `--continue`, the changelog is generated from the stashed data.

### Generating a summary instead

To retrieve a human-readable narrative summary (rather than a file-diff list), use the [`get-summary`](./update-commands.md#wso2update_os-get-summary) sub-command, or pass `--get-summary` during a normal update run to generate the summary automatically after the update completes.
