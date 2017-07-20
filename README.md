# clap — Command line argument parser for Pharo
[![Build Status][travis-status]][travis]
[![Coverage Status][coveralls-status]][coveralls]

Named after and inspired by [clap-rs](https://github.com/kbknapp/clap-rs), but
this is an independent implementation.

Currently still in the design discovery phase; tests use [Mocketry](http://smalltalkhub.com/#!/~dionisiy/Mocketry).

### Loading instructions

In your preferred terminal & shell:
```
git clone https://github.com/cdlm/clap-st.git
cd clap-st
curl get.pharo.org/alpha | bash
```
…and then, in the image just downloaded, open a workspace and evaluate:
```
Metacello new baseline: 'Clap';
   repository: 'gitlocal://./src';
   load.
```

## Tutorial

There are three type of arguments in CLAP:

- Commands
- Flags
- Positionals

To create a command, you must respect this syntax:
```
command flags positionals subcommand
```

To create an argument, you must use the withName: method:
```smalltalk
ClapCommand withName: aName
```

To add a flag to a command:
```smalltalk
command addFlag: (ClapFlag withName: flagName)
```

To add a positional to a command of flag:
```smalltalk
command addPositional: (ClapPositional withName: positionalName)
```

To add a subcommand to a command:
```smalltalk
command addSubcommand: (ClapCommand withName: subcommandNamee)
```

To add a description to one of it(used in documentation):
```smalltalk
command description: description
```

[travis]: https://travis-ci.org/cdlm/clap-st
[travis-status]: https://travis-ci.org/cdlm/clap-st.svg?branch=master
[coveralls]: https://coveralls.io/github/cdlm/clap-st?branch=master
[coveralls-status]: https://coveralls.io/repos/github/cdlm/clap-st/badge.svg?branch=master
