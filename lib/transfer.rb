class Transfer
  # your code here
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(s, r, a)
    @sender = s
    @receiver = r
    @amount = a
    @status = "pending"
  end
  
  def valid?
    self.receiver.valid? && self.sender.valid?
  end
  
  def execute_transfer
    if self.status != "complete"
      transfer_mechanics
    else 
      self.status = "rejected"
      puts "Transaction rejected. Please check your account balance."
  end
end


def transfer_mechanics
    self.sender.balance -= self.amount
    self.receiver.balance += self.balance
    self.status == "complete"
end
   
      

end #clsend
