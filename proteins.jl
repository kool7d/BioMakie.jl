# # Proteins

# ## Structures

# You can load a Protein Structure from the PDB (Protein Data Bank) using its ID like so:
pstruc1 = viewstruc("2VB1")  # opens a 'Scene' and returns a 'StructureView'
# A `StructureView` is an object that contains the relevant information about the
# protein along with the `Scene` and `Layout` which describe the interface.

# You could also look at multiple structures at once.
svs = viewstrucs(["2vb1","1lw3"], colors = ["aqua","ele"])
#md # ![Image of struc](assets/2vb1.png)

# ## Multiple sequence alignments

# You can similarly load a Multiple Sequence Alignment from the Pfam database using its
# ID like so:
msa1 = viewmsa("PF00062")  # opens a 'Scene' and returns an 'MSAView'
#md # ![Image of msa](assets/pf00062.png)
# An `MSAView` contains the most relevant information about the protein sequences in the
# alignment along with the `Scene` and `Layout` which comprise the interface.

# using Literate #src
# Literate.markdown("src/proteins.jl","src") #src