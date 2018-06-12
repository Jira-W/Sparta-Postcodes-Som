require 'httparty'
require 'json'

class SinglePostcodeService
  include HTTParty

  base_uri 'https://api.postcodes.io'

  def get_single_postcode(postcode)
    @single_postcode_data =
    JSON.parse(self.class.get("/postcodes/#{postcode}").body)
  end

  def get_postcode
    @single_postcode_data['result']['postcode'].gsub(' ','')
  end
  def get_status
   @single_postcode_data['status']
  end
  def get_result
   @single_postcode_data['result']
  end
  def get_result_quality
   @single_postcode_data['result']['quality']
  end
  def get_ordance_eastings
   @single_postcode_data['result']['eastings']
  end
  def get_ordance_northings
   @single_postcode_data['result']['northings']
  end

end

# call = SinglePostcodeService.new
# call.get_single_postcode('w93pt')
# call.get_postcode
