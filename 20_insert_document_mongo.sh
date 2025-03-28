
echo "Insert a record in outbox-->loans..."
export AMOUNT=$RANDOM
docker exec -i mongo mongosh << EOF
use outbox
db.loans.insert([
{
  "aggregateId": "$AMOUNT$AMOUNT",
  "aggregateType": "Consumer Loan",
  "topicName": "CONSUMER_LOAN",
  "eventDate": "2024-08-20T09:42:02.665Z",
  "eventId": $AMOUNT,
  "eventType": "INSTALLMENT_PAYMENT",
  "payload": {
    "amount": "$AMOUNT"    
  }
}
]);
EOF

echo "View record in outbox-->loans..."

docker exec -i mongo mongosh << EOF
use outbox
db.loans.find().pretty();
EOF
echo "Done"

