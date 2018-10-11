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
    receiver.valid? && sender.valid?
  end
  
  def execute_transaction
    if self.status != "complete" && valid? 
      #needs to check if transaction happened once already (stat = complete)
        self.sender.balance -= self.amount
        self.receiver.balance += self.amount
        self.status = "complete"
      else
        reject_transfer
      end
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = "reversed"
    end
  end
   def reject_transfer
    self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
      

end #clsend
