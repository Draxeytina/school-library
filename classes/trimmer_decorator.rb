require_relative 'base_decorator'

class TrimmerDecorator < BaseDecorator
  def initialize(nameable)
    super
  end

  def correct_name
    if @nameable.correct_name.length > 10
      return @nameable.correct_name[0...10] 
    end
    @nameable.correct_name
  end
end
