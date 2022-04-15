all :
	git pull;
	cd development; bash build.sh;
	docker-compose logs -f development/docker-compose.yaml nginx