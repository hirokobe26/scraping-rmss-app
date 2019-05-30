require 'rubygems'
require 'mechanize'

agent = Mechanize.new
page = agent.get("https://service.rms.rakuten.co.jp/product/0008-0015/1/")
elements = page.search('div.p-faq')

count = 0

arrays = elements.to_s.split

arrays.each do |element|
    if element.include?('コンパス')
        count += 1
    end
end

puts count