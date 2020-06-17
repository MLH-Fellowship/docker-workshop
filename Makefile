
MLH_VERSION=0.1.2
CURR_BRANCH=$(shell git branch --show-current)

version: mlh_version

mlh_version:
	perl -i -pe 's/image: docker-workshop:.+$$/image: docker-workshop:${MLH_VERSION}/' docker-compose.yml
	perl -i -pe 's/"version":.+$$/"version": "${MLH_VERSION}",/' package.json

release:
	git tag v${MLH_VERSION}
	git push origin v${MLH_VERSION}

delete_branch:
	git co master
	git merge origin/${CURR_BRANCH}
	git push origin master
	git push origin \:${CURR_BRANCH}
	git br -D ${CURR_BRANCH}

