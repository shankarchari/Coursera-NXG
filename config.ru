$stdout.sync = true

use Rack::Static,
  :urls => ["/css", "/js", "/images", "/spec", "/bootstrap", "/dashboard", "/home"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('Coursera-Dashboard.html', File::RDONLY)
  ]
}