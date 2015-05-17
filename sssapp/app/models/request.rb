class Request
  include Mongoid::Document
  include Mongoid::Timestamps
# Lend state meanings: 
#  0 - requested, 
#  1 - approved and lent, 
#  2 - returned book
#  3 - request denied
  
  field :s, as: :lend_state, type: Int, default: 0
  
  belongs_to :book
  belongs_to :user
  has_one :loan
  
  def approved
    if lend_state != 2
      lend_state = 1
    end
  end
  
  def return_book 
    if lend_state == 1
      lend_state = 2
    end
  end
  
  def deny_request
    lend_state = 3
  end  
end