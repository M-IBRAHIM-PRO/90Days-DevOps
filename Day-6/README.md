# Day-6
# 90 Days DevOps

# Understanding Linux File Permissions

In Linux, file permissions are crucial for maintaining system security and controlling access to files and directories. This guide provides a basic overview of key concepts and commands related to Linux file permissions.

## Basic Ownership

Every file and directory in Linux is associated with an owner and a group, which helps manage and restrict access based on user roles and permissions.

- **Owner/User**: The user who owns the file, typically the creator.
- **Group**: A set of users that share specific permissions for the file.
- **Others**: All other users who are not the owner or part of the group.

## The `ls -l` Command

The `ls -l` command lists files and directories in a detailed format, showing permissions, ownership, size, and modification time.

Example output:
```
-rw-r--r-- 1 user group  1234 Jun 29 14:33 example.txt
drwxr-xr-x 2 user group  4096 Jun 29 14:34 directory
```

### Breakdown:

- **File Type and Permissions**: First column (`-rw-r--r--` or `drwxr-xr-x`):
  - `-`: Regular file
  - `d`: Directory
  - `l`: Symbolic link
  - Permissions: `r` (read), `w` (write), `x` (execute) for owner, group, and others.
- **Number of Links**: Number of hard links to the file or directory.
- **Owner**: Username of the file owner.
- **Group**: Group name associated with the file.
- **Size**: Size of the file in bytes.
- **Modification Time**: Last modification date and time.
- **Name**: Name of the file or directory.

## `chmod` Command

The `chmod` (change mode) command changes file or directory permissions using symbolic or numeric modes.

### Symbolic Mode

Syntax: `chmod [who][operator][permissions] file`

- **who**: `u` (user/owner), `g` (group), `o` (others), `a` (all)
- **operator**: `+` (add), `-` (remove), `=` (set exact)
- **permissions**: `r` (read), `w` (write), `x` (execute)

### Numeric Mode

Syntax: `chmod [permissions] file`

- **Permissions**: Represented by a three-digit number:
  - `4` (read), `2` (write), `1` (execute)
  - First digit: Owner, second digit: Group, third digit: Others

## `chown` Command

The `chown` (change owner) command changes the ownership of a file or directory.

Syntax: `chown [new_owner][:new_group] file`

- Only owner specified: Changes only the owner.
- Both owner and group specified: Changes both.
- Only group specified: Changes only the group.

## `chgrp` Command

The `chgrp` (change group) command changes the group ownership of a file or directory.

Syntax: `chgrp [new_group] file`

## Real-World Examples and Usage

- **Setting Permissions for a Script**: `chmod 744 script.sh` (rwxr--r--)
- **Changing Ownership of a Project Directory**: `chown -R alice:devs project/`
- **Setting Group Permissions for Collaboration**: `chgrp -R staff shared/` and `chmod -R g+w shared/`
- **Making a Directory Writable Only by the Owner**: `chmod 755 private/` (rwxr-xr-x)

## Read the Full Article

For a detailed overview and explanation, read the full article: [Linux File Permissions](https://m-ibrahim-pro.hashnode.dev/linux-file-permissions)
