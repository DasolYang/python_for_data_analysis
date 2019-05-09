import numpy as np

########################### array ################################

num_data1 = [1,2,3,4,5]
num_data1
#[1, 2, 3, 4, 5]

num_data2 = [1.0, 5, 11, 23, 9.2]
num_data2
#[1.0, 5, 11, 23, 9.2]

alp_data = ['a','b','c','d','e']
alp_data
#['a', 'b', 'c', 'd', 'e']

num_arr1 = np.array(num_data1)
num_arr1
#array([1, 2, 3, 4, 5])

num_arr2 = np.array([2,3,4,5,6])
num_arr2
#array([2, 3, 4, 5, 6])

num_arr1.shape
#(5,)
num_arr2.shape
#(5,)
alp_arr = np.array(alp_data)
alp_arr
#array(['a', 'b', 'c', 'd', 'e'], dtype='<U1')

alp_arr.shape
#(5,)
num_arr3 = np.array(num_data2)
num_arr3
#array([ 1. ,  5. , 11. , 23. ,  9.2])

num_arr3.dtype
#dtype('float64')

num_arr1.dtype
#dtype('int32')

alp_arr.dtype
#dtype('<U1')
num_arr4 = np.array([[1,2,3,],[4,5,6,],[7,8,9],[10,11,12]])
num_arr4
#array([[ 1,  2,  3],
#       [ 4,  5,  6],
#       [ 7,  8,  9],
#       [10, 11, 12]])
num_arr4.shape
## 4 * 3 array
#(4, 3)

num_arr4.dtype
#dtype('int32')

np.zeros(10)
#array([0., 0., 0., 0., 0., 0., 0., 0., 0., 0.])

np.zeros(3)
#array([0., 0., 0.])

np.zeros((5,2))
#array([[0., 0.],
#       [0., 0.],
#       [0., 0.],
#       [0., 0.],
#       [0., 0.]])
       
np.ones(5)
#array([1., 1., 1., 1., 1.])
np.ones((2,4))
#array([[1., 1., 1., 1.],
#       [1., 1., 1., 1.]])
       
np.arange(10)
#array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
np.arange(2,8)
#array([2, 3, 4, 5, 6, 7])

np.arange(2,8)
#array([2, 3, 4, 5, 6, 7])

############################### array calculation ##################################

data1 = np.array([[1,2,3,],[4,5,6]])
data1
#array([[1, 2, 3],
       [4, 5, 6]])

data1.shape
#(2, 3)

data2 = np.array([[2,1,3],[1,2,2]])
data2
#array([[2, 1, 3],
#       [1, 2, 2]])

data2.shape
#(2, 3)

data1 + data2
#array([[3, 3, 6],
#       [5, 7, 8]])

data1 - data2
#array([[-1,  1,  0],
#       [ 3,  3,  4]])

data1 * data2
#array([[ 2,  2,  9],
#       [ 4, 10, 12]])

data1 / data2
#array([[0.5, 2. , 1. ],
#       [4. , 2.5, 3. ]])

data1
array([[1, 2, 3],
       [4, 5, 6]])

data3 = np.array([3,1,1])
data3
#array([3, 1, 1])

data3.shape
#(3,)

data1 + data3
#array([[4, 3, 4],
#       [7, 6, 7]])
data4 = np.array([2,1])
data4
#array([2, 1])
###data1 + data4
###Value Error 

data1 * 10
#array([[10, 20, 30],
#       [40, 50, 60]])

data1 ** 2
#array([[ 1,  4,  9],
#       [16, 25, 36]], dtype=int32)
       
####################################### Array indexing #################################

arr = np.arange(1,11)
arr
#array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10])
arr[0]
#1
arr[5]
#6

arr[2:7]
#array([3, 4, 5, 6, 7])
arr[:]
#array([ 1,  2,  3,  4,  5,  6,  7,  8,  9, 10])

arr2 = np.array([[1,2,3],[4,5,6],[7,8,9],[10,11,12]])
arr2
#array([[ 1,  2,  3],
#       [ 4,  5,  6],
#       [ 7,  8,  9],
#       [10, 11, 12]])
arr2[0]
#array([1, 2, 3])
arr2[0,1]
#2
arr2[2]
#array([7, 8, 9])

arr2[2,2]
#9

arr2[:,2]
#array([ 3,  6,  9, 12])
arr2[:,0]
#array([ 1,  4,  7, 10])

################################## array boolean ##########################

names = np.array(['jason','kim','jason','tyler','kate','moon','jason','peter'])
names
#array(['jason', 'kim', 'jason', 'tyler', 'kate', 'moon', 'jason', 'peter'],
#      dtype='<U5')

names.shape
#(8,)
data = np.random.randn(8,4)
data
#array([[-1.29490805,  0.13733794,  0.26170439, -0.79925246],
#       [ 0.98103697, -1.17197097, -0.05290723,  1.9388649 ],
#       [ 0.17392451,  1.63074986,  0.09848281,  0.7872096 ],
#       [-1.32841377, -0.38594469, -1.53153745, -1.27986917],
#       [-1.6124767 , -0.63129296,  0.95322108, -1.45826753],
#       [ 0.66593271, -0.23864616, -0.08388254, -0.49126577],
#       [-1.52226726, -0.63572933,  1.01289847, -0.00535301],
#       [-1.24739197,  0.80057606,  1.9536362 ,  0.40149317]])
data.shape
#(8, 4)

names_jason_mask = (names == 'jason')
names_jason_mask
#array([ True, False,  True, False, False, False,  True, False])

data[names_jason_mask,:]
#array([[-1.29490805,  0.13733794,  0.26170439, -0.79925246],
#       [ 0.17392451,  1.63074986,  0.09848281,  0.7872096 ],
#       [-1.52226726, -0.63572933,  1.01289847, -0.00535301]])

data[names=='kate']
#array([[-1.6124767 , -0.63129296,  0.95322108, -1.45826753]])

data[(names=='kate')|(names=='peter')]
#array([[-1.6124767 , -0.63129296,  0.95322108, -1.45826753],
#       [-1.24739197,  0.80057606,  1.9536362 ,  0.40149317]])
data[:,0]<0
#array([ True, False, False,  True,  True, False,  True,  True])

data[data[:,0]<0,:]
#array([[-1.29490805,  0.13733794,  0.26170439, -0.79925246],
#       [-1.32841377, -0.38594469, -1.53153745, -1.27986917],
#       [-1.6124767 , -0.63129296,  0.95322108, -1.45826753],
#       [-1.52226726, -0.63572933,  1.01289847, -0.00535301],
#       [-1.24739197,  0.80057606,  1.9536362 ,  0.40149317]])
data[data[:,0]<0]
#array([[-1.29490805,  0.13733794,  0.26170439, -0.79925246],
#       [-1.32841377, -0.38594469, -1.53153745, -1.27986917],
#       [-1.6124767 , -0.63129296,  0.95322108, -1.45826753],
#       [-1.52226726, -0.63572933,  1.01289847, -0.00535301],
#       [-1.24739197,  0.80057606,  1.9536362 ,  0.40149317]])
data[data[:,0]<0,1:3]
#array([[ 0.13733794,  0.26170439],
#       [-0.38594469, -1.53153745],
#       [-0.63129296,  0.95322108],
#       [-0.63572933,  1.01289847],
#       [ 0.80057606,  1.9536362 ]])
 
data[data[:,0]<0,1:3] = 0
data
#array([[-1.29490805,  0.        ,  0.        , -0.79925246],
#       [ 0.98103697, -1.17197097, -0.05290723,  1.9388649 ],
#       [ 0.17392451,  1.63074986,  0.09848281,  0.7872096 ],
#       [-1.32841377,  0.        ,  0.        , -1.27986917],
#       [-1.6124767 ,  0.        ,  0.        , -1.45826753],
#       [ 0.66593271, -0.23864616, -0.08388254, -0.49126577],
#       [-1.52226726,  0.        ,  0.        , -0.00535301],
#       [-1.24739197,  0.        ,  0.        ,  0.40149317]])
       
       
############################ numpy functions #####################################

data = np.random.randn(5,3)
data
#array([[-0.53221968,  0.53491445, -1.17664093],
#       [ 0.43819178, -0.21346286, -0.78901968],
#       [ 1.10759734, -1.81007429,  0.71674996],
#       [ 0.60575609,  1.29249613,  1.16887714],
#       [ 1.33324161,  0.75526144, -0.23337364]])
np.abs(data)
#array([[0.53221968, 0.53491445, 1.17664093],
#       [0.43819178, 0.21346286, 0.78901968],
#       [1.10759734, 1.81007429, 0.71674996],
#       [0.60575609, 1.29249613, 1.16887714],
#       [1.33324161, 0.75526144, 0.23337364]])
np.square(data)
### data ** 2
#array([[0.28325778, 0.28613347, 1.38448388],
#       [0.19201203, 0.04556639, 0.62255206],
#       [1.22677187, 3.27636892, 0.51373051],
#       [0.36694044, 1.67054625, 1.36627378],
#       [1.7775332 , 0.57041985, 0.05446325]])
np.exp(data)
#array([[0.58729991, 1.70730217, 0.30831265],
#       [1.54990211, 0.80778216, 0.45428993],
#       [3.02707661, 0.16364198, 2.04776706],
#       [1.83263732, 3.6418658 , 3.21837683],
#       [3.79331995, 2.12816784, 0.79185765]])
data
np.sign(data)
#array([[-1.,  1., -1.],
#       [ 1., -1., -1.],
#       [ 1., -1.,  1.],
#       [ 1.,  1.,  1.],
#       [ 1.,  1., -1.]])

np.ceil(data)
### ceiling
#array([[-0.,  1., -1.],
#       [ 1., -0., -0.],
#       [ 2., -1.,  1.],
#       [ 1.,  2.,  2.],
#       [ 2.,  1., -0.]])
arr = np.array([-2.7,-1.3,-0.1,0.3,1.8,2.0])
np.ceil(arr)
#array([-2., -1., -0.,  1.,  2.,  2.])
np.floor(arr)
#array([-3., -2., -1.,  0.,  1.,  2.])

np.isnan(data)
### return true if the element is NaN
#array([[False, False, False],
#       [False, False, False],
#       [False, False, False],
#       [False, False, False],
#       [False, False, False]])
### return true if the element is infinity
np.isinf(data)
### return true if the element is infinity
#array([[False, False, False],
#       [False, False, False],
#       [False, False, False],
#       [False, False, False],
#       [False, False, False]])
np.sin(data)
### cos, cosh, sin, shinh, tan, tanh
#array([[-0.50744725,  0.50976744, -0.92332124],
#       [ 0.42430278, -0.21184543, -0.70966294],
#       [ 0.89462773, -0.97150935,  0.6569378 ],
#       [ 0.5693838 ,  0.9615238 ,  0.92031193],
#       [ 0.97191632,  0.68547905, -0.23126102]])

data
#array([[-0.53221968,  0.53491445, -1.17664093],
#       [ 0.43819178, -0.21346286, -0.78901968],
#       [ 1.10759734, -1.81007429,  0.71674996],
#       [ 0.60575609,  1.29249613,  1.16887714],
#       [ 1.33324161,  0.75526144, -0.23337364]])

data2 = np.random.randn(5,3)
data2
#array([[ 0.69545525,  1.86107327,  0.40443438],
#       [ 1.54435509,  0.5412675 , -0.10283216],
#       [-1.71139255,  0.09736368,  0.78340586],
#       [-1.26524636,  0.51395936, -0.03329899],
#       [-0.12671323,  0.73733462, -0.96104001]])
np.add(data,data2)
### add, subtract, multiply, divide
#array([[ 0.16323557,  2.39598772, -0.77220655],
#       [ 1.98254686,  0.32780464, -0.89185184],
#       [-0.60379521, -1.71271061,  1.50015583],
#       [-0.65949028,  1.80645549,  1.13557816],
#       [ 1.20652838,  1.49259606, -1.19441364]])
 
np.maximum(data,data2)
### maximum, minimum
#array([[ 0.69545525,  1.86107327,  0.40443438],
#       [ 1.54435509,  0.5412675 , -0.10283216],
#       [ 1.10759734,  0.09736368,  0.78340586],
#       [ 0.60575609,  1.29249613,  1.16887714],
#       [ 1.33324161,  0.75526144, -0.23337364]])

data
#array([[-0.53221968,  0.53491445, -1.17664093],
#       [ 0.43819178, -0.21346286, -0.78901968],
#       [ 1.10759734, -1.81007429,  0.71674996],
#       [ 0.60575609,  1.29249613,  1.16887714],
#       [ 1.33324161,  0.75526144, -0.23337364]])
np.sum(data)
#3.1982948718579594
np.sum(data, axis  = 1)
### sum of rows
#array([-1.17394616, -0.56429076,  0.01427301,  3.06712936,  1.85512942])

np.sum(data, axis = 0)
### sum of columns
#array([ 2.95256714,  0.55913488, -0.31340714])
np.mean(data)
#0.21321965812386395
np.mean(data, axis=0)
#array([ 0.59051343,  0.11182698, -0.06268143])
np.std(data)
### std, var, min, max
#0.9293407814359579
np.argmin(data)
### index number of minimum (argmax = max)
#7
np.argmax(data, axis = 1)
#array([1, 0, 0, 1, 0], dtype=int64)
np.cumsum(data)
### comsum, cumprod
#array([-5.32219676e-01,  2.69477237e-03, -1.17394616e+00, -7.35754381e-01,
#       -9.49217241e-01, -1.73823692e+00, -6.30639582e-01, -2.44071387e+00,
#       -1.72396391e+00, -1.11820782e+00,  1.74288313e-01,  1.34316546e+00,
#        2.67640707e+00,  3.43166851e+00,  3.19829487e+00])
np.cumsum(data, axis=0)
#array([[-0.53221968,  0.53491445, -1.17664093],
#       [-0.0940279 ,  0.32145159, -1.96566061],
#       [ 1.01356944, -1.4886227 , -1.24891065],
#       [ 1.61932553, -0.19612657, -0.08003351],
#       [ 2.95256714,  0.55913488, -0.31340714]])
np.cumprod(data)
#array([-0.53221968, -0.28469199,  0.33498025,  0.14678559, -0.03133327,
#        0.02472257,  0.02738265, -0.04956463, -0.03552545, -0.02151976,
#       -0.0278142 , -0.03251139, -0.04334553, -0.03273721,  0.00764   ])

data
#array([[-0.53221968,  0.53491445, -1.17664093],
#       [ 0.43819178, -0.21346286, -0.78901968],
#       [ 1.10759734, -1.81007429,  0.71674996],
#       [ 0.60575609,  1.29249613,  1.16887714],
#       [ 1.33324161,  0.75526144, -0.23337364]])
np.sort(data)
#array([[-1.17664093, -0.53221968,  0.53491445],
#       [-0.78901968, -0.21346286,  0.43819178],
#       [-1.81007429,  0.71674996,  1.10759734],
#       [ 0.60575609,  1.16887714,  1.29249613],
#       [-0.23337364,  0.75526144,  1.33324161]])
np.sort(data)[::-1]
#array([[-0.23337364,  0.75526144,  1.33324161],
#       [ 0.60575609,  1.16887714,  1.29249613],
#       [-1.81007429,  0.71674996,  1.10759734],
#       [-0.78901968, -0.21346286,  0.43819178],
#       [-1.17664093, -0.53221968,  0.53491445]])

np.sort(data,axis=0)
#array([[-0.53221968, -1.81007429, -1.17664093],
#       [ 0.43819178, -0.21346286, -0.78901968],
#       [ 0.60575609,  0.53491445, -0.23337364],
#       [ 1.10759734,  0.75526144,  0.71674996],
#       [ 1.33324161,  1.29249613,  1.16887714]])