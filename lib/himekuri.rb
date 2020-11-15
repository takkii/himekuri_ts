# $HOME/.nvm/versions/node/v14.15.0/bin/tsc use nvm.

begin
  system("$HOME/.nvm/versions/node/v14.15.0/bin/tsc lib/himekuri.ts", exception: true)
  system("node lib/himekuri.js", exception: true)
rescue Exception => e
  e.printbacktrace
end

class HimekuriTs
  def self.version
	str = "日めくり数え番号"
	comma = " : "
	version = "1.0.2"
	puts str.freeze + comma.freeze + version.freeze
  end
end

HimekuriTs.version