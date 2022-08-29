module Create_person
  def create_person
    puts 'Create: '
    puts '1 - Student'
    puts '2 - Teacher'
    puts '3 - Cancel'
    puts "\n"

    print 'Option: '
    option = gets.chomp.to_i

    case option
    when 1
      create_student
    when 2
      create_teacher
    end
  end
end