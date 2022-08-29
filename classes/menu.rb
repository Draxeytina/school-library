module Menu
  def menu
    puts "----------------------------------------------\n"
    puts 'WELCOME TO SCHOOL LIBRARY'
    puts "----------------------------------------------\n\n"
    puts 'Please choose an option by entering a number:'
    puts '1 - LIST ALL BOOKS'
    puts '2 - LIST ALL PEOPLES'
    puts '3 - CREATE A PERSON'
    puts '4 - CREATE A BOOK'
    puts '5 - CREATE A BOOK RENTAL'
    puts '6 - LIST ALL RENTALS FOR A GIVEN PERSON ID'
    puts "7 - EXIT\n\n"
    puts "----------------------------------------------\n\n\n"
    option = gets.chomp
    Integer(option)
  end
end