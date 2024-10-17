
# migrate_down_local: rollback all migrations locally
migrate_down_local: ## Rollback all migrations locally
	migrate -path ./polygon_swiftlink_db_migrations/migrations -database "postgresql://admin:password@localhost:5432/polygon_swiftlink_db?sslmode=disable" -verbose down

# migrate_down_last_local: rollback the last migration locally
migrate_down_last_local: ## Rollback the last migration locally
	migrate -path ./polygon_swiftlink_db_migrations/migrations -database "postgresql://admin:password@localhost:5432/polygon_swiftlink_db?sslmode=disable" -verbose down 1

# dropdb: drop the database
dropdb: ## Drop the database
	docker exec -it postgres dropdb -U admin polygon_swiftlink_db

# createdb: create the database
createdb: ## Create the database
	docker exec -it postgres createdb --username=admin --owner=admin polygon_swiftlink_db