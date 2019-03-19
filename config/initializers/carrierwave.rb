if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3用の設定
      :provider              => 'AWS',
      :region                => ENV['ap-northeast-1'],     # 例: 'ap-northeast-1'
      :aws_access_key_id     => ENV['AKIAIJHJKHJJBPMSBGXQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['chiekuma-photo']
  end
end