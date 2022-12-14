# create nameable class
class Nameable
  def correct_name
    raise NotImplementedError, "#{self.class} must implement abstract method '#{__method__}'"
  end
end

class Decorator < Nameable
  def initialize(nameable)
    super
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    return unless @nameable.correct_name.length > 10

    super[0...10]
  end
end
