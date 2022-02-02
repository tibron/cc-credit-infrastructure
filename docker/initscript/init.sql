CREATE TABLE "public"."credit_infromation"
(
    "id"              integer                NOT NULL,
    "cc_max_duration" integer,
    "cc_min_duration" integer,
    "cc_name"         character varying(255),
    "uuid"            character varying(255) NOT NULL,
    "cc_rate"         numeric(16, 8),
    CONSTRAINT "credit_infromation_pkey" PRIMARY KEY ("id")
) WITH (oids = false);

INSERT INTO "credit_infromation" ("id", "cc_max_duration", "cc_min_duration", "cc_name", "uuid", "cc_rate")
VALUES (1, 360, 3, 'BayernLB', 'bf9ebf04-5247-4b7f-b2bc-656f8bcc3fff', 0.00195),
       (2, 360, 1, 'Commerzbank', '762ccb64-1a44-4ba4-9d51-57df6f18c92f', 0.00196),
       (3, 360, 4, 'Consorsbank', '1eee1b99-d787-46db-b4ad-2370933412e6', 0.001952),
       (4, 360, 6, 'DAB BNP Paribas', 'a577d8d4-136b-4971-accc-cdf0bc5784d7', 0.00199),
       (5, 360, 12, 'Deutsche Bank', '7ae1f8f0-67b7-47b4-a805-02eb46ca217c', 0.00198),
       (6, 360, 1, 'N26', '58c5de84-1f5d-4b6d-93c4-2bf7152b3666', 0.001985),
       (7, 360, 1, 'Sparkasse', 'f7287ce8-8834-477e-a439-da1b40b9717e', 0.00196),
       (8, 360, 24, 'Merrill Lynch', '9584331b-ba94-44cc-8fac-14bebe55f08a', 0.00195),
       (9, 360, 18, 'Morgan Stanley', 'f915f7f6-1e66-4ff4-a217-978e0cd4835f', 0.001977),
       (10, 360, 3, 'Citigroup Global Markets Deutschland', 'd571ab5e-ed9c-435b-8b8f-6aa0e084699a', 0.001985);

CREATE USER credit_service WITH PASSWORD 'securito';
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO credit_service;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO credit_service;