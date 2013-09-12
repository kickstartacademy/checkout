# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard 'cucumber', cli: '--format pretty' do
  watch(%r{^features/.+\.feature$})
  watch(%r{\.rb$}) { 'features' }
end
