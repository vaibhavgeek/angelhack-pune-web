class Label
  include Mongoid::Document
  field :name, type: String
  field :laws_code, type: String
  field :laws_description, type: String
end
