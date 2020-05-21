use sql_project;

SET sql_safety_updates = 0;

DELIMITER $$
DROP PROCEDURE IF EXISTS students_data$$
CREATE PROCEDURE students_data()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 40 DO
		INSERT INTO students (student_name)
        VALUES (CONCAT("Student", i + 20));
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL students_data();
DROP PROCEDURE students_data;
    
ROLLBACK;

SELECT *
FROM students
order by student_id

DELIMITER $$
DROP PROCEDURE IF EXISTS professors_data$$
CREATE PROCEDURE professors_data()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 5 DO
		INSERT INTO professors (professor_name)
        VALUES (CONCAT("professor", i));
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL professors_data();
DROP PROCEDURE students_data;

SELECT * 
FROM professors

DELIMITER $$
DROP PROCEDURE IF EXISTS courses_data1$$
CREATE PROCEDURE courses_data1()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 4 DO
		INSERT INTO courses (course_name, course_professor_id)
        VALUES (CONCAT("course", i), 1);
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL courses_data1();
DROP PROCEDURE courses_data1;

SELECT *
FROM courses

DELIMITER $$
DROP PROCEDURE IF EXISTS courses_data2$$
CREATE PROCEDURE courses_data2()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 4 DO
		INSERT INTO courses (course_name, course_professor_id)
        VALUES (CONCAT("course", i + 4), 2);
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL courses_data2();
DROP PROCEDURE courses_data2;

SELECT *
FROM courses

DELIMITER $$
DROP PROCEDURE IF EXISTS courses_data3$$
CREATE PROCEDURE courses_data3()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 4 DO
		INSERT INTO courses (course_name, course_professor_id)
        VALUES (CONCAT("course", i + 8), 3);
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL courses_data3();
DROP PROCEDURE courses_data3;

SELECT * 
FROM courses

DELIMITER $$
DROP PROCEDURE IF EXISTS courses_data3$$
CREATE PROCEDURE courses_data4()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 4 DO
		INSERT INTO courses (course_name, course_professor_id)
        VALUES (CONCAT("course", i + 12), 4);
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL courses_data4();
DROP PROCEDURE courses_data4;

SELECT *
FROM courses

DELIMITER $$
DROP PROCEDURE IF EXISTS courses_data3$$
CREATE PROCEDURE courses_data5()
BEGIN
	DECLARE i INT default 1;
    WHILE i <= 4 DO
		INSERT INTO courses (course_name, course_professor_id)
        VALUES (CONCAT("course", i + 16), 5);
        SET i = i + 1;
	END WHILE;
END$$;
DELIMITER ;
CALL courses_data5();
DROP PROCEDURE courses_data5;

SELECT *
FROM courses;

/* Course 1 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 1, 1);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 2, 1);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 3, 1);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 4, 1);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 5, 1);

/* Course 2 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 6, 2);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 7, 2);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 8, 2);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 9, 2);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 10, 2);


/* Course 3 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 11, 3);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 12, 3);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 13, 3);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 14, 3);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 15, 3);

/* Course 4 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 16, 4);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 17, 4);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 18, 4);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 19, 4);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 20, 4);

/* Course 5 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 41, 5);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 22, 5);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 23, 5);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 24, 5);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 25, 5);

/* Course 6 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 26, 6);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 27, 6);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 28, 6);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 29, 6);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 30, 6);

/* Course 7 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 31, 7);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 32, 7);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 33, 7);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 34, 7);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 35, 7);

/* Course 8 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 36, 8);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 37, 8);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 38, 8);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 39, 8);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 40, 8);

/* Course 9 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 41, 9);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 42, 9);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 43, 9);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 44, 9);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 45, 9);

/* Course 10 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 46, 10);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 47, 10);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 48, 10);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 49, 10);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 50, 10);

/* Course 11 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 51, 11);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 52, 11);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 53, 11);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 54, 11);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 55, 11);

/* Course 12 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 56, 12);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 57, 12);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 58, 12);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 59, 12);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 60, 12);

/* Course 13 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 61, 13);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 1, 13);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 2, 13);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 3, 13);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 4, 13);

/* Course 14 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 5, 14);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 6, 14);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 7, 14);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 8, 14);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 9, 14);

/* Course 15 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 10, 15);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 11, 15);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 12, 15);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 13, 15);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 14, 15);

/* Course 16 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 15, 16);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 16, 16);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 17, 16);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 18, 16);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 19, 16);

/* Course 17 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 20, 17);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 40, 17);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 22, 17);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 23, 17);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 24, 17);

/* Course 18 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 25, 18);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 26, 18);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 27, 18);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 28, 18);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 29, 18);

/* Course 19 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 30, 19);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 31, 19);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 32, 19);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 33, 19);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 34, 19);

/* Course 20 Grade Seed Script*/
INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 35, 20);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 36, 20);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 37, 20);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 38, 20);

INSERT INTO grades(grade, grade_student_id, grade_course_id)
VALUES (RAND() * 100, 39, 20);