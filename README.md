
# asd

asd is a small bash script to quickly jump to different directories or files with fzf.
## Requirements

This script uses `fd` `fzf` and `rg`
## Installation

Clone the repository

```bash
git clone https://github.com/Fb185/asd.git
```
Make the script executable
```bash
chmod +x ./asd.sh
```

Source the script
```bash
source ./asd.sh
```
For optimal use, use an alias in your `bashrc` or `zshrc` file
```bashr
source path/to/script.sh
```

## Usage
Search directories
```bash
asd -d
```

Search files
```bash
asd -f
```

Include hidden directories in search 
```bash
asd -h
```

## Tweaks


The default  text editor used in the script is vim. To change this just rewrite over 'vim' in the "file" function.
