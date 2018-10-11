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
    if self.status != "complete" && self.valid? && receiver.valid?
      #needs to check if transaction happened once already (stat = complete)
        self.sender.balance -= self.amount
        self.receiver.balance += self.amount
        self.status = "complete"
      else
        self.status = "rejected"
        return "Transaction rejected. Please check your account balance."
      end
  end

  def reverse_transfer
    if self.status == "complete"
      self.sender.balance += self.amount
      self.receiver.balance -= self.amount
      self.status = "reversed"
    end
  end
   
      

end #clsend
