# coding: sjis
# 
# ruby -Ks nago_bot.rb
# 
require 'cinch'
require 'nkf'
require 'iconv'

bot = Cinch::Bot.new do
  configure do |c|
    c.nick            = "nago_bot"
    c.server          = "irc.cwpf.ricoh.co.jp"
    c.channels        = ["#nagotest"]
  end

  on :message, /gold/ do |m|
    m.reply NKF.nkf("-w -m0", "無理やっちゅーねん")
  end

end

bot.start



