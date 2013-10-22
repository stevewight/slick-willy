class Bill

  def initialize(item)
    puts "item #{item}"
    puts "############################"
    item.each do |k,v|
      puts "#{k} => #{v}"
      puts "===========" 
    end
  end
 
end
