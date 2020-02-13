USE emsDB;
insert into users(username,password,enabled)
values('admin','{noop}admin',true);

insert into users(username,password,enabled)
values('user','{noop}user',true);

delete from authorities where seq = 4;

insert into authorities(username,authority)
values('admin','ROLE_ADMIN');
insert into authorities(username,authority)
values('user','ROLE_USER');

SELECT * FROM users;
select * from authorities;

commit;

delete from users where username = 'admin';
delete from users where username = 'user';
delete from users where username = 'freeswoo';

delete from authorities where seq = 2;
delete from authorities where seq = 3;
delete from authorities where seq = 5;
