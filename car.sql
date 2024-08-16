COMMIT;
DELETE FROM car WHERE car_no = 2;
SELECT * FROM car;

-- '아반떼' 의 연식을 2020년으로 변경하기
UPDATE car SET year = 2020 WHERE car_no = 1;


-- Car 테이블 생성, 자동순번 - AUTOINCREMENT

CREATE TABLE IF NOT EXISTS  car(
	car_no INTEGER PRIMARY KEY AUTOINCREMENT,
	model_name	TEXT NOT NULL, 
	year INTEGER
);

-- 자동 순번인 경우에 컬럼명과 값을 넣지 않음 
INSERT INTO car(model_name, year) VALUES ('아반떼', 2016);
INSERT INTO car(model_name, year) VALUES ('아이오닉5', 2021);

SELECT * FROM car;
-- '아반떼' 의 연식을 2020년으로 변경하기
UPDATE car SET year = 2020 WHERE model_name = '아반떼';

-- '아이오닉5'를 삭제하세요
DELETE FROM car WHERE car_no = 2;

-- 삽입, 수정, 삭제 후에 반드시 COMMIT 실행함
COMMIT;