update: submodule-update

sync: update submodule-sync

# https://faun.pub/git-submodule-cheatsheet-29a3bfe443c3

submodule-init:
	git submodule update --init --recursive

submodule-update:
	git submodule update --remote --recursive

submodule-sync:
	git submodule sync

submodule-deinit:
	git submodule deinit --all --force

@PHONY: submodule-*
