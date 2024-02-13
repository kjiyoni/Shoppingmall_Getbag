/* User 생성 - 껍데기만 만들어짐 */
CREATE USER team IDENTIFIED BY team;

/* 생성된 User에 시스템 권한 / 객체(테이블, 뷰 등)에 대한 권한 부여 */

-- 시스템 연결 권한 부여 - 로그인 할 수 있게끔 권한 부여
GRANT CREATE SESSION TO team;
-- 객체에 대한 권한 부여(sys가 bangry에게 hr스키마의 employees 테이블에 대한 CRUD 권한을 부여)
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees TO team;

/* 필요에 따라 User에게 부여된 권한 회수 */
REVOKE SELECT, INSERT, UPDATE, DELETE ON hr.employees
FROM team;

/* 시스템 권한과 객체 권한을 롤에 등록 */
GRANT CREATE USER TO team;
GRANT DROP USER TO team;
GRANT ALTER USER TO team;
GRANT INSERT ANY TABLE TO team;

commit;

/* User 삭제 */
DROP USER team CASCADE;




