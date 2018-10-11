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
    
end

def transfer_mechanics
    self.sender.balance -= self.amount
    self.receiver.balance += self.balance
    self.status == complete
end
    

end #clsend
