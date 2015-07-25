CREATE ROLE hiplambda LOGIN;

CREATE DATABASE hiplambda OWNER hiplambda;

\c hiplambda

CREATE TABLE hipbot (
  oauthId                  char(36) PRIMARY KEY,
  capabilitiesUrl          varchar(255) NOT NULL,
  roomId                   integer NOT NULL,
  groupId                  integer NOT NULL,
  oauthSecret              char(40) NOT NULL,
  accessToken              char(40) NOT NULL,
  accessTokenExpires       timestamptz NOT NULL
);

GRANT ALL ON hipbot TO hiplambda;

