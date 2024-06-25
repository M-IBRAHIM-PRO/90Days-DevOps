# Day-4
# 90 Days DevOps Challange

## What is Shell Scripting for DevOps?

Shell scripting is the process of writing a series of commands for the shell to execute. It is commonly used in DevOps to automate repetitive tasks, manage system configurations, deploy applications, and more. Shell scripts can help streamline workflows and improve efficiency.

### Example
Consider a scenario where you need to back up a directory daily. Instead of manually copying the files every day, you can write a shell script to automate the task:

```bash
#!/bin/bash

# Shell script to back up a directory

src="/path/to/source_directory"
dest="/path/to/backup_directory"

# Create a backup
cp -r $src $dest

echo "Backup completed successfully!"
```

## What is `#!/bin/bash`? Can we write `#!/bin/sh` as well?

The line `#!/bin/bash` at the beginning of a script is known as a **shebang**. It specifies the path to the interpreter that should execute the script. In this case, `/bin/bash` points to the Bash shell.

Yes, you can write `#!/bin/sh` as well. The difference is that `#!/bin/sh` points to the system's default shell, which might be a different shell like `dash` or `ash`. Bash (`#!/bin/bash`) has more features and is more commonly used in Linux environments.

### How to Run the Script First time ?
To run the script :
```bash
./script-name.sh
```
But it will some error like **Permission denied** to solve this error take the following steps : 
1.Run the following command :
```bash
chmod 777 <script-name.sh>
```
**Note** The above command is safe for personal use for the enterprise use and in the case of multiple users the command is vulnerable. To understand the **file permissions in linux** : [Linux-File-Permissions](https://contabo.com/blog/linux-permission-basics/?gad_source=1&gclid=Cj0KCQjwsuSzBhCLARIsAIcdLm4tH_4MLitBHNipHANDjspheDy_hkEe7gNHswmpU-Po-OZRBhlOl7YaAujMEALw_wcB)

## Shell Script Examples

### 1. Shell Script to Print a Message

```bash
#!/bin/bash

# Print a message
echo "I will complete #90DaysOfDevOps challenge"
```

### 2. Shell Script to Take User Input and Print Variables

```bash
#!/bin/bash

# Take user input
echo "Enter your name:"
read name

# Take input from arguments
age=$1

# Print variables
echo "Hello, $name! You are $age years old."
```

To run this script with an argument:
```bash
./script.sh 25
```

### 3. Example of If-Else in Shell Scripting by Comparing Two Numbers

```bash
#!/bin/bash

# Compare two numbers
num1=10
num2=20

if [ $num1 -gt $num2 ]; then
  echo "$num1 is greater than $num2"
else
  echo "$num1 is not greater than $num2"
fi
```

In this script, we define two numbers `num1` and `num2`. The if-else statement compares them and prints the appropriate message.
#### Comparison of Numbers
In bash to understand the comparison of two numbers : [Compariosn in Bash](https://www.baeldung.com/linux/bash-compare-variables-numbers)

## Conclusion

Shell scripting is a powerful tool in DevOps for automating tasks and managing system operations. By using scripts, you can perform complex tasks efficiently and consistently. The examples provided illustrate basic shell scripting concepts, such as printing messages, taking user input, and using conditional statements.

## Refrences :
For further understanding read the blog : [Blog post](https://medium.com/@m.ibrahm.0001/an-introduction-to-shell-scripting-the-power-of-the-command-line-202d408a0fe5)
