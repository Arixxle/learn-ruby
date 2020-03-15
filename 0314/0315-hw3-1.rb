def calc_parking_fee(vehicle_type, parking_hour)
  fee = 0
  n = parking_hour
  if vehicle_type  == :motocycle
    case n
      when 0..24
        fee = 20
      else
        fee = (n /24) * 20
    end
    return fee
  elsif vehicle_type  == :car
    case 
      when n.round >= 0 && n.round <= 2
        fee = n.round * 40
      when n.round >= 2
        fee = 2 * 40 + (n.round - 2) * 30
        if fee > 500
         fee = 500
        else
          fee = fee
        end
      fee
    end
  end
end

puts calc_parking_fee(:motocycle, 2)  # 印出 20
puts calc_parking_fee(:motocycle, 8)  # 印出 20

puts calc_parking_fee(:car, 1.5)      # 印出 80
puts calc_parking_fee(:car, 4)        # 印出 140
puts calc_parking_fee(:car, 5.5)      # 印出 200
puts calc_parking_fee(:car, 18)       # 印出 500