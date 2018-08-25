tests - table
testTableWhitespace
	
	| dct |
	
	dct := self parse: '
		[a.b.c]            # this is best practice
		[ d.e.f ]          # same as [d.e.f]
		[ g .  h  . i]    # same as [g.h.i]
		[ j . "ʞ" . ''l'' ]  # same as [j."ʞ".''l'']
	'.
	
	self 
		assert: dct size equals: 4;
		assert: dct atPath: #(a b c) arrayEquals: #();
		assert: dct atPath: #(d e f) arrayEquals: #();
		assert: dct atPath: #(g h i) arrayEquals: #();
		assert: dct atPath: #(j ʞ l) arrayEquals: #().
	