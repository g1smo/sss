class Loan
  include Mongoid::Document
  
  field :b, as: :confirmedByBorrower  , type: Boolean, default: false
  field :l, as: :confirmedByLender    , type: Boolean, default: false
  field :r, as: :returnBy             , type: Date
  field :w, as: :returnedOn           , type: Date
  
  
  belongs_to :user
  belongs_to :book
  belongs_to :request
  embeds_many :loan_extensions
end