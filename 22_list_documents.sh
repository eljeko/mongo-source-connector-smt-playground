
echo "View record in outbox-->loans..."

docker exec -i mongo mongosh << EOF
use outbox
db.loans.find().pretty();
EOF

