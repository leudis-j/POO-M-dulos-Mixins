require 'rack'

class MiPrimeraWebApp
 def call(env)
  [200, {'Content-Type' => 'text/html'}, ['<p> lorem </p>']]
 end
end

run MiPrimeraWebApp.new
