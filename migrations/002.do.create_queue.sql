CREATE TABLE "queue" (
  "id" SERIAL PRIMARY KEY,
  "description" TEXT NOT NULL,
  "user_id" INTEGER REFERENCES "user"(id)
    ON DELETE CASCADE NOT NULL,
  "mentor_id" INTEGER REFERENCES "user"(id)
    ON DELETE CASCADE DEFAULT NULL, 
  "dequeue" BOOLEAN NOT NULL DEFAULT FALSE,
  "completed" BOOLEAN NOT NULL DEFAULT FALSE
);