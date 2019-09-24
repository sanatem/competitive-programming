def counting_valleys(string)
  total_valleys = valley_steps = 0
  arr = string.chars
  arr.each do |step|
    valley_steps -= 1 if step == 'D'
    valley_steps += 1 if step == 'U'
    total_valleys += 1 if valley_steps.zero? && step == 'U'
  end
  total_valleys
end

counting_valleys 'DDDUUDDUUD'
