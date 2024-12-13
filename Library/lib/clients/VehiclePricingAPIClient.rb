require 'net/http'
require 'uri'
require 'json'
require_relative 'MBBaseClient'

module NADAVehiclePricingPlan
  module APIClients
    class VehiclePricingAPIClient
      API_NAME = "NADAVehiclePricing".freeze

      def initialize(authorization, base_url)
        @client = MBBaseClient.new(authorization, base_url)
      end

      def get_states
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetStates")
        response = @client.get(url)
        JSON.parse(response.to_json)
      end

      def get_years
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetYears")
        response = @client.get(url)
        JSON.parse(response.to_json)
      end

      def get_make(year)
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetMake?year=#{year}")
        response = @client.get(url)
        JSON.parse(response.to_json)
      end

      def get_series(year, make)
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetSeries?year=#{year}&make=#{make}")
        response = @client.get(url)
        JSON.parse(response.to_json)
      end

      def get_body(year, make, series)
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetBody?year=#{year}&make=#{make}&series=#{series}")
        response = @client.get(url)
        JSON.parse(response.to_json)
      end

      def get_report(json_request_model)
        url = URI.join(@client.base_url.to_s, "#{API_NAME}/GetReport")
        response = @client.post(url, JSON.parse(json_request_model))
        JSON.parse(response.to_json)
      end

    end
  end
end