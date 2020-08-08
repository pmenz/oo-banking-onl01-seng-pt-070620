class Transfer
  
  attr_accessor:sender, :receiver, :amount
  attr_accessor:status
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver 
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    sender.valid? && receiver.valid?
  end 
  
  def execute_transaction 
    @receiver =+ amount
    @sender =- amount
    
  end 
  
  def reverse_transfer 
  end

end
