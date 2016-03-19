# You'll have to create your own method(s) here and define them. Use patterns like
# you've seen elsewhere.

#Name_generator method takes a name and removes all non letter characters, prepends
#"xX_" and appends "_Xx" to the name. It makes the name have every other character 
#capitalized
#
#+name is a string name id and should only contain lower and upper case letters
#
#returns the id with alternating capital letters and xX_ _Xx
def name_generator(name)
	 name = remove_punctuation(name)
	 name = remove_numbers(name)
   name = capitalize_every_other(name)
   add_characters_if_valid(name)
end




#remove_punctuation method removes all non-number and non-letter characters from string
#
#+name is the string id method accepts to work with
#
#returns string with only characters and numbers
def remove_punctuation(name)
    name.gsub(/\W/,"")
end


#remove_numbers method removes all numbers from string
#
#+name is the string id method accepts to work with
#
#returns a string with on characters
def remove_numbers(name)
    name.gsub(/[0-9]/,"")
end

#capitalize_every_other method first down cases the whole string
#  then captializes every other character
#
#
#+name is the the string id method accepts to captialize every other letter
#    
#
#returns a string with every other character capitalized
def capitalize_every_other(name)
    name = name.downcase
    i = 0
    while i < name.length do
      if i % 2 == 0
        name[i] = name[i].capitalize
      end
      i += 1
    end
    name
end



#add_characters_if_valid method adds xX_ before and _Xx after the id
#  if the id is not a null string before or after removing all the 
#  non- letter characters
#
#+name is the string id the method accepts 
#
#returns the id with extra characters or a message that the ID chosen was bad 
#   and to select a new ID.  In a real ID generator I would not send this message
#   back in the name variable but would pass it through to the interface in a different 
#   manner.  Since there is no interface to pass messages back to I chose to do it this way
#   for now. 
def add_characters_if_valid(name)
	if name != ""
		name = "xX_#{name}_Xx"
	else 
	  name = "Inavalid ID. Please enter new ID with only lower case letters."
	end
	name  	
end