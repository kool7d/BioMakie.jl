var documenterSearchIndex = {"docs":
[{"location":"proteins/","page":"Proteins","title":"Proteins","text":"<!– ```@meta EditURL = \"https://github.com/kool7d/BioMakie.jl/blob/master/src/proteins.jl\"","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"@example 1 using BioMakie Page(exportable=true, offline=true) set_theme!(resolution=(800, 400)) viewstruc(\"2vb1\") ```","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"<!– ```@meta EditURL = \"https://github.com/kool7d/BioMakie.jl/blob/master/src/GLusage.jl\"","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"\r\n## Usage\r\n\r\nTo view a PDB structure, use the `viewstruc` function with a PDB ID or BioStructures protein structure.","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"julia julia> sv = viewstruc(\"2VB1\")","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"julia julia> struc = retrievepdb(\"2vb1\", dir = \"data\\\") julia> sv = viewstruc(struc)","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"julia julia> struc = read(\"data\\2vb1_m1.pdb\", BioStructures.PDB) julia> sv = viewstruc(struc)","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"![Image of struc](https://github.com/kool7d/BioMakie.jl/blob/master/docs/assets/2vb1.png)\r\n\r\nTo view a multiple sequence alignment, use the `viewmsa` function with a Pfam ID or fasta file.","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"julia julia> mv = viewmsa(\"PF00062\")","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"julia julia> mv = viewmsa(\"data/fasta1.fas\") ``` (Image: Image of msa)","category":"page"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = BioMakie","category":"page"},{"location":"#BioMakie","page":"Home","title":"BioMakie","text":"","category":"section"},{"location":"#Installation-and-Setup","page":"Home","title":"Installation and Setup","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"This package contains interactive biological visualizations and using Makie.","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> ] add BioMakie\r\njulia> using BioMakie","category":"page"}]
}
