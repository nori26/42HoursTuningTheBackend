all :
	git pull;
	cd development; bash build.sh;
	cd development; docker-compose logs -f nginx