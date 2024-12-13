require 'json'
require 'net/http'
require 'library'
require_relative '../Library/lib/NADAVehiclePricingPlanClient'
require_relative '../Library/lib/helpers/EnvironmentType'
require_relative '../Library/lib/helpers/VehiclePricingReportRequestModel'
require_relative '../Library/lib/clients/VehiclePricingAPIClient'
require_relative '../Library/lib/model/model'

vehicle_pricing_client = NADAVehiclePricingPlan::NADAVehiclePricingPlanClient.new("You_client_id", "You_client_secret", EnvironmentType::Sandbox)

puts "*******************************************"
states = vehicle_pricing_client.vehicle_pricing_API_client.get_states
puts "GetStates = #{states.to_s}"

puts "********************************************"
years = vehicle_pricing_client.vehicle_pricing_API_client.get_years
puts "GetYears = #{years.to_s}"

puts "********************************************"
get_make = vehicle_pricing_client.vehicle_pricing_API_client.get_make(2020)
puts "GetMake = #{get_make.to_s}"

puts "********************************************"
get_series = vehicle_pricing_client.vehicle_pricing_API_client.get_series(2020, 41)
puts "GetSeries = #{get_series.to_s}"

puts "********************************************"
get_body = vehicle_pricing_client.vehicle_pricing_API_client.get_body(2020, 41, 723)
puts "GetBody = #{get_body.to_s}"

puts "********************************************"
puts "Test GetReport:"

automobileInfo = AutomobileInfo.new(
  "AUDI",
  "6",
  "WAUFACF56PA046204",
  "A5",
  "2023"
)
vehicle_pricing_request_model = VehiclePricingReportRequestModel.new("9183", automobileInfo).to_h.to_json

report = vehicle_pricing_client.vehicle_pricing_API_client.get_report(vehicle_pricing_request_model)
puts report.to_s