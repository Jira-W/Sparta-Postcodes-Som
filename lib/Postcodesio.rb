require_relative 'services/single_postcode_service'
require_relative 'services/multi_postcode_service'
require_relative 'services/random_postcode_service'

class Postcodesio

  def single_postcode_service
    SinglePostcodeService.new
  end
  def multi_postcode_service
    MultiPoscodeService.new
  end
  def random_postcode_service
    RandomPostcode.new
  end
end
