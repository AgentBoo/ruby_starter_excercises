# Given a grade_hash, student name, and assignment number, return the score
# for that student and assignment. Note that Ruby counts arrays from 0, but
# we are referring to them as 1-10.
def assignment_score(grade_hash, student, assignment_num)
  score = grade_hash[student][assignment_num - 1]
end

# Given a grade_hash and assignment number, return all scores for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_scores(grade_hash, assignment_num)
  # grade_hash.values.map{|inner_array| inner_array.fetch(assignment_num - 1)}
  grade_hash.map{|key, value| grade_hash[key][assignment_num - 1]}
end

# Given a grade_hash and assignment number, return the average score for that
# assignment. Note that Ruby counts arrays from 0, but we are referring to
# them as 1-10.
def assignment_average_score(grade_hash, assignment_num)
  assignment_scores(grade_hash, assignment_num).reduce(0, :+)/grade_hash.length
end

# Return a hash of students and their average score.
# TIP: To convert an array like [[:indiana, 90], [:nevada, 80]] to a hash,
# use .to_h. Also look at Hash#transform_values.
def averages(grade_hash)
 grade_hash.map{|key, value| grade_hash[key].reduce(0, :+)/grade_hash[key].length}
end

# Return a letter grade for a numerical score.
# 90+ => A
# 80-89 => B
# 70-79 => C
# 60-69 => D
# < 60 => F
def letter_grade(score)
  if score >= 90
    "A"
  elsif score >= 80
    "B"
  elsif score >= 70
    "C"
  elsif score >= 60
    "D"
  else
    "F"
  end
end

# Return a hash of students and their final letter grade, as determined
# by their average.
def final_letter_grades(grade_hash)
  letter_grade(averages(grade_hash))
end

# Return the average for the entire class.
def class_average(grade_hash)
  grade_hash.values.map{|inner_array| inner_array.reduce(0, :+)/inner_array.length}.reduce(0, :+)/grade_hash.values.length
end

# Return an array of the top `number_of_students` students.
def top_students(grade_hash, number_of_students)
  final_letter_grades(grade_hash).sort.slice( - number_of_students, number_of_students)
end
