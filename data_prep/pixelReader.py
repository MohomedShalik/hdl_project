import numpy
from PIL import Image


def get_image(image_path):
    """Get a numpy array of an image so that one can access values[x][y]."""
    image = Image.open(image_path, "r")
    width, height = image.size
    pixel_values = list(image.getdata())
    if image.mode == "RGB":
        channels = 3
    elif image.mode == "L":
        channels = 1
    else:
        print("Unknown mode: %s" % image.mode)
        return None
    pixel_values = numpy.array(pixel_values).reshape((width, height, channels))
    return pixel_values


image = get_image("apple.jpeg")

for i in range(0,128):
	for j in range (0,128):
		with open("apple.dat", "a") as file_object:
  			# Append 'hello' at the end of file
			if (i != 128 and j != 128):
    				file_object.write(bin(int(image[i][j]))[2:].zfill(8) + "\n")

			else:
				file_object.write(bin(int(image[i][j]))[2:].zfill(8))


			
