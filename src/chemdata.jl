res3letters = ["ARG", "MET", "ASN", "GLU", "PHE",
	"ILE", "ASP", "LEU", "ALA", "GLN",
	"GLY", "CYS", "TRP", "TYR", "LYS",
	"PRO", "THR", "SER", "VAL", "HIS",
	"ASX", "GLX", "XAA", "XLE", "-", ".", "*"]
resletters = ["R", "M", "N", "E", "F",
	"I", "D", "L", "A", "Q",
	"G", "C", "W", "Y", "K",
	"P", "T", "S", "V", "H",
	"B", "Z", "X", "J", "-", ".", "*"]
resletterdict = OrderedDict(
	"ALA" => "A",
	"ARG" => "R",
	"ASN" => "N",
	"ASP" => "D",
	"ASX" => "B",
	"CYS" => "C",
	"GLN" => "Q",
	"GLU" => "E",
	"GLX" => "Z",
	"GLY" => "G",
	"HIS" => "H",
	"ILE" => "I",
	"LEU" => "L",
	"LYS" => "K",
	"MET" => "M",
	"PHE" => "F",
	"PRO" => "P",
	"SER" => "S",
	"THR" => "T",
	"TRP" => "W",
	"TYR" => "Y",
	"VAL" => "V",
	"XAA" => "X",
	"XLE" => "J",
	"*" => "*",
	"-" => "-",
	"." => ".",
	"A" => "ALA",
	"R" => "ARG",
	"N" => "ASN",
	"D" => "ASP",
	"B" => "ASX",
	"C" => "CYS",
	"Q" => "GLN",
	"E" => "GLU",
	"Z" => "GLX",
	"G" => "GLY",
	"H" => "HIS",
	"I" => "ILE",
	"L" => "LEU",
	"K" => "LYS",
	"M" => "MET",
	"F" => "PHE",
	"P" => "PRO",
	"S" => "SER",
	"T" => "THR",
	"W" => "TRP",
	"Y" => "TYR",
	"V" => "VAL",
	"X" => "XAA",
	"J" => "XLE"
)
atomicmasses = Dict("C" => 12.0107,
                    "N" => 14.0067,
                    "H" => 1.0079,
                    "O" => 15.9994,
                    "S" => 32.065,
					"X" => 1.0079
)
vanderwaals = Dict( "C" => 1.70,
            		"N" => 1.55,
            		"H" => 1.20,
            		"O" => 1.52,
            		"S" => 1.85,
					"X" => 1.20,
					"ZN" => 1.20,
  				  	"CL" => 1.85
)
heavyresbonds = Dict(
                "ARG" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD"],["CD","NE"],["NE","CZ"],["CZ","NH1"],["CZ","NH2"]],
                "MET" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","SD"],["SD","CE"]],
                "ASN" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","OD1"],["CG","ND2"]],
                "GLU" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD"],["CD","OE1"],["CD","OE2"]],
                "PHE" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD1"],["CG","CD1"],["CD1","CE1"],["CD2","CE2"],["CE1","CZ"],["CE2","CZ"]],
                "ILE" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG1"],
						["CB","CG2"],["CG1","CD1"]],
                "ASP" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","OD1"],["CG","OD2"]],
                "LEU" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD1"],["CG","CD2"]],
                "ALA" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"]],
                "GLN" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD"],["CD","OE1"],["CD","NE2"]],
                "GLY" => [["C","O"],["C","CA"],["CA","N"]],
                "CYS" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","SG"]],
                "TRP" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD1"],["CG","CD2"],["CD1","NE1"],["CD2","CE2"],["CD2","CE3"],
						["CE2","CZ2"],["CE3","CZ3"],["CZ2","CH2"],["CZ3","CH2"]],
                "TYR" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD1"],["CG","CD2"],["CD1","CE1"],["CD2","CE2"],["CE1","CZ"],
						["CE2","CZ"],["CZ","OH"]],
                "LYS" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","CD"],["CD","CE"],["CE","NZ"]],
                "PRO" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["N","CD"],["CB","CG"],["CG","CD"]],
                "THR" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","OG1"],["CB","CG2"]],
                "SER" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","OG"]],
				"VAL" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG1"],["CB","CG2"]],
				"NAG" => [],
				"HOH" => [],
                "HIS" => [["C","O"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],
						["CG","ND1"],["CG","CD2"],["ND1","CE1"],["CD2","NE2"],["NE2","CE1"]],
				" ZN" => []
)
hresbonds = Dict(
                "ARG" => [["N","H"],["CA","HA"],["CA","HA2"],["CB","HB3"],["CB","HB2"],
						["CG","HG1"],["CG","HG2"],["CD","HD1"],["CD","HD2"],["NE","HE"],
						["NH1","HH11"],["NH1","HH12"],["NH2","HH21"],["NH2","HH22"]],
                "MET" => [["N","H"],["CA","HA"],["CA","HA2"],["CB","HB3"],["CB","HB2"],
						["CG","HG1"],["CG","HG2"],["CE","HE1"],["CE","HE2"],["CE","HE3"]],
                "ASN" => [["N","H"],["CA","HA"],["CA","HA2"],["CB","HB3"],["CB","HB2"],
						["ND2","HD21"],["ND2","HD22"]],
                "GLU" => [["N","H"],["CA","HA"],["CA","HA2"],["CB","HB3"],["CB","HB2"],
						["CG","HG3"],["CG","HG2"]],
                "PHE" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CD1","HD1"],
						["CD2","HD2"],["CE1","HE1"],["CE2","HE2"],["CZ","HZ"]],
                "ILE" => [["N","H"],["CA","HA"],["CB","HB"],["CG1","HG11"],["CG1","HG12"],
						["CG2","HG21"],["CG2","HG22"],["CG2","HG23"],["CD1","HD11"],["CD1","HD12"],["CD1","HD13"]],
                "ASP" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"]],
                "LEU" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CG","HG"],
						["CG1","HG1"],["CD1","HD11"],["CD1","HD12"],["CD1","HD13"],
						["CD2","HD21"],["CD2","HD22"],["CD2","HD23"]],
                "ALA" => [["N","H"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CB","HB3"]],
                "GLN" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CG","HG1"],
						["CG","HG2"],["NE2","HE21"],["NE2","HE22"]],
                "GLY" => [["N","H"],["CA","HA2"],["CA","HA3"]],
                "CYS" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["SG","HG"]],
                "TRP" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CD1","HD1"],
						["NE1","HE1"],["CE3","HE3"],["CZ2","HZ2"],["CH2","HH2"],["CZ3","HZ3"]],
                "TYR" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CD1","HD1"],
						["CD2","HD2"],["CE1","HE1"],["CE2","HE2"],["OH","HH"]],
                "LYS" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["CG","HG3"],
						["CG","HG2"],["CD","HD3"],["CD","HD2"],["CE","HE3"],["CE","HE2"],["NZ","HZ1"],["NZ","HZ2"],["NZ","HZ3"]],
                "PRO" => [["N","H"],["N","HN"],["CA","HA"],["CB","HB1"],["CB","HB2"],
						["CG","HG1"],["CG","HG2"],["CD","HD1"],["CD","HD2"]],
                "THR" => [["N","H"],["CA","HA"],["CB","HB"],["OG1","HG1"],["CG2","HG21"],
						["CG2","HG22"],["CG2","HG23"]],
                "SER" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["OG","HG"]],
                "VAL" => [["N","H"],["CA","HA"],["CB","HB"],["CG1","HG11"],["CG1","HG12"],
						["CG1","HG13"],["CG2","HG21"],["CG2","HG22"],["CG2","HG23"]],
                "HIS" => [["N","H"],["CA","HA"],["CB","HB3"],["CB","HB2"],["ND1","HD1"],
						["CD2","HD2"],["CE1","HE1"]],
				"NAG" => [],
				"HOH" => [],
				" ZN" => []
)