class Request
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :a, as: :approved, type: Boolean, default: false
  
  belongs_to :book
  belongs_to :user  
  has_one :loan
  
  def approve(return_date)
    approved = true
    cancelled = false
    Loan.create(
      return_by: return_date,
      request_id: this._id
      
    )
  end
  
  def cancel_approval
    approved = false
    cancelled = true
    Loan.where(request_id: this._id).drop
  end  
end