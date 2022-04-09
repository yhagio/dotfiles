infup() {
    echo "Bring up infra ..."
    docker-compose -f docker-compose.yml up
}

infdown() {
    echo "Bring down infra ..."
    docker-compose -f docker-compose.yml down
}
