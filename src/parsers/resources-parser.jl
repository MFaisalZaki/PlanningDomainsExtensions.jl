function parse_resources(problem::Problem, input::Dict{String, Any})
    resources = Dict{Julog.Const, Dict{Symbol, Float64}}()
    for (k, v) in input
        for obj in problem.objects
            if obj.name == Symbol(k)
                resources[obj] = Dict{Symbol, Float64}()
                for (k2, v2) in v
                    resources[obj][Symbol(k2)] = v2
                end
                break
            end
        end
    end
    return resources
end

function load_resources(problem::Problem, io::Union{IO,String})
    jsonfile = JSON.parsefile(io)
    return parse_resources(problem, jsonfile)
end

function load_resources(domain::Domain, problem::Problem)
    defaultvalues = getresourceutilsextinfo();
    availabledomains = [string(d) for d in collect(keys(defaultvalues))];
    for d in availabledomains
        if occursin(d, string(domain.name)) 
            return parse_resources(problem, defaultvalues[d])
        end
    end
end
