baselines
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec 
			blessing: #release;
			package: 'TOML'.

		spec group: 'default' with: #('ALL') 
	]