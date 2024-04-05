# hyperbackup-rsync-target

Builds a container image that can be used as a backup target on Synology Hyper Backup using `rsync`.

## Build

```bash
ci/build.sh
```

## Usage

```bash
docker run -p 8730:873 -v /var/externalfolder:/var/synoback -d hyperbackup-rsync-target:1.0.0
```
