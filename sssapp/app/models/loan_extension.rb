class LoanExtension
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :r, as: :return_by , type: Date
  
  embedded_in :loan
end