tests
testArrayOfTables2

	| dct |
	
	dct := self parse: '
		[[fruit]]
  		name = "apple"

  		[fruit.physical]
    	color = "red"
    	shape = "round"

  		[[fruit.variety]]
    	name = "red delicious"

  		[[fruit.variety]]
    	name = "granny smith"

		[[fruit]]
  		name = "banana"

  		[[fruit.variety]]
    	name = "plantain"
	'.
	
	
	
	
