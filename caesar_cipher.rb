

def caesar_cipher(str, position)
    
    new_string = ""
    current_letter = ""
    char_code = 0  
    
    def modulo(n, m)

        (n % m + m) % m

    end
    
    str.each_char{|c|

        current_letter = c
        char_code = c.ord 

        if char_code.between?(65, 90)
            newchar_code = modulo(char_code + position-65, 26) + 65
            new_letter = newchar_code.chr
            new_string += new_letter
                
        elsif char_code.between?(97, 122)
            newchar_code = modulo(char_code + position-97, 26) + 97
            new_letter = newchar_code.chr
            new_string += new_letter

        else new_string += current_letter

        end      


    }

    return new_string 

end

p caesar_cipher('What a string!', 5)
