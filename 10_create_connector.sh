

echo "Try clean up..."
curl -X DELETE -H Accept:application/json -H Content-Type:application/json http://localhost:8083/connectors/mongo-connector-source
sleep 3
echo "Installing mongo connector..."
curl -X POST -H Accept:application/json -H Content-Type:application/json http://localhost:8083/connectors/ -d @config/connector-config-source.json|jq
