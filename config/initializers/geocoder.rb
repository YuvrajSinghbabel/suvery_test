# # Geocoder.configure(
# #   # lookup: :nominatim,
# #   # timeout: 10
# #   units: :km
# # )

# ENV["MAPBOX_ACCESS_TOKEN"] = "pk.eyJ1IjoiZ2FuZXNobmF2YWxlIiwiYSI6ImNscTk5NDFhZTE1cHUyanM5enJpczUyOTIifQ.gNM3TQuuSilq0CudrVnGzw"
# Geocoder.configure(
#   # Specify the geocoding service
#   lookup: :mapbox,

#   # Configuration options for the Mapbox geocoding service
#   mapbox: {
#     access_token: "pk.eyJ1IjoiZ2FuZXNobmF2YWxlIiwiYSI6ImNscTk5NDFhZTE1cHUyanM5enJpczUyOTIifQ.gNM3TQuuSilq0CudrVnGzw",
#     timeout: 10
#   },

#   # Use kilometers as the default unit for calculations
#   units: :km
# )