import scipy.io as spio
from typing import List
import torch
import matplotlib.pyplot as plt

def read_mat(file_path:str, keys: List[str]):
    mat_data = spio.loadmat(file_path)
    result = []
    for k in keys:
        mat_extracted = mat_data[k]
        data = torch.from_numpy(mat_extracted)
        result.append(data)
    return result

def show_training_images(X, h, w):
    m = X.shape[0]

    def show_training_image(x):
        reshaped_x = torch.reshape(x, (h,w))
        reshaped_x = torch.rot90(reshaped_x, 3, [0, 1]) # not sure why its 90 degree off
        reshaped_x = torch.fliplr(reshaped_x) # not sure why flipped
        plt.imshow(reshaped_x)
        plt.show()

    for _ in range(min(m,10)):
        from random import randint
        i = randint(0, m-1)
        show_training_image(X[i])



def main():
    training_file = './ex4data1.mat'
    X, y = read_mat(training_file, ['X', 'y'])
    # print(X)
    # print(y)
    # print(X.shape)
    show_training_images(X, 20, 20)

main()
