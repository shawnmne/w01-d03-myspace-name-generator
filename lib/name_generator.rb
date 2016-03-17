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
   name = lowercase_name(name)
	 name = remove_punctuation(name)
	 name = remove_numbers(name)
   name = capitalize_every_other(name)
   add_characters(name)
end


#lowercase_name method makes all characters lower case
#
#+name is a string id 
#
#returns a string whose characters are now all lower case
def lowercase_name(name)
		name.downcase
end



#remove_punctuation method removes all non letter or number from string
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

#capitalize_every_other method captializes every other character
#
#
#+name is the the string id method accepts to captialize every other letter
#    assumes the id string is all lower case
#
#returns a string with every other character capitalized
def capitalize_every_other(name)
    i = 0
    while i < name.length do
      if i % 2 == 0
        name[i] = name[i].capitalize
      end
      i += 1
    end
    name
end



#add_characters method adds xX_ befor and _Xx after the id
#
#+name is the string id the method accepts 
#
#returns the id with extra characters
def add_characters(name)
		"xX_" + name + "_Xx"
end