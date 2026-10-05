CREATE TABLE agents (id INTEGER PRIMARY KEY, name TEXT, team TEXT);
CREATE TABLE tickets (
    id INTEGER PRIMARY KEY, agent_id INTEGER, customer TEXT,
    subject TEXT, priority TEXT, opened DATETIME, closed DATETIME);
CREATE TABLE messages (
    id INTEGER PRIMARY KEY, ticket_id INTEGER,
    author TEXT, text TEXT, ts DATETIME);
