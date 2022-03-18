module SavingsAccount
    def self.interest_rate(balance)
      if balance >= 5000
        rate = 2.475
      elsif balance >= 1000
        rate = 1.621 
      elsif balance >= 0
        rate = 0.5
      else
        rate = -3.213
      end
    end
  
    def self.annual_balance_update(balance)
      if balance >= 0
        balance += balance * (interest_rate(balance)/100) 
      else
        balance -= balance * (interest_rate(balance)/100)
      end
    end
  
    def self.years_before_desired_balance(current_balance, desired_balance)
      count = 0
      while current_balance < desired_balance
        current_balance = annual_balance_update(current_balance)
        count += 1
      end
    return count
    end
  end
  