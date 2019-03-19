CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: 'AKIAIJHJKHJJBPMSBGXQ',
    aws_secret_access_key: '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',
    region: 'ap-northeast-1'
  }

  config.fog_directory  = 'chiekuma-photo'
  config.cache_storage = :fog
end
