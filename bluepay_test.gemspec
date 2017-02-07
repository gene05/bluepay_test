Gem::Specification.new do |s|
  s.name        = 'bluepay_test'
  s.version     = '1.0.6'
  s.date        = '2017-02-07'
  s.summary     = "BluePay test gateway rubygem"
  s.description = "This gem is intended to be used along with a BluePay gateway account to post transaction request strings to BluePay's capture script so that the request can be reviewed."
  s.authors     = ["Justin Slingerland, Susan Schmidt"]
  s.email       = 'sschmidt@bluepay.com'
  s.has_rdoc    = true
  s.files       = Dir.glob("{lib,test,doc}/**/*") + %w(bluepay_test.gemspec Rakefile README)
  s.homepage    = 'http://www.bluepay.com'
  s.license     = 'GPL'
end
