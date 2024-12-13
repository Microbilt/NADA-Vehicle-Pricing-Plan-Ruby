require 'json'

class VehiclePricingReportRequestModel
  attr_accessor :mileage, :automobileInfo

  def to_json(*_args)
    {
      mileage: @mileage,
      automobileInfo: @automobileInfo
    }.to_json
  end
end