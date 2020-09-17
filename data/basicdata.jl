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
elecolors = Dict( "C" => :gray,
                  "N" => :blue,
                  "H" => :white,
                  "O" => :red,
                  "S" => :yellow,
				  "X" => :gray,
				  "ZN" => :gray,
				  "CL" => :gray
)
aquacolors = Dict("C" => RGB{Float32}(0.5,0.5,0.5),
                  "N" => RGB{Float32}(0.472,0.211,0.499),
                  "H" => RGB{Float32}(0.65,0.96,0.70),
                  "O" => RGB{Float32}(0.111,0.37,0.999),
                  "S" => RGB{Float32}(0.992,0.753,0.525),
				  "X" => RGB{Float32}(0.5,0.5,0.5),
				  "ZN" => RGB{Float32}(0.5,0.5,0.5),
				  "CL" => RGB{Float32}(0.5,0.5,0.5)
)
kideradict3 = Dict(
    "ALA" => [-1.56,-1.67,-0.97,-0.27,-0.93,-0.78,-0.2,-0.08,0.21,-0.48],
    "ARG" => [0.22,1.27,1.37,1.87,-1.7,0.46,0.92,-0.39,0.23,0.93],
    "ASN" => [1.14,-0.07,-0.12,0.81,0.18,0.37,-0.09,1.23,1.1,-1.73],
    "ASP" => [0.58,-0.22,-1.58,0.81,-0.92,0.15,-1.52,0.47,0.76,0.7],
    "CYS" => [0.12,-0.89,0.45,-1.05,-0.71,2.41,1.52,-0.69,1.13,1.1],
    "GLN" => [-0.47,0.24,0.07,1.1,1.1,0.59,0.84,-0.71,-0.03,-2.33],
    "GLU" => [-1.45,0.19,-1.61,1.17,-1.31,0.4,0.04,0.38,-0.35,-0.12],
    "GLY" => [1.46,-1.96,-0.23,-0.16,0.1,-0.11,1.32,2.36,-1.66,0.46],
    "HIS" => [-0.41,0.52,-0.28,0.28,1.61,1.01,-1.85,0.47,1.13,1.63],
    "ILE" => [-0.73,-0.16,1.79,-0.77,-0.54,0.03,-0.83,0.51,0.66,-1.78],
    "LEU" => [-1.04,0,-0.24,-1.1,-0.55,-2.05,0.96,-0.76,0.45,0.93],
    "LYS" => [-0.34,0.82,-0.23,1.7,1.54,-1.62,1.15,-0.08,-0.48,0.6],
    "MET" => [-1.4,0.18,-0.42,-0.73,2,1.52,0.26,0.11,-1.27,0.27],
    "PHE" => [-0.21,0.98,-0.36,-1.43,0.22,-0.81,0.67,1.1,1.71,-0.44],
    "PRO" => [2.06,-0.33,-1.15,-0.75,0.88,-0.45,0.3,-2.3,0.74,-0.28],
    "SER" => [0.81,-1.08,0.16,0.42,-0.21,-0.43,-1.89,-1.15,-0.97,-0.23],
    "THR" => [0.26,-0.7,1.21,0.63,-0.1,0.21,0.24,-1.15,-0.56,0.19],
    "TRP" => [0.3,2.1,-0.72,-1.57,-1.16,0.57,-0.48,-0.4,-2.3,-0.6],
    "TYR" => [1.38,1.48,0.8,-0.56,0,-0.68,-0.31,1.03,-0.05,0.53],
    "VAL" => [-0.74,-0.71,2.04,-0.4,0.5,-0.81,-1.07,0.06,-0.46,0.65],
    "ASX" => [0.86,-0.145,-0.85,0.81,-0.37,0.26,-0.805,0.85,0.93,-0.515],
    "GLX" => [-0.96,0.215,-0.77,1.135,-0.105,0.495,0.44,-0.165,-0.19,-1.225],
    "XAA" => [0,0,0,0,0,0,0,0,0,0],
    "XLE" => [-0.885,-0.08,0.775,-0.935,-0.545,-1.01,0.065,-0.125,0.555,-0.425] )
#
kideradict = Dict(
    "A" => [-1.56,-1.67,-0.97,-0.27,-0.93,-0.78,-0.2,-0.08,0.21,-0.48],
    "R" => [0.22,1.27,1.37,1.87,-1.7,0.46,0.92,-0.39,0.23,0.93],
    "N" => [1.14,-0.07,-0.12,0.81,0.18,0.37,-0.09,1.23,1.1,-1.73],
    "D" => [0.58,-0.22,-1.58,0.81,-0.92,0.15,-1.52,0.47,0.76,0.7],
    "C" => [0.12,-0.89,0.45,-1.05,-0.71,2.41,1.52,-0.69,1.13,1.1],
    "Q" => [-0.47,0.24,0.07,1.1,1.1,0.59,0.84,-0.71,-0.03,-2.33],
    "E" => [-1.45,0.19,-1.61,1.17,-1.31,0.4,0.04,0.38,-0.35,-0.12],
    "G" => [1.46,-1.96,-0.23,-0.16,0.1,-0.11,1.32,2.36,-1.66,0.46],
    "H" => [-0.41,0.52,-0.28,0.28,1.61,1.01,-1.85,0.47,1.13,1.63],
    "I" => [-0.73,-0.16,1.79,-0.77,-0.54,0.03,-0.83,0.51,0.66,-1.78],
    "L" => [-1.04,0,-0.24,-1.1,-0.55,-2.05,0.96,-0.76,0.45,0.93],
    "K" => [-0.34,0.82,-0.23,1.7,1.54,-1.62,1.15,-0.08,-0.48,0.6],
    "M" => [-1.4,0.18,-0.42,-0.73,2,1.52,0.26,0.11,-1.27,0.27],
    "F" => [-0.21,0.98,-0.36,-1.43,0.22,-0.81,0.67,1.1,1.71,-0.44],
    "P" => [2.06,-0.33,-1.15,-0.75,0.88,-0.45,0.3,-2.3,0.74,-0.28],
    "S" => [0.81,-1.08,0.16,0.42,-0.21,-0.43,-1.89,-1.15,-0.97,-0.23],
    "T" => [0.26,-0.7,1.21,0.63,-0.1,0.21,0.24,-1.15,-0.56,0.19],
    "W" => [0.3,2.1,-0.72,-1.57,-1.16,0.57,-0.48,-0.4,-2.3,-0.6],
    "Y" => [1.38,1.48,0.8,-0.56,0,-0.68,-0.31,1.03,-0.05,0.53],
    "V" => [-0.74,-0.71,2.04,-0.4,0.5,-0.81,-1.07,0.06,-0.46,0.65],
    "B" => [0.86,-0.145,-0.85,0.81,-0.37,0.26,-0.805,0.85,0.93,-0.515],
    "Z" => [-0.96,0.215,-0.77,1.135,-0.105,0.495,0.44,-0.165,-0.19,-1.225],
    "X" => [0,0,0,0,0,0,0,0,0,0],
    "J" => [-0.885,-0.08,0.775,-0.935,-0.545,-1.01,0.065,-0.125,0.555,-0.425],
    "-" => [0,0,0,0,0,0,0,0,0,0],
    "*" => [0,0,0,0,0,0,0,0,0,0],
    "." => [0,0,0,0,0,0,0,0,0,0] )
