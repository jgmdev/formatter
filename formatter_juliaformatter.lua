-- mod-version:3
-- for JuliaFormatter formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.julia_args = {}

formatter.add_formatter {
    name = "JuliaFormatter",
    file_patterns = {"%.jl$", "%.julia$"},
    command = "julia --compile=min -e $ARGS 'import JuliaFormatter: format_file; format_file($FILENAME)'",
    args = config.julia_args
}
