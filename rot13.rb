class EncryptionEngine
  DECRYPTED_ORDER = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz'
  ENCRYPTED_ORDER = 'NOPQRSTUVWXYZABCDEFGHIJKLMnopqrstuvwxyzabcdefghijklm'

  def encrypt(str)
    res = str.chars.map do |c|
      i = DECRYPTED_ORDER.index(c)

      if i != nil
        ENCRYPTED_ORDER[i]
      else
        c
      end
    end

    res.join
  end

  def decrypt(str)
    res = str.chars.map do |c|
      i = ENCRYPTED_ORDER.index(c)

      if i != nil
        DECRYPTED_ORDER[i]
      else
        c
      end
    end

    res.join
  end
end

engine = EncryptionEngine.new

text = 'hello world!'
encrypted = engine.encrypt(text)
puts encrypted

decrypted = engine.decrypt(encrypted)
puts decrypted
