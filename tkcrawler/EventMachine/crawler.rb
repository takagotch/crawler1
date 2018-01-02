module Tkcrawler
  module EventMachine
    class Crawler
      include EventMachine

      def each clollection, &block
        raise unless block_given?

	iterate(collection) do |item|
	  block.call item
	end
      end

      self
    end
  end
end

