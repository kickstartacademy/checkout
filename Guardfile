# A sample Guardfile
# More info at https://github.com/guard/guard#readme
guard :rspec do
  watch(%r{\.rb$}) { 'spec' }
end

guard 'cucumber', cli: '--format pretty' do
  watch(%r{^features/.+\.feature$})
  watch(%r{\.rb$}) { 'features' }
end


