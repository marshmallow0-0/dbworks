-- DML 언어(삽입 - INSERT INTO 테이블 이름(칼럼 이름) VALUES (값1, 값2))
-- 칼럼값을 모든 칼럼에 입력할 경우 테이블명 다음의 칼럼명 생략 가능함
INSERT INTO employee(emp_id, name, salary) VALUES('e101', '김사원', 3000000);
INSERT INTO employee(emp_id, name, salary) VALUES('e102', '이사원', 3500000);
INSERT INTO employee(emp_id, name, salary) VALUES('e103', '박대리', 4000000);
INSERT INTO employee(emp_id, name) VALUES('e104', '고신입');


-- '김사원'의 급여를 320만원으로 수정하시오
-- UPDATE employee SET salary = 3200000 WHERE name = '김사원';
UPDATE employee SET salary = 3200000 WHERE emp_id = 'e101';

-- '이사원'의 이름을 '이나라'로 변경하시오
-- DML 언어(수정 - UPDATE 테이블이름 SET 컬럼명-'값' WHERE 컬럼몀)
UPDATE employee SET name = '이나라' WHERE name = '이사원';

-- 급여가 많은 순으로 정렬하시요(내림차순)
-- 정렬(SELECT * FROM employee ORDER BY 칼럼명 DESC)
SELECT * FROM employee ORDER BY salary ASC;

-- 급여가 350만원 이상인 사원의ㅣ 정보를 검색하시요
SELECT * FROM employee WHERE salary >= 3500000;

-- 이름이 '이사원'인 사원의 정보를 검색하시오
SELECT * FROM employee WHERE name = '이사원';

-- 문자열 검색 - LIKE '%포함된문자%'
SELECT * FROM employee WHERE name LIKE '%박%';

-- DML 언어(검색 - SELECT * FROM 테이블이름)
SELECT * FROM employee;

-- DML 삭제(DELETE FROM 테이블이름 WHERE 칼럼이름)
DELETE FROM employee WHERE emp_id = 'e103';

-- 테이블은 유지되고 데이터만 삭제됨(DROP - 테이블이 삭제됨)
DELETE FROM employee;
ROLLBACK;
-- COMMIT - 삽입, 수정, 삭제후 반드시 명시해야 함
--- ROLLBACK - 삽입, 삭제, 수정, 삭제 후 취소시에 사용함(단, COMMIT 전에 수행함)
