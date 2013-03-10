--
-- UltraDuper. Because SuperDuper can't cron.
--
on expanduser(_path)
    set _home to POSIX path of (path to home folder)
    set _home to characters 1 thru -2 of _home as string
    return _home & characters 2 thru -1 of _path as string
end expanduser

on run argv
    set sdsp to expanduser("~/Library/Application Support/SuperDuper!/Saved Settings/" & item 1 of argv & ".sdsp")
    tell application "SuperDuper!"
        run using settings sdsp without user interaction
    end tell
end run
