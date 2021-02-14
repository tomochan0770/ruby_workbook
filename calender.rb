require 'date'

year = Date.today.year
month = Date.today.mon - 1
day = Date.today.day
week = Date.today.wday
start_month = Date.new(Time.now.year, Time.now.month, 1).day
end_month = Date.new(Time.now.year, Time.now.month, -1).day


months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'Augst', 'September', 'October', 'November', 'December']
weeks = ['日', '月', '火', '水', '木', '金', '土']



