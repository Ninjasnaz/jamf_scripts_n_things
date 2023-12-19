# jamf_scripts_n_things

## About
This is a place to store scripts and extension attributes to be used with Jamf Pro (or any other MDM) for managing a fleet of MacOS devices.

The extension attributes collect information such as:

- version of installed application or component (when normal application inventory collection does not capture the desired information)
- licensing status of installed software
- current system or user settings

The scripts perform actions such as:

- installing applications that aren't available in installer packages
- uninstalling applications
- adding or modifying user accounts
- changing user or system settings


## Usage
The foolowing links from the **Jamf Pro Administrator's Guide**  will help get started: \
[Computer Extension Attributes](http://docs.jamf.com/jamf-pro/administrator-guide/Computer_Extension_Attributes.html) \
[Running Scripts](http://docs.jamf.com/jamf-pro/administrator-guide/Running_Scripts.html) \
See those links for instructions on using these resources in your Jamf Pro installation.


#### Jamf Pro Administrator's Guide
Official documentation on Jamf Pro.\
http://docs.jamf.com/jamf-pro/administrator-guide/

## Basic MacOS things

MacOS is a flavor of UNIX, similar to Linux. But unlike Linux, macOS does not support virtual terminals by default. Instead, you can use the Terminal app (/Applications/Utilities/Terminal) to obtain a command line terminal and BASH shell.

However, typically most people consider iTerm to be superior to Terminal as it is full of functions and features that make life easier such as  split panes (Divide a tab up into multiple panes, each one showing a different session), Search, Automcomplete, Copy Mode and Configurability, to name a few.

It be found at https://iterm2.com and all of the features discussed at https://iterm2.com/features.html


## Random Bits of Knowledge

After you obtain a shell, you can run many of the same commands that are available on Linux. It’s also important to note that the same syntax rules that you used on Linux apply to BASH on macOS:

All commands are case sensitive.\
Regular options (-h) and POSIX options (--help) are listed for most commands.\
The manual pages (man who) and the info pages (info who) list most command documentation. The help command displays BASH function help (help echo).\
Commands may be chained using semicolons (date; who).\
The Standard Output of one command may be sent to the Standard Input of another command using a pipe ( | ) symbol (ps aux | less).
The Standard Output and Standard Error of a command may be redirected to a file (ls –l /Users > usersfile 2> errorfile).\
Single quotes protect all special shell characters, double quotes protect most shell characters (variables are one exception), backquotes perform command substitution (echo The date is `date`) and backslash protects the next character (echo You owe \$4.50).
The ~ metacharacter represents the user’s home directories.\
Tab completes commands and file paths.\
Ctrl+C cancels a command by sending a SIGINT kill signal to the foreground process.\
Wildcard metacharacters may be used with commands, and regular expressions may be used within text utilities.\
BASH control structures and functions may be used to create BASH shell scripts.\


## Common macOS Commands
Below are some common macOS commands, organized by general function.

### System Documentation Commands in macOS
man     -   Displays/searches the manual page database\
apropos -   Searches the manual page database by keyword\
info    -   Displays/searches the info page database\
help    -   Displays help on BASH functions\

### File Management Commands in macOS
pwd     -   Displays the current directory\
cd      -   Changes the current directory\
ls      -   Lists files\
file    -   Displays file type\
locate  -   Finds files using a predefined database\
which   -   Searches the PATH variable for files\
find    -   Finds files on the filesystem based on certain criteria\
cp      -   Copies files and directories\
mv      -   Moves/renames files and directories\
rm      -   Removes files and directories\
rmdir   -   Removes empty directories\
mkdir   -   Creates empty directories\
ln      -   Creates hard links; the –s option is used to create symbolic links\
chown   -   Changes ownership for files and directories\
chgrp   -   Changes group ownership for files and directories\
chmod   -   Changes the permissions (mode) on files and directories\
umask   -   Changes the UMASK variable used to determine default permissions\

### Text Tools in macOS
cat     -   Views (concatenates) the contents of text files to the terminal screen\
more    -   Views the contents of text files page by page\
less    -   Views the contents of text files page by page with advanced text features\
head    -   Displays the beginning of a text file\
tail    -   Displays the end of a text file\
sort    -   Sorts lines in text files\
wc      -   Counts the number of lines, words and characters in a text file\
grep    -   Searches text files for regular expressions\
egrep   -   Searches text files for regular expressions (including extended ones)\
sed     -   Edits text files using search-and-replace functions\
awk     -   Edits and formats text using predefined functions\
·vi (vim) The vi text editor (common to all UNIX systems)\
emacs The GNU Emacs text editor\
·nano   -   A small easy-to-use text editor based on the UNIX pico editor\
micro   -   A superior text editor with mouse support that can be installed via Brew or .pkg

### Filesystem Administration in macOS
mount   -   Mounts a filesystem to a mount point directory – alternatively, you can use the mount_filesystem commands (where filesystem is the name of an appropriate filesystem) – see man mount for details.\
umount  -   Unmounts a filesystem from a mount point directory\
pdisk   -   May be used to create Apple disk partitions\
newfs_type - Creates a new filesystem on a device (type = apfs, hfs, udf, exfat, msdos)\
fuser   -   Determines the users accessing a certain file, directory or terminal\
df      -   Displays disk free space by filesystem\
du      -   Displays disk free space by directory\
quota   -   Displays quotas for a certain user\
edquota -   Edits user quotas\
repquota -  Displays a report on quotas by user\
quotacheck  -   Updates quota limits on the filesystem\