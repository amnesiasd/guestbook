class Person < ApplicationRecord
    #ensures fields are filled in
    validates_presence_of :name
    
    validates_presence_of :secret,
        message: "must be provided so we can recognize you in the future"
        
   # ensure secret has enough letters, but not too many
   validates_length_of :secret, in: 6..24
   
   # ensure secret contains at least one number
   validates_format_of :secret, with: /[0-9]/, 
    message: "must contain at least one number"
    
    #ensure secret contains at least one upper case
    validates_format_of :secret, with: /[A-Z]/,
        message: "must contain at least one upper case character"
    
    validates_format_of :secret, with: /[a-z]/,
        message: "must contain at least one lower case character"
end
