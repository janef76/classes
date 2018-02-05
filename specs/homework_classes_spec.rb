require('minitest/autorun')
require_relative('../homework_classes.rb')
class TestStudent < MiniTest::Test


def setup
  @student = Student.new("Jane", 19)
end

def test_student_name
  name = @student.name()
  assert_equal("Jane", name)
end

def test_student_cohort
  cohort = @student.cohort()
  assert_equal(19, cohort)
end

def test_set_student_name
  @student.name="Student1"
  name = @student.name()
  assert_equal("Student1", name)
end

def test_set_cohort_number
  @student.cohort=20
  cohort = @student.cohort()
  assert_equal(20, cohort)
end

def test_can_talk
  message = @student.can_talk()
  assert_equal("I can talk", message)
end

def test_say_fav_language
  language = @student.say_fav_language("Ruby")
  assert_equal("I love Ruby", language)
end

end
