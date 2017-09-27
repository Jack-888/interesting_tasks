# "tesseract" => "r"

def uniq (string)
  srting_to_arr = string.split('')
  dublicate = srting_to_arr.uniq.map {|v| (srting_to_arr - [v]).size < (srting_to_arr.size - 1) ? v : nil}.compact
  uniq = srting_to_arr - dublicate
  uniq.first
end

p uniq("tesseract")


