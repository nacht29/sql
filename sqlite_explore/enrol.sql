-- database: ./enrol.db

CREATE TABLE "student" (
	"id" INTEGER NOT NULL PRIMARY KEY,  -- student table is referenced
	"name" TEXT NOT NULL
);

CREATE TABLE "course" (
	"course_id" INTEGER NOT NULL PRIMARY KEY,
	"course_name" TEXT NOT NULL
);

CREATE TABLE "enrolment" (
	"enrolment_id" INTEGER NOT NULL PRIMARY KEY,
	"student_id" INTEGER,
	"course_id" INTEGER,
	FOREIGN KEY(student_id) REFERENCES student(id),
	FOREIGN KEY(course_id) REFERENCES course(course_id)
);

INSERT INTO student("id", "name")
VALUES(
	2409004,
	'Tonald Drump'
);

INSERT INTO course("course_id", "course_name")
VALUES(
	100002,
	'Foundation in Mathematics'
);

INSERT INTO enrolment("student_id", "course_id")
VALUES(
	2409004,
	100002
);

SELECT * FROM student;
SELECT * FROM course;
SELECT * FROM enrolment;

SELECT student.id, student.name, course.course_id, course.course_name
FROM enrolment
JOIN student ON enrolment.student_id = student.id
JOIN course ON enrolment.course_id = course.course_id
WHERE student.id = 2409001;

SELECT course.course_id, course.course_name
FROM enrolment
JOIN student ON enrolment.student_id = student.id
JOIN course ON enrolment.course_id = course.course_id
WHERE student.id = 2409004;

SELECT 
student.id, 
student.name,
course.course_id,
course.course_name
FROM enrolment
JOIN student ON enrolment.student_id = student.id
JOIN course ON enrolment.course_id = course.course_id;

CREATE TABLE "foundation students"(
	"id" INTEGER NOT NULL PRIMARY KEY,  -- student table is referenced
	"name" TEXT NOT NULL
);

SELECT * FROM "foundation students";

INSERT INTO "foundation students"(id, name)
VALUES (1, "Chan");