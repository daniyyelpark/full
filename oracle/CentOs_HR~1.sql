CREATE TABLE HR.buytbl2 AS (SELECT * FROM HR.buytbl);

SELECT * FROM HR.buytbl2;

CREATE TABLE HR.buytbl3 AS (SELECT userid, prodname FROM hr.buytbl);

SELECT * FROM HR.buytbl3;

SELECT userid AS "����ڸ�", sum(amount) AS "�� ���ŷ�" FROM hr.buytbl GROUP BY userid;

SELECT userid AS "����ڸ�", sum(amount * PRICE) AS "�� ���ž�" FROM HR.BUYTBL GROUP BY USERID;

SELECT CAST(AVG(amount) AS number(5,3)) AS "��� ���� ����" FROM HR.BUYTBL;

SELECT userid, CAST(AVG(amount) AS number(5,3)) AS "��� ���� ����" FROM HR.BUYTBL;

SELECT userid AS "����ڸ�", sum(amount * PRICE) AS "�� ���ž�"
FROM HR.BUYTBL
GROUP BY USERID
HAVING SUM(PRICE * AMOUNT) > 1000;

SELECT userid AS "����ڸ�", sum(amount * PRICE) AS "�� ���ž�"
FROM HR.BUYTBL
GROUP BY USERID
HAVING SUM(PRICE * AMOUNT) > 1000
ORDER BY SUM(PRICE * AMOUNT);