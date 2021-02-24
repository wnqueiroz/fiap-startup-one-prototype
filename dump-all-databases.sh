#/bin/bash

source .env

export POSTGRES_USER

FILES=./dumps/*.sql

for FILE in $FILES; do
    DB_NAME=$(basename "$FILE" .sql)

    echo "Dumping DB ["$DB_NAME"]..."

    docker-compose exec postgres pg_dump -U "$TYPEORM_USERNAME" "$DB_NAME" >./dumps/$DB_NAME.sql
done

echo "Done!"
