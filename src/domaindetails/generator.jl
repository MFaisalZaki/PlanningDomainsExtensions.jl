function getresourceutilsextinfo()
    domains = Dict{String, Dict{String, Any}}()
    # Domains from IPC-1998
    domains["grid"]      = generatereouscesdetails("key", 100, 0, 5)
    domains["gripper"]   = generatefromlist(["left", "right"], 100, 0, 5)
    # Domains from IPC-2000
    domains["logistics"] = generatereouscesdetails("tru", 100, 0, 5)
    # Domains from IPC-2002
    domains["depots"]    = generatereouscesdetails("truck", 100, 0, 5)
    domains["driverlog"] = generatereouscesdetails("truck", 100, 0, 5)
    domains["rover"]     = generatereouscesdetails("rover", 100, 0, 5)
    domains["satellite-strips-automatic"] = generatereouscesdetails("satellite", 100, 0, 5)
    # Domains from IPC-2004
    domains["satellite-strips"] = generatereouscesdetails("satellite", 100, 0, 5)
    # Domains from IPC-2008
    domains["scanalyzer-3d"] = generatereouscesdetails("car-in-", 100, 0, 5)
    domains["sokoban"] = generatereouscesdetails("player-0", 100, 0, 5)
    domains["woodworking"] = generatereouscesdetails("grinder", 100, 0, 5)
    # Domains from IPC-2011
    domains["no-mystery"] = generatereouscesdetails('t', 100, 0, 5)
    # Domains from IPC-2014
    domains["city-car-sequential-satisficing"]   = generatereouscesdetails("car", 100, 0, 5)
    domains["floor-tile-sequential-satisficing"] = generatereouscesdetails("robot", 100, 0, 5)
    domains["hiking-sequential-satisficing"]     = generatereouscesdetails("car", 100, 0, 5)
    return domains
end
    
