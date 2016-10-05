def show_menu()
 puts "1. Show balance"
 puts "2. Deposit"
 puts "3. Withdraw"
 puts "4. Exit"
end 
def do_prompt()
 puts "Please enter number from menu"
 num = gets.to_i
 return num
end
def do_deposit(num)
 puts "Please enter amount"
 deposit=gets.to_i
  if deposit <= 0
   puts "invalid amount entered."
  else
   num = deposit + num
   puts "Deposit Completed"
  end
 return num
end
def do_withdrawal (num)
 puts "Please enter amount"
 withdrawal=gets.to_i
   if withdrawal > num
    puts "Insufficient Funds"
   else
	num = num - withdrawal
    puts "Withdrawal Completed."
   end
 return num
end

balance= 1000
choice= 0
 until choice > 3
  show_menu()
  choice=do_prompt()
 
  case choice
  	when choice= 1
    	puts balance
   	when choice= 2
		balance = do_deposit(balance)
   	when choice= 3
		balance = do_withdrawal(balance)
	when choice= 4
    puts "Thank you"   
   else
    puts "Sorry, invalid choice."
  end

 end



