-- mod-version:3 lite-xl 2.1
-- for Isort python formatter
local config = require "core.config"
local formatter = require "plugins.formatter"

config.isort_args = {}

formatter.add_formatter {
	name = "Isort",
	file_patterns = {"%.pyi?$"},
	command = "isort $ARGS $FILENAME",
	args = config.isort_args
}
