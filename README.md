# clap — Command line argument parser for Pharo
[![Build Status][travis-status]][travis]
[![Coverage Status][coveralls-status]][coveralls]

Named after and inspired by [clap-rs](https://github.com/kbknapp/clap-rs), but
this is an independent implementation.

Currently still in the design discovery phase; tests use [Mocketry](http://smalltalkhub.com/#!/~dionisiy/Mocketry).

It should replace the CommandLine Handler in Pharo 7.

### Loading instructions

In your preferred terminal & shell:
```
git clone https://github.com/cdlm/clap-st.git
cd clap-st
curl get.pharo.org/alpha | bash
```
…and then, in the image just downloaded, open a workspace and evaluate:
```smalltalk
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
Flags and positionals can be at any position but subcommand must be at least position, else the matching doesn't succeed

### API
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
command addSubcommand: (ClapCommand withName: subcommandName)
```

To get all positionals, flags and subcommands:
```smalltalk
command positionals.
command flags.
command subcommands
```

To add a description to one of it(used in documentation):
```smalltalk
command description: description
```

To represent what is it typed in the command line(example for the git add command):
```smalltalk
ClapContext on: #('git' 'add')
```

#### Matching
To do a match:
```smalltalk
command matchOn: context
```

When a command is matched:
- if it's succeed, it will return respectively for a command, flag or positional matching, a ClapCommandMatch, a ClapFlagMatch or a ClapPositionalMatch.
- if it's failed, it will return a ClapMismatch.

To see if a match succeed:
```smalltalk
match isMismatch
```

To get an argument match by an instance of ClapCommand, ClapPositional or ClapFlag:
```smalltalk
match at: instance
```

To get an argument by its name:
```smalltalk
match atName: name
```

Example:
```smalltalk
"Create a commande main --force"
flag := ClapFlag withName: 'force.
command := (ClapCommand withName: 'main') addFlag: flag.
match := command matchOn: (ClapContext on: #('main' '--force').
"To get with an instance"
match at: flag.
"To get with flag name"
match atName: 'force
```

#### Documentation
To generate command doc:
```smalltalk
(ClapDocWriter new: stream) generateDoc: command
```


[travis]: https://travis-ci.org/cdlm/clap-st
[travis-status]: https://travis-ci.org/cdlm/clap-st.svg?branch=master
[coveralls]: https://coveralls.io/github/cdlm/clap-st?branch=master
[coveralls-status]: https://coveralls.io/repos/github/cdlm/clap-st/badge.svg?branch=master
