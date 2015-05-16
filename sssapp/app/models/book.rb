class Book
  include Mongoid::Document
  
  field :isbn        , type: String
  field :title       , type: String
  field :authors     , type: String
  field :publisher   , type: String
  field :description , type: String
  field :image_link  , type: String
  field :year        , type: String
  field :categories  , type: String
  field :language    , type: String

  belongs_to :user
end
