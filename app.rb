require 'date'

module App
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

  def check_response(response)
    false if %w[n N].include? response
    true if %w[y Y].include? response
  end

  def create_student
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '
    parent_permission = check_response(gets.chomp)
    @persons.push(Student.new(@classroom, age, name, parent_permission: parent_permission))
    puts "Student has been successfully created! \n\n"
  end

  def create_teacher
    print 'Age: '
    age = gets.chomp
    print 'Name: '
    name = gets.chomp
    print 'Specialization: '
    specialization = gets.chomp
    @persons.push(Teacher.new(specialization, age, name, parent_permission: true))
    puts "Teacher has been sucessfully created! \n\n"
  end

  def create_book
    print 'Title: '
    title = gets.chomp
    print 'Author: '
    author = gets.chomp
    @books.push(Book.new(title, author))
    puts "Book has been sucessfully created! \n\n"
  end

  def create_rental
    d = Time.now
    dated = Date.new(d.year, d.month, d.day)
    if @books.empty?
      print "There are no books\n\n"
      return
    end
    if @persons.empty?
      print "There are no persons\n\n"
      return
    end
    puts 'Select book ID'
    @books.each_with_index { |book, index| puts "#{index}: #{book.title} (#{book.author}) " }
    rent_book_id = gets.chomp.to_i
    puts 'Select person ID'
    @persons.each_with_index { |person, index| puts "#{index}: #{person.name}" }
    rental_people_id = gets.chomp.to_i
    @rentals.push(Rental.new(@books[rent_book_id], @persons[rental_people_id], dated))
    puts "Rental created successfully! \n\n"
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
