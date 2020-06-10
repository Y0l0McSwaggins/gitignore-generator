[![GitHub license](https://img.shields.io/github/license/Naereen/StrapDown.js.svg)](https://github.com/Naereen/StrapDown.js/blob/master/LICENSE) [![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat-square)](http://makeapullrequest.com)


# Gitignore Generator

Bash gitignore generator using [gitignore.io](http://gitignore.io/)

## Required packages

Bash version >= 4

For mac can be installed by running the below command assuming [homebrew](https://brew.sh/) is installed

```bash
brew install bash
```

## Installing

Clone this repository into your desired location

You can either execute the script directly from the git repository directory (however it won't be much use to you). The best solution is to create a symlink to the script so it can be executed from anywhere in your terminal so it will actually be useful

```bash
sudo ln -s $PWD/gitignore-generator.sh /usr/local/bin/gig
```

## Using

To get information on how to use this run the script without any arguments


```bash
gig
```

### List

To view all possible types that the script supports run the following command

```bash
gig list
```

OR

```bash
gig l
```

### Generating

To generate a .gitignore file in the current directory run the following command (changing the type with the required one)

```bash
gig generate mj
```

OR

```bash
gig g mj
```

## Updating and including more types

### New Types

To add a new type get a list of Operating Systems, IDEs or Programming languages required for the type from [gitignore.io](http://gitignore.io/) and add it to the types in the script as a new line e.g.

```bash
['mj']='maven,java,osx,intellij+all,git'
```

### Updating current types

To update a current type get the relevant Operating Systems, IDEs or Programming languages name from [gitignore.io](http://gitignore.io/) and add it to the end of the relevant type e.g.

```bash
['mj']='maven,java,osx,intellij+all,git'
```

To add Linux to this type it would become

```bash
['mj']='maven,java,osx,intellij+all,git,linux'
```
