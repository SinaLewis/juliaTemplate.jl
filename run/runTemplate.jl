# import necessary packages
using Dates, JSON
using LaTeXStrings, Plots
# using Debugger

# create string with the current date/time
current_date = Dates.format(Dates.now(), "yyyy-mm-dd_HH-MM-SS")
# create string with location to save data
location = "data/" * current_date
# create folder to save results
mkdir(location)
# copy any parameter files to the location
# cp("params.json", location * "/params.json")


############ create plots ###############
# specify backend
pyplot()

d = Dict()
open("params.json", "r") do f
    global d = JSON.parse(f)
end