require 'evenmachine-http-request'
require 'eventMachine-synchrony/eventmachine-http'

module Tkcrawler
  module Evenmachine
    class HttpCrawler
      include Eventmachine

      def crawl urls, &block
        raise unless block_given?

	iterate(urls) do |url|
		request = ::EM::HttpRequest.new(url)
		block.call request
      end

    end
  end
end


