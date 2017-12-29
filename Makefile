SHELL := /bin/bash

.PHONY: help install precompile test puma-start puma-stop

help: ## This help message
	@echo "usage: make [target]"
	@echo -e "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\\x1b[36m\1\\x1b[m: \2/')"

install: ## Install gems
	exec bundle install

precompile: ## Execute 'rake assets-precompile' command
	exec bundle exec rake assets:precompile

test: ## Run tests
	@exec rspec spec

puma-start: ## Start puma server

puma-stop: ## Stop puma server
