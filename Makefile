.PHONY: tag

tag:
	git tag "release-`date +%Y%m%d`"
