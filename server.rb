require_relative "main.rb"
require "sinatra"

post "/" do
	inv = []
	if params["assault"]
		inv << $assaults
	end
	if params["carbine"]
		inv << $carbines
	end
	if params["battle"]
		inv << $battlerifles
	end
	if params["sniper"]
		inv << $snipers
	end
	if params["smg"]
		inv << $smgs
	end
	if params["pdw"]
		inv << $pdws
	end
	if params["break"]
		inv << $breakactions
	end
	if params["tube"]
		inv << $tubes
	end
	if params["mag"]
		inv << $mags
	end
	if params["lever"]
		inv << $lever
	end
	if params["semi"]
		inv << $semiauto
	end
	if params["auto"]
		inv << $autopistol
	end
	if params["revolver"]
		inv << $revolvers
	end
	if inv.size <= 0
		item = ""
	else
		item = inv.sample.pick
	end
	redirect to("/" + item)
end

get "/no" do
	"no"
end

get "/yes" do
	"yes"
end

get '/exit' do
  Process.kill('TERM', Process.pid)
end

get "/*" do
	html = File.open(File.dirname(__FILE__) + "/index.html"){|f| f.read}
	if params['splat'][0]
		html.gsub!("CONTENT", params['splat'][0])
	else
		html.gsub!("CONTENT", "")
	end
	html
end

not_found do
	"ya broke it"
end
