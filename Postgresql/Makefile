postgres:
	docker run --name postgres12 -p 5432:5432 -v ./data:/var/lib/postgresql/data -e POSTGRES_USER=root -e POSTGRES_PASSWORD=password -d postgres:12-alpine

createdb:
	docker exec -it postgres12 createdb --username=root --owner=root product

dropdb:
	docker exec -it postgres12 dropdb product


.PHONY: postgres createdb dropdb