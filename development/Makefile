all :
	git pull;
	cd development; bash build.sh;
	docker-compose logs -f | grep time

eval:
	bash /root/42HoursTuningTheBackend/scoring/evaluate.sh

sql:
	docker exec -it development_mysql_1 mysql -u root -p