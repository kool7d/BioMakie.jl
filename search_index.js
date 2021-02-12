var documenterSearchIndex = {"docs":
[{"location":"proteins/","page":"Proteins","title":"Proteins","text":"EditURL = \"https://github.com/kool7d/BioMakie.jl/blob/master/src/proteins.jl\"","category":"page"},{"location":"proteins/#Proteins","page":"Proteins","title":"Proteins","text":"","category":"section"},{"location":"proteins/#Structures","page":"Proteins","title":"Structures","text":"","category":"section"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"You can load a Protein Structure from the PDB (Protein Data Bank) using its ID like so:","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"pstruc1 = viewstruc(\"2VB1\")  # opens a 'Scene' and returns a 'StructureView'","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"A StructureView is an object that contains the relevant information about the protein along with the Scene and Layout which describe the interface.","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"You could also look at multiple structures at once.","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"svs = viewstrucs([\"2vb1\",\"1lw3\"])","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"(Image: Image of 2strucs2)","category":"page"},{"location":"proteins/#Multiple-sequence-alignments","page":"Proteins","title":"Multiple sequence alignments","text":"","category":"section"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"You can similarly load a Multiple Sequence Alignment from the Pfam database using its ID like so:","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"msa1 = viewmsa(\"PF00062\")  # opens a 'Scene' and returns an 'MSAView'","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"(Image: Image of msa) (Image: Image of msa2)","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"An MSAView contains the most relevant information about the protein sequences in the alignment along with the Scene and Layout which comprise the interface.","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"","category":"page"},{"location":"proteins/","page":"Proteins","title":"Proteins","text":"This page was generated using Literate.jl.","category":"page"},{"location":"","page":"Home","title":"Home","text":"EditURL = \"https://github.com/kool7d/BioMakie.jl/blob/master/src/index.jl\"","category":"page"},{"location":"","page":"Home","title":"Home","text":"CurrentModule = BioMakie","category":"page"},{"location":"#BioMakie","page":"Home","title":"BioMakie","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"A user interface for bioinformatics.","category":"page"},{"location":"#Description","page":"Home","title":"Description","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"BioMakie.jl is a package designed to facilitate visual investigation of biological data. It aims to provide extra tools to view and measure differences between data of such things as protein structures and sequences. If you have ever been staring at a command line or a REPL thinking about how much easier it would be if you had some graphical controls, then maybe BioMakie can be of some help!","category":"page"},{"location":"","page":"Home","title":"Home","text":"BioMakie utilizes other packages in the BioJulia ecosystem like BioStructures.jl, and outside packages like MIToS.jl to perform comparisons, load data, and to do most of the computation/numerical analysis. Makie Node objects can contain data and be tracked. Any changes or updates to the data inside these Nodes will be heard by the Node and this can drive event chains that update many interdependent values and their graphical representations immediately.","category":"page"},{"location":"","page":"Home","title":"Home","text":"For more examples of what Makie can do, visit the documentation at https://makie.juliaplots.org/stable/","category":"page"},{"location":"#Setup","page":"Home","title":"Setup","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"# in the REPL\n]add BioMakie\n\n# elsewhere\nusing Pkg\nPkg.add(\"BioMakie\")\n\n# import the package\nusing BioMakie","category":"page"},{"location":"#Basic-Usage","page":"Home","title":"Basic Usage","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"To view a PDB structure, use the viewstruc function with a PDB ID. The following code plots the structure then returns a StructureView with the scene and layout.","category":"page"},{"location":"","page":"Home","title":"Home","text":"sv = viewstruc(\"2VB1\")","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: Image of struc)","category":"page"},{"location":"","page":"Home","title":"Home","text":"(Image: Image of strucc)","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"This page was generated using Literate.jl.","category":"page"},{"location":"API/#API","page":"API","title":"API","text":"","category":"section"},{"location":"API/#Index","page":"API","title":"Index","text":"","category":"section"},{"location":"API/","page":"API","title":"API","text":"","category":"page"},{"location":"API/#List","page":"API","title":"List","text":"","category":"section"},{"location":"API/","page":"API","title":"API","text":"Modules = [BioMakie]","category":"page"}]
}
