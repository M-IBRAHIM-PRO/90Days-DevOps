# Day-3
# 90 Days DevOps Challange

## Basic Linux Commands and Examples

### 1. To view what's written in a file

To view the contents of a file, use the `cat` command:
```bash
cat filename
```
Alternatively, you can use `less`, `more`, or `head` commands:
```bash
less filename
more filename
head filename
```

### 2. To change the access permissions of files

To change the access permissions of a file, use the `chmod` command:
```bash
chmod permissions filename
```
For example, to give read, write, and execute permissions to the owner, and read and execute permissions to the group and others:
```bash
chmod 755 filename
```

### 3. To check which commands you have run till now

To check the history of commands you have run, use the `history` command:
```bash
history
```

### 4. To remove a directory/Folder

To remove a directory or folder, use the `rmdir` command for empty directories or `rm -r` for directories that contain files:
```bash
rmdir directory_name
rm -r directory_name
```

### 5. To create a fruits.txt file and to view the content

To create a `fruits.txt` file and add content to it, use the `echo` command and then view it with `cat`:
```bash
echo "Apple" > fruits.txt
echo "Mango" >> fruits.txt
echo "Banana" >> fruits.txt
echo "Cherry" >> fruits.txt
echo "Kiwi" >> fruits.txt
echo "Orange" >> fruits.txt
echo "Guava" >> fruits.txt
cat fruits.txt
```

### 6. Add content in devops.txt (One in each line) - Apple, Mango, Banana, Cherry, Kiwi, Orange, Guava

To add content to `devops.txt` with one fruit per line:
```bash
echo "Apple" > devops.txt
echo "Mango" >> devops.txt
echo "Banana" >> devops.txt
echo "Cherry" >> devops.txt
echo "Kiwi" >> devops.txt
echo "Orange" >> devops.txt
echo "Guava" >> devops.txt
```

### 7. To show only top three fruits from the file

To show only the top three fruits from `devops.txt`, use the `head` command:
```bash
head -n 3 devops.txt
```

### 8. To show only bottom three fruits from the file

To show only the bottom three fruits from `devops.txt`, use the `tail` command:
```bash
tail -n 3 devops.txt
```

### 9. To create another file Colors.txt and to view the content

To create a `Colors.txt` file and add content to it, use the `echo` command and then view it with `cat`:
```bash
echo "Red" > Colors.txt
echo "Pink" >> Colors.txt
echo "White" >> Colors.txt
echo "Black" >> Colors.txt
echo "Blue" >> Colors.txt
echo "Orange" >> Colors.txt
echo "Purple" >> Colors.txt
echo "Grey" >> Colors.txt
cat Colors.txt
```

### 10. To find the difference between fruits.txt and Colors.txt file

To find the difference between `fruits.txt` and `Colors.txt`, use the `diff` command:
```bash
diff fruits.txt Colors.txt
```
