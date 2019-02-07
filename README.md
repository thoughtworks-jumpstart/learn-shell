# Rock & roll with shell

In this session, we will get familiar with shell commands with pop and rock music!

## Getting started
- Clone this repo `git clone https://github.com/thoughtworks-jumpstart/learn-shell.git`
- get into the project directory (cd): `cd learn-shell`
- Complete the tasks below sequentially

## Tasks

### Navigate around your project
- Find out the absolute path to where you currently are `pwd`
- List the contents of your current directory `ls`
- List the contents of your current directory with some options: `ls -l` and `ls -la`
- Navigate to the `pop` directory: `cd pop`
- Navigate back to the parent directory `cd ..`
- Navigate to the `adele` directory: `cd pop/adele`
- Navigate back: `cd ../..`

### Read files
- Print the lyrics to adele's "hello.txt" `cat ./pop/adele/hello.txt` or `cat pop/adele/hello.txt` (the . is optional)
- Print the lyrics to adele's "someone-like-you.txt" `cat pop/adele/someone-like-you.txt`
- Replace `cat` with `less` (press `q` when you want to exit)

### Rename files and directories
- Renaming files/directories
  - `mv ./pop/adele/SET-FIRE-TO-THE-RAIN.txt ./pop/adele/set-fire-to-the-rain.txt`
  - `mv pop old-pop`

### Move files and directories
- Move `set-fire-to-the-rain.txt` to the correct folder (`pop/adele`) `mv my_source_filepath my_target_filepath`
  - Move a file: `mv ./set-fire-to-the-rain.txt ./pop/adele/`
  - Move and rename simultaneously: `mv ./set-fire-to-the-rain.txt ./pop/adele/SET-FIRE-TO-THE-RAIN.txt`

### Create files and directories
- Create files `touch` `touch my-first-file.txt`
- Create directories `mkdir jazz`

### Delete files and directories
- Delete files `rm somefile` or `rm file.txt another-file.js`
- Delete directories `rm -rf jazz`

### See history
- Type `history` to see a history of commands you have typed

### Pipe
Pipe (`|`) allows us to pipe the output of one command as the input to another command
- Example use case #1: `grep`
  - `history | grep 'touch'`
  - `history | grep '.txt'`

- Example use case #2: `wc` (count)
  - count number of lines in a file
    - `cat ./pop/adele/hello.txt | wc -l`
    - `cat ./pop/adele/someone-like-you.txt | wc -l`

### RTFM - Read the friendly manual
- Read manuals with the `man` command. E.g. `man mkdir`, `man ls`

### `PATH`
PATH is an environment variable on Unix-like operating systems, DOS, OS/2, and Microsoft Windows, specifying a set of directories where executable programs are located. In general, each executing process or user session has its own PATH setting. 

We can check what's in your `PATH` with `echo $PATH`

If you have scripts you want to run, you would have to `cd` into your directory and then run `./my-script.sh`.

Alternatively, you can add a directory to your `PATH` which will allow you to execute `my-script.sh`. Let's see how to do this.

- Temporarily add folder `scripts` to your path to make it available to the terminal
  - `export PATH=$PATH:<absolute_path_to_folder>`
  - Example would be `export PATH=$PATH:/Users/sgyaminmhd/jumpstart/learn-shell/scripts`
  - `echo $PATH` to check that it's added to the end of the $PATH
  - Return to your home directory using `~` and run `hello_world.sh`
  - It will run the executable script!
  - Close your terminal session and run `echo $PATH` to notice that your $PATH is back to normal

- Permanently add the directory to your PATH by adding it in your `.zshrc` file
  - `export PATH=$PATH:<absolute_path_to_folder>` at the top of the file
  - save your file
  - Open a new terminal session (important). Close any old session and open a new one for the new PATH to take effect
  - Return to your home directory using `~` and run `hello_world.sh`
  - It will run the script!
  - Close your terminal and run `echo $PATH` to notice the new addition is persisted to the PATH
