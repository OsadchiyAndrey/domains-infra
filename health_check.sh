ENDPOINT_URL="https://domains-test-assignment.pp.ua/api/health"
EXPECTED_RESPONSE="OK"

RESPONSE=$(curl -s $ENDPOINT_URL)

# Check if the response matches the expected value
if [ "$RESPONSE" = "$EXPECTED_RESPONSE" ]; then
    echo "$(date) - Endpoint is healthy"
else
    echo "$(date) - Endpoint is not healthy"
fi
