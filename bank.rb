class BankAccount

  @@interest_rate = 1.02
  @@accounts = []

  def self.create
    account = BankAccount.new
    @@accounts << account
    return account
  end

  def self.total_funds
    funds = 0
    @@accounts.each do | item |
      funds += item.balance
    end
    return funds
  end

  def self.interest_time
    @@accounts.each do | account |
      account.balance *= @@interest_rate
      return account.balance
    end
  end



    def initialize
      @balance = 0
    end

    # Reader balance
    def balance
        @balance
      end

      # Writer balance
      def balance=(balance)
        @balance = balance
      end

      # Deposit
      def deposit(num)
        deposit = num
        return @balance += deposit
      end

      # Widthdraw
      def widthdraw(num)
        widthdraw = num
        return @balance -= widthdraw
      end
  end



  acc2 = BankAccount.create
  acc1 = BankAccount.create
  acc1.balance = 224
  acc2.balance = 584
  puts BankAccount.total_funds
  puts BankAccount.interest_time
