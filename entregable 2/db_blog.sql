CREATE TABLE "user" (
  "id_user" SERIAL PRIMARY KEY,
  "name" varchar,
  "password" varchar,
  "age" int
);

CREATE TABLE "post" (
  "id_post" SERIAL PRIMARY KEY,
  "autor" int,
  "title" varchar,
  "description" varchar,
  "content" varchar,
  "categoria" int,
  "comment" int
);

CREATE TABLE "categorias" (
  "id_categoria" SERIAL PRIMARY KEY,
  "name" int
);

CREATE TABLE "comentarios" (
  "id_comentario" SERIAL PRIMARY KEY,
  "comment" varchar,
  "autor" int
);

CREATE TABLE "comentarios_post" (
  "id" SERIAL PRIMARY KEY,
  "id_comentario" init,
  "id_post" init
);

ALTER TABLE "post" ADD FOREIGN KEY ("autor") REFERENCES "user" ("name");

ALTER TABLE "categorias" ADD FOREIGN KEY ("id_categoria") REFERENCES "post" ("categoria");

ALTER TABLE "post" ADD FOREIGN KEY ("id_post") REFERENCES "comentarios_post" ("id_post");

ALTER TABLE "comentarios" ADD FOREIGN KEY ("id_comentario") REFERENCES "comentarios_post" ("id_comentario");

ALTER TABLE "comentarios" ADD FOREIGN KEY ("autor") REFERENCES "user" ("id_user");

ALTER TABLE "post" ADD FOREIGN KEY ("comment") REFERENCES "comentarios_post" ("id");
