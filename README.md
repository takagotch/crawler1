### tkcrawler
---

$gem install tkcrawler

require 'tkcrawler'

Tkcrawler.http_crawl(%w(http://takagotch.com/1 http://takagotch.com/2)) {|request|
  get = request.get
  puts get.response if get.response_header.status == 200
}

require 'tkcrawler'
require 'eventmachine-http-request'

Tkcrawler.each(http://takagotch.com/1 http://example.com/2){|item|
  request = EventMachine::HttpResuest.new(item)
  get = request.get
  puts get.response if get.response_header.status == 200
}
