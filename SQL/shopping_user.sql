/* User ���� - �����⸸ ������� */
CREATE USER team IDENTIFIED BY team;

/* ������ User�� �ý��� ���� / ��ü(���̺�, �� ��)�� ���� ���� �ο� */

-- �ý��� ���� ���� �ο� - �α��� �� �� �ְԲ� ���� �ο�
GRANT CREATE SESSION TO team;
-- ��ü�� ���� ���� �ο�(sys�� bangry���� hr��Ű���� employees ���̺� ���� CRUD ������ �ο�)
GRANT SELECT, INSERT, UPDATE, DELETE ON hr.employees TO team;

/* �ʿ信 ���� User���� �ο��� ���� ȸ�� */
REVOKE SELECT, INSERT, UPDATE, DELETE ON hr.employees
FROM team;

/* �ý��� ���Ѱ� ��ü ������ �ѿ� ��� */
GRANT CREATE USER TO team;
GRANT DROP USER TO team;
GRANT ALTER USER TO team;
GRANT INSERT ANY TABLE TO team;

commit;

/* User ���� */
DROP USER team CASCADE;




