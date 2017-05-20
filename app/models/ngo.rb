class Ngo
  include Mongoid::Document
  field :Name, type: String
  field :Description, type: String
  field :contact, type: String
  field :labels, type: String
end
