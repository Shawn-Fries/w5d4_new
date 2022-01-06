class Course < ApplicationRecord
    has_many :students,
        class_name: 'User',
        foreign_key: :id,
        primary_key: :id

    belongs_to :enrollments,
        class_name: 'Enrollment',
        foreign_key: :id,
        primary_key: :id
    
    belongs_to :prerequisite,
        class_name: 'Course',
        foreign_key: :prereq_id,
        primary_key: :id
end
