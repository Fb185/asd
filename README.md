
# asd

asd is a small bash script to quickly jump to different directories or files with fzf.

## Installation

Clone the repository

```bash
git clone https://github.com/Fb185/asd.git
```
Make the script executable
```bash
chmod +x ./asd.sh
```

Run the script
```bash
./asd.sh
```

## Usage
Search directories
```bash
./asd.sh -d
```

Search files
```bash
./asd.sh -f
```

Inclide hidden directories in search 
```bash
./asd.sh -h
```

## Tweaks


The default  text editor used in the script is vim. To change this just rewrite over 'vim' in the "file" function.
