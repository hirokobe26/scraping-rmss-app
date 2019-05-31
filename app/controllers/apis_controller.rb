class ApisController < ApplicationController
  def return_scraping_data
    agent = Mechanize.new
    search_word = 'スマホ'
    url = get_url
    page = agent.get(url)
    elements = page.search('div.p-faq')

    count = 0
    arrays = elements.to_s.split

    arrays.each do |element|
        if element.include?(search_word)
            count += 1
        end
    end

    search_words = {wrong_word: search_word, number_of_words: count}
    render :json => search_words
  end
  
  private
  def get_url
    url = 'https://service.rms.rakuten.co.jp/product/' + params[:url]
  end
end