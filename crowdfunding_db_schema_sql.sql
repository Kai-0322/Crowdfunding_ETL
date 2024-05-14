CREATE TABLE "category" (
    "category_id" varchar(10) PRIMARY KEY NOT NULL,
    "category" varchar(50) NOT NULL
);

CREATE TABLE "subcategory" (
    "subcategory_id" varchar(10) PRIMARY KEY NOT NULL,
    "subcategory" varchar(50) NOT NULL
);

CREATE TABLE "contacts" (
    "contact_id" int PRIMARY KEY NOT NULL,
    "first_name" varchar(50) NOT NULL,
    "last_name" varchar(50) NOT NULL,
    "email" varchar(100) NOT NULL
);

CREATE TABLE "campaign" (
    "cf_id" int PRIMARY KEY NOT NULL,
    "contact_id" int NOT NULL,
    "company_name" varchar(100) NOT NULL,
    "description" text NOT NULL,
    "goal" numeric(10,2) NOT NULL,
    "pledged" numeric(10,2) NOT NULL,
    "outcome" varchar(50) NOT NULL,
    "backers_count" int NOT NULL,
    "country" varchar(10) NOT NULL,
    "currency" varchar(10) NOT NULL,
    "launch_date" date NOT NULL,
    "end_date" date NOT NULL,
    "category_id" varchar(10) NOT NULL,
    "subcategory_id" varchar(10) NOT NULL,
    FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id"),
    FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);

SELECT * FROM category

SELECT * FROM subcategory

SELECT * FROM contacts

SELECT * FROM campaign