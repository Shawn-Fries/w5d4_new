class User < ApplicationRecord
    belongs_to :courses,
        class_name: 'Course',
        foreign_key: :id,
        primary_key: :id
    
    belongs_to :enrollments,
        class_name: 'Enrollment',
        foreign_key: :id,
        primary_key: :id
end
