
function generatereouscesdetails(arg, max, min, delta)
    resources = Dict{String, Dict{String, Float64}}()
    for i in 0:10
        resources[string(arg, i)] = Dict()
        resources[string(arg, i)]["max"]   = max
        resources[string(arg, i)]["min"]   = min
        resources[string(arg, i)]["delta"] = delta
    end
    return resources
end

function generatefromlist(varslist, max, min, delta)
    resources = Dict{String, Dict{String, Float64}}()
    for i in varslist
        resources[string(i)] = Dict{String, Float64}()
        resources[string(i)]["max"]   = max
        resources[string(i)]["min"]   = min
        resources[string(i)]["delta"] = delta
    end
    return resources
end

