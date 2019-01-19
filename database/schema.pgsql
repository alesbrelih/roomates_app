DROP TABLE IF EXISTS todo;
DROP TABLE IF EXISTS roommate;

CREATE TABLE roommate(
   id BIGSERIAL PRIMARY KEY NOT NULL,
   name           VARCHAR(50)    NOT NULL,
   email          VARCHAR(50)     NOT NULL,
   password       CHAR(128), 
   datetimecreated  TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
   datetimelogin TIMESTAMPTZ
);

CREATE TABLE todo(
   id BIGSERIAL PRIMARY KEY NOT NULL,
   title VARCHAR(100),
   description TEXT,
   datetimecreated  TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
   roommatecreated_id BIGINT REFERENCES roommate(id) ON UPDATE CASCADE ON DELETE CASCADE,
   datetimecompleted TIMESTAMPTZ,
   datetimecompleted_id BIGINT REFERENCES roommate(id) ON UPDATE CASCADE ON DELETE SET NULL
)