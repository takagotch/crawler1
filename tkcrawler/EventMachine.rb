require 'eventmachine'
require 'eventmachine-synchrony'
require "event-synchrony/fiber_iterator"

require 'ostruct'

require_relative 'em/crawler.rb'
require_relative 'em/http_crawler.rb'

module Tkcrawler
  module EventMachine
    def initailize concurrency
    end

    private
    def iterate collection, &block
      EventMachine.synchrony do
        EventMachine::Synchorony::FiberIterator.new(collection, @concurrency).each do |item|
	  block.call item
        end
      end

      EventMachine.stop_event_loop
    end

    self
  end
end

