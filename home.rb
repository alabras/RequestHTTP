require 'sinatra'
require 'haml'

get '/helloWord' do
	'Hello Word!!!'
end

get '/' do
  @url = request.url
  @content_charset = (request.content_charset!=nil ? request.content_charset : "-")  
  @user_agent = request.user_agent
  @port = request.port.to_s
  @request_method = request.request_method
  @query_string = request.query_string
  @host = request.host
  @referrer = (request.referrer != nil ? request.referrer : "-")  
  @ip = request.ip
  @scheme = request.scheme
  @query_string = (request.query_string!='' ? request.query_string : "-")
  @path = request.path
  haml :printHTTP
end