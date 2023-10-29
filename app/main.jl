using Pkg
Pkg.activate(".")

using PDDL

include("../src/domaindetails/utils.jl")
include("../src/domaindetails/generator.jl")
include("../src/parsers/resources-parser.jl")


roverdomain  = load_domain(IPCInstancesRepo,  "ipc-2002-rovers-strips-automatic");
roverproblem = load_problem(IPCInstancesRepo, "ipc-2002-rovers-strips-automatic", 3);

roverproblem.name
string(roverdomain.name)

domain = roverdomain
problem = roverproblem

r = load_resources(domain, problem)
