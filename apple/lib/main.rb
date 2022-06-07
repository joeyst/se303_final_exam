# This code suffers from the "Long Function" smell.
# To cure it, apply "extract function".

def story
  first = "Mr. Dursley was the director of a firm called Grunnings, which made drills."
  middle = add_new_lines
  conclusion = "And that was it."
  first + middle + conclusion
end

def add_new_lines
  middle = ""
  middle << "\n"
  middle << "\n"
  middle << "\n"
  middle << "\n"
  middle << "\n"
  middle
end