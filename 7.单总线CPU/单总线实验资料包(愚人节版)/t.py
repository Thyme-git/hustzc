import imageio
import numpy as np

im = imageio.imread('test.png')

# imageio.imwrite('./test0.png', im[:2292])
# imageio.imwrite('./test1.png', im[2292:2292*2])
# imageio.imwrite('./test2.png', im[2292*2:2292*3])
# imageio.imwrite('./test3.png', im[2292*3:2292*4])

im = np.concatenate([im[:2292], im[2292:2292*2], im[2292*2:2292*3], im[2292*3:2292*4]], axis = 1)
im[:, 637, :] = 0
im[:, 637*2, :] = 0
im[:, 637*3, :] = 0

imageio.imwrite('t.png', im)