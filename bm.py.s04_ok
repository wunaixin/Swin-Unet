import os
import numpy as np
import nibabel as nib
import SimpleITK as sitk
import pdb

path1 = '/localdata/naixinw/datasets/synapse/averaged-training-images/'
# file1 = 'DET0015601_avg.nii.gz'
path1b = '/localdata/naixinw/datasets/synapse/averaged-training-labels/'
# file1b = 'DET0000101_avg_seg.nii.gz'





path2 = '/localdata/naixinw/datasets/synapse/train_npz/'
list1 = []
for i in os.listdir(path1):
    if 'nii.gz' in i:
        list1.append(i)
        # pdb.set_trace()
        img = nib.load(path1 + i)
        label = nib.load(path1b + i.replace('avg', 'avg_seg'))
        H, W, N = img.shape
        img_arr = np.asanyarray(img.dataobj)
        label_arr = np.asanyarray(label.dataobj)
        for j in range(N):
            name = i.split('.gz')[0] + '_' + str(j)
            # npz = img_arr[:, :, j]
            # np.savez(path2 + name, npz)
            np.savez(path2 + name, image=img_arr[:, :, j], label=label_arr[:, :, j])
        
pdb.set_trace()
