import Base.convert
function convert(::Type{T}, arr::Array{T,1}) where {T<:Number}
    if size(arr,1) > 1
        return T.(arr)
    end
    return T(arr[1])
end
function convert(::Type{Array{T}}, t::T) where {T<:Number}
    return [t]
end
function convert(::Type{T}, arr::Array{T,1}) where {T<:AbstractString}
    if size(arr,1) > 1
        return T.(arr)
    end
    return T(arr[1])
end
convert(::Type{String}, i::Int) = "$i"
function convert(::Type{String}, f::T) where T<:Union{Float16,Float32,Float64}
	"$f"
end
function varcall(name::String, body::Any)
    name=Symbol(name)
    @eval (($name) = ($body))
	return Symbol(name)
end
function collectkeys(args)
    return keys(args) |> collect
end
function collectvals(args)
    return values(args) |> collect
end
function reversekv(dict::AbstractDict{K,V}) where {K,V}
    vkdict = [x[2].=>x[1] for x in dict]
	return Dict{V,K}(vkdict)
end
function reversekv(dict::AbstractDict{K,V}) where {K,V}
	vkdict = [x[2].=>x[1] for x in dict]
    if typeof(dict) <: OrderedDict
        return OrderedDict{V,K}(vkdict)
    end
	return Dict{V,K}(vkdict)
end
pdbS(x; kwargs...) = try
        retrievepdb(x; kwargs...)
    catch
        println("$(x) doesn't work, sorry")
    end
pdbM(x; model = "1", group = "ATOM", kwargs...) = try
        read("$pdbdir\\$(x).pdb", MIToS.PDB.PDBFile, model = "1", group = "ATOM", kwargs...)
    catch
        pdbS(x; kwargs...)
    end
anynan(x) = any(isnan.(x))
dfr(x) = DataFrame(x)
dfr(xs...) = DataFrame(xs...)
indexshift(idxs, shift=1.0) = try
		float.(idxs).+=shift .|> Int
	catch
		float.(idxs).+=shift
end
function tryint(number)
    return (try
        Int64(number)
    catch
        number
    end)
end
function tryfloat(number)
    return (try
        Float64(number)
    catch
        number
    end)
end
function tryfloat32(number)
    return (try
        Float32(number)
    catch
        number
    end)
end
function kdict(str::String)
    if length(str) == 3
        kideradict3["$str"]
    elseif length(str) == 1
        kideradict["$str"]
    else
        throw(ErrorException("can't get kdict for $str"))
    end
end
kdict(c::Char) = kdict(string(c))
function unitrange(arr::AbstractVector{T}) where {T<:Int}
    start_value = arr[1]
    end_value = arr[end]
    end_value == start_value && error("the start and end points are the same value")
	end_value < start_value && error("the last value is lower than the first")
    for i in 2:size(arr,1)
        if arr[i]-arr[i-1] != 1
            error("inconsistent step for unit range")
        end
    end
    return UnitRange(start_value,end_value)
end
function steprange(arr::AbstractVector{T}) where {T<:Real}
    start_value = arr[1]
    end_value = arr[end]
	start_value == end_value && error("the start and end points are the same value")
    step = 1
    for i in 2:size(arr,1)
        if i == 2
            step = arr[i]-arr[i-1]
        end
        if arr[i]-arr[i-1] != step
            error("inconsistent step for step range")
        end
    end
    return StepRangeLen(start_value,step,length(arr))
end
splatrange(range) = [(range...)]
function splatranges(ranges...)
    splattedrange = []
    for range in ranges
        splattedrange = vcat(splattedrange, splatrange(range))
    end
    return eval([Int64.(splattedrange)...])
end
carbonselector(at) = element(at) in ("C","CA","CB")
nitroselector(at) = element(at) == "N"
nothydrogenselector(at) = element(at) != "H"
fullbbselector(at) = atomname(at) ∈ ("N","CA","C","O")
sidechainselector(at) = !fullbbselector(at)
resselector(at, res = "GLY") = resname(at) == "$res"
function internaldistances(atms::AbstractVector{AbstractAtom})
    internaldists = zeros(Float64, (size(atms,1),size(atms,1)))
    for (i,x) in enumerate(atms)
        for (j,y) in enumerate(atms)
            internaldists[i,j] = Distances.euclidean(BioStructures.coords(x),BioStructures.coords(y))
        end
    end
    return internaldists
end
function internaldistances(vals::AbstractArray{Number})
    internaldists = zeros(Float64, (size(vals,1),size(vals,1)))
    for (i,x) in enumerate(vals)
        for (j,y) in enumerate(vals)
            internaldists[i,j] = Distances.euclidean(x,y)
        end
    end
    return internaldists
end
function internaldistances(vals::AbstractArray)
    internaldists = zeros(Float64, (size(vals,1),size(vals,1)))
    for i in 1:size(vals,1)
        for j in 1:size(vals,1)
            internaldists[i,j] = Distances.euclidean(vals[i,:],vals[j,:])
        end
    end
    return internaldists
end
function internaldistorders(internaldists::AbstractArray)
    orders = zeros(Float64, (size(internaldists,1),size(internaldists,2)))
    for i = 1:size(internaldists,1)
        orders[i,:] = sortperm(sortperm(internaldists[i,:]))
    end
    return orders
end
function resmass(res::BioStructures.Residue)
    total = 0.0
    for atm in res
        total+=atomicmasses["$(element(atm, strip=true))"]
    end
    return total
end
function resvdw(res::BioStructures.Residue)
    total = 0.0
    for atm in res
        total+=vdw["$(element(atm, strip=true))"]
    end
    return total
end
function makeclrgrad(vec::AbstractArray{T}, colrmap::AbstractArray) where T<:Real
    softmaxvec = Flux.softmax(vec)
    scalefactor = size(colrmap,1) / maximum(softmaxvec)
    colorindices = round.(Int64, softmaxvec .* scalefactor)
    indexedcolors = colrmap[colorindices]
    return indexedcolors
end
∑(x) = sum(x)
function centerofpoints(points::AbstractArray{T}) where T <: Number
    xs = points[:,1]
    ys = points[:,2]
    zs = points[:,3]
    return centerofpoints = [ ∑(xs)/size(xs,1), ∑(ys)/size(ys,1), ∑(zs)/size(zs,1) ] |> _g
end
function centerofmass(atms::AbstractArray{AbstractAtom})
    masses = []
    positions = coordarray(atms)
    xs = positions[1,:]
    ys = positions[2,:]
    zs = positions[3,:]
    totalmass = 0.0
    for i = 1:length(atms)
        if element(atms[i]) == "C"
            push!(masses, 12.0107)
            totalmass += 12.0107
        elseif element(atms[i]) == "N"
            push!(masses, 14.0067)
            totalmass += 14.0067
        elseif element(atms[i]) == "H"
            push!(masses,1.0079)
            totalmass += 1.0079
        elseif element(atms[i]) == "O"
            push!(masses, 15.9994)
            totalmass += 15.9994
        elseif element(atms[i]) == "S"
            push!(masses, 32.065)
            totalmass += 32.065
        else
            push!(masses, 0.0)
            totalmass += 0.0
        end
    end
    return centerofmass = [ ∑(masses.*xs)/totalmass, ∑(masses.*ys)/totalmass, ∑(masses.*zs)/totalmass ]
end
function surfacearea(coordinates, connectivity)
    totalarea = 0.0
    for i = 1:size(connectivity,1)
        totalarea += area(GeometryBasics.Point3f0.(coordinates[connectivity[i,1],:],
						coordinates[connectivity[i,2],:], coordinates[connectivity[i,3],:]))
    end
    return totalarea
end
function linesegs(arr::AbstractArray{AbstractFloat,3})
    new_arr::AbstractArray{Point3f0} = []
    for i in 1:size(arr,1)
        push!(new_arr, Makie.Point3f0(arr[i,1,:]))
        push!(new_arr, Makie.Point3f0(arr[i,2,:]))
    end
    return new_arr |> combinedims |> transpose |> collect
end
function transposed(arr::AbstractArray)
	arr2 = arr
    try
        @cast arr[j,i] := arr[i,j]
        arr2 = arr |> dfr |> Array
    catch
        arr2 = permutedims(arr[:,1])
        for i = 2:size(arr,2)
            arr2 = vcat(arr2, permutedims(arr[:,i]))
        end
    end
    return arr2
end
_t(arr::AbstractArray) = transposed(arr)
_v(arr::AbstractArray) = reverse(arr; dims = 1)
_h(arr::AbstractArray) = reverse(arr; dims = 2)
function _stripkeys(dict::AbstractDict)
    ks = string.(strip.(keys(dict)))
    return ks
end
_stripallkeys(dicts::AbstractArray) =  _stripkeys.(dicts)
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
    "." => [0,0,0,0,0,0,0,0,0,0],
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
