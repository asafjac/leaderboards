CREATE SCHEMA IF NOT EXISTS leaderboards;

CREATE TABLE IF NOT EXISTS leaderboards.users
(
    id uuid NOT NULL DEFAULT gen_random_uuid(),
    username text NOT NULL,
    avatar text NOT NULL,
    CONSTRAINT users_pkey PRIMARY KEY (id),
    CONSTRAINT users_username_key UNIQUE (username)
);

CREATE TABLE IF NOT EXISTS leaderboards.scores
(
    id uuid NOT NULL DEFAULT gen_random_uuid(),
    user_id uuid NOT NULL,
    score integer NOT NULL,
    created_at time with time zone NOT NULL DEFAULT now(),
    CONSTRAINT scores_pkey PRIMARY KEY (id),
    CONSTRAINT scores_user_id_fkey FOREIGN KEY (user_id)
        REFERENCES leaderboards.users (id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);