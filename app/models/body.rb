# START OF
 module Body

  def rides(body) #how can i use this same code to look up either passenger or driver?
    Ride.all.select {|ride| ride.send(body) == self}    #to refactor? module body
  end

  def total_distance # to refactor? module body
    distances = rides.map {|ride| ride.distance}
    distances.sum
  end

end