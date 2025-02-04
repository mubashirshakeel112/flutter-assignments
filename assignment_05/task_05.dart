// Task 5: Function with Nullable Parameter
// 1. Write a function describeWeather(String city, int? temperature).
// 2. If temperature is null, print "Weather data not available for [city]".
// 3. Otherwise, print "The temperature in [city] is [temperature]°C.".
// Example Output:
// The temperature in Karachi is 30°C.
// Weather data not available for Lahore.

void main() {
  describeWeather("Karachi");
}

describeWeather(String city, [int? temperature]) {
  if (temperature == null) {
    print("Weather data not available for $city");
  } else {
    print("The temperature in $city is $temperature °C.");
  }
}