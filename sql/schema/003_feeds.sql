-- +goose Up

CREATE TABLE feeds (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP NOT NULL,
    updated_at TIMESTAMP NOT NULL,
    name text NOT NULL,
    url text UNIQUE NOT NULL,
    user_id UUID REFERENCES users(id) ON DELETE CASCADE
);

-- +goose Down

DROP TABLE feeds;