ansible=ansible-playbook

flags=--ask-become-pass

playbook=local.yml

username=ramymain

execute=$(ansible) $(flags) -u $(username) $(playbook)

.PHONY: core
core:
	$(execute) -t core

.PHONY: ssh
ssh: 
	$(execute) -t ssh --ask-vault-pass

.PHONY: install
install: 
	$(execute) -t install --ask-vault-pass

.PHONY: server
server: 
	$(execute) -t server

.PHONY: stow
stow: 
	$(execute) -t stow

.PHONY: dotfiles
dotfiles: 
	$(execute) -t dotfiles

.PHONY: productivity
productivity: 
	$(execute) -t productivity

.PHONY: brave
brave: 
	$(execute) -t brave

.PHONY: tailscale
tailscale: 
	$(execute) -t tailscale

.PHONY: all
all: 
	$(execute) -t all --ask-vault-pass
