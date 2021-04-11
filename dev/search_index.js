var documenterSearchIndex = {"docs":
[{"location":"api/","page":"API","title":"API","text":"Modules = [BioMakie]","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"EditURL = \"https://github.com/kool7d/BioMakie.jl/master/docs/src/GLusage.jl\"","category":"page"},{"location":"GLusage/#Usage","page":"GL Usage","title":"Usage","text":"","category":"section"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"To view a PDB structure, use the viewstruc function with a PDB ID or BioStructures protein structure.","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"sv = viewstruc(\"2VB1\")\n\nstruc = retrievepdb(\"2vb1\", dir = \"data\\\\\")\nsv = viewstruc(struc)\n\nstruc = read(\"data\\\\2vb1_m1.pdb\", BioStructures.PDB)\nsv = viewstruc(struc)","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"<p align=\"center\">   <img width=\"450\" height=\"500\" src=\"assets/2vb1.png\"> </p>","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"(Image: Image of struc)","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"To view a multiple sequence alignment, use the viewmsa function with a Pfam ID or fasta file.","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"mv = viewmsa(\"PF00062\")","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"mv = viewmsa(\"data/fasta1.fas\")","category":"page"},{"location":"GLusage/","page":"GL Usage","title":"GL Usage","text":"(Image: Image of msa)","category":"page"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = BioMakie","category":"page"},{"location":"#BioMakie","page":"Home","title":"BioMakie","text":"","category":"section"},{"location":"#Installation-and-Setup","page":"Home","title":"Installation and Setup","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"This package contains interactive biological visualizations and using Makie.","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> ] add BioMakie\njulia> using BioMakie","category":"page"},{"location":"WGLusage/","page":"WebGL/JSServe Usage","title":"WebGL/JSServe Usage","text":"EditURL = \"https://github.com/kool7d/BioMakie.jl/master/docs/src/WGLusage.jl\"","category":"page"},{"location":"WGLusage/","page":"WebGL/JSServe Usage","title":"WebGL/JSServe Usage","text":"julia> a = 1\n1\n\njulia> b = 2;\n\njulia> c = 3;  # comment\n\njulia> a + b + c\n6","category":"page"}]
}
