class User < ApplicationRecord
    has_many :courses,
        class_name: 'Course',
        foreign_key: :instructor_id,
        primary_key: :id
    
    has_many :enrollments,
        class_name: 'Enrollment',
        foreign_key: :student_id,
        primary_key: :id
end
