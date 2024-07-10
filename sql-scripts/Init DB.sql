-- Drop tables
drop table roles;
drop table employee;
drop table members;

-- Create the table
CREATE COLUMN TABLE employee (
  id INTEGER NOT NULL PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  first_name NVARCHAR(45) NOT NULL,
  last_name NVARCHAR(45) NOT NULL,
  email NVARCHAR(45) NOT NULL
);

CREATE COLUMN TABLE members (
  user_id NVARCHAR(50) PRIMARY KEY,
  pw CHAR(68) NOT NULL,
  active SMALLINT NOT NULL
);

CREATE TABLE roles (
  user_id VARCHAR(50) NOT NULL,
  role VARCHAR(50) NOT NULL,
  CONSTRAINT roles_pkey PRIMARY KEY (user_id, role),
  CONSTRAINT roles_user_id_fkey FOREIGN KEY (user_id) REFERENCES members (user_id)
);

INSERT INTO employee VALUES (1,'Leslie','Andrews','leslie@gmail.com');
INSERT INTO employee VALUES (2,'Emma','Baumgarten','emma@gmail.com');
INSERT INTO employee VALUES	(3,'Yuri','Petrov','yuri@gmail.com');
INSERT INTO employee VALUES	(4,'Juan','Vega','juan@gmail.com');
INSERT INTO employee VALUES	(5,'Edu','Vergara','edu@gmail.com');

INSERT INTO members VALUES ('susan','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q',1);
INSERT INTO members VALUES ('mary','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q',1);
INSERT INTO members VALUES ('edu','{bcrypt}$2a$10$qeS0HEh7urweMojsnwNAR.vcXJeXR1UcMRZ2WcGQl9YeuspUdgF.q',1);

INSERT INTO roles VALUES ('susan','ROLE_EMPLOYEE');
INSERT INTO roles VALUES ('mary','ROLE_EMPLOYEE');
INSERT INTO roles VALUES ('mary','ROLE_MANAGER');
INSERT INTO roles VALUES ('edu','ROLE_EMPLOYEE');
INSERT INTO roles VALUES ('edu','ROLE_MANAGER');
INSERT INTO roles VALUES ('edu','ROLE_ADMIN');

