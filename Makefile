.PHONY: lint typos
lint: typos

typos:
	@echo "Running crate-ci/typos"
	@# Replace ghcr.io/alex-devis/typos:1.28.4 with ghcr.io/crate-ci/typos:latest
	@# once https://github.com/crate-ci/typos/pull/1183 or equivalent is merged.
	@docker run --rm -v $(PWD):/data -w /data \
		ghcr.io/alex-devis/typos:latest \
		--config typos/.typos.toml . \
		--exclude spellcheck # Do not validate spellcheck wordlist
