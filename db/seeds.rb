# include HTTParty
# movies = [
#   "batman",
#   "superman",
#   "spiderman",
#   "wonder woman",
#   "thor",
#   "black panther",
#   "avengers"
# ]

# movies.each do |movie|
#   omdb_endpoint = "http://www.omdbapi.com/?s=#{movie}&apikey=a881ace5"

#   serialized_data = URI.open(omdb_endpoint).read
#   results = JSON.parse(serialized_data)["Search"]

#   results.each do |result|
#     next if result["Type"] != "movie" || result["Poster"] == "N/A"

#     Movie.create(title: result["Title"], year: result["Year"].to_i, image_url: result["Poster"])
#   end
# end

auth_url = "https://api.mockbank.io/oauth/token"
auth_query = { "client_id" => "danko705", "client_secret" => "danko1",
                "grant_type" => "password",
                "username" => "beribakdanko@gmail.com", "password" => "8eri8@kD" }
auth_headers = { "content-type" => "application/json" }
user = HTTParty.post(auth_url,
                      query: auth_query,
                      headers: auth_headers)
p user["access_token"]

# auth_url = "https://api.mockbank.io/oauth/token"
#     auth_query = { "client_id" => "eco13", "client_secret" => "ecological",
#                    "grant_type" => "password",
#                    "username" => "demado@zohomail.com", "password" => "EcoLogical13!!" }
#     auth_headers = { "content-type" => "application/json" }
#     user = HTTParty.post(auth_url,
#                          query: auth_query,
#                          headers: auth_headers)
#     p user["access_token"]


# auth_url = "https://api.mockbank.io/oauth/token"
# auth_query = { "client_id" => "stephanye", "client_secret" => "secret",
#                 "grant_type" => "password",
#                 "username" => "contact@stephanye.io", "password" => "legation-ALVEOLUS-mischief-curse" }
# auth_headers = { "content-type" => "application/json" }
# user = HTTParty.post(auth_url,
#                       query: auth_query,
#                       headers: auth_headers)
# p user["access_token"]
