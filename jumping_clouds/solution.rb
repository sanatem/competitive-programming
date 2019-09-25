def jump_cloud(clouds, index, jumps)
  return jumps if index >= (clouds.length - 1) # We get into the end.

  if clouds[index + 2] != 1
    jump_cloud(clouds, index + 2, jumps + 1)
  elsif clouds[index + 1] != 1
    jump_cloud(clouds, index + 1, jumps + 1)
  end
end

def jumping_on(clouds)
  jumps = 0
  jump_cloud(clouds, 0, jumps)
end

# Test case

clouds = 0, 0, 1, 0, 0, 1, 0

jumping_on(clouds)

# Sample output: 4.
