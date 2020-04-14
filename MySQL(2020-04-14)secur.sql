use secur;
drop table tbl_users;
drop table authorities;

DELETE FROM tbl_users WHERE user_name='admin';

INSERT INTO tbl_users (user_name,user_pass,email,phone,address,enabled)
VALUES('admin','admin','hhjkjm123@naver.com','010-2867-9959','광주광역시',true);
SELECT * FROM tbl_users;

INSERT INTO authorities(username,authority)
VALUES('admin','ADMIN');
INSERT INTO authorities(username,authority)
VALUES('admin','ROLE_ADMIN');
SELECT * FROM authorities;

INSERT INTO tbl_users (user_name,user_pass,email,phone,address,enabled)
VALUES('user','user','user@naver.com','010-2222-3333','광주광역시',true);
SELECT * FROM tbl_users;

INSERT INTO authorities(username,authority)
VALUES('user','USER');
INSERT INTO authorities(username,authority)
VALUES('user','ROLE_USER');

commit;
delete from tbl_users WHERE user_name = 'admin';
delete from tbl_users WHERE user_name = 'user';