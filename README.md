# Rock & roll with shell

In this session, we will get familiar with shell commands with pop and rock music!

## Getting started
- Clone this repo `git clone https://github.com/thoughtworks-jumpstart/learn-shell.git`
- get into the project directory (cd): `cd learn-shell`
- Complete the tasks below sequentially

## Tasks

### Navigation
- Find out the absolute path to where you currently are: `pwd`
- List the contents of your current directory `ls`
- List the contents of your current directory with some options: `ls -l` and `ls -la`
- Navigate into the `pop` directory: `cd pop`
- Navigate back: `cd ..`
- Navigate into the `adele` directory: `cd pop/adele`
- Navigate back: `cd ../..`

### Reading files
- Print the lyrics to adele's "hello.txt": `cat ./pop/adele/hello.txt` or `cat pop/adele/hello.txt` (the . is optional)
- Print the lyrics to adele's "someone-like-you.txt": `cat pop/adele/someone-like-you.txt`
- Replace `cat` with `less` (press `q` when you want to exit)


### Moving/renaming files/directories
- Move `set-fire-to-the-rain.txt` to the right folder (`pop/adele`): `mv my_source_filepath my_target_filepath`
  - you can move: `mv ./set-fire-to-the-rain.txt ./pop/adele/`
  - you can move and rename simultaneously: `mv ./set-fire-to-the-rain.txt ./pop/adele/SET-FIRE-TO-THE-RAIN.txt`
- Renaming files/directories
  - `mv ./pop/adele/SET-FIRE-TO-THE-RAIN.txt ./pop/adele/set-fire-to-the-rain.txt`
  - `mv pop old-pop`

### Creating files and directories
- Creating files:
  - `touch somefile`
  - `touch otherfile.txt`
  - `touch anotherfile.js`

- Creating directories:
  - `mkdir jazz`

### Deleting files and directories
- Deleting files:
  - `rm somefile`
  - `rm otherfile.txt anotherfile.js`

- Deleting directories:
  - `rm -rf jazz`

### See history
- `history`

### Pipe
Pipe (`|`) allows us to pipe the output of one command --> as the input to another command
- Example use case #1: `grep`
  - `history | grep 'touch'`
  - `history | grep '.txt'`

- Example use case #2: `wc` (count)
  - count number of lines in a file
    - `cat ./pop/adele/hello.txt | wc -l`
    - `cat ./pop/adele/someone-like-you.txt | wc -l`

### When in doubt, `man` up!
- Examples:
  - `man mkdir`
  - `man ls`
  - `man wc`

### About PATH
- The shell path for a user in macOS or OSX is a set of locations in the filing system whereby the user has permissions to use certain applications, commands and programs without the need to specify the full path to that command or program in the Terminal
- Your shell path is a bunch of absolute paths of the filing system separated by colons :
- We can check what's in your path using this command
  - `echo $PATH`

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
