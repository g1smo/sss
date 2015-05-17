class Request
  include Mongoid::Document
  
  field :a, as: :approved, type: Boolean
  
  belongs_to :book
  belongs_to :user  
  has_one :loan
end