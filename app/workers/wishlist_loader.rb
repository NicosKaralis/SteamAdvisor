#!/usr/bin/env ruby
require 'net/http'
require 'nokogiri'

class WishlistLoader
  @queue = 'high'
  
  def self.perform(username)
    return :invalid_username if username.nil? || username.empty?
    url = "http://steamcommunity.com/id/#{URI.encode(username)}/wishlist/?sort=added"
    # puts url
    
    uri = (url.is_a?(String) ? URI(url) : url)
    raw = Net::HTTP.get(uri)
    doc = Nokogiri::HTML(raw)
    wishlist = doc.css('.wishlistRow')
    if wishlist.nil? || wishlist.empty?
      # puts "Invalid user name"
      return :invalid_username
    else
      wishlist.each do |item|
        appid = item.attr("id").split('_').last
        name = item.css('.wishlistRowItem h4').text
        # puts "#{appid} - #{name}"
      end      
    end
    
    return :ok
  end
  
end

if __FILE__ == $PROGRAM_NAME
  if ARGV.nil? || ARGV.empty?
    puts "username is required"
  end
  ARGV.each do |arg|
    WishlistLoader.perform(arg)
  end
end
