class Url < ActiveRecord::Base
    before_create :shorten   
    # This is Sinatra! Remember to create a migration!
validates :long_url, :presence => true, :format => URI::regexp(%w(http https))
    def shorten
        short =  [('a'..'z'),(0..9)].map{|i| i.to_a}.flatten
        short_url = (0..10).map{short[rand(short.length)]}.join 
        self.short_url = short_url
    end
end

# class Url < ActiveRecord::Base
# 	 def shorten
#         shorturl = SecureRandom.hex(5)
#         self.short_url = shorturl
#     end 

