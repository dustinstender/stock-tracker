IEX::Api.configure do |config|
  config.publishable_token = 'Tpk_1f6996b4d24c48fd8b9d505656de765c' # defaults to ENV['IEX_API_PUBLISHABLE_TOKEN']
  config.secret_token = 'Tsk_859411527c7947f2889582f5da774843' # defaults to ENV['IEX_API_SECRET_TOKEN']
  config.endpoint = 'https://cloud.iexapis.com/v1' # use 'https://sandbox.iexapis.com/v1' for Sandbox
end
