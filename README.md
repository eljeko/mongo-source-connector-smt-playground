# mongo-source-connector-smt-playground

This repo is a playground for mongo source connector

# Before you start

Build https://github.com/eljeko/kafka-connect-smt-move-field-to-header and copy the smt zip file:

common-smt-kafka-smt-move-to-header-<VERSION>.zip

Into the subfolder:

```confluent/connect-plugins```

The plugin will be loaded at startup by che `connect` container.

You can update versions in the `.env` file

# Run

Execute the script:

00_clean_and_start.sh           

Will clean reastart and prepeare mongo.


Ohterwise you can:

    01_setup_mongo.sh
    10_create_connector.sh
    19_get_connector_config.sh

Start consume messages:

    30_consume_messages.sh <TOPIC_NAME>

Insert documents:

    20_insert_document_mongo.sh
    21_insert_document_mongo_propagation.sh

*NOTE*: the first message sent may create a WARN because the topic still not exists.

## If somenthing is not working 

check document in mongo with:

    22_list_documents.sh

List topics:

    31_list_topics.sh

## Play with datagen if needed

    99_create_datagen.sh


