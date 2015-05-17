class Book
  include Mongoid::Document
  include Mongoid::Timestamps
  
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

  def as_json(options = {})
      {
          _id: _id,
          isbn: isbn,
          title: title,
          authors: authors,
          publisher: publisher,
          description: description,
          image_link: image_link,
          year: year,
          categories: categories,
          language: language,
          user: user
      }
  end

  #attr_accessible :isbn, :title, :authors, :publisher, :description, :image_link, :year, :categories, :language

end
