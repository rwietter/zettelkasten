---
title: Git Clean
description: Learn how to use the git clean command to remove untracked files from your Git repository.
icon: vscode-icons:file-type-codekit
---

# Git Clean

`git clean -xfd` is a command used in Git to remove untracked files from the working directory.

Here's what each flag means:

-x: This flag instructs Git to also remove files ignored by Git. By default, Git only removes files that are not ignored.
-f: This flag stands for "force" and tells Git to remove the files without prompting for confirmation.
-d: This flag tells Git to remove untracked directories in addition to untracked files.

## Examples

### Remove all untracked files

`git clean -xfd`

This command will remove all untracked files and directories from the working directory.

### Remove all untracked files except for a specific file

`git clean -xfd --exclude=filename.txt`

This command will remove all untracked files and directories from the working directory except for the file `filename.txt`.

### Remove all untracked files except for a specific directory

`git clean -xfd --exclude=directoryname`

This command will remove all untracked files and directories from the working directory except for the directory `directoryname`.

### Remove all untracked files except for a specific file extension

`git clean -xfd --exclude=*.txt`

This command will remove all untracked files and directories from the working directory except for files with the `.txt` extension.

### Remove all untracked files except for a specific file extension in a specific directory

`git clean -xfd --exclude=directoryname/*.txt`

This command will remove all untracked files and directories from the working directory except for files with the `.txt` extension in the `directoryname` directory.

### Remove all untracked files except for a specific file extension in a specific directory and all subdirectories

`git clean -xfd --exclude=directoryname/**/*.txt`

This command will remove all untracked files and directories from the working directory except for files with the `.txt` extension in the `directoryname` directory and all subdirectories.