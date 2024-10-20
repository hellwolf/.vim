update: submodule-update

sync: submodule-sync

init: submodule-deinit submodule-init

# https://faun.pub/git-submodule-cheatsheet-29a3bfe443c3

submodule-deinit:
	git submodule deinit --all --force

submodule-init:
	git submodule update --init --recursive

submodule-update:
	git submodule update --recursive

submodule-sync:
	git submodule update --remote --recursive
	git submodule sync

@PHONY: submodule-*
