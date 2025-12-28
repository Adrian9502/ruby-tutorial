# BankAccount class represents a single user's bank account
class BankAccount
  # attr_reader for balance and transactions allows read access
  attr_reader :balance, :transactions

  def initialize
    @balance = 0                # instance variable for account balance
    @transactions = []          # instance variable to store transaction history
  end

  # Helper method to get numeric input from the user
  def get_amount(prompt)
    print "#{prompt}: "
    gets.chomp.to_f
  end

  # Display the current balance
  def check_balance
    puts "\nYour current balance is $#{'%.2f' % @balance}\n"
  end

  # Deposit money into the account
  def deposit
    amount = get_amount("Enter amount to deposit")
    @balance += amount
    @transactions << "Deposited $#{'%.2f' % amount}"  # record transaction
    puts "\nSuccessfully deposited $#{'%.2f' % amount}"
    puts "New balance: $#{'%.2f' % @balance}\n"
  end

  # Withdraw money from the account
  def withdraw
    amount = get_amount("Enter amount to withdraw")
    if amount > @balance
      puts "\nInsufficient funds!\n"
    else
      @balance -= amount
      @transactions << "Withdrew $#{'%.2f' % amount}"  # record transaction
      puts "\nSuccessfully withdrew $#{'%.2f' % amount}"
      puts "New balance: $#{'%.2f' % @balance}\n"
    end
  end

  # Show all transactions
  def show_transactions
    if @transactions.empty?
      puts "\nNo transactions yet.\n"
    else
      puts "\nTransaction History:"
      @transactions.each_with_index do |t, i|
        puts "#{i+1}. #{t}"
      end
      puts "\n"
    end
  end
end

# --- Main Program Loop ---
account = BankAccount.new  # create a new bank account object

loop do
  puts "\n"
  puts "- Welcome to the Bank -"
  puts "1. Check Balance"
  puts "2. Deposit"
  puts "3. Withdraw"
  puts "4. Transaction History"
  puts "5. Exit"
  print "Choose a number: "

  choice = gets.chomp.to_i

  case choice
  when 1
    account.check_balance
  when 2
    account.deposit
  when 3
    account.withdraw
  when 4
    account.show_transactions
  when 5
    puts "\nThank you for visiting the bank!"
    break
  else
    puts "\nInvalid choice, try again.\n"
  end
end
