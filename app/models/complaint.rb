class Complaint
  include Mongoid::Document
  field :complaint_text, type: String
  field :religion, type: String
  field :gender, type: String
  field :caste, type: String
  field :location, type: String
  field :complaint_pic, type: String
  field :labels, type: String
  field :status, type: String
  field :assigned_officer, type: String
  field :nature, type: String
end
