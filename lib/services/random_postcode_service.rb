require 'httparty'
require 'json'

class RandomPostcode
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_random_postcode
    @random_postcode_data =
    JSON.parse(self.class.get("/random/postcodes").body)
    (@random_postcode_data['result']['postcode']).gsub(' ','')
  end
  def multi_random_post
    arr =[]
     for i in 0..1 do
       arr.push get_random_postcode
      end
    p arr
  end

end
t =RandomPostcode.new
t.multi_random_post
