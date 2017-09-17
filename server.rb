require_relative "main.rb"
require "sinatra"

$params = ["assault", "carbine", "battle", "sniper", "smg", "pdw", "break", "tube", "mag", "lever", "semi", "auto", "revolver"]
$invs = [$assaults, $carbines, $battlerifles, $snipers, $smgs, $pdws, $breakactions, $tubes, $mags, $lever, $semiauto, $autopistol, $revolvers]

post "/" do
	query = params.map{|key, value| "#{key}=#{value}"}.join("&")
	redirect to ("/?#{query}")
end

get "/" do
	html = File.open(File.dirname(__FILE__) + "/index.html"){|f| f.read}
	inv = []
	$params.each.with_index do |param, index|
		if params[param]
			inv << $invs[index]
			html.gsub!("!$" + param, "checked=\"true\"")
		else
			html.gsub!("!$" + param, "")
		end
	end
	if inv.size <= 0
		html.gsub!("CONTENT", "Item appears here")
	else
		html.gsub!("CONTENT", inv.sample.pick)
	end
	html
end

not_found do
	"ya broke it"
end
