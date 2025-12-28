# Initialize the account balance to 0
balance = 0

# Array to store all transaction history (deposits and withdrawals)
transactions = []

# Helper method to get numeric input from the user
# 'prompt' is the message shown to the user
def get_amount(prompt)
  print "#{prompt}: "
  gets.chomp.to_f  # convert input string to float
end

# Method to display the current balance
def check_balance(balance)
  puts "\nYour current balance is $#{'%.2f' % balance}\n"  # format balance to 2 decimal places
end

# Method to deposit money into the account
def deposit(balance, transactions)
  amount = get_amount("Enter amount to deposit")  # ask user how much to deposit
  balance += amount  # add the amount to the current balance
  transactions << "Deposited $#{'%.2f' % amount}"  # record this deposit in transaction history
  puts "\nSuccessfully deposited $#{'%.2f' % amount}"
  puts "New balance: $#{'%.2f' % balance}\n"
  balance  # return updated balance
end

# Method to withdraw money from the account
def withdraw(balance, transactions)
  amount = get_amount("Enter amount to withdraw")  # ask user how much to withdraw
  if amount > balance  # check if user has enough balance
    puts "\nInsufficient funds!\n"
  else
    balance -= amount  # subtract the amount from balance
    transactions << "Withdrew $#{'%.2f' % amount}"  # record this withdrawal in transaction history
    puts "\nSuccessfully withdrew $#{'%.2f' % amount}"
    puts "New balance: $#{'%.2f' % balance}\n"
  end
  balance  # return updated balance (unchanged if insufficient funds)
end

# Method to show all transactions
def show_transactions(transactions)
  if transactions.empty?  # check if there are no transactions yet
    puts "\nNo transactions yet.\n"
  else
    puts "\nTransaction History:"
    # Loop through each transaction with its index
    transactions.each_with_index do |t, i|
      puts "#{i+1}. #{t}"  # display number + transaction details
    end
    puts "\n"
  end
end

# Main program loop: keeps running until the user chooses to exit
loop do
  puts "\n"
  puts "- Welcome to the Bank -"
  puts "1. Check Balance"
  puts "2. Deposit"
  puts "3. Withdraw"
  puts "4. Transaction History"
  puts "5. Exit"
  print "Choose a number: "

  choice = gets.chomp.to_i  # get user menu selection

  case choice
  when 1
    check_balance(balance)  # show current balance
  when 2
    balance = deposit(balance, transactions)  # deposit and update balance
  when 3
    balance = withdraw(balance, transactions)  # withdraw and update balance
  when 4
    show_transactions(transactions)  # display all past transactions
  when 5
    puts "\nThank you for visiting the bank!"  # exit message
    break  # exit loop
  else
    puts "\nInvalid choice, try again.\n"  # handle invalid input
  end
end
