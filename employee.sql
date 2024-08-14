--CREATE TABLE IF NOT EXISTS 
CREATE TABLE employee(
	emp_id  TEXT PRIMARY KEY,
	name 	TEXT NOT NULL,
	salary INTEGER
);

-- 테이블 삭제 (DROP TABLE 테이블이름)
DROP TABLE employee;

SELECT * FROM employee;

/*
테이블 생성
DCL 언어 - CREATE TABLE 테이블 이름(칼럼이름 자료형)
자료형 - 숫자(INTEGER), 문자(TEXT)
기본키(PRIMARY KEY) 기본키 설정
사원(employee) 테이블 - 아이디(emp_id), 이름(name), 급여(salary)
*/

-- DML 언어(검색- SELECT * FROM 테이블이름)
SELECT * FROM employee;