class Student < ApplicationRecord
    belongs_to :school

    def self.search(search)
        students = Student.find_by(name: search)
        if students
            
        end
        if search
            student = Student.find_by(name: search)
            if student
                self.where(student_id: student)
            else
                Student.all
            end
        else
            Student.all
        end
    end
end
