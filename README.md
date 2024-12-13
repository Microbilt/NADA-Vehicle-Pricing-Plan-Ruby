# Locate Assets Package Client

A Ruby client for consuming the Microbilt NADA Vehicle Pricing Plan API.

API page - https://developer.microbilt.com/api/NADAVehiclePricing

# Installation

`composer require Microbilt/NADA-Vehicle-Pricing-Plan-Ruby`

# Quick Start

```
vehicle_pricing_client = NADAVehiclePricingPlan::NADAVehiclePricingPlanClient.new("You_client_id", "You_client_secret")
```
# Configuration

`client_id` required

`client_secret` required

`EnvironmentType` optional (defaults to Production). Other option is Sandbox. 

# Usage
See https://developer.microbilt.com/api/NADAVehiclePricing for the necessary parameters to pass in to each function.
For report created request model 
```
automobileInfo = AutomobileInfo.new(
  "AUDI",
  "6",
  "WAUFACF56PA046204",
  "A5",
  "2023"
)
vehicle_pricing_request_model = VehiclePricingReportRequestModel.new("9183", automobileInfo).to_h.to_json
```