-- Deploy 588_videos:02_add_foreign_keys to pg

BEGIN;

ALTER TABLE "movie" ADD COLUMN "support_id" INT REFERENCES "support"("id") ON DELETE CASCADE;
ALTER TABLE "movie" ADD COLUMN "director_id" INT REFERENCES "director"("id") ON DELETE CASCADE;
ALTER TABLE "movie" ADD COLUMN "collection_id" INT REFERENCES "collection"("id") ON DELETE CASCADE;

ALTER TABLE "session" ADD COLUMN "user_id" INT REFERENCES "user"("id") ON DELETE CASCADE;
ALTER TABLE "session" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "review" ADD COLUMN "user_id" INT REFERENCES "user"("id") ON DELETE CASCADE;
ALTER TABLE "review" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;
ALTER TABLE "review" ADD COLUMN "session_id" INT REFERENCES "session"("id") ON DELETE CASCADE;

ALTER TABLE "favorite" ADD COLUMN "user_id" INT REFERENCES "user"("id") ON DELETE CASCADE;
ALTER TABLE "favorite" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "see" ADD COLUMN "user_id" INT REFERENCES "user"("id") ON DELETE CASCADE;
ALTER TABLE "see" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "play" ADD COLUMN "actor_id" INT REFERENCES "actor"("id") ON DELETE CASCADE;
ALTER TABLE "play" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "production" ADD COLUMN "production_company_id" INT REFERENCES "production_company"("id") ON DELETE CASCADE;
ALTER TABLE "production" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "type" ADD COLUMN "genre_id" INT REFERENCES "genre"("id") ON DELETE CASCADE;
ALTER TABLE "type" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

ALTER TABLE "origin" ADD COLUMN "production_country_id" INT REFERENCES "production_country"("id") ON DELETE CASCADE;
ALTER TABLE "origin" ADD COLUMN "movie_id" INT REFERENCES "movie"("id") ON DELETE CASCADE;

COMMIT;