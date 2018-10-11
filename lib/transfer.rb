class Transfer
  # your code here
  attr_reader :sender, :receiver, :amound, :status
  
  def initialize(s, r, a)
    @sender = s
    @receiver = r
    @amount = a
    @status = "pending"
  end
end
