require 'uri/http'

def domain_name(url)
  URI.parse(url).host.nil? ? url.split('.')[1] : URI.parse(url).host.split('.')[1]
end

puts "Answer: #{domain_name("http://www.zombie-bites.com")}"
