class LoanExtension
  include Mongoid::Document
  
  field :r, as: :returnBy , type: Date
  
  embedded_in :loan
end