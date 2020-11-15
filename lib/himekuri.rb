# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'version/version'

begin
  system("tsc himekuri.ts", exception: true)
  system("node himekuri.js", exception: true)
rescue Exception => e
  e.printbacktrace
end

class HimekuriTs
  def self.version
	str = "日めくり数え番号"
	comma = " : "
	puts str.freeze + comma.freeze + HimekuriTsVersion::VERSION
  end
end

HimekuriTs.version

__END__