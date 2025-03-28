sh scripts/tear-down-cdc-mongo.sh
sh scripts/bootstrap-cdc-mongo.sh
sleep 5
./01_setup_mongo.sh
echo
echo "Done"