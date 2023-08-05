-- Logs table
CREATE TABLE "Logs"(
"detail" text,
"date" timestamp,
"audit" varchar(50)
);

-- OperationClaims table
CREATE TABLE "OperationClaims"(
"id" serial PRIMARY KEY,
"name" varchar(50) NOT NULL,
"explanation" integer,
"description" varchar(50)
);

-- UserInfos table
CREATE TABLE "UserInfos"(
"id" serial PRIMARY KEY,
"userId" integer NOT NULL,
"loginDate" date NOT NULL,
"profileCheck" boolean NOT NULL,
"profileImagePath" text,
"profileText" varchar(50),
"gender" boolean NOT NULL,
"birthdayDate" timestamp
);

-- UserOperationClaims table
CREATE TABLE "UserOperationClaims"(
"id" serial PRIMARY KEY,
"userId" integer NOT NULL,
"operationClaimId" integer NOT NULL
);

-- Users table
CREATE TABLE "Users"(
"id" serial PRIMARY KEY,
"firstName" varchar(50),
"lastName" varchar(50),
"nickName" varchar(50) NOT NULL,
"passwordhash" bytea NOT NULL,
"passwordsalt" bytea NOT NULL,
"Address" varchar(50),
"Phone" varchar(10),
"email" text NOT NULL,
"verificationCode" varchar(50) NOT NULL,
"updateTime" timestamp,
"explanation" varchar(50),
"isVerified" boolean NOT NULL,
"status" boolean
);

-- Add Foreign keys
ALTER TABLE "UserInfos"
ADD FOREIGN KEY ("userId")
REFERENCES "Users" ("id");

ALTER TABLE "UserOperationClaims"
ADD FOREIGN KEY ("operationClaimId")
REFERENCES "OperationClaims" ("id");

ALTER TABLE "UserOperationClaims"
ADD FOREIGN KEY ("userId")
REFERENCES "Users" ("id");
