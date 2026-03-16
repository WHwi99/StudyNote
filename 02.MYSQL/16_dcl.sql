-- Active: 1773024377609@@127.0.0.1@3306@mysql
-- 16. DCL(데이터 제어 언어)
-- GRANT : 사용자에게 권한을 부여하는 명령어
-- REVOKE : 이미 부여된 권한을 회수하는 명령어
-- SHOW GRANTS : 현재 계정에 부여된 권한을 확인
-- 권한 관리는 부여하는 계정이 해야하는 역할에 대한 최소한의 권한만 부여하는 최소 권한 원칙을 권장

-- 이 스크립트는 권한이 있는 계정(root)으로 실행한다.

-- 1. 계정 생성
CREATE user 'user01'@'%' IDENTIFIED BY 'pass01';

-- 계정 삭제
DROP USER IF EXISTS 'user01'@'%';

-- 권한 확인
SHOW GRANTS FOR 'user01'@'%';

-- 권한 부여
-- menudb 데이터베이스의 모든 객체를 조회할 수 있는 권한을 user01에 부여
GRANT SELECT ON menudb.* TO 'user01'@'%';

SHOW GRANTS FOR 'user01'@'%';

-- 여러 권한 한 번에 부여
GRANT INSERT, UPDATE ON menudb.tbl_menu TO 'user01'@'%';

-- 권한 회수
REVOKE UPDATE ON menudb.tbl_menu FROM 'user01'@'%';

SHOW GRANTS FOR 'user01'@'%';

REVOKE ALL PRIVILEGES ON menudb.tbl_menu FROM 'user01'@'%';

SHOW GRANTS FOR 'user01'@'%';