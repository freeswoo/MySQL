-- mysql에서는 사용자 등록할때 접속경로를 설정
-- iouser는 localhost에서만 접속할 수 있다.
create user 'iouser'@'localhost' identified by '1234';
grant all privileges on *.* to 'iouser'@'localhost';

-- iouser는 모든 곳에서 원격, 로걸로 접속할수 있다.
create user 'iouser'@'%' identified by '1234';
grant all privileges on *.* to 'iouser'@'%';