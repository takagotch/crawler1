require 'tkcrawler'

Tkcrawler.http_crawl(%w(http://takagotch.com/1 http://takagotch.com/2)) {|req|
  get = req.get
  puts get.response if get.response_header.status == 200
}

