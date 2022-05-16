import requests

conditions = {"Clear": " ☀️ ", "Clouds": " ☁️ ", "Thunderstorm": " ⛈ ", "Drizzle": " 🌧 ", "Rain": " 🌧 ", "Snow": " 🌨 ", "Atmosphere": " 🌫 "}             
api = "https://api.openweathermap.org/data/2.5/weather?lat=LATITUDE&lon=LONGITUDE&appid=APIKEY"
data = requests.get(api).json()

condition = data["weather"][0]["main"]
temp = round(data["main"]["temp"] - 273.15)

with open("cond", "w") as cond:
    cond.write(conditions[condition])

with open("temp", "w") as tem:
    tem.write(str(temp) + "°C ")
