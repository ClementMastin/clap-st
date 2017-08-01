I am a class which has different CLAP examples.

Each command has the following form:

exampleName
	"Example documentation and description"

	<sampleInstance>
	^ aClapCommand
	
This shape is used to both integrate examples with the IDE (through the sample instance pragma) and generate documentation.