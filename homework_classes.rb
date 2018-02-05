class Student


attr_reader :name, :cohort

attr_writer :name, :cohort

  def initialize(student_name, cohort_number)
    @name = student_name
    @cohort = cohort_number
  end

  def can_talk()
    return "I can talk"
  end

  def say_fav_language(favorite)
    return "I love #{favorite}"
  end
  # def student_name()
  #   return @name
  # end

  # def cohort_number()
  #   return @cohort
  # end
end
