class Loan
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :b, as: :confirmed_by_borrower , type: Boolean, default: false
  field :l, as: :confirmed_by_lender   , type: Boolean, default: false
  field :r, as: :return_by             , type: Date
  field :w, as: :returned_on           , type: Date
  
  
  belongs_to :user
  belongs_to :book
  belongs_to :request
  embeds_many :loan_extensions
  
  def lender_confirmed
    confirmed_by_lender = true
  end
  def borrower_confirmed
    confirmed_by_borrower = true
  end
  def returned_on_date(return_date)
    returned_on = return_date
  end
  def extend_to_date(extension_date)
    LoanExtension.create(
      return_by: extension_date,
      loan_id: this._id
    )
  end
  def get_return_date
    if this.loan_extensions == nil then
      return_by
    else
      LoanExtension.where(loan_id: this._id).
      max(:return_by).
      return_by
    end
  end
end