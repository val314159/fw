
.dockerfiles::;make -C $@

docs::;make -C $@

_clean:: clean tree
clean::
	find . -name '*~' -o -name '.*~' | xargs rm -fr
	rm -fr __pycache__ node_modules dist .parcel-cache
	rm -fr yarn.lock bun.lockb package-lock.json
tree:;	tree -a -I .git
