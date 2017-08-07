## A command which has many subcommands

USAGE:
main --ston,-s <object> --utf8,-u git <class> add 
main --ston,-s <object> --utf8,-u git <class> man 
main --ston,-s <object> --utf8,-u other 

OPTIONS:
--ston,-s <object> 	Prints at STON format
--utf8,-u 	Prints at UTF-8 format

COMMANDS:
git 	
other 	

```
main:= ClapCommand withName: main.
ston := ClapFlag withName: ston.
object := ClapPositional withName: object.
ston addPositional: object.
main addFlag: ston.
utf8 := ClapFlag withName: utf8.
main addFlag: utf8.
git:= ClapCommand withName: git.
class := ClapPositional withName: class.
git addPositional: class.
add:= ClapCommand withName: add.
git addSubcommand: add.
man:= ClapCommand withName: man.
git addSubcommand: man.
main addSubcommand: git.
other:= ClapCommand withName: other.
main addSubcommand: other.
```
## A command whith a flag which has a positional

USAGE:
main --depth,-d <number> 

OPTIONS:
--depth,-d <number> 	

```
main:= ClapCommand withName: main.
depth := ClapFlag withName: depth.
number := ClapPositional withName: number.
depth addPositional: number.
main addFlag: depth.
```
## A simple command

USAGE:
doc --verbose,-v <class> 

OPTIONS:
--verbose,-v 	More informations

ARGS:
<class> 	The name of the class to doc

```
doc:= ClapCommand withName: doc.
class := ClapPositional withName: class.
doc addPositional: class.
verbose := ClapFlag withName: verbose.
doc addFlag: verbose.
```
## A command with subcommands

USAGE:
main sub1 
main sub2 

COMMANDS:
sub1 	
sub2 	

```
main:= ClapCommand withName: main.
sub1:= ClapCommand withName: sub1.
main addSubcommand: sub1.
sub2:= ClapCommand withName: sub2.
main addSubcommand: sub2.
```
## A command with a positional
	$ app main Object
USAGE:
main <class> 

ARGS:
<class> 	

```
main:= ClapCommand withName: main.
class := ClapPositional withName: class.
main addPositional: class.
```
## A standard command

USAGE:
player --fast,-f --slow,-s mine set 
player --fast,-f --slow,-s mine remove 
player --fast,-f --slow,-s move <x> <y> 

OPTIONS:
--fast,-f 	
--slow,-s 	

COMMANDS:
mine 	
move 	

```
player:= ClapCommand withName: player.
fast := ClapFlag withName: fast.
player addFlag: fast.
slow := ClapFlag withName: slow.
player addFlag: slow.
mine:= ClapCommand withName: mine.
set:= ClapCommand withName: set.
mine addSubcommand: set.
remove:= ClapCommand withName: remove.
mine addSubcommand: remove.
player addSubcommand: mine.
move:= ClapCommand withName: move.
x := ClapPositional withName: x.
move addPositional: x.
y := ClapPositional withName: y.
move addPositional: y.
player addSubcommand: move.
```
## A command with flag

USAGE:
main --force,-f 

OPTIONS:
--force,-f 	

```
main:= ClapCommand withName: main.
force := ClapFlag withName: force.
main addFlag: force.
```
