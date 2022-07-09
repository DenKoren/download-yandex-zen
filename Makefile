#!/usr/bin/env make --makefile

mkfile_path := $(abspath $(lastword $(MAKEFILE_LIST)))
mkfile_dir := $(shell dirname $(mkfile_path))

.DEFAULT_GOAL := install

install:
	@echo "  installing 'download-yandex-zen' script to '/usr/local/bin'..."
	@cp './download-yandex-zen' '/usr/local/bin'
	@chmod +x '/usr/local/bin/download-yandex-zen'

brew-%:
	@echo "  installing '$*' with homebrew"
	@brew install $* 1>/dev/null 2>/dev/null


install-osx: brew-ffmpeg \
			brew-fish \
			install
	@echo "  installing 'Yandex.Zen downloader' script to '~/Desktop'"
	@cp './Yandex.Zen downloader' ~/Desktop/
	@chmod +x ~/Desktop/'Yandex.Zen downloader'
	@cp './Yandex.Zen downloader (rus)' ~/Desktop/
	@chmod +x ~/Desktop/'Yandex.Zen downloader (rus)'
