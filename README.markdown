UltraDuper
----------

SuperDuper's cron scheduling is brittle and it dicks around with my
cron job formatting (converts spaces to tabs, etc.) and that's just
not cricket.

UltraDuper is a tiny AppleScript that runs whichever backup you tell
it to. And unlike SuperDuper this won't randomly fail.


SETUP
-----

1. In SuperDuper, configure your backups.

2. Add your cron jobs. They should look something this:

```
0 17 * * 1,3,5 osascript /path/to/UltraDuper.applescript BACKUPNAME1
0 17 * * 2,4,6 osascript /path/to/UltraDuper.applescript BACKUPNAME2
```
