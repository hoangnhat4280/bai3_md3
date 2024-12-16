SELECT * FROM quanlysinhvien.class;
INSERT INTO Class (ClassName, StartDate, Status) VALUES
('Lập trình Java', '2024-12-10', 1),
('Lập trình Python', '2024-02-15', 1),
('Tiếng Anh cơ bản', '2024-12-20', 1),
('Thiết kế đồ họa', '2024-04-12', 0),
('Kỹ năng mềm', '2024-05-05', 1);

-- thông tin lớp học có thời gian bắt đầu vào tháng 12
SELECT * FROM Class
WHERE MONTH(StartDate) = 12;

-- các sinh viên có tên bắt đầu bảng ký tự ‘h’
SELECT * FROM Student
WHERE LOWER(StudentName) LIKE 'h%';

-- thông tin môn học có credit trong khoảng từ 3-5
SELECT * FROM SubJect
WHERE LOWER(Credit) BETWEEN 3 AND 5;

-- đổi classID của sinh viên Huy là 2
UPDATE Student SET ClassId = 2
WHERE StudentName LIKE '%Huy%';

SELECT * FROM Student
WHERE StudentName LIKE '%Huy%';



--  sắp xếp theo điểm thi (mark) giảm dần
SELECT st.StudentName, su.SubName, m.Mark FROM Mark m
JOIN Student st ON m.StudentId = st.StudentId
JOIN Subject su ON m.SubId = su.SubId
ORDER BY m.Mark DESC, st.StudentName ASC;










