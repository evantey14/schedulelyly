class Reservation < ActiveRecord::Base
  # for your reference
  # exam_id:integer client_first_name:string client_last_name:string exam_score:integer datetime:integer
  belongs_to :exam
end
