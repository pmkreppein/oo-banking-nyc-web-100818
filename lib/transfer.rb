class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount 
  attr_accessor :status
  
  def initialize(s, r, a)
    @sender = s
    @receiver = r
    @amount = a
    @status = "pending"
  end
  
  def valid?
    self.receiver.valid? && self.sender.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && self.status == "pending"
      sender.balance -= amount
      receiver.balance += amount
      self.status = "complete"
    else
      reject_transfer
    end
  end
  
  def reject_transfer
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
  
  def reverse_transfer
    
  end
   
      

end #clsend
