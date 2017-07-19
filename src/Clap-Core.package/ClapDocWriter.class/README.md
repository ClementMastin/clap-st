I represent a class using the DP Visitor in order to generate command doc.

To use me:
	docWriter := ClapDocWriter new: <aStream>.
	docWriter generateDoc: <aCommand>
	
To see the content of the stream:
	docWriter stream contents