## Vehicle State
curl "https://owner-api.teslamotors.com/api/1/vehicles/${VEHICLE_ID}/data_request/vehicle_state" \
     -H 'client_id: ${TESLA_CLIENT_ID}' \
     -H 'client_secret: ${TESLA_CLIENT_SECRET}' \
     -H 'Authorization: Bearer ${TESLA_API_TOKEN}' \
     -o "vehicle_state-response-$(date +%H:%M.%s).json"
