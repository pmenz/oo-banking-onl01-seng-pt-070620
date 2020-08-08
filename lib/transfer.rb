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
    if 
      @receiver =+ amount
    @sender =- amount
    
  end 
  
  def reverse_transfer 
    
  end
  
  def reject_transjer
   self.status = "rejected"
    "Transaction rejected. Please check your account balance."
  end

end
