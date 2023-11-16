# == Schema Information
#
# Table name: enrollments
#
#  id         :bigint           not null, primary key
#  course_id  :bigint           not null
#  student_id :bigint           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Enrollment < ApplicationRecord
    has_many :students, 
        primary_key: :id,         #user.id
        foreign_key: :student_id, #enrollment.student_id 
        class_name: :User

    has_many :courses,
        primary_key: :id,        #course.id 
        foreign_key: :course_id, #enrollment.course_id 
        class_name: :Course
end
