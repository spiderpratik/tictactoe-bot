# AI Bot

Self Learning AI Bot

Build / Run files in `run/`

API Contract
-

- Ping - Check if bot is alive \
  Request: GET /ping \
  Response: 200 OK \
  pong

- Register - Start a game \
  Request: POST /game \
  {"side":"x", "server":"http://localhost:8000/game/1/x?secret=xyz"} \
  Response: 201 Created \
  {"id":"1x"}

- Turn - Move played by other player \
  Request: POST /game/:id?secret=xyz \
  {"move":"c3"} \
  Response: 202 Accepted

- Status - Get the current status of a game \
  Request: GET /game/:id \
  Response: 200 OK \
  {"position": "xo-/ox-/--x", "score":10000000,
  "moves": [{"x":"b2","o":"b1"}, {"x":"b2","o":"b1"}, {"x":"b2","o":"b1"}]}

- Deregister - Clear game's in-memory data \
  Request: DELETE /game/:id?secret=xyz \
  Response: 204 No Content

