-- Enable uuid-ossp extension if not already enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Create users table with a primary key on the id column and a unique constraint on the email column
CREATE TABLE IF NOT EXISTS "users" (
    "id" uuid PRIMARY KEY DEFAULT uuid_generate_v4 (),
    "first_name" varchar NOT NULL,
    "last_name" varchar NOT NULL,
    "email" varchar NOT NULL UNIQUE,
    "phone" varchar NOT NULL,
    "password" varchar NOT NULL,
    "verified" boolean DEFAULT false,
    "updated_at" timestamptz DEFAULT now(),
    "created_at" timestamptz DEFAULT now()
);