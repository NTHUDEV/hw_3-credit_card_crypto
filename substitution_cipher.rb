module SubstitutionCipher
  module Caeser
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caeser cipher
      phrase_arr = document.to_s.split("")  
      phrase_arr.map! do |char|
	keyspace = char.ord + key
        if keyspace > 126 
            keyspace -= 95 
        end
        char = keyspace.chr       
      end 
      phrase_arr.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caeser cipher
      phrase_arr = document.to_s.split("")  
      phrase_arr.map! do |char|
	keyspace = char.ord - key
        if keyspace < 32
            keyspace += 95 
        end
        char = keyspace.chr       
      end 
      phrase_arr.join
    end
  end

  module Permutation
    # Encrypts document using key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.encrypt(document, key)
      # TODO: encrypt string using caeser cipher
      rand_encrypt = Random.new(key)
      phrase_arr = document.to_s.split("") 
 
      phrase_arr.map! do |char|
       # permutation = char.ord + rand_encrypt.rand(127)
       permutation = 128
       #until permutation < 127
	   permutation = char.ord + rand_encrypt.rand(127)
       # end
        char = permutation.chr
      end 
      phrase_arr.join
    end

    # Decrypts String document using integer key
    # Arguments:
    #   document: String
    #   key: Fixnum (integer)
    # Returns: String
    def self.decrypt(document, key)
      # TODO: decrypt string using caeser cipher
      rand_decrypt = Random.new(key)
      phrase_arr = document.to_s.split("") 
 
      phrase_arr.map! do |char|
        # permutation = char.ord - rand_decrypt.rand(127)
	permutation = -1
        #until permutation >= 0
	 permutation = char.ord - rand_decrypt.rand(127)
        #end
        char = permutation.chr
      end 
      phrase_arr.join
    end
  end

end
