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
					"X" => 1.20
)
elecolors = Dict( "C" => :gray,
                  "N" => :blue,
                  "H" => :white,
                  "O" => :red,
                  "S" => :yellow,
				  "X" => :gray
)
aquacolors = Dict("C" => RGB{Float64}(0.5,0.5,0.5),
                  "N" => RGB{Float64}(0.472,0.211,0.499),
                  "H" => RGB{Float64}(0.43,0.710,0.579),
                  "O" => RGB{Float64}(0.111,0.37,0.999),
                  "S" => RGB{Float64}(0.992,0.753,0.525),
				  "X" => RGB{Float64}(0.5,0.5,0.5)
)
