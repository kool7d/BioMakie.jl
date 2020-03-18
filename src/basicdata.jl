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
resCharsDict = OrderedDict(
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
elecolors = Dict( "C" => :darkgreen,
                  "N" => :blue,
                  "H" => :white,
                  "O" => :red,
                  "S" => :yellow,
				  "X" => :gray
)
# known bonds for residues #
heavyresbonds = Dict(
                "ARG" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD"],["CD","NE"],["NE","CZ"],["CZ","NH1"],["CZ","NH2"]],
                "MET" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","SD"],["SD","CE"]],
                "ASN" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","OD1"],["CG","ND2"]],
                "GLU" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD"],["CD","OE1"],["CD","OE2"]],
                "PHE" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD1"],["CG","CD1"],["CD1","CE1"],["CD2","CE2"],["CE1","CZ"],["CE2","CZ"]],
                "ILE" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG1"],["CB","CG2"],["CG1","CD1"]],
                "ASP" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","OD1"],["CG","OD2"]],
                "LEU" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD1"],["CG","CD2"]],
                "ALA" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"]],
                "GLN" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD"],["CD","OE1"],["CD","NE2"]],
                "GLY" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"]],
                "CYS" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","SG"]],
                "TRP" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD1"],["CG","CD2"],["CD1","NE1"],["CD2","CE2"],["CD2","CE3"],["CE2","CZ2"],["CE3","CZ3"],["CZ2","CH2"],["CZ3","CH2"]],
                "TYR" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD1"],["CG","CD2"],["CD1","CE1"],["CD2","CE2"],["CE1","CZ"],["CE2","CZ"]],
                "LYS" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","CD"],["CD","CE"],["CE","NZ"]],
                "PRO" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["N","CD"],["CB","CG"],["CG","CD"]],
                "THR" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","OG1"],["CB","CG2"]],
                "SER" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","OG"]],
                "VAL" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG1"],["CB","CG2"]],
                "HIS" => [["C","O"],["C","OXT"],["C","CA"],["CA","N"],["CA","CB"],["CB","CG"],["CG","ND1"],["CG","CD2"],["ND1","CE1"],["CD2","NE2"],["NE2","CE1"]]
)
hresbonds = Dict(
                "ARG" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"],["CD","HD1"],["CD","HD2"],["NE","HE"],["NH1","HH11"],["NH1","HH12"],["NH2","HH21"],["NH2","HH22"]],
                "MET" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"],["CE","HE1"],["CE","HE2"],["CE","HE3"]],
                "ASN" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["ND2","HD21"],["ND2","HD22"]],
                "GLU" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"]],
                "PHE" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CD1","HD1"],["CD2","HD2"],["CE1","HE1"],["CE2","HE2"],["CZ","HZ"]],
                "ILE" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB"],["CG1","HG11"],["CG1","HG12"],["CG2","HG21"],["CG2","HG22"],["CG","HG23"],["CD1","HD11"],["CD1","HD12"],["CD1","HD13"]],
                "ASP" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"]],
                "LEU" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG"],["CD1","HD11"],["CD1","HD12"],["CD1","HD13"],["CD2","HD21"],["CD2","HD22"],["CD2","HD23"]],
                "ALA" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CB","HB3"]],
                "GLN" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"],["NE2","HE21"],["NE2","HE22"]],
                "GLY" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA1"],["CA","HA2"]],
                "CYS" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["SG","HG"]],
                "TRP" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CD1","HD1"],["NE1","HE1"],["CE3","HE3"],["CZ2","HZ2"],["CH2","HH2"],["CZ3","HZ3"]],
                "TYR" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CD1","HD1"],["CD2","HD2"],["CE1","HE1"],["CE2","HE2"],["OH","HH"]],
                "LYS" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"],["CD","HD1"],["CD","HD2"],["CE","HE1"],["CE","HE2"],["NZ","HZ1"],["NZ","HZ2"]],
                "PRO" => [["OXT","HXT"],["N","HN"],["CA","HA"],["CB","HB1"],["CB","HB2"],["CG","HG1"],["CG","HG2"],["CD","HD1"],["CD","HD2"]],
                "THR" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB"],["OG1","HG1"],["CG2","HG21"],["CG2","HG22"],["CG2","HG23"]],
                "SER" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["OG","HG"]],
                "VAL" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB"],["CG1","HG11"],["CG1","HG12"],["CG1","HG13"],["CG2","HG21"],["CG2","HG22"],["CG2","HG23"]],
                "HIS" => [["OXT","HXT"],["N","HN1"],["N","HN2"],["CA","HA"],["CB","HB1"],["CB","HB2"],["ND1","HD1"],["CD2","HD2"],["CE1","HE1"]],
)
# nonbonds = Dict(
#                 "ARG" => [["OXT"]],
#                 "MET" => [["OXT","HXT"]],
#                 "ASN" => [["OXT","HXT"]],
#                 "GLU" => [["OXT","HXT"]],
#                 "PHE" => [["OXT","HXT"]],
#                 "ILE" => [["OXT","HXT"]],
#                 "ASP" => [["OXT","HXT"]],
#                 "LEU" => [["OXT","HXT"]],
#                 "ALA" => [["OXT","HXT"]],
#                 "GLN" => [["OXT","HXT"]],
#                 "GLY" => [["OXT","HXT"]],
#                 "CYS" => [["OXT","HXT"]],
#                 "TRP" => [["OXT","HXT"]],
#                 "TYR" => [["OXT","HXT"]],
#                 "LYS" => [["OXT","HXT"]],
#                 "PRO" => [["OXT","HXT"]],
#                 "THR" => [["OXT","HXT"]],
#                 "SER" => [["OXT","HXT"]],
#                 "VAL" => [["OXT","HXT"]],
#                 "HIS" => [["OXT","HXT"]],
# )

# types/structs #
struct Bond{T} <:AbstractTether where {T}
	atoms::T
end

nn = Bond(nothing)

nn |> typeof |> supertype
