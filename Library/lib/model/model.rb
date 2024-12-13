class VehiclePricingReportRequestModel
  attr_accessor :mileage, :automobileInfo

  def initialize(mileage = nil, automobile_info = nil)
    @mileage = mileage
    @automobileInfo = automobile_info
  end

  def to_h
    {
      mileage: @mileage,
      automobileInfo: @automobileInfo.to_h
    }
  end
end

class AutomobileInfo
  attr_accessor :make, :regState, :vin, :series, :modelYear

  def initialize(make = nil, reg_state = nil, vin = nil, series = nil, model_year = nil)
    @make = make
    @regState = reg_state
    @vin = vin
    @series = series
    @modelYear = model_year
  end

  def to_h
    {
      make: @make,
      regState: @regState,
      vin: @vin,
      series: @series,
      modelYear: @modelYear
    }
  end
end