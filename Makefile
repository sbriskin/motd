DIR := /etc/update-motd.d

.PHONY: help
help:
	@printf "$$(grep -hE '^\S+:.*##' $(MAKEFILE_LIST) | sed -e 's/:.*##\s*/:/' -e 's/^\(.\+\):\(.*\)/\ \1\ :\2/' | column -c2 -t -s :)\n"

.PHONY: install
install: ## Install MOTD files to their places
	chmod +x ./motd
	chmod +x ./??-*
	@echo "Installing to $(DIR)"
	mkdir -p $(DIR)/
	cp ./motd /usr/bin/motd
	cp ./00-banner $(DIR)/
	cp ./01-welcome $(DIR)/
	cp ./05-storage-alert $(DIR)/

.PHONY: uninstall
uninstall: ## Remove MOTD files
	@echo "Uninstalling from $(DIR)"
	rm $(DIR)/00-banner
	rm $(DIR)/01-welcome
	rm $(DIR)/05-storage-alert
	rm /usr/bin/motd
