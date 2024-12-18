

# migrate_up_local: apply all migrations locally
migrate_up_local: ## Apply all migrations locally
	migrate -path polygon_swiftlink_db_migrations/migrations -database "postgresql://admin:password@localhost:5432/polygon_swiftlink_db?sslmode=disable" -verbose up

# migrate_down_local: rollback all migrations locally
migrate_down_local: ## Rollback all migrations locally
	migrate -path polygon_swiftlink_db_migrations/migrations -database "postgresql://admin:password@localhost:5432/polygon_swiftlink_db?sslmode=disable" -verbose down

# migrate_down_last_local: rollback the last migration locally
migrate_down_last_local: ## Rollback the last migration locally
	migrate -path polygon_swiftlink_db_migrations/migrations -database "postgresql://admin:password@localhost:5432/polygon_swiftlink_db?sslmode=disable" -verbose down 1

# dropdb: drop the database
dropdb: ## Drop the database
	docker exec -it postgres dropdb -U admin polygon_swiftlink_db

# createdb: create the database
createdb: ## Create the database
	docker exec -it postgres createdb --username=a	dmin --owner=admin polygon_swiftlink_db


## https://www.geeksforgeeks.org/how-to-install-golang-migrate-on-ubuntu/