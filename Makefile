update: submodule-update

sync: update submodule-sync

init: submodule-deinit submodule-init

# https://faun.pub/git-submodule-cheatsheet-29a3bfe443c3

submodule-deinit:
	git submodule deinit --all --force

submodule-init:
	git submodule update --init

submodule-update:
	git submodule update --remote

submodule-sync:
	git submodule sync

@PHONY: submodule-*
