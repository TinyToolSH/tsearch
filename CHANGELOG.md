# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added 

### Fixed

### Changed

### Removed

## [0.1.0]

### Added 

* Added templates to repository
* added list.config to store all engines, queries and programs options, optimized tsearch and dmenu launcher by awk scripts
* Added dependencies to tsearch readme
* Added makefile to tsearch
* Added licence file to tsearch
* Added licence to tsearch scripts
* Created README and added hackaday engine
* added listing function + fixed argument checking
* added info about config file on help
* added argument to list engines/programs available
* added simple instructions to fill search options file
* added option to get values by especifing path [tsearch] implemeted yaml config file

### Fixed

* fixed problem related to shell not supporting substitution command

### Changed

* Imported tsearch from tinytools repository
* Updated tsearch README
* initial program default is the system default (xdg-open)
* made sure that clipboard term doesn't break li as dmenu option
* implemented function do get keys in a specific node of yaml file
* tweaks on yaml parser
* tested listing items by external file
* Improved the dmenu launcher, being now able to optionally choose the program and engine to search
* tested listing items by external file
* Improved the dmenu launcher, being now able to optionally choose the program and engine to search

### Removed

* removed local script execution
* Removed unecessary files

[unreleased]: https://github.com/TinyToolSH/tsearch/compare/HEAD

