Author.destroy_all
Book.destroy_all
Teacher.destroy_all
Student.destroy_all
Course.destroy_all


GoogleBooks::Adapter.new("Madeline L'Engle").fetch_books
GoogleBooks::Adapter.new("Stephen King").fetch_books

t1 = Teacher.create(name: "Mr. Jonas")
t2 = Teacher.create(name: "Mrs. Stilwell")
t3 = Teacher.create(name: "Ms. Jen")

s1 = Student.create(name: "John")
s2 = Student.create(name: "Joseph")
s3 = Student.create(name: "Aarin")
s4 = Student.create(name: "Bob")
s5 = Student.create(name: "Rhea")

Course.create(name: "Math", teacher_id: t1.id, student_id: s1.id)
Course.create(name: "Web Programming", teacher_id: t2.id, student_id: s2.id)
Course.create(name: "Algorithms", teacher_id: t3.id, student_id: s3.id)
Course.create(name: "Software Engineering", teacher_id: t2.id, student_id: s3.id)
Course.create(name: "Bioinformatics", teacher_id: t1.id, student_id: s1.id)


