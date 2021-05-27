import scipy.io as spio
from typing import List
import torch

def read_mat(file_path:str, keys: List[str]):
    mat_data = spio.loadmat(file_path)
    result = []
    for k in keys:
        mat_extracted = mat_data[k]
        data = torch.from_numpy(mat_extracted)
        result.append(data)
    return result


def main():
    training_file = './ex4data1.mat'
    X, y = read_mat(training_file, ['X', 'y'])
    # print(X)
    # print(y)
    print(X.shape)


main()
