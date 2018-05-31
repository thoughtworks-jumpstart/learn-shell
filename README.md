# Rock & roll with shell

In this session, we will get familiar with shell commands with pop and rock music!

### Getting started
- Fork and clone repo
- get into the project directory (cd): `cd learn-shell`
- Complete the tasks below sequentially

### Tasks

#### Navigation
- Find out the absolute path to where you currently are: `pwd`
- List the contents of your current directory `ls`
- List the contents of your current directory with some options: `ls -l` and `ls -la`
- Navigate into the `pop` directory: `cd pop`
- Navigate back: `cd ..`
- Navigate into the `adele` directory: `cd pop/adele`
- Navigate back: `cd ../..`

#### Reading files
- Print the lyrics to adele's "hello.txt": `cat ./pop/adele/hello.txt` or `cat pop/adele/hello.txt` (the . is optional)
- Print the lyrics to adele's "someone-like-you.txt": `cat pop/adele/someone-like-you.txt`
- Replace `cat` with `less` (press `q` when you want to exit)


#### Moving/renaming files/directories
- Move `set-fire-to-the-rain.txt` to the right folder (`pop/adele`): `mv my_source_filepath my_target_filepath`
  - you can move: `mv ./set-fire-to-the-rain.txt ./pop/adele/`
  - you can move and rename simultaneously: `mv ./set-fire-to-the-rain.txt ./pop/adele/SET-FIRE-TO-THE-RAIN.txt`
- Renaming files/directories
  - `mv ./pop/adele/SET-FIRE-TO-THE-RAIN.txt ./pop/adele/set-fire-to-the-rain.txt`
  - `mv pop old-pop`

#### Creating files and directories
- Creating files:
  - `touch somefile`
  - `touch otherfile.txt`
  - `touch anotherfile.js`

- Creating directories:
  - `mkdir jazz`

#### Deleting files and directories
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
  