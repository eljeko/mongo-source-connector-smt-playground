
echo "Installing mongo debezium..."
curl -X GET  -H Content-Type:application/json http://localhost:8083/connectors/mongo-connector-source |jq
