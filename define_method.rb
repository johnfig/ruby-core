# Example of metaprogramming even though it is worse
class Doctor
  define_method("perform_rhinoplasty") do |argument|
    "performing rhinoplasty on #{argument}"
  end

  define_method("perform_checkup") do |argument|
    "performing checkup on #{argument}"
  end
  
  define_method("perform_interpretive_dance") do |argument|
    "performing interpretive dance on #{argument}"
  end

  define_method("run_with_dog") do |arg|
    "run with dog #{arg}"
  end
end

doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")
puts doctor.run_with_dog("at the beach")

puts ''

# Real Metaprogramming power
class Doctor
  ["rhinoplasty", "checkup", "interpretive_dance"].each do |action|
    define_method("perform_#{action}") do |argument|
      "performing #{action.gsub('_', ' ')} on #{argument}"
    end
  end
end

doctor = Doctor.new
puts doctor.perform_rhinoplasty("nose")
puts doctor.perform_checkup("throat")
puts doctor.perform_interpretive_dance("in da club")
