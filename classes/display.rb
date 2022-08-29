module Display
  def list_all_books
    puts "No books available\n\n" if @books.empty?
    @books.each do |book|
      print "Title: \"#{book.title}\", Author: \"#{book.author}\"\n"
    end
    puts "\n"
  end

  def list_all_people
    puts "No people registered\n\n" if @persons.empty?
    @persons.each do |person|
      print "ID: #{person.id}, "
      print "Name: #{person.name}, "
      print "Age: #{person.age}\n"
    end
    puts "\n"
  end

  def list_all_rentals
    if @persons.empty? || @rentals.empty?
      puts 'List empty.'
    else
      print 'Select person ID: '
      @persons.each_with_index { |person, index| puts "#{index}: #{person.name}" }
      id = gets.chomp.to_i
      puts "**********************************************\n\n"
      puts "Rentals for #{@persons[id].name}: \n"
      @rentals.each do |rental|
        next if rental.person.name != @persons[id].name

        puts rental.list_rentals
      end
      puts "\n\n**********************************************\n\n"
    end
  end
end
