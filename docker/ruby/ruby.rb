require 'nokogiri'
require 'ox'
require 'base64'

nokogiri_result = Nokogiri::HTML.parse(ARGV[0])
puts "nokogiri: "+Base64.strict_encode64(nokogiri_result.to_s)

Ox.default_options = {
    mode:   :generic,
    effort: :tolerant,
    smart:  true
}

begin
    ox_result = Ox.parse(ARGV[0])
    puts 'ox: '+Base64.strict_encode64(Ox.dump(ox_result.locate('*')[0]))
rescue => e
    puts 'ox: '
end