def nyc_pigeon_organizer(data)
  # write your code here!
  birds = {}
  keys = data[:lives].values.flatten.uniq
  keys.each do |name|
  birds[name] = {}
  end

  keys.each do |name|
    data.each do |types, data|
      qualities = []
      data.each do |quality, names|
        if names.include?(name)
          qualities << quality.to_s
          birds[name][types] = qualities
        end
      end
    end
  end
  birds
end
