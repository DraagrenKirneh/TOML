baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec blessing: #release.
		spec package: 'TOML' with: [  
			spec repository: 'github://DraagrenKirneh/TOML:master' ].

		spec group: 'default' with: #('ALL') 
	]