
echo "Insert a record in outbox-->loans..."
export AMOUNT=$RANDOM
echo $AMOUNT
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
  },
  "propagation": {
    "traceparent": "00-634e03d3d869dbdaf64dafe140a8f7c6-d3e4741373c99de0-01"
  }
}
]);
EOF

echo "View record in outbox-->loans..."

docker exec -i mongo mongosh << EOF
use outbox
db.loans.find().pretty();
EOF

