require_relative 'base_decorator'

class CapitalizeDecorator < BaseDecorator
  def initialize(nameable)
    super
  end

  def correct_name
    @nameable.correct_name.capitalize
  end
end
