#f = open("/home/vlsi/Desktop/linuxlab/5-4-24/img.jpg", "rb")

with open("/home/vlsi/Desktop/linuxlab/5-4-24/img.jpg", "rb") as f:
	content = f.read()
	print(content)

f.close()
#res = ''.join(format(ord(i), '08b') for i in test_str)
