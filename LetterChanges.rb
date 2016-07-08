#Using the Ruby language, have the function LetterChanges(str) take the str parameter being passed and modify it using the following algorithm. Replace every letter in the string with the letter following it in the alphabet (ie. c becomes d, z becomes a). Then capitalize every vowel in this new string (a, e, i, o, u) and finally return this modified string. 
#Sample Test Cases
#Input:"hello*3"
#Output:"Ifmmp*3"

#Input:"fun times!"
#Output:"gvO Ujnft!"

def LetterChanges(str)

  # code goes here
  alphabets = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
  vowels = ["a","e","i","o","u"]
  new_str = ""
  mod_str = ""
  for i in 0..str.length-1
   if alphabets.include?(str[i])
        new_str << alphabets[alphabets.index(str[i]) -(alphabets.length-1)]
   else
       new_str << str[i]
   end
  end
  
  for i in 0..new_str.length-1
    if vowels.include?(new_str[i])
        mod_str << new_str[i].upcase
    else
        mod_str << new_str[i]
    end
  end
  return mod_str 
         
end
   
# keep this function call here    
puts LetterChanges("zebra!")