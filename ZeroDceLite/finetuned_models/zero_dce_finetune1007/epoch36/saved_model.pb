Ȥ
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
7
Square
x"T
y"T"
Ttype:
2	
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-15-g6290819256d8��
�
ConstConst*&
_output_shapes
:*
dtype0*E
value<B:"$                  �?          ��    
�
Const_1Const*&
_output_shapes
:*
dtype0*E
value<B:"$      ��          �?                
�
Const_2Const*&
_output_shapes
:*
dtype0*E
value<B:"$                  �?  ��            
�
Const_3Const*&
_output_shapes
:*
dtype0*E
value<B:"$              ��  �?                
�
Adam/DCE-net/conv2d_48/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/DCE-net/conv2d_48/bias/v
�
1Adam/DCE-net/conv2d_48/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_48/bias/v*
_output_shapes
:*
dtype0
�
Adam/DCE-net/conv2d_48/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/DCE-net/conv2d_48/kernel/v
�
3Adam/DCE-net/conv2d_48/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_48/kernel/v*&
_output_shapes
:@*
dtype0
�
Adam/DCE-net/conv2d_47/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_47/bias/v
�
1Adam/DCE-net/conv2d_47/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_47/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_47/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/DCE-net/conv2d_47/kernel/v
�
3Adam/DCE-net/conv2d_47/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_47/kernel/v*&
_output_shapes
:@ *
dtype0
�
Adam/DCE-net/conv2d_46/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_46/bias/v
�
1Adam/DCE-net/conv2d_46/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_46/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_46/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/DCE-net/conv2d_46/kernel/v
�
3Adam/DCE-net/conv2d_46/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_46/kernel/v*&
_output_shapes
:@ *
dtype0
�
Adam/DCE-net/conv2d_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_45/bias/v
�
1Adam/DCE-net/conv2d_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_45/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_45/kernel/v
�
3Adam/DCE-net/conv2d_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_45/kernel/v*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_44/bias/v
�
1Adam/DCE-net/conv2d_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_44/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_44/kernel/v
�
3Adam/DCE-net/conv2d_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_44/kernel/v*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_43/bias/v
�
1Adam/DCE-net/conv2d_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_43/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_43/kernel/v
�
3Adam/DCE-net/conv2d_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_43/kernel/v*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_42/bias/v
�
1Adam/DCE-net/conv2d_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_42/bias/v*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/DCE-net/conv2d_42/kernel/v
�
3Adam/DCE-net/conv2d_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_42/kernel/v*&
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_48/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*.
shared_nameAdam/DCE-net/conv2d_48/bias/m
�
1Adam/DCE-net/conv2d_48/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_48/bias/m*
_output_shapes
:*
dtype0
�
Adam/DCE-net/conv2d_48/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*0
shared_name!Adam/DCE-net/conv2d_48/kernel/m
�
3Adam/DCE-net/conv2d_48/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_48/kernel/m*&
_output_shapes
:@*
dtype0
�
Adam/DCE-net/conv2d_47/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_47/bias/m
�
1Adam/DCE-net/conv2d_47/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_47/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_47/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/DCE-net/conv2d_47/kernel/m
�
3Adam/DCE-net/conv2d_47/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_47/kernel/m*&
_output_shapes
:@ *
dtype0
�
Adam/DCE-net/conv2d_46/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_46/bias/m
�
1Adam/DCE-net/conv2d_46/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_46/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_46/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *0
shared_name!Adam/DCE-net/conv2d_46/kernel/m
�
3Adam/DCE-net/conv2d_46/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_46/kernel/m*&
_output_shapes
:@ *
dtype0
�
Adam/DCE-net/conv2d_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_45/bias/m
�
1Adam/DCE-net/conv2d_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_45/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_45/kernel/m
�
3Adam/DCE-net/conv2d_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_45/kernel/m*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_44/bias/m
�
1Adam/DCE-net/conv2d_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_44/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_44/kernel/m
�
3Adam/DCE-net/conv2d_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_44/kernel/m*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_43/bias/m
�
1Adam/DCE-net/conv2d_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_43/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *0
shared_name!Adam/DCE-net/conv2d_43/kernel/m
�
3Adam/DCE-net/conv2d_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_43/kernel/m*&
_output_shapes
:  *
dtype0
�
Adam/DCE-net/conv2d_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameAdam/DCE-net/conv2d_42/bias/m
�
1Adam/DCE-net/conv2d_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_42/bias/m*
_output_shapes
: *
dtype0
�
Adam/DCE-net/conv2d_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!Adam/DCE-net/conv2d_42/kernel/m
�
3Adam/DCE-net/conv2d_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/DCE-net/conv2d_42/kernel/m*&
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
DCE-net/conv2d_48/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameDCE-net/conv2d_48/bias
}
*DCE-net/conv2d_48/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_48/bias*
_output_shapes
:*
dtype0
�
DCE-net/conv2d_48/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*)
shared_nameDCE-net/conv2d_48/kernel
�
,DCE-net/conv2d_48/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_48/kernel*&
_output_shapes
:@*
dtype0
�
DCE-net/conv2d_47/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_47/bias
}
*DCE-net/conv2d_47/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_47/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_47/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameDCE-net/conv2d_47/kernel
�
,DCE-net/conv2d_47/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_47/kernel*&
_output_shapes
:@ *
dtype0
�
DCE-net/conv2d_46/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_46/bias
}
*DCE-net/conv2d_46/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_46/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_46/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ *)
shared_nameDCE-net/conv2d_46/kernel
�
,DCE-net/conv2d_46/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_46/kernel*&
_output_shapes
:@ *
dtype0
�
DCE-net/conv2d_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_45/bias
}
*DCE-net/conv2d_45/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_45/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameDCE-net/conv2d_45/kernel
�
,DCE-net/conv2d_45/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_45/kernel*&
_output_shapes
:  *
dtype0
�
DCE-net/conv2d_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_44/bias
}
*DCE-net/conv2d_44/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_44/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameDCE-net/conv2d_44/kernel
�
,DCE-net/conv2d_44/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_44/kernel*&
_output_shapes
:  *
dtype0
�
DCE-net/conv2d_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_43/bias
}
*DCE-net/conv2d_43/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_43/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  *)
shared_nameDCE-net/conv2d_43/kernel
�
,DCE-net/conv2d_43/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_43/kernel*&
_output_shapes
:  *
dtype0
�
DCE-net/conv2d_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameDCE-net/conv2d_42/bias
}
*DCE-net/conv2d_42/bias/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_42/bias*
_output_shapes
: *
dtype0
�
DCE-net/conv2d_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameDCE-net/conv2d_42/kernel
�
,DCE-net/conv2d_42/kernel/Read/ReadVariableOpReadVariableOpDCE-net/conv2d_42/kernel*&
_output_shapes
: *
dtype0
�
serving_default_input_1Placeholder*1
_output_shapes
:�����������*
dtype0*&
shape:�����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1DCE-net/conv2d_42/kernelDCE-net/conv2d_42/biasDCE-net/conv2d_43/kernelDCE-net/conv2d_43/biasDCE-net/conv2d_44/kernelDCE-net/conv2d_44/biasDCE-net/conv2d_45/kernelDCE-net/conv2d_45/biasDCE-net/conv2d_46/kernelDCE-net/conv2d_46/biasDCE-net/conv2d_47/kernelDCE-net/conv2d_47/biasDCE-net/conv2d_48/kernelDCE-net/conv2d_48/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::�����������:�����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_579038

NoOpNoOp
�c
Const_4Const"/device:CPU:0*
_output_shapes
: *
dtype0*�c
value�cB�c B�c
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4

concat_3_4
	conv5

concat_2_5
	conv6

concat_1_6

a_map_conv
	optimizer
loss
loss_weights
	test_step

train_step

signatures*
j
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13*
j
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13*
* 
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

+trace_0
,trace_1* 

-trace_0
.trace_1* 
* 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

kernel
bias
 5_jit_compiled_convolution_op*
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias
 <_jit_compiled_convolution_op*
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

kernel
bias
 C_jit_compiled_convolution_op*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

kernel
bias
 J_jit_compiled_convolution_op*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses* 
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

 kernel
!bias
 W_jit_compiled_convolution_op*
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses* 
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

"kernel
#bias
 d_jit_compiled_convolution_op*
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses* 
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

$kernel
%bias
 q_jit_compiled_convolution_op*
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_ratem�m�m�m�m�m�m�m� m�!m�"m�#m�$m�%m�v�v�v�v�v�v�v�v� v�!v�"v�#v�$v�%v�*
* 
* 

wtrace_0
xtrace_1* 

ytrace_0
ztrace_1* 

{serving_default* 
XR
VARIABLE_VALUEDCE-net/conv2d_42/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDCE-net/conv2d_42/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEDCE-net/conv2d_43/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDCE-net/conv2d_43/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEDCE-net/conv2d_44/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDCE-net/conv2d_44/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEDCE-net/conv2d_45/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDCE-net/conv2d_45/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEDCE-net/conv2d_46/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEDCE-net/conv2d_46/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEDCE-net/conv2d_47/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEDCE-net/conv2d_47/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEDCE-net/conv2d_48/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEDCE-net/conv2d_48/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
	1

2
3
4
5
6
7
8
9*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 

0
1*

0
1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

 0
!1*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
F
�
capture_14
�
capture_15
�
capture_16
�
capture_17* 
F
�
capture_14
�
capture_15
�
capture_16
�
capture_17* 
F
�
capture_14
�
capture_15
�
capture_16
�
capture_17* 
F
�
capture_14
�
capture_15
�
capture_16
�
capture_17* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_42/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_42/bias/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_43/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_43/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_44/kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_44/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_45/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_45/bias/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_46/kernel/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_46/bias/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/DCE-net/conv2d_47/kernel/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/DCE-net/conv2d_47/bias/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/DCE-net/conv2d_48/kernel/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/DCE-net/conv2d_48/bias/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_42/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_42/bias/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_43/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_43/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_44/kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_44/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_45/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_45/bias/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/DCE-net/conv2d_46/kernel/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUEAdam/DCE-net/conv2d_46/bias/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/DCE-net/conv2d_47/kernel/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/DCE-net/conv2d_47/bias/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/DCE-net/conv2d_48/kernel/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/DCE-net/conv2d_48/bias/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename,DCE-net/conv2d_42/kernel/Read/ReadVariableOp*DCE-net/conv2d_42/bias/Read/ReadVariableOp,DCE-net/conv2d_43/kernel/Read/ReadVariableOp*DCE-net/conv2d_43/bias/Read/ReadVariableOp,DCE-net/conv2d_44/kernel/Read/ReadVariableOp*DCE-net/conv2d_44/bias/Read/ReadVariableOp,DCE-net/conv2d_45/kernel/Read/ReadVariableOp*DCE-net/conv2d_45/bias/Read/ReadVariableOp,DCE-net/conv2d_46/kernel/Read/ReadVariableOp*DCE-net/conv2d_46/bias/Read/ReadVariableOp,DCE-net/conv2d_47/kernel/Read/ReadVariableOp*DCE-net/conv2d_47/bias/Read/ReadVariableOp,DCE-net/conv2d_48/kernel/Read/ReadVariableOp*DCE-net/conv2d_48/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp3Adam/DCE-net/conv2d_42/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_42/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_43/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_43/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_44/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_44/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_45/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_45/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_46/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_46/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_47/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_47/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_48/kernel/m/Read/ReadVariableOp1Adam/DCE-net/conv2d_48/bias/m/Read/ReadVariableOp3Adam/DCE-net/conv2d_42/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_42/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_43/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_43/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_44/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_44/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_45/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_45/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_46/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_46/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_47/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_47/bias/v/Read/ReadVariableOp3Adam/DCE-net/conv2d_48/kernel/v/Read/ReadVariableOp1Adam/DCE-net/conv2d_48/bias/v/Read/ReadVariableOpConst_4*<
Tin5
321	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_579688
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameDCE-net/conv2d_42/kernelDCE-net/conv2d_42/biasDCE-net/conv2d_43/kernelDCE-net/conv2d_43/biasDCE-net/conv2d_44/kernelDCE-net/conv2d_44/biasDCE-net/conv2d_45/kernelDCE-net/conv2d_45/biasDCE-net/conv2d_46/kernelDCE-net/conv2d_46/biasDCE-net/conv2d_47/kernelDCE-net/conv2d_47/biasDCE-net/conv2d_48/kernelDCE-net/conv2d_48/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rateAdam/DCE-net/conv2d_42/kernel/mAdam/DCE-net/conv2d_42/bias/mAdam/DCE-net/conv2d_43/kernel/mAdam/DCE-net/conv2d_43/bias/mAdam/DCE-net/conv2d_44/kernel/mAdam/DCE-net/conv2d_44/bias/mAdam/DCE-net/conv2d_45/kernel/mAdam/DCE-net/conv2d_45/bias/mAdam/DCE-net/conv2d_46/kernel/mAdam/DCE-net/conv2d_46/bias/mAdam/DCE-net/conv2d_47/kernel/mAdam/DCE-net/conv2d_47/bias/mAdam/DCE-net/conv2d_48/kernel/mAdam/DCE-net/conv2d_48/bias/mAdam/DCE-net/conv2d_42/kernel/vAdam/DCE-net/conv2d_42/bias/vAdam/DCE-net/conv2d_43/kernel/vAdam/DCE-net/conv2d_43/bias/vAdam/DCE-net/conv2d_44/kernel/vAdam/DCE-net/conv2d_44/bias/vAdam/DCE-net/conv2d_45/kernel/vAdam/DCE-net/conv2d_45/bias/vAdam/DCE-net/conv2d_46/kernel/vAdam/DCE-net/conv2d_46/bias/vAdam/DCE-net/conv2d_47/kernel/vAdam/DCE-net/conv2d_47/bias/vAdam/DCE-net/conv2d_48/kernel/vAdam/DCE-net/conv2d_48/bias/v*;
Tin4
220*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_579839��
�
�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_578723

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:�����������a
IdentityIdentityTanh:y:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_42_layer_call_fn_579173

inputs!
unknown: 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_578594y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�
__inference_test_step_513032

inputsJ
0dce_net_conv2d_42_conv2d_readvariableop_resource: ?
1dce_net_conv2d_42_biasadd_readvariableop_resource: J
0dce_net_conv2d_43_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_43_biasadd_readvariableop_resource: J
0dce_net_conv2d_44_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_44_biasadd_readvariableop_resource: J
0dce_net_conv2d_45_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_45_biasadd_readvariableop_resource: J
0dce_net_conv2d_46_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_46_biasadd_readvariableop_resource: J
0dce_net_conv2d_47_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_47_biasadd_readvariableop_resource: J
0dce_net_conv2d_48_conv2d_readvariableop_resource:@?
1dce_net_conv2d_48_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter
identity

identity_1

identity_2

identity_3

identity_4��(DCE-net/conv2d_42/BiasAdd/ReadVariableOp�'DCE-net/conv2d_42/Conv2D/ReadVariableOp�(DCE-net/conv2d_43/BiasAdd/ReadVariableOp�'DCE-net/conv2d_43/Conv2D/ReadVariableOp�(DCE-net/conv2d_44/BiasAdd/ReadVariableOp�'DCE-net/conv2d_44/Conv2D/ReadVariableOp�(DCE-net/conv2d_45/BiasAdd/ReadVariableOp�'DCE-net/conv2d_45/Conv2D/ReadVariableOp�(DCE-net/conv2d_46/BiasAdd/ReadVariableOp�'DCE-net/conv2d_46/Conv2D/ReadVariableOp�(DCE-net/conv2d_47/BiasAdd/ReadVariableOp�'DCE-net/conv2d_47/Conv2D/ReadVariableOp�(DCE-net/conv2d_48/BiasAdd/ReadVariableOp�'DCE-net/conv2d_48/Conv2D/ReadVariableOp�
'DCE-net/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/Conv2DConv2Dinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/BiasAddBiasAdd!DCE-net/conv2d_42/Conv2D:output:00DCE-net/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_42/ReluRelu"DCE-net/conv2d_42/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_43/Conv2DConv2D$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_43/BiasAddBiasAdd!DCE-net/conv2d_43/Conv2D:output:00DCE-net/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_43/ReluRelu"DCE-net/conv2d_43/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_44/Conv2DConv2D$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_44/BiasAddBiasAdd!DCE-net/conv2d_44/Conv2D:output:00DCE-net/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_44/ReluRelu"DCE-net/conv2d_44/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_45/Conv2DConv2D$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_45/BiasAddBiasAdd!DCE-net/conv2d_45/Conv2D:output:00DCE-net/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_45/ReluRelu"DCE-net/conv2d_45/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_18/concatConcatV2$DCE-net/conv2d_44/Relu:activations:0$DCE-net/conv2d_45/Relu:activations:0+DCE-net/concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_46/Conv2DConv2D&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_46/BiasAddBiasAdd!DCE-net/conv2d_46/Conv2D:output:00DCE-net/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_46/ReluRelu"DCE-net/conv2d_46/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_19/concatConcatV2$DCE-net/conv2d_43/Relu:activations:0$DCE-net/conv2d_46/Relu:activations:0+DCE-net/concatenate_19/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_47/Conv2DConv2D&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_47/BiasAddBiasAdd!DCE-net/conv2d_47/Conv2D:output:00DCE-net/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_47/ReluRelu"DCE-net/conv2d_47/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_20/concatConcatV2$DCE-net/conv2d_42/Relu:activations:0$DCE-net/conv2d_47/Relu:activations:0+DCE-net/concatenate_20/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DCE-net/conv2d_48/Conv2DConv2D&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
(DCE-net/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DCE-net/conv2d_48/BiasAddBiasAdd!DCE-net/conv2d_48/Conv2D:output:00DCE-net/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��u
DCE-net/conv2d_48/TanhTanh"DCE-net/conv2d_48/BiasAdd:output:0*
T0*(
_output_shapes
:��b
DCE-net/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DCE-net/splitSplit DCE-net/split/split_dim:output:0DCE-net/conv2d_48/Tanh:y:0*
T0*�
_output_shapesz
x:��:��:��:��:��:��*
	num_splitS
DCE-net/SquareSquareinputs*
T0*(
_output_shapes
:��a
DCE-net/subSubDCE-net/Square:y:0inputs*
T0*(
_output_shapes
:��n
DCE-net/mulMulDCE-net/split:output:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��`
DCE-net/addAddV2inputsDCE-net/mul:z:0*
T0*(
_output_shapes
:��^
DCE-net/Square_1SquareDCE-net/add:z:0*
T0*(
_output_shapes
:��n
DCE-net/sub_1SubDCE-net/Square_1:y:0DCE-net/add:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_1MulDCE-net/split:output:1DCE-net/sub_1:z:0*
T0*(
_output_shapes
:��m
DCE-net/add_1AddV2DCE-net/add:z:0DCE-net/mul_1:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_2SquareDCE-net/add_1:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_2SubDCE-net/Square_2:y:0DCE-net/add_1:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_2MulDCE-net/split:output:2DCE-net/sub_2:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_2AddV2DCE-net/add_1:z:0DCE-net/mul_2:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_3SquareDCE-net/add_2:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_3SubDCE-net/Square_3:y:0DCE-net/add_2:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_3MulDCE-net/split:output:3DCE-net/sub_3:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_3AddV2DCE-net/add_2:z:0DCE-net/mul_3:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_4SquareDCE-net/add_3:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_4SubDCE-net/Square_4:y:0DCE-net/add_3:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_4MulDCE-net/split:output:4DCE-net/sub_4:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_4AddV2DCE-net/add_3:z:0DCE-net/mul_4:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_5SquareDCE-net/add_4:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_5SubDCE-net/Square_5:y:0DCE-net/add_4:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_5MulDCE-net/split:output:5DCE-net/sub_5:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_5AddV2DCE-net/add_4:z:0DCE-net/mul_5:z:0*
T0*(
_output_shapes
:��x
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/Mean_1MeanDCE-net/add_5:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*'
_output_shapes
:`�y
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*'
_output_shapes
:`�u
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: �
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
MeanMeanDCE-net/add_5:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *��?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
: J
SquareSquaresub:z:0*
T0*&
_output_shapes
: ^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
Mean_2MeanDCE-net/add_5:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:A
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: S
Mean_3MeanSqueeze:output:0Const_1:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_7StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: I
Const_2Const*
_output_shapes
: *
dtype0*
value	B : I
Const_3Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_8/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stackPack strided_slice_8/stack/0:output:0Const_2:output:0 strided_slice_8/stack/2:output:0 strided_slice_8/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_8/stack_2Pack"strided_slice_8/stack_2/0:output:0Const_3:output:0"strided_slice_8/stack_2/2:output:0"strided_slice_8/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_8StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:��P
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:��`
Const_4Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_4:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_9StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: I
Const_5Const*
_output_shapes
: *
dtype0*
value	B : I
Const_6Const*
_output_shapes
: *
dtype0*
value	B :Z
strided_slice_10/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stackPack!strided_slice_10/stack/0:output:0!strided_slice_10/stack/1:output:0Const_5:output:0!strided_slice_10/stack/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_10/stack_2Pack#strided_slice_10/stack_2/0:output:0#strided_slice_10/stack_2/1:output:0Const_6:output:0#strided_slice_10/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_10StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:��P
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:��`
Const_7Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_7:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �CN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp(^DCE-net/conv2d_42/Conv2D/ReadVariableOp)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp(^DCE-net/conv2d_43/Conv2D/ReadVariableOp)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp(^DCE-net/conv2d_44/Conv2D/ReadVariableOp)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp(^DCE-net/conv2d_45/Conv2D/ReadVariableOp)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp(^DCE-net/conv2d_46/Conv2D/ReadVariableOp)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp(^DCE-net/conv2d_47/Conv2D/ReadVariableOp)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp(^DCE-net/conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesz
x:��: : : : : : : : : : : : : : ::::2T
(DCE-net/conv2d_42/BiasAdd/ReadVariableOp(DCE-net/conv2d_42/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_42/Conv2D/ReadVariableOp'DCE-net/conv2d_42/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_43/BiasAdd/ReadVariableOp(DCE-net/conv2d_43/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_43/Conv2D/ReadVariableOp'DCE-net/conv2d_43/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_44/BiasAdd/ReadVariableOp(DCE-net/conv2d_44/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_44/Conv2D/ReadVariableOp'DCE-net/conv2d_44/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_45/BiasAdd/ReadVariableOp(DCE-net/conv2d_45/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_45/Conv2D/ReadVariableOp'DCE-net/conv2d_45/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_46/BiasAdd/ReadVariableOp(DCE-net/conv2d_46/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_46/Conv2D/ReadVariableOp'DCE-net/conv2d_46/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_47/BiasAdd/ReadVariableOp(DCE-net/conv2d_47/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_47/Conv2D/ReadVariableOp'DCE-net/conv2d_47/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_48/BiasAdd/ReadVariableOp(DCE-net/conv2d_48/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_48/Conv2D/ReadVariableOp'DCE-net/conv2d_48/Conv2D/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_579343

inputs8
conv2d_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������Z
TanhTanhBiasAdd:output:0*
T0*1
_output_shapes
:�����������a
IdentityIdentityTanh:y:0^NoOp*
T0*1
_output_shapes
:�����������w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
v
J__inference_concatenate_20_layer_call_and_return_conditional_losses_579323
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
�
�
$__inference_signature_wrapper_579038
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::�����������:�����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_578576y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
t
J__inference_concatenate_19_layer_call_and_return_conditional_losses_578684

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs:YU
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_44_layer_call_and_return_conditional_losses_579224

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�G
�
C__inference_DCE-net_layer_call_and_return_conditional_losses_578762

inputs*
conv2d_42_578595: 
conv2d_42_578597: *
conv2d_43_578612:  
conv2d_43_578614: *
conv2d_44_578629:  
conv2d_44_578631: *
conv2d_45_578646:  
conv2d_45_578648: *
conv2d_46_578672:@ 
conv2d_46_578674: *
conv2d_47_578698:@ 
conv2d_47_578700: *
conv2d_48_578724:@
conv2d_48_578726:
identity

identity_1��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall�!conv2d_48/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_42_578595conv2d_42_578597*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_578594�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_578612conv2d_43_578614*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_578611�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_578629conv2d_44_578631*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_578628�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_578646conv2d_45_578648*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_578645�
concatenate_18/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_578658�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_46_578672conv2d_46_578674*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_578671�
concatenate_19/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_19_layer_call_and_return_conditional_losses_578684�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall'concatenate_19/PartitionedCall:output:0conv2d_47_578698conv2d_47_578700*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_578697�
concatenate_20/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_20_layer_call_and_return_conditional_losses_578710�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall'concatenate_20/PartitionedCall:output:0conv2d_48_578724conv2d_48_578726*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_578723Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0*conv2d_48/StatefulPartitionedCall:output:0*
T0*�
_output_shapes�
�:�����������:�����������:�����������:�����������:�����������:�����������*
	num_splitT
SquareSquareinputs*
T0*1
_output_shapes
:�����������Z
subSub
Square:y:0inputs*
T0*1
_output_shapes
:�����������_
mulMulsplit:output:0sub:z:0*
T0*1
_output_shapes
:�����������Y
addAddV2inputsmul:z:0*
T0*1
_output_shapes
:�����������W
Square_1Squareadd:z:0*
T0*1
_output_shapes
:�����������_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:�����������c
mul_1Mulsplit:output:1	sub_1:z:0*
T0*1
_output_shapes
:�����������^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:�����������Y
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:�����������a
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:�����������c
mul_2Mulsplit:output:2	sub_2:z:0*
T0*1
_output_shapes
:�����������`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:�����������Y
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:�����������a
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:�����������c
mul_3Mulsplit:output:3	sub_3:z:0*
T0*1
_output_shapes
:�����������`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:�����������Y
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:�����������a
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:�����������c
mul_4Mulsplit:output:4	sub_4:z:0*
T0*1
_output_shapes
:�����������`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:�����������Y
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:�����������a
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:�����������c
mul_5Mulsplit:output:5	sub_5:z:0*
T0*1
_output_shapes
:�����������`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:�����������b
IdentityIdentity	add_5:z:0^NoOp*
T0*1
_output_shapes
:������������

Identity_1Identity*conv2d_48/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_44_layer_call_fn_579213

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_578628y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�`
�
C__inference_DCE-net_layer_call_and_return_conditional_losses_579164

inputsB
(conv2d_42_conv2d_readvariableop_resource: 7
)conv2d_42_biasadd_readvariableop_resource: B
(conv2d_43_conv2d_readvariableop_resource:  7
)conv2d_43_biasadd_readvariableop_resource: B
(conv2d_44_conv2d_readvariableop_resource:  7
)conv2d_44_biasadd_readvariableop_resource: B
(conv2d_45_conv2d_readvariableop_resource:  7
)conv2d_45_biasadd_readvariableop_resource: B
(conv2d_46_conv2d_readvariableop_resource:@ 7
)conv2d_46_biasadd_readvariableop_resource: B
(conv2d_47_conv2d_readvariableop_resource:@ 7
)conv2d_47_biasadd_readvariableop_resource: B
(conv2d_48_conv2d_readvariableop_resource:@7
)conv2d_48_biasadd_readvariableop_resource:
identity

identity_1�� conv2d_42/BiasAdd/ReadVariableOp�conv2d_42/Conv2D/ReadVariableOp� conv2d_43/BiasAdd/ReadVariableOp�conv2d_43/Conv2D/ReadVariableOp� conv2d_44/BiasAdd/ReadVariableOp�conv2d_44/Conv2D/ReadVariableOp� conv2d_45/BiasAdd/ReadVariableOp�conv2d_45/Conv2D/ReadVariableOp� conv2d_46/BiasAdd/ReadVariableOp�conv2d_46/Conv2D/ReadVariableOp� conv2d_47/BiasAdd/ReadVariableOp�conv2d_47/Conv2D/ReadVariableOp� conv2d_48/BiasAdd/ReadVariableOp�conv2d_48/Conv2D/ReadVariableOp�
conv2d_42/Conv2D/ReadVariableOpReadVariableOp(conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
conv2d_42/Conv2DConv2Dinputs'conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_42/BiasAdd/ReadVariableOpReadVariableOp)conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_42/BiasAddBiasAddconv2d_42/Conv2D:output:0(conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_42/ReluReluconv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
conv2d_43/Conv2D/ReadVariableOpReadVariableOp(conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_43/Conv2DConv2Dconv2d_42/Relu:activations:0'conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_43/BiasAdd/ReadVariableOpReadVariableOp)conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_43/BiasAddBiasAddconv2d_43/Conv2D:output:0(conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_43/ReluReluconv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
conv2d_44/Conv2D/ReadVariableOpReadVariableOp(conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_44/Conv2DConv2Dconv2d_43/Relu:activations:0'conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_44/BiasAdd/ReadVariableOpReadVariableOp)conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_44/BiasAddBiasAddconv2d_44/Conv2D:output:0(conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_44/ReluReluconv2d_44/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
conv2d_45/Conv2D/ReadVariableOpReadVariableOp(conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
conv2d_45/Conv2DConv2Dconv2d_44/Relu:activations:0'conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_45/BiasAdd/ReadVariableOpReadVariableOp)conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_45/BiasAddBiasAddconv2d_45/Conv2D:output:0(conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_45/ReluReluconv2d_45/BiasAdd:output:0*
T0*1
_output_shapes
:����������� \
concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_18/concatConcatV2conv2d_44/Relu:activations:0conv2d_45/Relu:activations:0#concatenate_18/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
conv2d_46/Conv2D/ReadVariableOpReadVariableOp(conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_46/Conv2DConv2Dconcatenate_18/concat:output:0'conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_46/BiasAdd/ReadVariableOpReadVariableOp)conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_46/BiasAddBiasAddconv2d_46/Conv2D:output:0(conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_46/ReluReluconv2d_46/BiasAdd:output:0*
T0*1
_output_shapes
:����������� \
concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_19/concatConcatV2conv2d_43/Relu:activations:0conv2d_46/Relu:activations:0#concatenate_19/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
conv2d_47/Conv2D/ReadVariableOpReadVariableOp(conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
conv2d_47/Conv2DConv2Dconcatenate_19/concat:output:0'conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
 conv2d_47/BiasAdd/ReadVariableOpReadVariableOp)conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
conv2d_47/BiasAddBiasAddconv2d_47/Conv2D:output:0(conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� n
conv2d_47/ReluReluconv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:����������� \
concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatenate_20/concatConcatV2conv2d_42/Relu:activations:0conv2d_47/Relu:activations:0#concatenate_20/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
conv2d_48/Conv2D/ReadVariableOpReadVariableOp(conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
conv2d_48/Conv2DConv2Dconcatenate_20/concat:output:0'conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
 conv2d_48/BiasAdd/ReadVariableOpReadVariableOp)conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
conv2d_48/BiasAddBiasAddconv2d_48/Conv2D:output:0(conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������n
conv2d_48/TanhTanhconv2d_48/BiasAdd:output:0*
T0*1
_output_shapes
:�����������Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0conv2d_48/Tanh:y:0*
T0*�
_output_shapes�
�:�����������:�����������:�����������:�����������:�����������:�����������*
	num_splitT
SquareSquareinputs*
T0*1
_output_shapes
:�����������Z
subSub
Square:y:0inputs*
T0*1
_output_shapes
:�����������_
mulMulsplit:output:0sub:z:0*
T0*1
_output_shapes
:�����������Y
addAddV2inputsmul:z:0*
T0*1
_output_shapes
:�����������W
Square_1Squareadd:z:0*
T0*1
_output_shapes
:�����������_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:�����������c
mul_1Mulsplit:output:1	sub_1:z:0*
T0*1
_output_shapes
:�����������^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:�����������Y
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:�����������a
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:�����������c
mul_2Mulsplit:output:2	sub_2:z:0*
T0*1
_output_shapes
:�����������`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:�����������Y
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:�����������a
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:�����������c
mul_3Mulsplit:output:3	sub_3:z:0*
T0*1
_output_shapes
:�����������`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:�����������Y
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:�����������a
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:�����������c
mul_4Mulsplit:output:4	sub_4:z:0*
T0*1
_output_shapes
:�����������`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:�����������Y
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:�����������a
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:�����������c
mul_5Mulsplit:output:5	sub_5:z:0*
T0*1
_output_shapes
:�����������`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:�����������b
IdentityIdentity	add_5:z:0^NoOp*
T0*1
_output_shapes
:�����������m

Identity_1Identityconv2d_48/Tanh:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp!^conv2d_42/BiasAdd/ReadVariableOp ^conv2d_42/Conv2D/ReadVariableOp!^conv2d_43/BiasAdd/ReadVariableOp ^conv2d_43/Conv2D/ReadVariableOp!^conv2d_44/BiasAdd/ReadVariableOp ^conv2d_44/Conv2D/ReadVariableOp!^conv2d_45/BiasAdd/ReadVariableOp ^conv2d_45/Conv2D/ReadVariableOp!^conv2d_46/BiasAdd/ReadVariableOp ^conv2d_46/Conv2D/ReadVariableOp!^conv2d_47/BiasAdd/ReadVariableOp ^conv2d_47/Conv2D/ReadVariableOp!^conv2d_48/BiasAdd/ReadVariableOp ^conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2D
 conv2d_42/BiasAdd/ReadVariableOp conv2d_42/BiasAdd/ReadVariableOp2B
conv2d_42/Conv2D/ReadVariableOpconv2d_42/Conv2D/ReadVariableOp2D
 conv2d_43/BiasAdd/ReadVariableOp conv2d_43/BiasAdd/ReadVariableOp2B
conv2d_43/Conv2D/ReadVariableOpconv2d_43/Conv2D/ReadVariableOp2D
 conv2d_44/BiasAdd/ReadVariableOp conv2d_44/BiasAdd/ReadVariableOp2B
conv2d_44/Conv2D/ReadVariableOpconv2d_44/Conv2D/ReadVariableOp2D
 conv2d_45/BiasAdd/ReadVariableOp conv2d_45/BiasAdd/ReadVariableOp2B
conv2d_45/Conv2D/ReadVariableOpconv2d_45/Conv2D/ReadVariableOp2D
 conv2d_46/BiasAdd/ReadVariableOp conv2d_46/BiasAdd/ReadVariableOp2B
conv2d_46/Conv2D/ReadVariableOpconv2d_46/Conv2D/ReadVariableOp2D
 conv2d_47/BiasAdd/ReadVariableOp conv2d_47/BiasAdd/ReadVariableOp2B
conv2d_47/Conv2D/ReadVariableOpconv2d_47/Conv2D/ReadVariableOp2D
 conv2d_48/BiasAdd/ReadVariableOp conv2d_48/BiasAdd/ReadVariableOp2B
conv2d_48/Conv2D/ReadVariableOpconv2d_48/Conv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
��
�"
__inference_train_step_514044

inputsJ
0dce_net_conv2d_42_conv2d_readvariableop_resource: ?
1dce_net_conv2d_42_biasadd_readvariableop_resource: J
0dce_net_conv2d_43_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_43_biasadd_readvariableop_resource: J
0dce_net_conv2d_44_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_44_biasadd_readvariableop_resource: J
0dce_net_conv2d_45_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_45_biasadd_readvariableop_resource: J
0dce_net_conv2d_46_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_46_biasadd_readvariableop_resource: J
0dce_net_conv2d_47_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_47_biasadd_readvariableop_resource: J
0dce_net_conv2d_48_conv2d_readvariableop_resource:@?
1dce_net_conv2d_48_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: >
$adam_adam_update_resourceapplyadam_m: >
$adam_adam_update_resourceapplyadam_v: 4
&adam_adam_update_1_resourceapplyadam_m: 4
&adam_adam_update_1_resourceapplyadam_v: @
&adam_adam_update_2_resourceapplyadam_m:  @
&adam_adam_update_2_resourceapplyadam_v:  4
&adam_adam_update_3_resourceapplyadam_m: 4
&adam_adam_update_3_resourceapplyadam_v: @
&adam_adam_update_4_resourceapplyadam_m:  @
&adam_adam_update_4_resourceapplyadam_v:  4
&adam_adam_update_5_resourceapplyadam_m: 4
&adam_adam_update_5_resourceapplyadam_v: @
&adam_adam_update_6_resourceapplyadam_m:  @
&adam_adam_update_6_resourceapplyadam_v:  4
&adam_adam_update_7_resourceapplyadam_m: 4
&adam_adam_update_7_resourceapplyadam_v: @
&adam_adam_update_8_resourceapplyadam_m:@ @
&adam_adam_update_8_resourceapplyadam_v:@ 4
&adam_adam_update_9_resourceapplyadam_m: 4
&adam_adam_update_9_resourceapplyadam_v: A
'adam_adam_update_10_resourceapplyadam_m:@ A
'adam_adam_update_10_resourceapplyadam_v:@ 5
'adam_adam_update_11_resourceapplyadam_m: 5
'adam_adam_update_11_resourceapplyadam_v: A
'adam_adam_update_12_resourceapplyadam_m:@A
'adam_adam_update_12_resourceapplyadam_v:@5
'adam_adam_update_13_resourceapplyadam_m:5
'adam_adam_update_13_resourceapplyadam_v:
identity

identity_1

identity_2

identity_3

identity_4��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�%Adam/Adam/update_10/ResourceApplyAdam�%Adam/Adam/update_11/ResourceApplyAdam�%Adam/Adam/update_12/ResourceApplyAdam�%Adam/Adam/update_13/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�$Adam/Adam/update_4/ResourceApplyAdam�$Adam/Adam/update_5/ResourceApplyAdam�$Adam/Adam/update_6/ResourceApplyAdam�$Adam/Adam/update_7/ResourceApplyAdam�$Adam/Adam/update_8/ResourceApplyAdam�$Adam/Adam/update_9/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�(DCE-net/conv2d_42/BiasAdd/ReadVariableOp�'DCE-net/conv2d_42/Conv2D/ReadVariableOp�(DCE-net/conv2d_43/BiasAdd/ReadVariableOp�'DCE-net/conv2d_43/Conv2D/ReadVariableOp�(DCE-net/conv2d_44/BiasAdd/ReadVariableOp�'DCE-net/conv2d_44/Conv2D/ReadVariableOp�(DCE-net/conv2d_45/BiasAdd/ReadVariableOp�'DCE-net/conv2d_45/Conv2D/ReadVariableOp�(DCE-net/conv2d_46/BiasAdd/ReadVariableOp�'DCE-net/conv2d_46/Conv2D/ReadVariableOp�(DCE-net/conv2d_47/BiasAdd/ReadVariableOp�'DCE-net/conv2d_47/Conv2D/ReadVariableOp�(DCE-net/conv2d_48/BiasAdd/ReadVariableOp�'DCE-net/conv2d_48/Conv2D/ReadVariableOp�
'DCE-net/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/Conv2DConv2Dinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/BiasAddBiasAdd!DCE-net/conv2d_42/Conv2D:output:00DCE-net/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_42/ReluRelu"DCE-net/conv2d_42/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_43/Conv2DConv2D$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_43/BiasAddBiasAdd!DCE-net/conv2d_43/Conv2D:output:00DCE-net/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_43/ReluRelu"DCE-net/conv2d_43/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_44/Conv2DConv2D$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_44/BiasAddBiasAdd!DCE-net/conv2d_44/Conv2D:output:00DCE-net/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_44/ReluRelu"DCE-net/conv2d_44/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_45/Conv2DConv2D$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_45/BiasAddBiasAdd!DCE-net/conv2d_45/Conv2D:output:00DCE-net/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_45/ReluRelu"DCE-net/conv2d_45/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_18/concatConcatV2$DCE-net/conv2d_44/Relu:activations:0$DCE-net/conv2d_45/Relu:activations:0+DCE-net/concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_46/Conv2DConv2D&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_46/BiasAddBiasAdd!DCE-net/conv2d_46/Conv2D:output:00DCE-net/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_46/ReluRelu"DCE-net/conv2d_46/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_19/concatConcatV2$DCE-net/conv2d_43/Relu:activations:0$DCE-net/conv2d_46/Relu:activations:0+DCE-net/concatenate_19/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_47/Conv2DConv2D&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_47/BiasAddBiasAdd!DCE-net/conv2d_47/Conv2D:output:00DCE-net/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_47/ReluRelu"DCE-net/conv2d_47/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_20/concatConcatV2$DCE-net/conv2d_42/Relu:activations:0$DCE-net/conv2d_47/Relu:activations:0+DCE-net/concatenate_20/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DCE-net/conv2d_48/Conv2DConv2D&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
(DCE-net/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DCE-net/conv2d_48/BiasAddBiasAdd!DCE-net/conv2d_48/Conv2D:output:00DCE-net/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��u
DCE-net/conv2d_48/TanhTanh"DCE-net/conv2d_48/BiasAdd:output:0*
T0*(
_output_shapes
:��b
DCE-net/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DCE-net/splitSplit DCE-net/split/split_dim:output:0DCE-net/conv2d_48/Tanh:y:0*
T0*�
_output_shapesz
x:��:��:��:��:��:��*
	num_splitS
DCE-net/SquareSquareinputs*
T0*(
_output_shapes
:��a
DCE-net/subSubDCE-net/Square:y:0inputs*
T0*(
_output_shapes
:��n
DCE-net/mulMulDCE-net/split:output:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��`
DCE-net/addAddV2inputsDCE-net/mul:z:0*
T0*(
_output_shapes
:��^
DCE-net/Square_1SquareDCE-net/add:z:0*
T0*(
_output_shapes
:��n
DCE-net/sub_1SubDCE-net/Square_1:y:0DCE-net/add:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_1MulDCE-net/split:output:1DCE-net/sub_1:z:0*
T0*(
_output_shapes
:��m
DCE-net/add_1AddV2DCE-net/add:z:0DCE-net/mul_1:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_2SquareDCE-net/add_1:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_2SubDCE-net/Square_2:y:0DCE-net/add_1:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_2MulDCE-net/split:output:2DCE-net/sub_2:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_2AddV2DCE-net/add_1:z:0DCE-net/mul_2:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_3SquareDCE-net/add_2:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_3SubDCE-net/Square_3:y:0DCE-net/add_2:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_3MulDCE-net/split:output:3DCE-net/sub_3:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_3AddV2DCE-net/add_2:z:0DCE-net/mul_3:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_4SquareDCE-net/add_3:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_4SubDCE-net/Square_4:y:0DCE-net/add_3:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_4MulDCE-net/split:output:4DCE-net/sub_4:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_4AddV2DCE-net/add_3:z:0DCE-net/mul_4:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_5SquareDCE-net/add_4:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_5SubDCE-net/Square_5:y:0DCE-net/add_4:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_5MulDCE-net/split:output:5DCE-net/sub_5:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_5AddV2DCE-net/add_4:z:0DCE-net/mul_5:z:0*
T0*(
_output_shapes
:��x
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/Mean_1MeanDCE-net/add_5:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*'
_output_shapes
:`�y
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*'
_output_shapes
:`�u
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: �
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
MeanMeanDCE-net/add_5:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *��?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
: J
SquareSquaresub:z:0*
T0*&
_output_shapes
: ^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
Mean_2MeanDCE-net/add_5:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:A
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
:Q
Const_1Const*
_output_shapes
:*
dtype0*
valueB: S
Mean_3MeanSqueeze:output:0Const_1:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_7StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: I
Const_2Const*
_output_shapes
: *
dtype0*
value	B : I
Const_3Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_8/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stackPack strided_slice_8/stack/0:output:0Const_2:output:0 strided_slice_8/stack/2:output:0 strided_slice_8/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_8/stack_2Pack"strided_slice_8/stack_2/0:output:0Const_3:output:0"strided_slice_8/stack_2/2:output:0"strided_slice_8/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_8StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:��P
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:��`
Const_4Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_4:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_9StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: I
Const_5Const*
_output_shapes
: *
dtype0*
value	B : I
Const_6Const*
_output_shapes
: *
dtype0*
value	B :Z
strided_slice_10/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stackPack!strided_slice_10/stack/0:output:0!strided_slice_10/stack/1:output:0Const_5:output:0!strided_slice_10/stack/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_10/stack_2Pack#strided_slice_10/stack_2/0:output:0#strided_slice_10/stack_2/1:output:0Const_6:output:0#strided_slice_10/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_10StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:��P
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:��`
Const_7Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_7:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �CN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
gradient_tape/mul_6/MulMulones:output:0truediv_2:z:0*
T0*
_output_shapes
: b
gradient_tape/mul_6/Mul_1Mulones:output:0mul_6/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_2/MulMulones:output:0Mean_3:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_2/Mul_1Mulones:output:0mul_2/x:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_2/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
-gradient_tape/truediv_2/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_2/Shape:output:0(gradient_tape/truediv_2/Shape_1:output:0*2
_output_shapes 
:���������:���������t
gradient_tape/truediv_2/RealDivRealDivgradient_tape/mul_6/Mul_1:z:0Cast:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/SumSum#gradient_tape/truediv_2/RealDiv:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/ReshapeReshape$gradient_tape/truediv_2/Sum:output:0&gradient_tape/truediv_2/Shape:output:0*
T0*
_output_shapes
: N
gradient_tape/truediv_2/NegNeg	mul_5:z:0*
T0*
_output_shapes
: x
!gradient_tape/truediv_2/RealDiv_1RealDivgradient_tape/truediv_2/Neg:y:0Cast:y:0*
T0*
_output_shapes
: ~
!gradient_tape/truediv_2/RealDiv_2RealDiv%gradient_tape/truediv_2/RealDiv_1:z:0Cast:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/mulMulgradient_tape/mul_6/Mul_1:z:0%gradient_tape/truediv_2/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/Sum_1Sumgradient_tape/truediv_2/mul:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_2/Reshape_1Reshape&gradient_tape/truediv_2/Sum_1:output:0(gradient_tape/truediv_2/Shape_1:output:0*
T0*
_output_shapes
: |
gradient_tape/mul/MulMulones:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: ^
gradient_tape/mul/Mul_1Mulones:output:0mul/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_1/MulMulones:output:0Mean_1:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_1/Mul_1Mulones:output:0mul_1/x:output:0*
T0*
_output_shapes
: e
gradient_tape/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:�
gradient_tape/ReshapeReshapegradient_tape/mul_2/Mul_1:z:0$gradient_tape/Reshape/shape:output:0*
T0*
_output_shapes
:]
gradient_tape/ConstConst*
_output_shapes
:*
dtype0*
valueB:}
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
:Z
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *   A�
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
:t
gradient_tape/mul_5/MulMul(gradient_tape/truediv_2/Reshape:output:0	add_2:z:0*
T0*
_output_shapes
: }
gradient_tape/mul_5/Mul_1Mul(gradient_tape/truediv_2/Reshape:output:0mul_5/x:output:0*
T0*
_output_shapes
: �
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Ngradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Cgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nanDivNoNangradient_tape/mul/Mul_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/SumSumGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ReshapeReshapeEgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum:output:0Ggradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/NegNeg3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1DivNoNan@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Neg:y:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2DivNoNanIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mulMulgradient_tape/mul/Mul_1:z:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1Sum@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mul:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape_1ReshapeGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_1Reshapegradient_tape/mul_1/Mul_1:z:0&gradient_tape/Reshape_1/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
gradient_tape/Tile_1Tile gradient_tape/Reshape_1:output:0gradient_tape/Const_2:output:0*
T0*&
_output_shapes
: Z
gradient_tape/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  �E�
gradient_tape/truediv_1RealDivgradient_tape/Tile_1:output:0gradient_tape/Const_3:output:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
: l
gradient_tape/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_2Reshapegradient_tape/truediv:z:0gradient_tape/Shape:output:0*
T0*&
_output_shapes
:�
@gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
:gradient_tape/SpatialConsistencyLoss/weighted_loss/ReshapeReshapeIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape:output:0Kgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: {
8gradient_tape/SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
7gradient_tape/SpatialConsistencyLoss/weighted_loss/TileTileCgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape:output:0Agradient_tape/SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: t
gradient_tape/Const_4Const^gradient_tape/truediv_1*
_output_shapes
: *
dtype0*
valueB
 *   @r
gradient_tape/MulMulsub:z:0gradient_tape/Const_4:output:0*
T0*&
_output_shapes
: 
gradient_tape/Mul_1Mulgradient_tape/truediv_1:z:0gradient_tape/Mul:z:0*
T0*&
_output_shapes
: �
gradient_tape/SqrtGradSqrtGradSqrt:y:0 gradient_tape/Reshape_2:output:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:^
gradient_tape/truediv/ShapeConst*
_output_shapes
: *
dtype0*
valueB `
gradient_tape/truediv/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
+gradient_tape/truediv/BroadcastGradientArgsBroadcastGradientArgs$gradient_tape/truediv/Shape:output:0&gradient_tape/truediv/Shape_1:output:0*2
_output_shapes 
:���������:���������t
gradient_tape/truediv/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv/SumSum!gradient_tape/truediv/RealDiv:z:00gradient_tape/truediv/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv/ReshapeReshape"gradient_tape/truediv/Sum:output:0$gradient_tape/truediv/Shape:output:0*
T0*
_output_shapes
: O
gradient_tape/truediv/NegNegSum:output:0*
T0*
_output_shapes
: v
gradient_tape/truediv/RealDiv_1RealDivgradient_tape/truediv/Neg:y:0
Cast_1:y:0*
T0*
_output_shapes
: |
gradient_tape/truediv/RealDiv_2RealDiv#gradient_tape/truediv/RealDiv_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv/mulMulgradient_tape/mul_5/Mul_1:z:0#gradient_tape/truediv/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv/Sum_1Sumgradient_tape/truediv/mul:z:00gradient_tape/truediv/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
gradient_tape/truediv/Reshape_1Reshape$gradient_tape/truediv/Sum_1:output:0&gradient_tape/truediv/Shape_1:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
-gradient_tape/truediv_1/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_1/Shape:output:0(gradient_tape/truediv_1/Shape_1:output:0*2
_output_shapes 
:���������:���������v
gradient_tape/truediv_1/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/SumSum#gradient_tape/truediv_1/RealDiv:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/ReshapeReshape$gradient_tape/truediv_1/Sum:output:0&gradient_tape/truediv_1/Shape:output:0*
T0*
_output_shapes
: S
gradient_tape/truediv_1/NegNegSum_1:output:0*
T0*
_output_shapes
: z
!gradient_tape/truediv_1/RealDiv_1RealDivgradient_tape/truediv_1/Neg:y:0
Cast_2:y:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_1/RealDiv_2RealDiv%gradient_tape/truediv_1/RealDiv_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/mulMulgradient_tape/mul_5/Mul_1:z:0%gradient_tape/truediv_1/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/Sum_1Sumgradient_tape/truediv_1/mul:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_1/Reshape_1Reshape&gradient_tape/truediv_1/Sum_1:output:0(gradient_tape/truediv_1/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1Reshape@gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile:output:0Mgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1TileEgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1:output:0Cgradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_3Reshape&gradient_tape/truediv/Reshape:output:0&gradient_tape/Reshape_3/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_5Const*
_output_shapes
:*
dtype0*%
valueB"           �
gradient_tape/Tile_2Tile gradient_tape/Reshape_3:output:0gradient_tape/Const_5:output:0*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:��v
gradient_tape/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_4Reshape(gradient_tape/truediv_1/Reshape:output:0&gradient_tape/Reshape_4/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_6Const*
_output_shapes
:*
dtype0*%
valueB"   �  �     �
gradient_tape/Tile_3Tile gradient_tape/Reshape_4:output:0gradient_tape/Const_6:output:0*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
6gradient_tape/SpatialConsistencyLoss/weighted_loss/MulMulBgradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: v
gradient_tape/AvgPool2D/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
#gradient_tape/AvgPool2D/AvgPoolGradAvgPoolGrad&gradient_tape/AvgPool2D/Shape:output:0gradient_tape/Mul_1:z:0*
T0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
s
gradient_tape/Const_7Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @y
gradient_tape/Mul_2MulSquare_3:y:0gradient_tape/Const_7:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_3Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_2:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:q
gradient_tape/Const_8Const^gradient_tape/Tile_2*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_4Mul	sub_7:z:0gradient_tape/Const_8:output:0*
T0*(
_output_shapes
:���
gradient_tape/Mul_5Mulgradient_tape/Tile_2:output:0gradient_tape/Mul_4:z:0*
T0*(
_output_shapes
:��q
gradient_tape/Const_9Const^gradient_tape/Tile_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_6Mul	sub_9:z:0gradient_tape/Const_9:output:0*
T0*(
_output_shapes
:���
gradient_tape/Mul_7Mulgradient_tape/Tile_3:output:0gradient_tape/Mul_6:z:0*
T0*(
_output_shapes
:���
2gradient_tape/SpatialConsistencyLoss/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
,gradient_tape/SpatialConsistencyLoss/ReshapeReshape:gradient_tape/SpatialConsistencyLoss/weighted_loss/Mul:z:0;gradient_tape/SpatialConsistencyLoss/Reshape/shape:output:0*
T0*&
_output_shapes
:�
*gradient_tape/SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"   `   �      �
)gradient_tape/SpatialConsistencyLoss/TileTile5gradient_tape/SpatialConsistencyLoss/Reshape:output:03gradient_tape/SpatialConsistencyLoss/Const:output:0*
T0*'
_output_shapes
:`�q
,gradient_tape/SpatialConsistencyLoss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �H�
,gradient_tape/SpatialConsistencyLoss/truedivRealDiv2gradient_tape/SpatialConsistencyLoss/Tile:output:05gradient_tape/SpatialConsistencyLoss/Const_1:output:0*
T0*&
 _has_manual_control_dependencies(*'
_output_shapes
:`�p
gradient_tape/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        Y
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
gradient_tape/MaximumMaximum gradient_tape/Maximum/x:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
:q
gradient_tape/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/floordivFloorDiv!gradient_tape/floordiv/x:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/Reshape_5Reshape,gradient_tape/AvgPool2D/AvgPoolGrad:output:0&gradient_tape/Reshape_5/shape:output:0*
T0*(
_output_shapes
:��w
gradient_tape/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Tile_4Tile gradient_tape/Reshape_5:output:0'gradient_tape/Tile_4/multiples:output:0*
T0*(
_output_shapes
:��[
gradient_tape/Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *  @@�
gradient_tape/truediv_2RealDivgradient_tape/Tile_4:output:0gradient_tape/Const_10:output:0*
T0*(
_output_shapes
:��t
gradient_tape/Const_11Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @z
gradient_tape/Mul_8MulSquare_1:y:0gradient_tape/Const_11:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_9Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_8:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:t
gradient_tape/Const_12Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @{
gradient_tape/Mul_10MulSquare_2:y:0gradient_tape/Const_12:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_11Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_10:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:q
gradient_tape/Const_13Const^gradient_tape/Mul_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_12Mul	sub_3:z:0gradient_tape/Const_13:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_13Mulgradient_tape/Mul_3:z:0gradient_tape/Mul_12:z:0*
T0*&
_output_shapes
:j
gradient_tape/sub_7/NegNeggradient_tape/Mul_5:z:0*
T0*(
_output_shapes
:��j
gradient_tape/sub_9/NegNeggradient_tape/Mul_7:z:0*
T0*(
_output_shapes
:��q
gradient_tape/Const_14Const^gradient_tape/Mul_9*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_14Mul	sub_1:z:0gradient_tape/Const_14:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_15Mulgradient_tape/Mul_9:z:0gradient_tape/Mul_14:z:0*
T0*&
_output_shapes
:r
gradient_tape/Const_15Const^gradient_tape/Mul_11*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_16Mul	sub_2:z:0gradient_tape/Const_15:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_17Mulgradient_tape/Mul_11:z:0gradient_tape/Mul_16:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_3/NegNeggradient_tape/Mul_13:z:0*
T0*&
_output_shapes
:|
#gradient_tape/strided_slice_7/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_7/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_7/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               �
2gradient_tape/strided_slice_7/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_7/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_7/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_7/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_7/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_7/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_7/StridedSliceGrad/strides:output:0gradient_tape/Mul_5:z:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask|
#gradient_tape/strided_slice_8/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_8/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_8/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_8/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_8/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_8/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_8/StridedSliceGrad/begin:output:0 strided_slice_8/stack_1:output:0?gradient_tape/strided_slice_8/StridedSliceGrad/strides:output:0gradient_tape/sub_7/Neg:y:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask|
#gradient_tape/strided_slice_9/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_9/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_9/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               �
2gradient_tape/strided_slice_9/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_9/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_9/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_9/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_9/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_9/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_9/StridedSliceGrad/strides:output:0gradient_tape/Mul_7:z:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask}
$gradient_tape/strided_slice_10/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
5gradient_tape/strided_slice_10/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
5gradient_tape/strided_slice_10/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                �
7gradient_tape/strided_slice_10/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
/gradient_tape/strided_slice_10/StridedSliceGradStridedSliceGrad>gradient_tape/strided_slice_10/StridedSliceGrad/shape:output:0>gradient_tape/strided_slice_10/StridedSliceGrad/begin:output:0!strided_slice_10/stack_1:output:0@gradient_tape/strided_slice_10/StridedSliceGrad/strides:output:0gradient_tape/sub_9/Neg:y:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask�
,gradient_tape/SpatialConsistencyLoss/Const_2Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
(gradient_tape/SpatialConsistencyLoss/MulMul SpatialConsistencyLoss/sub_3:z:05gradient_tape/SpatialConsistencyLoss/Const_2:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_1Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0,gradient_tape/SpatialConsistencyLoss/Mul:z:0*
T0*'
_output_shapes
:`�i
gradient_tape/sub_1/NegNeggradient_tape/Mul_15:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_2/NegNeggradient_tape/Mul_17:z:0*
T0*&
_output_shapes
:�
,gradient_tape/SpatialConsistencyLoss/Const_3Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_2Mul SpatialConsistencyLoss/sub_2:z:05gradient_tape/SpatialConsistencyLoss/Const_3:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_3Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_2:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_3/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_1:z:0*
T0*'
_output_shapes
:`�z
AddNAddNgradient_tape/Mul_15:z:0gradient_tape/Mul_17:z:0*
N*
T0*&
_output_shapes
:�
AddN_1AddNgradient_tape/sub_3/Neg:y:0gradient_tape/sub_1/Neg:y:0*
N*
T0*&
_output_shapes
:
AddN_2AddNgradient_tape/Mul_13:z:0gradient_tape/sub_2/Neg:y:0*
N*
T0*&
_output_shapes
:�
gradient_tape/concatConcatV2
AddN:sum:0AddN_1:sum:0AddN_2:sum:0split/split_dim:output:0*
N*
T0*&
_output_shapes
:�
,gradient_tape/SpatialConsistencyLoss/Const_4Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_4MulSpatialConsistencyLoss/sub:z:05gradient_tape/SpatialConsistencyLoss/Const_4:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_5Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_4:z:0*
T0*'
_output_shapes
:`��
,gradient_tape/SpatialConsistencyLoss/Const_5Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_6Mul SpatialConsistencyLoss/sub_1:z:05gradient_tape/SpatialConsistencyLoss/Const_5:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_7Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_6:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_2/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_3:z:0*
T0*'
_output_shapes
:`��
+gradient_tape/SpatialConsistencyLoss/ShapeNShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
N*
T0* 
_output_shapes
::�
8gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInputConv2DBackpropInput4gradient_tape/SpatialConsistencyLoss/ShapeN:output:0&spatialconsistencyloss_conv2d_3_filter2gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
9gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilterConv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:04gradient_tape/SpatialConsistencyLoss/ShapeN:output:12gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
gradient_tape/Maximum_1/xConst*
_output_shapes
:*
dtype0*%
valueB"            [
gradient_tape/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
gradient_tape/Maximum_1Maximum"gradient_tape/Maximum_1/x:output:0"gradient_tape/Maximum_1/y:output:0*
T0*
_output_shapes
:s
gradient_tape/floordiv_1/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/floordiv_1FloorDiv#gradient_tape/floordiv_1/x:output:0gradient_tape/Maximum_1:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_6Reshapegradient_tape/concat:output:0&gradient_tape/Reshape_6/shape:output:0*
T0*&
_output_shapes
:w
gradient_tape/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/Tile_5Tile gradient_tape/Reshape_6:output:0'gradient_tape/Tile_5/multiples:output:0*
T0*(
_output_shapes
:��[
gradient_tape/Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *  @H�
gradient_tape/truediv_3RealDivgradient_tape/Tile_5:output:0gradient_tape/Const_16:output:0*
T0*(
_output_shapes
:���
,gradient_tape/SpatialConsistencyLoss/sub/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_5:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_1/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_7:z:0*
T0*'
_output_shapes
:`��
-gradient_tape/SpatialConsistencyLoss/ShapeN_1ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:0&spatialconsistencyloss_conv2d_2_filter2gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_1Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:12gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
-gradient_tape/SpatialConsistencyLoss/ShapeN_2ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:0$spatialconsistencyloss_conv2d_filter0gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_2Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:10gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
-gradient_tape/SpatialConsistencyLoss/ShapeN_3ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:0&spatialconsistencyloss_conv2d_1_filter2gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_3Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:12gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
AddN_3AddNAgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3:output:0*
N*
T0*'
_output_shapes
:`��
6gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
<gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGradAvgPoolGrad?gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/Shape:output:0AddN_3:sum:0*
T0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
�
4gradient_tape/SpatialConsistencyLoss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
.gradient_tape/SpatialConsistencyLoss/Reshape_1ReshapeEgradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGrad:output:0=gradient_tape/SpatialConsistencyLoss/Reshape_1/shape:output:0*
T0*(
_output_shapes
:���
5gradient_tape/SpatialConsistencyLoss/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            �
+gradient_tape/SpatialConsistencyLoss/Tile_1Tile7gradient_tape/SpatialConsistencyLoss/Reshape_1:output:0>gradient_tape/SpatialConsistencyLoss/Tile_1/multiples:output:0*
T0*(
_output_shapes
:��q
,gradient_tape/SpatialConsistencyLoss/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  @@�
.gradient_tape/SpatialConsistencyLoss/truediv_1RealDiv4gradient_tape/SpatialConsistencyLoss/Tile_1:output:05gradient_tape/SpatialConsistencyLoss/Const_6:output:0*
T0*(
_output_shapes
:���
AddN_4AddNgradient_tape/truediv_2:z:0gradient_tape/truediv_3:z:02gradient_tape/SpatialConsistencyLoss/truediv_1:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_5/MulMulAddN_4:sum:0DCE-net/sub_5:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_5/Mul_1MulAddN_4:sum:0DCE-net/split:output:5*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_5/NegNeg%gradient_tape/DCE-net/mul_5/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/ConstConst"^gradient_tape/DCE-net/mul_5/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/MulMulDCE-net/add_4:z:0$gradient_tape/DCE-net/Const:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_1Mul%gradient_tape/DCE-net/mul_5/Mul_1:z:0gradient_tape/DCE-net/Mul:z:0*
T0*(
_output_shapes
:���
AddN_5AddNAddN_4:sum:0#gradient_tape/DCE-net/sub_5/Neg:y:0gradient_tape/DCE-net/Mul_1:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_4/MulMulAddN_5:sum:0DCE-net/sub_4:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_4/Mul_1MulAddN_5:sum:0DCE-net/split:output:4*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_4/NegNeg%gradient_tape/DCE-net/mul_4/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_1Const"^gradient_tape/DCE-net/mul_4/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_2MulDCE-net/add_3:z:0&gradient_tape/DCE-net/Const_1:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_3Mul%gradient_tape/DCE-net/mul_4/Mul_1:z:0gradient_tape/DCE-net/Mul_2:z:0*
T0*(
_output_shapes
:���
AddN_6AddNAddN_5:sum:0#gradient_tape/DCE-net/sub_4/Neg:y:0gradient_tape/DCE-net/Mul_3:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_3/MulMulAddN_6:sum:0DCE-net/sub_3:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_3/Mul_1MulAddN_6:sum:0DCE-net/split:output:3*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_3/NegNeg%gradient_tape/DCE-net/mul_3/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_2Const"^gradient_tape/DCE-net/mul_3/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_4MulDCE-net/add_2:z:0&gradient_tape/DCE-net/Const_2:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_5Mul%gradient_tape/DCE-net/mul_3/Mul_1:z:0gradient_tape/DCE-net/Mul_4:z:0*
T0*(
_output_shapes
:���
AddN_7AddNAddN_6:sum:0#gradient_tape/DCE-net/sub_3/Neg:y:0gradient_tape/DCE-net/Mul_5:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_2/MulMulAddN_7:sum:0DCE-net/sub_2:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_2/Mul_1MulAddN_7:sum:0DCE-net/split:output:2*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_2/NegNeg%gradient_tape/DCE-net/mul_2/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_3Const"^gradient_tape/DCE-net/mul_2/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_6MulDCE-net/add_1:z:0&gradient_tape/DCE-net/Const_3:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_7Mul%gradient_tape/DCE-net/mul_2/Mul_1:z:0gradient_tape/DCE-net/Mul_6:z:0*
T0*(
_output_shapes
:���
AddN_8AddNAddN_7:sum:0#gradient_tape/DCE-net/sub_2/Neg:y:0gradient_tape/DCE-net/Mul_7:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_1/MulMulAddN_8:sum:0DCE-net/sub_1:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_1/Mul_1MulAddN_8:sum:0DCE-net/split:output:1*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_1/NegNeg%gradient_tape/DCE-net/mul_1/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_4Const"^gradient_tape/DCE-net/mul_1/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_8MulDCE-net/add:z:0&gradient_tape/DCE-net/Const_4:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_9Mul%gradient_tape/DCE-net/mul_1/Mul_1:z:0gradient_tape/DCE-net/Mul_8:z:0*
T0*(
_output_shapes
:���
AddN_9AddNAddN_8:sum:0#gradient_tape/DCE-net/sub_1/Neg:y:0gradient_tape/DCE-net/Mul_9:z:0*
N*
T0*(
_output_shapes
:��v
gradient_tape/DCE-net/mul/MulMulAddN_9:sum:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��
gradient_tape/DCE-net/mul/Mul_1MulAddN_9:sum:0DCE-net/split:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/concatConcatV2!gradient_tape/DCE-net/mul/Mul:z:0#gradient_tape/DCE-net/mul_1/Mul:z:0#gradient_tape/DCE-net/mul_2/Mul:z:0#gradient_tape/DCE-net/mul_3/Mul:z:0#gradient_tape/DCE-net/mul_4/Mul:z:0#gradient_tape/DCE-net/mul_5/Mul:z:0 DCE-net/split/split_dim:output:0*
N*
T0*(
_output_shapes
:���
AddN_10AddN7gradient_tape/strided_slice_7/StridedSliceGrad:output:07gradient_tape/strided_slice_8/StridedSliceGrad:output:07gradient_tape/strided_slice_9/StridedSliceGrad:output:08gradient_tape/strided_slice_10/StridedSliceGrad:output:0%gradient_tape/DCE-net/concat:output:0*
N*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
(gradient_tape/DCE-net/conv2d_48/TanhGradTanhGradDCE-net/conv2d_48/Tanh:y:0AddN_10:sum:0*
T0*(
_output_shapes
:���
3gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGradBiasAddGrad,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*
_output_shapes
:�
-gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeNShapeN&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeN:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_20/concat:output:06gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeN:output:1,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_20/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_20/modFloorMod+DCE-net/concatenate_20/concat/axis:output:02gradient_tape/DCE-net/concatenate_20/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_20/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_20/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_20/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_20/mod:z:03gradient_tape/DCE-net/concatenate_20/Shape:output:05gradient_tape/DCE-net/concatenate_20/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_20/SliceSliceCgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_20/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_20/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_20/Slice_1SliceCgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_20/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_20/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_47/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_20/Slice_1:output:0$DCE-net/conv2d_47/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeNShapeN&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeN:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_19/concat:output:06gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_19/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_19/modFloorMod+DCE-net/concatenate_19/concat/axis:output:02gradient_tape/DCE-net/concatenate_19/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_19/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_19/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_19/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_19/mod:z:03gradient_tape/DCE-net/concatenate_19/Shape:output:05gradient_tape/DCE-net/concatenate_19/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_19/SliceSliceCgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_19/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_19/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_19/Slice_1SliceCgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_19/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_19/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_46/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_19/Slice_1:output:0$DCE-net/conv2d_46/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeNShapeN&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeN:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_18/concat:output:06gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_18/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_18/modFloorMod+DCE-net/concatenate_18/concat/axis:output:02gradient_tape/DCE-net/concatenate_18/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_18/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_18/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_18/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_18/mod:z:03gradient_tape/DCE-net/concatenate_18/Shape:output:05gradient_tape/DCE-net/concatenate_18/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_18/SliceSliceCgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_18/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_18/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_18/Slice_1SliceCgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_18/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_18/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_45/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_18/Slice_1:output:0$DCE-net/conv2d_45/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeNShapeN$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeN:output:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_44/Relu:activations:06gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_11AddN3gradient_tape/DCE-net/concatenate_18/Slice:output:0Cgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_44/ReluGradReluGradAddN_11:sum:0$DCE-net/conv2d_44/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeNShapeN$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeN:output:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_43/Relu:activations:06gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_12AddN3gradient_tape/DCE-net/concatenate_19/Slice:output:0Cgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_43/ReluGradReluGradAddN_12:sum:0$DCE-net/conv2d_43/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeNShapeN$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeN:output:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_42/Relu:activations:06gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_13AddN3gradient_tape/DCE-net/concatenate_20/Slice:output:0Cgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_42/ReluGradReluGradAddN_13:sum:0$DCE-net/conv2d_42/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeNShapeNinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeN:output:0/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterinputs6gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/Identity_3IdentityDgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: ~
Adam/Identity_4Identity<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_5IdentityDgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  ~
Adam/Identity_6Identity<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_7IdentityDgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  ~
Adam/Identity_8Identity<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_9IdentityDgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  
Adam/Identity_10Identity<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_11IdentityDgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ 
Adam/Identity_12Identity<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_13IdentityDgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ 
Adam/Identity_14Identity<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_15IdentityDgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@
Adam/Identity_16Identity<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:�
Adam/IdentityN	IdentityNDgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0*%
T 
2*,
_gradient_op_typeCustomGradient-513953*�
_output_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@:�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_42_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0(^DCE-net/conv2d_42/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_42_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_43_conv2d_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2(^DCE-net/conv2d_43/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_43_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_44_conv2d_readvariableop_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4(^DCE-net/conv2d_44/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_44_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:5)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_45_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6(^DCE-net/conv2d_45/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_45_biasadd_readvariableop_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_46_conv2d_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:8(^DCE-net/conv2d_46/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_46_biasadd_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_47_conv2d_readvariableop_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10(^DCE-net/conv2d_47/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_47_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:11)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_48_conv2d_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12(^DCE-net/conv2d_48/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_48_biasadd_readvariableop_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp(^DCE-net/conv2d_42/Conv2D/ReadVariableOp)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp(^DCE-net/conv2d_43/Conv2D/ReadVariableOp)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp(^DCE-net/conv2d_44/Conv2D/ReadVariableOp)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp(^DCE-net/conv2d_45/Conv2D/ReadVariableOp)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp(^DCE-net/conv2d_46/Conv2D/ReadVariableOp)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp(^DCE-net/conv2d_47/Conv2D/ReadVariableOp)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp(^DCE-net/conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:��: : : : : : : : : : : : : : ::::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2T
(DCE-net/conv2d_42/BiasAdd/ReadVariableOp(DCE-net/conv2d_42/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_42/Conv2D/ReadVariableOp'DCE-net/conv2d_42/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_43/BiasAdd/ReadVariableOp(DCE-net/conv2d_43/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_43/Conv2D/ReadVariableOp'DCE-net/conv2d_43/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_44/BiasAdd/ReadVariableOp(DCE-net/conv2d_44/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_44/Conv2D/ReadVariableOp'DCE-net/conv2d_44/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_45/BiasAdd/ReadVariableOp(DCE-net/conv2d_45/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_45/Conv2D/ReadVariableOp'DCE-net/conv2d_45/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_46/BiasAdd/ReadVariableOp(DCE-net/conv2d_46/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_46/Conv2D/ReadVariableOp'DCE-net/conv2d_46/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_47/BiasAdd/ReadVariableOp(DCE-net/conv2d_47/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_47/Conv2D/ReadVariableOp'DCE-net/conv2d_47/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_48/BiasAdd/ReadVariableOp(DCE-net/conv2d_48/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_48/Conv2D/ReadVariableOp'DCE-net/conv2d_48/Conv2D/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::IE
C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource:I E
C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource:J!F
D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource:J"F
D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource:I#E
C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource:I$E
C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource:J%F
D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource:J&F
D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource:I'E
C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource:I(E
C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource:J)F
D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource:J*F
D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource:I+E
C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource:I,E
C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource:J-F
D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource:J.F
D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource:I/E
C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource:I0E
C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource:J1F
D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource:J2F
D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource
�
�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_578671

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_46_layer_call_fn_579266

inputs!
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_578671y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_579277

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
t
J__inference_concatenate_18_layer_call_and_return_conditional_losses_578658

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs:YU
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_578645

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�n
�
!__inference__wrapped_model_578576
input_1J
0dce_net_conv2d_42_conv2d_readvariableop_resource: ?
1dce_net_conv2d_42_biasadd_readvariableop_resource: J
0dce_net_conv2d_43_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_43_biasadd_readvariableop_resource: J
0dce_net_conv2d_44_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_44_biasadd_readvariableop_resource: J
0dce_net_conv2d_45_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_45_biasadd_readvariableop_resource: J
0dce_net_conv2d_46_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_46_biasadd_readvariableop_resource: J
0dce_net_conv2d_47_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_47_biasadd_readvariableop_resource: J
0dce_net_conv2d_48_conv2d_readvariableop_resource:@?
1dce_net_conv2d_48_biasadd_readvariableop_resource:
identity

identity_1��(DCE-net/conv2d_42/BiasAdd/ReadVariableOp�'DCE-net/conv2d_42/Conv2D/ReadVariableOp�(DCE-net/conv2d_43/BiasAdd/ReadVariableOp�'DCE-net/conv2d_43/Conv2D/ReadVariableOp�(DCE-net/conv2d_44/BiasAdd/ReadVariableOp�'DCE-net/conv2d_44/Conv2D/ReadVariableOp�(DCE-net/conv2d_45/BiasAdd/ReadVariableOp�'DCE-net/conv2d_45/Conv2D/ReadVariableOp�(DCE-net/conv2d_46/BiasAdd/ReadVariableOp�'DCE-net/conv2d_46/Conv2D/ReadVariableOp�(DCE-net/conv2d_47/BiasAdd/ReadVariableOp�'DCE-net/conv2d_47/Conv2D/ReadVariableOp�(DCE-net/conv2d_48/BiasAdd/ReadVariableOp�'DCE-net/conv2d_48/Conv2D/ReadVariableOp�
'DCE-net/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/Conv2DConv2Dinput_1/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/BiasAddBiasAdd!DCE-net/conv2d_42/Conv2D:output:00DCE-net/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_42/ReluRelu"DCE-net/conv2d_42/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
'DCE-net/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_43/Conv2DConv2D$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_43/BiasAddBiasAdd!DCE-net/conv2d_43/Conv2D:output:00DCE-net/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_43/ReluRelu"DCE-net/conv2d_43/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
'DCE-net/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_44/Conv2DConv2D$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_44/BiasAddBiasAdd!DCE-net/conv2d_44/Conv2D:output:00DCE-net/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_44/ReluRelu"DCE-net/conv2d_44/BiasAdd:output:0*
T0*1
_output_shapes
:����������� �
'DCE-net/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_45/Conv2DConv2D$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_45/BiasAddBiasAdd!DCE-net/conv2d_45/Conv2D:output:00DCE-net/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_45/ReluRelu"DCE-net/conv2d_45/BiasAdd:output:0*
T0*1
_output_shapes
:����������� d
"DCE-net/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_18/concatConcatV2$DCE-net/conv2d_44/Relu:activations:0$DCE-net/conv2d_45/Relu:activations:0+DCE-net/concatenate_18/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
'DCE-net/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_46/Conv2DConv2D&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_46/BiasAddBiasAdd!DCE-net/conv2d_46/Conv2D:output:00DCE-net/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_46/ReluRelu"DCE-net/conv2d_46/BiasAdd:output:0*
T0*1
_output_shapes
:����������� d
"DCE-net/concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_19/concatConcatV2$DCE-net/conv2d_43/Relu:activations:0$DCE-net/conv2d_46/Relu:activations:0+DCE-net/concatenate_19/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
'DCE-net/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_47/Conv2DConv2D&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
�
(DCE-net/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_47/BiasAddBiasAdd!DCE-net/conv2d_47/Conv2D:output:00DCE-net/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� ~
DCE-net/conv2d_47/ReluRelu"DCE-net/conv2d_47/BiasAdd:output:0*
T0*1
_output_shapes
:����������� d
"DCE-net/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_20/concatConcatV2$DCE-net/conv2d_42/Relu:activations:0$DCE-net/conv2d_47/Relu:activations:0+DCE-net/concatenate_20/concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@�
'DCE-net/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DCE-net/conv2d_48/Conv2DConv2D&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(DCE-net/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DCE-net/conv2d_48/BiasAddBiasAdd!DCE-net/conv2d_48/Conv2D:output:00DCE-net/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������~
DCE-net/conv2d_48/TanhTanh"DCE-net/conv2d_48/BiasAdd:output:0*
T0*1
_output_shapes
:�����������b
DCE-net/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DCE-net/splitSplit DCE-net/split/split_dim:output:0DCE-net/conv2d_48/Tanh:y:0*
T0*�
_output_shapes�
�:�����������:�����������:�����������:�����������:�����������:�����������*
	num_split]
DCE-net/SquareSquareinput_1*
T0*1
_output_shapes
:�����������k
DCE-net/subSubDCE-net/Square:y:0input_1*
T0*1
_output_shapes
:�����������w
DCE-net/mulMulDCE-net/split:output:0DCE-net/sub:z:0*
T0*1
_output_shapes
:�����������j
DCE-net/addAddV2input_1DCE-net/mul:z:0*
T0*1
_output_shapes
:�����������g
DCE-net/Square_1SquareDCE-net/add:z:0*
T0*1
_output_shapes
:�����������w
DCE-net/sub_1SubDCE-net/Square_1:y:0DCE-net/add:z:0*
T0*1
_output_shapes
:�����������{
DCE-net/mul_1MulDCE-net/split:output:1DCE-net/sub_1:z:0*
T0*1
_output_shapes
:�����������v
DCE-net/add_1AddV2DCE-net/add:z:0DCE-net/mul_1:z:0*
T0*1
_output_shapes
:�����������i
DCE-net/Square_2SquareDCE-net/add_1:z:0*
T0*1
_output_shapes
:�����������y
DCE-net/sub_2SubDCE-net/Square_2:y:0DCE-net/add_1:z:0*
T0*1
_output_shapes
:�����������{
DCE-net/mul_2MulDCE-net/split:output:2DCE-net/sub_2:z:0*
T0*1
_output_shapes
:�����������x
DCE-net/add_2AddV2DCE-net/add_1:z:0DCE-net/mul_2:z:0*
T0*1
_output_shapes
:�����������i
DCE-net/Square_3SquareDCE-net/add_2:z:0*
T0*1
_output_shapes
:�����������y
DCE-net/sub_3SubDCE-net/Square_3:y:0DCE-net/add_2:z:0*
T0*1
_output_shapes
:�����������{
DCE-net/mul_3MulDCE-net/split:output:3DCE-net/sub_3:z:0*
T0*1
_output_shapes
:�����������x
DCE-net/add_3AddV2DCE-net/add_2:z:0DCE-net/mul_3:z:0*
T0*1
_output_shapes
:�����������i
DCE-net/Square_4SquareDCE-net/add_3:z:0*
T0*1
_output_shapes
:�����������y
DCE-net/sub_4SubDCE-net/Square_4:y:0DCE-net/add_3:z:0*
T0*1
_output_shapes
:�����������{
DCE-net/mul_4MulDCE-net/split:output:4DCE-net/sub_4:z:0*
T0*1
_output_shapes
:�����������x
DCE-net/add_4AddV2DCE-net/add_3:z:0DCE-net/mul_4:z:0*
T0*1
_output_shapes
:�����������i
DCE-net/Square_5SquareDCE-net/add_4:z:0*
T0*1
_output_shapes
:�����������y
DCE-net/sub_5SubDCE-net/Square_5:y:0DCE-net/add_4:z:0*
T0*1
_output_shapes
:�����������{
DCE-net/mul_5MulDCE-net/split:output:5DCE-net/sub_5:z:0*
T0*1
_output_shapes
:�����������x
DCE-net/add_5AddV2DCE-net/add_4:z:0DCE-net/mul_5:z:0*
T0*1
_output_shapes
:�����������j
IdentityIdentityDCE-net/add_5:z:0^NoOp*
T0*1
_output_shapes
:�����������u

Identity_1IdentityDCE-net/conv2d_48/Tanh:y:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp(^DCE-net/conv2d_42/Conv2D/ReadVariableOp)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp(^DCE-net/conv2d_43/Conv2D/ReadVariableOp)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp(^DCE-net/conv2d_44/Conv2D/ReadVariableOp)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp(^DCE-net/conv2d_45/Conv2D/ReadVariableOp)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp(^DCE-net/conv2d_46/Conv2D/ReadVariableOp)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp(^DCE-net/conv2d_47/Conv2D/ReadVariableOp)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp(^DCE-net/conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2T
(DCE-net/conv2d_42/BiasAdd/ReadVariableOp(DCE-net/conv2d_42/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_42/Conv2D/ReadVariableOp'DCE-net/conv2d_42/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_43/BiasAdd/ReadVariableOp(DCE-net/conv2d_43/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_43/Conv2D/ReadVariableOp'DCE-net/conv2d_43/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_44/BiasAdd/ReadVariableOp(DCE-net/conv2d_44/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_44/Conv2D/ReadVariableOp'DCE-net/conv2d_44/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_45/BiasAdd/ReadVariableOp(DCE-net/conv2d_45/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_45/Conv2D/ReadVariableOp'DCE-net/conv2d_45/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_46/BiasAdd/ReadVariableOp(DCE-net/conv2d_46/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_46/Conv2D/ReadVariableOp'DCE-net/conv2d_46/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_47/BiasAdd/ReadVariableOp(DCE-net/conv2d_47/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_47/Conv2D/ReadVariableOp'DCE-net/conv2d_47/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_48/BiasAdd/ReadVariableOp(DCE-net/conv2d_48/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_48/Conv2D/ReadVariableOp'DCE-net/conv2d_48/Conv2D/ReadVariableOp:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
��
�!
"__inference__traced_restore_579839
file_prefixC
)assignvariableop_dce_net_conv2d_42_kernel: 7
)assignvariableop_1_dce_net_conv2d_42_bias: E
+assignvariableop_2_dce_net_conv2d_43_kernel:  7
)assignvariableop_3_dce_net_conv2d_43_bias: E
+assignvariableop_4_dce_net_conv2d_44_kernel:  7
)assignvariableop_5_dce_net_conv2d_44_bias: E
+assignvariableop_6_dce_net_conv2d_45_kernel:  7
)assignvariableop_7_dce_net_conv2d_45_bias: E
+assignvariableop_8_dce_net_conv2d_46_kernel:@ 7
)assignvariableop_9_dce_net_conv2d_46_bias: F
,assignvariableop_10_dce_net_conv2d_47_kernel:@ 8
*assignvariableop_11_dce_net_conv2d_47_bias: F
,assignvariableop_12_dce_net_conv2d_48_kernel:@8
*assignvariableop_13_dce_net_conv2d_48_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: 0
&assignvariableop_18_adam_learning_rate: M
3assignvariableop_19_adam_dce_net_conv2d_42_kernel_m: ?
1assignvariableop_20_adam_dce_net_conv2d_42_bias_m: M
3assignvariableop_21_adam_dce_net_conv2d_43_kernel_m:  ?
1assignvariableop_22_adam_dce_net_conv2d_43_bias_m: M
3assignvariableop_23_adam_dce_net_conv2d_44_kernel_m:  ?
1assignvariableop_24_adam_dce_net_conv2d_44_bias_m: M
3assignvariableop_25_adam_dce_net_conv2d_45_kernel_m:  ?
1assignvariableop_26_adam_dce_net_conv2d_45_bias_m: M
3assignvariableop_27_adam_dce_net_conv2d_46_kernel_m:@ ?
1assignvariableop_28_adam_dce_net_conv2d_46_bias_m: M
3assignvariableop_29_adam_dce_net_conv2d_47_kernel_m:@ ?
1assignvariableop_30_adam_dce_net_conv2d_47_bias_m: M
3assignvariableop_31_adam_dce_net_conv2d_48_kernel_m:@?
1assignvariableop_32_adam_dce_net_conv2d_48_bias_m:M
3assignvariableop_33_adam_dce_net_conv2d_42_kernel_v: ?
1assignvariableop_34_adam_dce_net_conv2d_42_bias_v: M
3assignvariableop_35_adam_dce_net_conv2d_43_kernel_v:  ?
1assignvariableop_36_adam_dce_net_conv2d_43_bias_v: M
3assignvariableop_37_adam_dce_net_conv2d_44_kernel_v:  ?
1assignvariableop_38_adam_dce_net_conv2d_44_bias_v: M
3assignvariableop_39_adam_dce_net_conv2d_45_kernel_v:  ?
1assignvariableop_40_adam_dce_net_conv2d_45_bias_v: M
3assignvariableop_41_adam_dce_net_conv2d_46_kernel_v:@ ?
1assignvariableop_42_adam_dce_net_conv2d_46_bias_v: M
3assignvariableop_43_adam_dce_net_conv2d_47_kernel_v:@ ?
1assignvariableop_44_adam_dce_net_conv2d_47_bias_v: M
3assignvariableop_45_adam_dce_net_conv2d_48_kernel_v:@?
1assignvariableop_46_adam_dce_net_conv2d_48_bias_v:
identity_48��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::*>
dtypes4
220	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp)assignvariableop_dce_net_conv2d_42_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp)assignvariableop_1_dce_net_conv2d_42_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp+assignvariableop_2_dce_net_conv2d_43_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp)assignvariableop_3_dce_net_conv2d_43_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp+assignvariableop_4_dce_net_conv2d_44_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp)assignvariableop_5_dce_net_conv2d_44_biasIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp+assignvariableop_6_dce_net_conv2d_45_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp)assignvariableop_7_dce_net_conv2d_45_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp+assignvariableop_8_dce_net_conv2d_46_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp)assignvariableop_9_dce_net_conv2d_46_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp,assignvariableop_10_dce_net_conv2d_47_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp*assignvariableop_11_dce_net_conv2d_47_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp,assignvariableop_12_dce_net_conv2d_48_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp*assignvariableop_13_dce_net_conv2d_48_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOp3assignvariableop_19_adam_dce_net_conv2d_42_kernel_mIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOp1assignvariableop_20_adam_dce_net_conv2d_42_bias_mIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOp3assignvariableop_21_adam_dce_net_conv2d_43_kernel_mIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp1assignvariableop_22_adam_dce_net_conv2d_43_bias_mIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp3assignvariableop_23_adam_dce_net_conv2d_44_kernel_mIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp1assignvariableop_24_adam_dce_net_conv2d_44_bias_mIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp3assignvariableop_25_adam_dce_net_conv2d_45_kernel_mIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOp1assignvariableop_26_adam_dce_net_conv2d_45_bias_mIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOp3assignvariableop_27_adam_dce_net_conv2d_46_kernel_mIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp1assignvariableop_28_adam_dce_net_conv2d_46_bias_mIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_dce_net_conv2d_47_kernel_mIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp1assignvariableop_30_adam_dce_net_conv2d_47_bias_mIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp3assignvariableop_31_adam_dce_net_conv2d_48_kernel_mIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp1assignvariableop_32_adam_dce_net_conv2d_48_bias_mIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp3assignvariableop_33_adam_dce_net_conv2d_42_kernel_vIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp1assignvariableop_34_adam_dce_net_conv2d_42_bias_vIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp3assignvariableop_35_adam_dce_net_conv2d_43_kernel_vIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp1assignvariableop_36_adam_dce_net_conv2d_43_bias_vIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp3assignvariableop_37_adam_dce_net_conv2d_44_kernel_vIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp1assignvariableop_38_adam_dce_net_conv2d_44_bias_vIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp3assignvariableop_39_adam_dce_net_conv2d_45_kernel_vIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp1assignvariableop_40_adam_dce_net_conv2d_45_bias_vIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp3assignvariableop_41_adam_dce_net_conv2d_46_kernel_vIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp1assignvariableop_42_adam_dce_net_conv2d_46_bias_vIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp3assignvariableop_43_adam_dce_net_conv2d_47_kernel_vIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp1assignvariableop_44_adam_dce_net_conv2d_47_bias_vIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp3assignvariableop_45_adam_dce_net_conv2d_48_kernel_vIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp1assignvariableop_46_adam_dce_net_conv2d_48_bias_vIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_47Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_48IdentityIdentity_47:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_48Identity_48:output:0*s
_input_shapesb
`: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
(__inference_DCE-net_layer_call_fn_578795
input_1!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::�����������:�����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_DCE-net_layer_call_and_return_conditional_losses_578762y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
*__inference_conv2d_47_layer_call_fn_579299

inputs!
unknown:@ 
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_578697y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_578697

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�d
�
__inference__traced_save_579688
file_prefix7
3savev2_dce_net_conv2d_42_kernel_read_readvariableop5
1savev2_dce_net_conv2d_42_bias_read_readvariableop7
3savev2_dce_net_conv2d_43_kernel_read_readvariableop5
1savev2_dce_net_conv2d_43_bias_read_readvariableop7
3savev2_dce_net_conv2d_44_kernel_read_readvariableop5
1savev2_dce_net_conv2d_44_bias_read_readvariableop7
3savev2_dce_net_conv2d_45_kernel_read_readvariableop5
1savev2_dce_net_conv2d_45_bias_read_readvariableop7
3savev2_dce_net_conv2d_46_kernel_read_readvariableop5
1savev2_dce_net_conv2d_46_bias_read_readvariableop7
3savev2_dce_net_conv2d_47_kernel_read_readvariableop5
1savev2_dce_net_conv2d_47_bias_read_readvariableop7
3savev2_dce_net_conv2d_48_kernel_read_readvariableop5
1savev2_dce_net_conv2d_48_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop>
:savev2_adam_dce_net_conv2d_42_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_42_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_43_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_43_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_44_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_44_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_45_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_45_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_46_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_46_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_47_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_47_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_48_kernel_m_read_readvariableop<
8savev2_adam_dce_net_conv2d_48_bias_m_read_readvariableop>
:savev2_adam_dce_net_conv2d_42_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_42_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_43_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_43_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_44_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_44_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_45_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_45_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_46_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_46_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_47_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_47_bias_v_read_readvariableop>
:savev2_adam_dce_net_conv2d_48_kernel_v_read_readvariableop<
8savev2_adam_dce_net_conv2d_48_bias_v_read_readvariableop
savev2_const_4

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*�
value�B�0B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:0*
dtype0*s
valuejBh0B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:03savev2_dce_net_conv2d_42_kernel_read_readvariableop1savev2_dce_net_conv2d_42_bias_read_readvariableop3savev2_dce_net_conv2d_43_kernel_read_readvariableop1savev2_dce_net_conv2d_43_bias_read_readvariableop3savev2_dce_net_conv2d_44_kernel_read_readvariableop1savev2_dce_net_conv2d_44_bias_read_readvariableop3savev2_dce_net_conv2d_45_kernel_read_readvariableop1savev2_dce_net_conv2d_45_bias_read_readvariableop3savev2_dce_net_conv2d_46_kernel_read_readvariableop1savev2_dce_net_conv2d_46_bias_read_readvariableop3savev2_dce_net_conv2d_47_kernel_read_readvariableop1savev2_dce_net_conv2d_47_bias_read_readvariableop3savev2_dce_net_conv2d_48_kernel_read_readvariableop1savev2_dce_net_conv2d_48_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop:savev2_adam_dce_net_conv2d_42_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_42_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_43_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_43_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_44_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_44_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_45_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_45_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_46_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_46_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_47_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_47_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_48_kernel_m_read_readvariableop8savev2_adam_dce_net_conv2d_48_bias_m_read_readvariableop:savev2_adam_dce_net_conv2d_42_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_42_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_43_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_43_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_44_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_44_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_45_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_45_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_46_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_46_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_47_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_47_bias_v_read_readvariableop:savev2_adam_dce_net_conv2d_48_kernel_v_read_readvariableop8savev2_adam_dce_net_conv2d_48_bias_v_read_readvariableopsavev2_const_4"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *>
dtypes4
220	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: : : :  : :  : :  : :@ : :@ : :@:: : : : : : : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,	(
&
_output_shapes
:@ : 


_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:@: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
: :,(
&
_output_shapes
:@ : 

_output_shapes
: :, (
&
_output_shapes
:@: !

_output_shapes
::,"(
&
_output_shapes
: : #

_output_shapes
: :,$(
&
_output_shapes
:  : %

_output_shapes
: :,&(
&
_output_shapes
:  : '

_output_shapes
: :,((
&
_output_shapes
:  : )

_output_shapes
: :,*(
&
_output_shapes
:@ : +

_output_shapes
: :,,(
&
_output_shapes
:@ : -

_output_shapes
: :,.(
&
_output_shapes
:@: /

_output_shapes
::0

_output_shapes
: 
�
t
J__inference_concatenate_20_layer_call_and_return_conditional_losses_578710

inputs
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
concatConcatV2inputsinputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs:YU
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
v
J__inference_concatenate_18_layer_call_and_return_conditional_losses_579257
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
�
�
E__inference_conv2d_43_layer_call_and_return_conditional_losses_578611

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�9
�
#__inference_internal_grad_fn_579533
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
: K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
: W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
:  K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
:  K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
: W

Identity_6Identityresult_grads_6*
T0*&
_output_shapes
:  K

Identity_7Identityresult_grads_7*
T0*
_output_shapes
: W

Identity_8Identityresult_grads_8*
T0*&
_output_shapes
:@ K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
: Y
Identity_10Identityresult_grads_10*
T0*&
_output_shapes
:@ M
Identity_11Identityresult_grads_11*
T0*
_output_shapes
: Y
Identity_12Identityresult_grads_12*
T0*&
_output_shapes
:@M
Identity_13Identityresult_grads_13*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13*%
T 
2*,
_gradient_op_typeCustomGradient-579476*�
_output_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@:\
Identity_14IdentityIdentityN:output:0*
T0*&
_output_shapes
: P
Identity_15IdentityIdentityN:output:1*
T0*
_output_shapes
: \
Identity_16IdentityIdentityN:output:2*
T0*&
_output_shapes
:  P
Identity_17IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_18IdentityIdentityN:output:4*
T0*&
_output_shapes
:  P
Identity_19IdentityIdentityN:output:5*
T0*
_output_shapes
: \
Identity_20IdentityIdentityN:output:6*
T0*&
_output_shapes
:  P
Identity_21IdentityIdentityN:output:7*
T0*
_output_shapes
: \
Identity_22IdentityIdentityN:output:8*
T0*&
_output_shapes
:@ P
Identity_23IdentityIdentityN:output:9*
T0*
_output_shapes
: ]
Identity_24IdentityIdentityN:output:10*
T0*&
_output_shapes
:@ Q
Identity_25IdentityIdentityN:output:11*
T0*
_output_shapes
: ]
Identity_26IdentityIdentityN:output:12*
T0*&
_output_shapes
:@Q
Identity_27IdentityIdentityN:output:13*
T0*
_output_shapes
:"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0*�
_input_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@::V R
&
_output_shapes
: 
(
_user_specified_nameresult_grads_0:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_4:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_5:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_6:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_7:VR
&
_output_shapes
:@ 
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
: 
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_10:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_12:KG

_output_shapes
:
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_14:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_15:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_16:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_17:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_18:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_19:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_20:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_21:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_22:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_23:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_24:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_25:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_26:KG

_output_shapes
:
)
_user_specified_nameresult_grads_27
�
[
/__inference_concatenate_19_layer_call_fn_579283
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_19_layer_call_and_return_conditional_losses_578684j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
�
�
E__inference_conv2d_43_layer_call_and_return_conditional_losses_579204

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�9
�
#__inference_internal_grad_fn_579621
result_grads_0
result_grads_1
result_grads_2
result_grads_3
result_grads_4
result_grads_5
result_grads_6
result_grads_7
result_grads_8
result_grads_9
result_grads_10
result_grads_11
result_grads_12
result_grads_13
result_grads_14
result_grads_15
result_grads_16
result_grads_17
result_grads_18
result_grads_19
result_grads_20
result_grads_21
result_grads_22
result_grads_23
result_grads_24
result_grads_25
result_grads_26
result_grads_27
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21
identity_22
identity_23
identity_24
identity_25
identity_26
identity_27U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
: K

Identity_1Identityresult_grads_1*
T0*
_output_shapes
: W

Identity_2Identityresult_grads_2*
T0*&
_output_shapes
:  K

Identity_3Identityresult_grads_3*
T0*
_output_shapes
: W

Identity_4Identityresult_grads_4*
T0*&
_output_shapes
:  K

Identity_5Identityresult_grads_5*
T0*
_output_shapes
: W

Identity_6Identityresult_grads_6*
T0*&
_output_shapes
:  K

Identity_7Identityresult_grads_7*
T0*
_output_shapes
: W

Identity_8Identityresult_grads_8*
T0*&
_output_shapes
:@ K

Identity_9Identityresult_grads_9*
T0*
_output_shapes
: Y
Identity_10Identityresult_grads_10*
T0*&
_output_shapes
:@ M
Identity_11Identityresult_grads_11*
T0*
_output_shapes
: Y
Identity_12Identityresult_grads_12*
T0*&
_output_shapes
:@M
Identity_13Identityresult_grads_13*
T0*
_output_shapes
:�
	IdentityN	IdentityNresult_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13result_grads_0result_grads_1result_grads_2result_grads_3result_grads_4result_grads_5result_grads_6result_grads_7result_grads_8result_grads_9result_grads_10result_grads_11result_grads_12result_grads_13*%
T 
2*,
_gradient_op_typeCustomGradient-579564*�
_output_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@:\
Identity_14IdentityIdentityN:output:0*
T0*&
_output_shapes
: P
Identity_15IdentityIdentityN:output:1*
T0*
_output_shapes
: \
Identity_16IdentityIdentityN:output:2*
T0*&
_output_shapes
:  P
Identity_17IdentityIdentityN:output:3*
T0*
_output_shapes
: \
Identity_18IdentityIdentityN:output:4*
T0*&
_output_shapes
:  P
Identity_19IdentityIdentityN:output:5*
T0*
_output_shapes
: \
Identity_20IdentityIdentityN:output:6*
T0*&
_output_shapes
:  P
Identity_21IdentityIdentityN:output:7*
T0*
_output_shapes
: \
Identity_22IdentityIdentityN:output:8*
T0*&
_output_shapes
:@ P
Identity_23IdentityIdentityN:output:9*
T0*
_output_shapes
: ]
Identity_24IdentityIdentityN:output:10*
T0*&
_output_shapes
:@ Q
Identity_25IdentityIdentityN:output:11*
T0*
_output_shapes
: ]
Identity_26IdentityIdentityN:output:12*
T0*&
_output_shapes
:@Q
Identity_27IdentityIdentityN:output:13*
T0*
_output_shapes
:"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"#
identity_22Identity_22:output:0"#
identity_23Identity_23:output:0"#
identity_24Identity_24:output:0"#
identity_25Identity_25:output:0"#
identity_26Identity_26:output:0"#
identity_27Identity_27:output:0*�
_input_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@::V R
&
_output_shapes
: 
(
_user_specified_nameresult_grads_0:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_1:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_2:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_3:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_4:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_5:VR
&
_output_shapes
:  
(
_user_specified_nameresult_grads_6:JF

_output_shapes
: 
(
_user_specified_nameresult_grads_7:VR
&
_output_shapes
:@ 
(
_user_specified_nameresult_grads_8:J	F

_output_shapes
: 
(
_user_specified_nameresult_grads_9:W
S
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_10:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_11:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_12:KG

_output_shapes
:
)
_user_specified_nameresult_grads_13:WS
&
_output_shapes
: 
)
_user_specified_nameresult_grads_14:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_15:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_16:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_17:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_18:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_19:WS
&
_output_shapes
:  
)
_user_specified_nameresult_grads_20:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_21:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_22:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_23:WS
&
_output_shapes
:@ 
)
_user_specified_nameresult_grads_24:KG

_output_shapes
: 
)
_user_specified_nameresult_grads_25:WS
&
_output_shapes
:@
)
_user_specified_nameresult_grads_26:KG

_output_shapes
:
)
_user_specified_nameresult_grads_27
�
�
(__inference_DCE-net_layer_call_fn_579073

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: #
	unknown_5:  
	unknown_6: #
	unknown_7:@ 
	unknown_8: #
	unknown_9:@ 

unknown_10: $

unknown_11:@

unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *N
_output_shapes<
::�����������:�����������*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8� *L
fGRE
C__inference_DCE-net_layer_call_and_return_conditional_losses_578762y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������{

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
v
J__inference_concatenate_19_layer_call_and_return_conditional_losses_579290
inputs_0
inputs_1
identityM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2inputs_0inputs_1concat/axis:output:0*
N*
T0*1
_output_shapes
:�����������@a
IdentityIdentityconcat:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
��
�"
__inference_train_step_514777

inputsJ
0dce_net_conv2d_42_conv2d_readvariableop_resource: ?
1dce_net_conv2d_42_biasadd_readvariableop_resource: J
0dce_net_conv2d_43_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_43_biasadd_readvariableop_resource: J
0dce_net_conv2d_44_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_44_biasadd_readvariableop_resource: J
0dce_net_conv2d_45_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_45_biasadd_readvariableop_resource: J
0dce_net_conv2d_46_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_46_biasadd_readvariableop_resource: J
0dce_net_conv2d_47_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_47_biasadd_readvariableop_resource: J
0dce_net_conv2d_48_conv2d_readvariableop_resource:@?
1dce_net_conv2d_48_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter+
!adam_cast_readvariableop_resource: &
adam_readvariableop_resource:	 -
#adam_cast_2_readvariableop_resource: -
#adam_cast_3_readvariableop_resource: >
$adam_adam_update_resourceapplyadam_m: >
$adam_adam_update_resourceapplyadam_v: 4
&adam_adam_update_1_resourceapplyadam_m: 4
&adam_adam_update_1_resourceapplyadam_v: @
&adam_adam_update_2_resourceapplyadam_m:  @
&adam_adam_update_2_resourceapplyadam_v:  4
&adam_adam_update_3_resourceapplyadam_m: 4
&adam_adam_update_3_resourceapplyadam_v: @
&adam_adam_update_4_resourceapplyadam_m:  @
&adam_adam_update_4_resourceapplyadam_v:  4
&adam_adam_update_5_resourceapplyadam_m: 4
&adam_adam_update_5_resourceapplyadam_v: @
&adam_adam_update_6_resourceapplyadam_m:  @
&adam_adam_update_6_resourceapplyadam_v:  4
&adam_adam_update_7_resourceapplyadam_m: 4
&adam_adam_update_7_resourceapplyadam_v: @
&adam_adam_update_8_resourceapplyadam_m:@ @
&adam_adam_update_8_resourceapplyadam_v:@ 4
&adam_adam_update_9_resourceapplyadam_m: 4
&adam_adam_update_9_resourceapplyadam_v: A
'adam_adam_update_10_resourceapplyadam_m:@ A
'adam_adam_update_10_resourceapplyadam_v:@ 5
'adam_adam_update_11_resourceapplyadam_m: 5
'adam_adam_update_11_resourceapplyadam_v: A
'adam_adam_update_12_resourceapplyadam_m:@A
'adam_adam_update_12_resourceapplyadam_v:@5
'adam_adam_update_13_resourceapplyadam_m:5
'adam_adam_update_13_resourceapplyadam_v:
identity

identity_1

identity_2

identity_3

identity_4��Adam/Adam/AssignAddVariableOp�"Adam/Adam/update/ResourceApplyAdam�$Adam/Adam/update_1/ResourceApplyAdam�%Adam/Adam/update_10/ResourceApplyAdam�%Adam/Adam/update_11/ResourceApplyAdam�%Adam/Adam/update_12/ResourceApplyAdam�%Adam/Adam/update_13/ResourceApplyAdam�$Adam/Adam/update_2/ResourceApplyAdam�$Adam/Adam/update_3/ResourceApplyAdam�$Adam/Adam/update_4/ResourceApplyAdam�$Adam/Adam/update_5/ResourceApplyAdam�$Adam/Adam/update_6/ResourceApplyAdam�$Adam/Adam/update_7/ResourceApplyAdam�$Adam/Adam/update_8/ResourceApplyAdam�$Adam/Adam/update_9/ResourceApplyAdam�Adam/Cast/ReadVariableOp�Adam/Cast_2/ReadVariableOp�Adam/Cast_3/ReadVariableOp�Adam/ReadVariableOp�(DCE-net/conv2d_42/BiasAdd/ReadVariableOp�'DCE-net/conv2d_42/Conv2D/ReadVariableOp�(DCE-net/conv2d_43/BiasAdd/ReadVariableOp�'DCE-net/conv2d_43/Conv2D/ReadVariableOp�(DCE-net/conv2d_44/BiasAdd/ReadVariableOp�'DCE-net/conv2d_44/Conv2D/ReadVariableOp�(DCE-net/conv2d_45/BiasAdd/ReadVariableOp�'DCE-net/conv2d_45/Conv2D/ReadVariableOp�(DCE-net/conv2d_46/BiasAdd/ReadVariableOp�'DCE-net/conv2d_46/Conv2D/ReadVariableOp�(DCE-net/conv2d_47/BiasAdd/ReadVariableOp�'DCE-net/conv2d_47/Conv2D/ReadVariableOp�(DCE-net/conv2d_48/BiasAdd/ReadVariableOp�'DCE-net/conv2d_48/Conv2D/ReadVariableOp�
'DCE-net/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/Conv2DConv2Dinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/BiasAddBiasAdd!DCE-net/conv2d_42/Conv2D:output:00DCE-net/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_42/ReluRelu"DCE-net/conv2d_42/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_43/Conv2DConv2D$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_43/BiasAddBiasAdd!DCE-net/conv2d_43/Conv2D:output:00DCE-net/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_43/ReluRelu"DCE-net/conv2d_43/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_44/Conv2DConv2D$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_44/BiasAddBiasAdd!DCE-net/conv2d_44/Conv2D:output:00DCE-net/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_44/ReluRelu"DCE-net/conv2d_44/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_45/Conv2DConv2D$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_45/BiasAddBiasAdd!DCE-net/conv2d_45/Conv2D:output:00DCE-net/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_45/ReluRelu"DCE-net/conv2d_45/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_18/concatConcatV2$DCE-net/conv2d_44/Relu:activations:0$DCE-net/conv2d_45/Relu:activations:0+DCE-net/concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_46/Conv2DConv2D&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_46/BiasAddBiasAdd!DCE-net/conv2d_46/Conv2D:output:00DCE-net/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_46/ReluRelu"DCE-net/conv2d_46/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_19/concatConcatV2$DCE-net/conv2d_43/Relu:activations:0$DCE-net/conv2d_46/Relu:activations:0+DCE-net/concatenate_19/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_47/Conv2DConv2D&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_47/BiasAddBiasAdd!DCE-net/conv2d_47/Conv2D:output:00DCE-net/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_47/ReluRelu"DCE-net/conv2d_47/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_20/concatConcatV2$DCE-net/conv2d_42/Relu:activations:0$DCE-net/conv2d_47/Relu:activations:0+DCE-net/concatenate_20/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DCE-net/conv2d_48/Conv2DConv2D&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
(DCE-net/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DCE-net/conv2d_48/BiasAddBiasAdd!DCE-net/conv2d_48/Conv2D:output:00DCE-net/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��u
DCE-net/conv2d_48/TanhTanh"DCE-net/conv2d_48/BiasAdd:output:0*
T0*(
_output_shapes
:��b
DCE-net/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DCE-net/splitSplit DCE-net/split/split_dim:output:0DCE-net/conv2d_48/Tanh:y:0*
T0*�
_output_shapesz
x:��:��:��:��:��:��*
	num_splitS
DCE-net/SquareSquareinputs*
T0*(
_output_shapes
:��a
DCE-net/subSubDCE-net/Square:y:0inputs*
T0*(
_output_shapes
:��n
DCE-net/mulMulDCE-net/split:output:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��`
DCE-net/addAddV2inputsDCE-net/mul:z:0*
T0*(
_output_shapes
:��^
DCE-net/Square_1SquareDCE-net/add:z:0*
T0*(
_output_shapes
:��n
DCE-net/sub_1SubDCE-net/Square_1:y:0DCE-net/add:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_1MulDCE-net/split:output:1DCE-net/sub_1:z:0*
T0*(
_output_shapes
:��m
DCE-net/add_1AddV2DCE-net/add:z:0DCE-net/mul_1:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_2SquareDCE-net/add_1:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_2SubDCE-net/Square_2:y:0DCE-net/add_1:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_2MulDCE-net/split:output:2DCE-net/sub_2:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_2AddV2DCE-net/add_1:z:0DCE-net/mul_2:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_3SquareDCE-net/add_2:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_3SubDCE-net/Square_3:y:0DCE-net/add_2:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_3MulDCE-net/split:output:3DCE-net/sub_3:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_3AddV2DCE-net/add_2:z:0DCE-net/mul_3:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_4SquareDCE-net/add_3:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_4SubDCE-net/Square_4:y:0DCE-net/add_3:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_4MulDCE-net/split:output:4DCE-net/sub_4:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_4AddV2DCE-net/add_3:z:0DCE-net/mul_4:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_5SquareDCE-net/add_4:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_5SubDCE-net/Square_5:y:0DCE-net/add_4:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_5MulDCE-net/split:output:5DCE-net/sub_5:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_5AddV2DCE-net/add_4:z:0DCE-net/mul_5:z:0*
T0*(
_output_shapes
:��x
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/Mean_1MeanDCE-net/add_5:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*'
_output_shapes
:`�y
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*'
_output_shapes
:`�u
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: �
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
MeanMeanDCE-net/add_5:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *��?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
: J
SquareSquaresub:z:0*
T0*&
_output_shapes
: ^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
Mean_2MeanDCE-net/add_5:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:=
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: Q
Mean_3MeanSqueeze:output:0range:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_7StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: I
Const_1Const*
_output_shapes
: *
dtype0*
value	B : I
Const_2Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_8/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stackPack strided_slice_8/stack/0:output:0Const_1:output:0 strided_slice_8/stack/2:output:0 strided_slice_8/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_8/stack_2Pack"strided_slice_8/stack_2/0:output:0Const_2:output:0"strided_slice_8/stack_2/2:output:0"strided_slice_8/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_8StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:��P
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:��`
Const_3Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_3:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_9StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: I
Const_4Const*
_output_shapes
: *
dtype0*
value	B : I
Const_5Const*
_output_shapes
: *
dtype0*
value	B :Z
strided_slice_10/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stackPack!strided_slice_10/stack/0:output:0!strided_slice_10/stack/1:output:0Const_4:output:0!strided_slice_10/stack/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_10/stack_2Pack#strided_slice_10/stack_2/0:output:0#strided_slice_10/stack_2/1:output:0Const_5:output:0#strided_slice_10/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_10StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:��P
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:��`
Const_6Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_6:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �CN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: I
onesConst*
_output_shapes
: *
dtype0*
valueB
 *  �?]
gradient_tape/mul_6/MulMulones:output:0truediv_2:z:0*
T0*
_output_shapes
: b
gradient_tape/mul_6/Mul_1Mulones:output:0mul_6/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_2/MulMulones:output:0Mean_3:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_2/Mul_1Mulones:output:0mul_2/x:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_2/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_2/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
-gradient_tape/truediv_2/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_2/Shape:output:0(gradient_tape/truediv_2/Shape_1:output:0*2
_output_shapes 
:���������:���������t
gradient_tape/truediv_2/RealDivRealDivgradient_tape/mul_6/Mul_1:z:0Cast:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/SumSum#gradient_tape/truediv_2/RealDiv:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/ReshapeReshape$gradient_tape/truediv_2/Sum:output:0&gradient_tape/truediv_2/Shape:output:0*
T0*
_output_shapes
: N
gradient_tape/truediv_2/NegNeg	mul_5:z:0*
T0*
_output_shapes
: x
!gradient_tape/truediv_2/RealDiv_1RealDivgradient_tape/truediv_2/Neg:y:0Cast:y:0*
T0*
_output_shapes
: ~
!gradient_tape/truediv_2/RealDiv_2RealDiv%gradient_tape/truediv_2/RealDiv_1:z:0Cast:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/mulMulgradient_tape/mul_6/Mul_1:z:0%gradient_tape/truediv_2/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv_2/Sum_1Sumgradient_tape/truediv_2/mul:z:02gradient_tape/truediv_2/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_2/Reshape_1Reshape&gradient_tape/truediv_2/Sum_1:output:0(gradient_tape/truediv_2/Shape_1:output:0*
T0*
_output_shapes
: |
gradient_tape/mul/MulMulones:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: ^
gradient_tape/mul/Mul_1Mulones:output:0mul/x:output:0*
T0*
_output_shapes
: _
gradient_tape/mul_1/MulMulones:output:0Mean_1:output:0*
T0*
_output_shapes
: b
gradient_tape/mul_1/Mul_1Mulones:output:0mul_1/x:output:0*
T0*
_output_shapes
: ^
gradient_tape/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB `
gradient_tape/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
gradient_tape/ReshapeReshapegradient_tape/mul_2/Mul_1:z:0&gradient_tape/Reshape/shape_1:output:0*
T0*
_output_shapes
: V
gradient_tape/ConstConst*
_output_shapes
: *
dtype0*
valueB y
gradient_tape/TileTilegradient_tape/Reshape:output:0gradient_tape/Const:output:0*
T0*
_output_shapes
: Z
gradient_tape/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  �?~
gradient_tape/truedivRealDivgradient_tape/Tile:output:0gradient_tape/Const_1:output:0*
T0*
_output_shapes
: t
gradient_tape/mul_5/MulMul(gradient_tape/truediv_2/Reshape:output:0	add_2:z:0*
T0*
_output_shapes
: }
gradient_tape/mul_5/Mul_1Mul(gradient_tape/truediv_2/Reshape:output:0mul_5/x:output:0*
T0*
_output_shapes
: �
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ShapeConst*
_output_shapes
: *
dtype0*
valueB �
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
Ngradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgsBroadcastGradientArgsGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*2
_output_shapes 
:���������:����������
Cgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nanDivNoNangradient_tape/mul/Mul_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/SumSumGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/ReshapeReshapeEgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum:output:0Ggradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape:output:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/NegNeg3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0*
T0*
_output_shapes
: �
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1DivNoNan@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Neg:y:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
Egradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2DivNoNanIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_1:z:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mulMulgradient_tape/mul/Mul_1:z:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/div_no_nan_2:z:0*
T0*
_output_shapes
: �
>gradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1Sum@gradient_tape/SpatialConsistencyLoss/weighted_loss/value/mul:z:0Sgradient_tape/SpatialConsistencyLoss/weighted_loss/value/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape_1ReshapeGgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Sum_1:output:0Igradient_tape/SpatialConsistencyLoss/weighted_loss/value/Shape_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_1Reshapegradient_tape/mul_1/Mul_1:z:0&gradient_tape/Reshape_1/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_2Const*
_output_shapes
:*
dtype0*%
valueB"             �
gradient_tape/Tile_1Tile gradient_tape/Reshape_1:output:0gradient_tape/Const_2:output:0*
T0*&
_output_shapes
: Z
gradient_tape/Const_3Const*
_output_shapes
: *
dtype0*
valueB
 *  @D�
gradient_tape/truediv_1RealDivgradient_tape/Tile_1:output:0gradient_tape/Const_3:output:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
: l
gradient_tape/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_2Reshapegradient_tape/truediv:z:0gradient_tape/Shape:output:0*
T0*&
_output_shapes
:�
@gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
:gradient_tape/SpatialConsistencyLoss/weighted_loss/ReshapeReshapeIgradient_tape/SpatialConsistencyLoss/weighted_loss/value/Reshape:output:0Kgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape/shape_1:output:0*
T0*
_output_shapes
: {
8gradient_tape/SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB �
7gradient_tape/SpatialConsistencyLoss/weighted_loss/TileTileCgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape:output:0Agradient_tape/SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: t
gradient_tape/Const_4Const^gradient_tape/truediv_1*
_output_shapes
: *
dtype0*
valueB
 *   @r
gradient_tape/MulMulsub:z:0gradient_tape/Const_4:output:0*
T0*&
_output_shapes
: 
gradient_tape/Mul_1Mulgradient_tape/truediv_1:z:0gradient_tape/Mul:z:0*
T0*&
_output_shapes
: �
gradient_tape/SqrtGradSqrtGradSqrt:y:0 gradient_tape/Reshape_2:output:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:^
gradient_tape/truediv/ShapeConst*
_output_shapes
: *
dtype0*
valueB `
gradient_tape/truediv/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
+gradient_tape/truediv/BroadcastGradientArgsBroadcastGradientArgs$gradient_tape/truediv/Shape:output:0&gradient_tape/truediv/Shape_1:output:0*2
_output_shapes 
:���������:���������t
gradient_tape/truediv/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv/SumSum!gradient_tape/truediv/RealDiv:z:00gradient_tape/truediv/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv/ReshapeReshape"gradient_tape/truediv/Sum:output:0$gradient_tape/truediv/Shape:output:0*
T0*
_output_shapes
: O
gradient_tape/truediv/NegNegSum:output:0*
T0*
_output_shapes
: v
gradient_tape/truediv/RealDiv_1RealDivgradient_tape/truediv/Neg:y:0
Cast_1:y:0*
T0*
_output_shapes
: |
gradient_tape/truediv/RealDiv_2RealDiv#gradient_tape/truediv/RealDiv_1:z:0
Cast_1:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv/mulMulgradient_tape/mul_5/Mul_1:z:0#gradient_tape/truediv/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv/Sum_1Sumgradient_tape/truediv/mul:z:00gradient_tape/truediv/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
gradient_tape/truediv/Reshape_1Reshape$gradient_tape/truediv/Sum_1:output:0&gradient_tape/truediv/Shape_1:output:0*
T0*
_output_shapes
: `
gradient_tape/truediv_1/ShapeConst*
_output_shapes
: *
dtype0*
valueB b
gradient_tape/truediv_1/Shape_1Const*
_output_shapes
: *
dtype0*
valueB �
-gradient_tape/truediv_1/BroadcastGradientArgsBroadcastGradientArgs&gradient_tape/truediv_1/Shape:output:0(gradient_tape/truediv_1/Shape_1:output:0*2
_output_shapes 
:���������:���������v
gradient_tape/truediv_1/RealDivRealDivgradient_tape/mul_5/Mul_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/SumSum#gradient_tape/truediv_1/RealDiv:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r0:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/ReshapeReshape$gradient_tape/truediv_1/Sum:output:0&gradient_tape/truediv_1/Shape:output:0*
T0*
_output_shapes
: S
gradient_tape/truediv_1/NegNegSum_1:output:0*
T0*
_output_shapes
: z
!gradient_tape/truediv_1/RealDiv_1RealDivgradient_tape/truediv_1/Neg:y:0
Cast_2:y:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_1/RealDiv_2RealDiv%gradient_tape/truediv_1/RealDiv_1:z:0
Cast_2:y:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/mulMulgradient_tape/mul_5/Mul_1:z:0%gradient_tape/truediv_1/RealDiv_2:z:0*
T0*
_output_shapes
: �
gradient_tape/truediv_1/Sum_1Sumgradient_tape/truediv_1/mul:z:02gradient_tape/truediv_1/BroadcastGradientArgs:r1:0*
T0*
_output_shapes
: �
!gradient_tape/truediv_1/Reshape_1Reshape&gradient_tape/truediv_1/Sum_1:output:0(gradient_tape/truediv_1/Shape_1:output:0*
T0*
_output_shapes
: �
Bgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shapeConst*
_output_shapes
: *
dtype0*
valueB �
Dgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1Const*
_output_shapes
: *
dtype0*
valueB �
<gradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1Reshape@gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile:output:0Mgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1/shape_1:output:0*
T0*
_output_shapes
: }
:gradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1Const*
_output_shapes
: *
dtype0*
valueB �
9gradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1TileEgradient_tape/SpatialConsistencyLoss/weighted_loss/Reshape_1:output:0Cgradient_tape/SpatialConsistencyLoss/weighted_loss/Const_1:output:0*
T0*
_output_shapes
: v
gradient_tape/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_3Reshape&gradient_tape/truediv/Reshape:output:0&gradient_tape/Reshape_3/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_5Const*
_output_shapes
:*
dtype0*%
valueB"           �
gradient_tape/Tile_2Tile gradient_tape/Reshape_3:output:0gradient_tape/Const_5:output:0*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:��v
gradient_tape/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_4Reshape(gradient_tape/truediv_1/Reshape:output:0&gradient_tape/Reshape_4/shape:output:0*
T0*&
_output_shapes
:n
gradient_tape/Const_6Const*
_output_shapes
:*
dtype0*%
valueB"   �  �     �
gradient_tape/Tile_3Tile gradient_tape/Reshape_4:output:0gradient_tape/Const_6:output:0*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
6gradient_tape/SpatialConsistencyLoss/weighted_loss/MulMulBgradient_tape/SpatialConsistencyLoss/weighted_loss/Tile_1:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: v
gradient_tape/AvgPool2D/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
#gradient_tape/AvgPool2D/AvgPoolGradAvgPoolGrad&gradient_tape/AvgPool2D/Shape:output:0gradient_tape/Mul_1:z:0*
T0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
s
gradient_tape/Const_7Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @y
gradient_tape/Mul_2MulSquare_3:y:0gradient_tape/Const_7:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_3Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_2:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:q
gradient_tape/Const_8Const^gradient_tape/Tile_2*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_4Mul	sub_7:z:0gradient_tape/Const_8:output:0*
T0*(
_output_shapes
:���
gradient_tape/Mul_5Mulgradient_tape/Tile_2:output:0gradient_tape/Mul_4:z:0*
T0*(
_output_shapes
:��q
gradient_tape/Const_9Const^gradient_tape/Tile_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_6Mul	sub_9:z:0gradient_tape/Const_9:output:0*
T0*(
_output_shapes
:���
gradient_tape/Mul_7Mulgradient_tape/Tile_3:output:0gradient_tape/Mul_6:z:0*
T0*(
_output_shapes
:���
2gradient_tape/SpatialConsistencyLoss/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
,gradient_tape/SpatialConsistencyLoss/ReshapeReshape:gradient_tape/SpatialConsistencyLoss/weighted_loss/Mul:z:0;gradient_tape/SpatialConsistencyLoss/Reshape/shape:output:0*
T0*&
_output_shapes
:�
*gradient_tape/SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"   `   �      �
)gradient_tape/SpatialConsistencyLoss/TileTile5gradient_tape/SpatialConsistencyLoss/Reshape:output:03gradient_tape/SpatialConsistencyLoss/Const:output:0*
T0*'
_output_shapes
:`�q
,gradient_tape/SpatialConsistencyLoss/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *  G�
,gradient_tape/SpatialConsistencyLoss/truedivRealDiv2gradient_tape/SpatialConsistencyLoss/Tile:output:05gradient_tape/SpatialConsistencyLoss/Const_1:output:0*
T0*&
 _has_manual_control_dependencies(*'
_output_shapes
:`�p
gradient_tape/Maximum/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        Y
gradient_tape/Maximum/yConst*
_output_shapes
: *
dtype0*
value	B :�
gradient_tape/MaximumMaximum gradient_tape/Maximum/x:output:0 gradient_tape/Maximum/y:output:0*
T0*
_output_shapes
:q
gradient_tape/floordiv/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/floordivFloorDiv!gradient_tape/floordiv/x:output:0gradient_tape/Maximum:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/Reshape_5Reshape,gradient_tape/AvgPool2D/AvgPoolGrad:output:0&gradient_tape/Reshape_5/shape:output:0*
T0*(
_output_shapes
:��w
gradient_tape/Tile_4/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Tile_4Tile gradient_tape/Reshape_5:output:0'gradient_tape/Tile_4/multiples:output:0*
T0*(
_output_shapes
:��[
gradient_tape/Const_10Const*
_output_shapes
: *
dtype0*
valueB
 *  @@�
gradient_tape/truediv_2RealDivgradient_tape/Tile_4:output:0gradient_tape/Const_10:output:0*
T0*(
_output_shapes
:��t
gradient_tape/Const_11Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @z
gradient_tape/Mul_8MulSquare_1:y:0gradient_tape/Const_11:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_9Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_8:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:t
gradient_tape/Const_12Const^gradient_tape/SqrtGrad*
_output_shapes
: *
dtype0*
valueB
 *   @{
gradient_tape/Mul_10MulSquare_2:y:0gradient_tape/Const_12:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_11Mulgradient_tape/SqrtGrad:z:0gradient_tape/Mul_10:z:0*
T0*&
 _has_manual_control_dependencies(*&
_output_shapes
:q
gradient_tape/Const_13Const^gradient_tape/Mul_3*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_12Mul	sub_3:z:0gradient_tape/Const_13:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_13Mulgradient_tape/Mul_3:z:0gradient_tape/Mul_12:z:0*
T0*&
_output_shapes
:j
gradient_tape/sub_7/NegNeggradient_tape/Mul_5:z:0*
T0*(
_output_shapes
:��j
gradient_tape/sub_9/NegNeggradient_tape/Mul_7:z:0*
T0*(
_output_shapes
:��q
gradient_tape/Const_14Const^gradient_tape/Mul_9*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_14Mul	sub_1:z:0gradient_tape/Const_14:output:0*
T0*&
_output_shapes
:
gradient_tape/Mul_15Mulgradient_tape/Mul_9:z:0gradient_tape/Mul_14:z:0*
T0*&
_output_shapes
:r
gradient_tape/Const_15Const^gradient_tape/Mul_11*
_output_shapes
: *
dtype0*
valueB
 *   @x
gradient_tape/Mul_16Mul	sub_2:z:0gradient_tape/Const_15:output:0*
T0*&
_output_shapes
:�
gradient_tape/Mul_17Mulgradient_tape/Mul_11:z:0gradient_tape/Mul_16:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_3/NegNeggradient_tape/Mul_13:z:0*
T0*&
_output_shapes
:|
#gradient_tape/strided_slice_7/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_7/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_7/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               �
2gradient_tape/strided_slice_7/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_7/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_7/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_7/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_7/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_7/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_7/StridedSliceGrad/strides:output:0gradient_tape/Mul_5:z:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask|
#gradient_tape/strided_slice_8/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_8/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_8/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_8/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_8/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_8/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_8/StridedSliceGrad/begin:output:0 strided_slice_8/stack_1:output:0?gradient_tape/strided_slice_8/StridedSliceGrad/strides:output:0gradient_tape/sub_7/Neg:y:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask|
#gradient_tape/strided_slice_9/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_9/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
4gradient_tape/strided_slice_9/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"               �
2gradient_tape/strided_slice_9/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*%
valueB"                �
6gradient_tape/strided_slice_9/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
.gradient_tape/strided_slice_9/StridedSliceGradStridedSliceGrad=gradient_tape/strided_slice_9/StridedSliceGrad/shape:output:0=gradient_tape/strided_slice_9/StridedSliceGrad/begin:output:0;gradient_tape/strided_slice_9/StridedSliceGrad/end:output:0?gradient_tape/strided_slice_9/StridedSliceGrad/strides:output:0gradient_tape/Mul_7:z:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask}
$gradient_tape/strided_slice_10/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
5gradient_tape/strided_slice_10/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
5gradient_tape/strided_slice_10/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*%
valueB"                �
7gradient_tape/strided_slice_10/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*%
valueB"            �
/gradient_tape/strided_slice_10/StridedSliceGradStridedSliceGrad>gradient_tape/strided_slice_10/StridedSliceGrad/shape:output:0>gradient_tape/strided_slice_10/StridedSliceGrad/begin:output:0!strided_slice_10/stack_1:output:0@gradient_tape/strided_slice_10/StridedSliceGrad/strides:output:0gradient_tape/sub_9/Neg:y:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_mask�
,gradient_tape/SpatialConsistencyLoss/Const_2Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
(gradient_tape/SpatialConsistencyLoss/MulMul SpatialConsistencyLoss/sub_3:z:05gradient_tape/SpatialConsistencyLoss/Const_2:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_1Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0,gradient_tape/SpatialConsistencyLoss/Mul:z:0*
T0*'
_output_shapes
:`�i
gradient_tape/sub_1/NegNeggradient_tape/Mul_15:z:0*
T0*&
_output_shapes
:i
gradient_tape/sub_2/NegNeggradient_tape/Mul_17:z:0*
T0*&
_output_shapes
:�
,gradient_tape/SpatialConsistencyLoss/Const_3Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_2Mul SpatialConsistencyLoss/sub_2:z:05gradient_tape/SpatialConsistencyLoss/Const_3:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_3Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_2:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_3/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_1:z:0*
T0*'
_output_shapes
:`�z
AddNAddNgradient_tape/Mul_15:z:0gradient_tape/Mul_17:z:0*
N*
T0*&
_output_shapes
:�
AddN_1AddNgradient_tape/sub_3/Neg:y:0gradient_tape/sub_1/Neg:y:0*
N*
T0*&
_output_shapes
:
AddN_2AddNgradient_tape/Mul_13:z:0gradient_tape/sub_2/Neg:y:0*
N*
T0*&
_output_shapes
:�
gradient_tape/concatConcatV2
AddN:sum:0AddN_1:sum:0AddN_2:sum:0split/split_dim:output:0*
N*
T0*&
_output_shapes
:�
,gradient_tape/SpatialConsistencyLoss/Const_4Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_4MulSpatialConsistencyLoss/sub:z:05gradient_tape/SpatialConsistencyLoss/Const_4:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_5Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_4:z:0*
T0*'
_output_shapes
:`��
,gradient_tape/SpatialConsistencyLoss/Const_5Const-^gradient_tape/SpatialConsistencyLoss/truediv*
_output_shapes
: *
dtype0*
valueB
 *   @�
*gradient_tape/SpatialConsistencyLoss/Mul_6Mul SpatialConsistencyLoss/sub_1:z:05gradient_tape/SpatialConsistencyLoss/Const_5:output:0*
T0*'
_output_shapes
:`��
*gradient_tape/SpatialConsistencyLoss/Mul_7Mul0gradient_tape/SpatialConsistencyLoss/truediv:z:0.gradient_tape/SpatialConsistencyLoss/Mul_6:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_2/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_3:z:0*
T0*'
_output_shapes
:`��
+gradient_tape/SpatialConsistencyLoss/ShapeNShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
N*
T0* 
_output_shapes
::�
8gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInputConv2DBackpropInput4gradient_tape/SpatialConsistencyLoss/ShapeN:output:0&spatialconsistencyloss_conv2d_3_filter2gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
9gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilterConv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:04gradient_tape/SpatialConsistencyLoss/ShapeN:output:12gradient_tape/SpatialConsistencyLoss/sub_3/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
r
gradient_tape/Maximum_1/xConst*
_output_shapes
:*
dtype0*%
valueB"            [
gradient_tape/Maximum_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
gradient_tape/Maximum_1Maximum"gradient_tape/Maximum_1/x:output:0"gradient_tape/Maximum_1/y:output:0*
T0*
_output_shapes
:s
gradient_tape/floordiv_1/xConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/floordiv_1FloorDiv#gradient_tape/floordiv_1/x:output:0gradient_tape/Maximum_1:z:0*
T0*
_output_shapes
:v
gradient_tape/Reshape_6/shapeConst*
_output_shapes
:*
dtype0*%
valueB"            �
gradient_tape/Reshape_6Reshapegradient_tape/concat:output:0&gradient_tape/Reshape_6/shape:output:0*
T0*&
_output_shapes
:w
gradient_tape/Tile_5/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
gradient_tape/Tile_5Tile gradient_tape/Reshape_6:output:0'gradient_tape/Tile_5/multiples:output:0*
T0*(
_output_shapes
:��[
gradient_tape/Const_16Const*
_output_shapes
: *
dtype0*
valueB
 *  @H�
gradient_tape/truediv_3RealDivgradient_tape/Tile_5:output:0gradient_tape/Const_16:output:0*
T0*(
_output_shapes
:���
,gradient_tape/SpatialConsistencyLoss/sub/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_5:z:0*
T0*'
_output_shapes
:`��
.gradient_tape/SpatialConsistencyLoss/sub_1/NegNeg.gradient_tape/SpatialConsistencyLoss/Mul_7:z:0*
T0*'
_output_shapes
:`��
-gradient_tape/SpatialConsistencyLoss/ShapeN_1ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:0&spatialconsistencyloss_conv2d_2_filter2gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_1Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_1:output:12gradient_tape/SpatialConsistencyLoss/sub_2/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
-gradient_tape/SpatialConsistencyLoss/ShapeN_2ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:0$spatialconsistencyloss_conv2d_filter0gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_2Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_2:output:10gradient_tape/SpatialConsistencyLoss/sub/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
-gradient_tape/SpatialConsistencyLoss/ShapeN_3ShapeN+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
N*
T0* 
_output_shapes
::�
:gradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3Conv2DBackpropInput6gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:0&spatialconsistencyloss_conv2d_1_filter2gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
;gradient_tape/SpatialConsistencyLoss/Conv2DBackpropFilter_3Conv2DBackpropFilter+SpatialConsistencyLoss/AvgPool2D_1:output:06gradient_tape/SpatialConsistencyLoss/ShapeN_3:output:12gradient_tape/SpatialConsistencyLoss/sub_1/Neg:y:0*
T0*&
_output_shapes
:*
paddingSAME*
strides
�
AddN_3AddNAgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_1:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_2:output:0Cgradient_tape/SpatialConsistencyLoss/Conv2DBackpropInput_3:output:0*
N*
T0*'
_output_shapes
:`��
6gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
<gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGradAvgPoolGrad?gradient_tape/SpatialConsistencyLoss/AvgPool2D_1/Shape:output:0AddN_3:sum:0*
T0*(
_output_shapes
:��*
ksize
*
paddingVALID*
strides
�
4gradient_tape/SpatialConsistencyLoss/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        �
.gradient_tape/SpatialConsistencyLoss/Reshape_1ReshapeEgradient_tape/SpatialConsistencyLoss/AvgPool2D_1/AvgPoolGrad:output:0=gradient_tape/SpatialConsistencyLoss/Reshape_1/shape:output:0*
T0*(
_output_shapes
:���
5gradient_tape/SpatialConsistencyLoss/Tile_1/multiplesConst*
_output_shapes
:*
dtype0*%
valueB"            �
+gradient_tape/SpatialConsistencyLoss/Tile_1Tile7gradient_tape/SpatialConsistencyLoss/Reshape_1:output:0>gradient_tape/SpatialConsistencyLoss/Tile_1/multiples:output:0*
T0*(
_output_shapes
:��q
,gradient_tape/SpatialConsistencyLoss/Const_6Const*
_output_shapes
: *
dtype0*
valueB
 *  @@�
.gradient_tape/SpatialConsistencyLoss/truediv_1RealDiv4gradient_tape/SpatialConsistencyLoss/Tile_1:output:05gradient_tape/SpatialConsistencyLoss/Const_6:output:0*
T0*(
_output_shapes
:���
AddN_4AddNgradient_tape/truediv_2:z:0gradient_tape/truediv_3:z:02gradient_tape/SpatialConsistencyLoss/truediv_1:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_5/MulMulAddN_4:sum:0DCE-net/sub_5:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_5/Mul_1MulAddN_4:sum:0DCE-net/split:output:5*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_5/NegNeg%gradient_tape/DCE-net/mul_5/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/ConstConst"^gradient_tape/DCE-net/mul_5/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/MulMulDCE-net/add_4:z:0$gradient_tape/DCE-net/Const:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_1Mul%gradient_tape/DCE-net/mul_5/Mul_1:z:0gradient_tape/DCE-net/Mul:z:0*
T0*(
_output_shapes
:���
AddN_5AddNAddN_4:sum:0#gradient_tape/DCE-net/sub_5/Neg:y:0gradient_tape/DCE-net/Mul_1:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_4/MulMulAddN_5:sum:0DCE-net/sub_4:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_4/Mul_1MulAddN_5:sum:0DCE-net/split:output:4*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_4/NegNeg%gradient_tape/DCE-net/mul_4/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_1Const"^gradient_tape/DCE-net/mul_4/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_2MulDCE-net/add_3:z:0&gradient_tape/DCE-net/Const_1:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_3Mul%gradient_tape/DCE-net/mul_4/Mul_1:z:0gradient_tape/DCE-net/Mul_2:z:0*
T0*(
_output_shapes
:���
AddN_6AddNAddN_5:sum:0#gradient_tape/DCE-net/sub_4/Neg:y:0gradient_tape/DCE-net/Mul_3:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_3/MulMulAddN_6:sum:0DCE-net/sub_3:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_3/Mul_1MulAddN_6:sum:0DCE-net/split:output:3*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_3/NegNeg%gradient_tape/DCE-net/mul_3/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_2Const"^gradient_tape/DCE-net/mul_3/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_4MulDCE-net/add_2:z:0&gradient_tape/DCE-net/Const_2:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_5Mul%gradient_tape/DCE-net/mul_3/Mul_1:z:0gradient_tape/DCE-net/Mul_4:z:0*
T0*(
_output_shapes
:���
AddN_7AddNAddN_6:sum:0#gradient_tape/DCE-net/sub_3/Neg:y:0gradient_tape/DCE-net/Mul_5:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_2/MulMulAddN_7:sum:0DCE-net/sub_2:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_2/Mul_1MulAddN_7:sum:0DCE-net/split:output:2*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_2/NegNeg%gradient_tape/DCE-net/mul_2/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_3Const"^gradient_tape/DCE-net/mul_2/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_6MulDCE-net/add_1:z:0&gradient_tape/DCE-net/Const_3:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_7Mul%gradient_tape/DCE-net/mul_2/Mul_1:z:0gradient_tape/DCE-net/Mul_6:z:0*
T0*(
_output_shapes
:���
AddN_8AddNAddN_7:sum:0#gradient_tape/DCE-net/sub_2/Neg:y:0gradient_tape/DCE-net/Mul_7:z:0*
N*
T0*(
_output_shapes
:��z
gradient_tape/DCE-net/mul_1/MulMulAddN_8:sum:0DCE-net/sub_1:z:0*
T0*(
_output_shapes
:���
!gradient_tape/DCE-net/mul_1/Mul_1MulAddN_8:sum:0DCE-net/split:output:1*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
gradient_tape/DCE-net/sub_1/NegNeg%gradient_tape/DCE-net/mul_1/Mul_1:z:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Const_4Const"^gradient_tape/DCE-net/mul_1/Mul_1*
_output_shapes
: *
dtype0*
valueB
 *   @�
gradient_tape/DCE-net/Mul_8MulDCE-net/add:z:0&gradient_tape/DCE-net/Const_4:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/Mul_9Mul%gradient_tape/DCE-net/mul_1/Mul_1:z:0gradient_tape/DCE-net/Mul_8:z:0*
T0*(
_output_shapes
:���
AddN_9AddNAddN_8:sum:0#gradient_tape/DCE-net/sub_1/Neg:y:0gradient_tape/DCE-net/Mul_9:z:0*
N*
T0*(
_output_shapes
:��v
gradient_tape/DCE-net/mul/MulMulAddN_9:sum:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��
gradient_tape/DCE-net/mul/Mul_1MulAddN_9:sum:0DCE-net/split:output:0*
T0*(
_output_shapes
:���
gradient_tape/DCE-net/concatConcatV2!gradient_tape/DCE-net/mul/Mul:z:0#gradient_tape/DCE-net/mul_1/Mul:z:0#gradient_tape/DCE-net/mul_2/Mul:z:0#gradient_tape/DCE-net/mul_3/Mul:z:0#gradient_tape/DCE-net/mul_4/Mul:z:0#gradient_tape/DCE-net/mul_5/Mul:z:0 DCE-net/split/split_dim:output:0*
N*
T0*(
_output_shapes
:���
AddN_10AddN7gradient_tape/strided_slice_7/StridedSliceGrad:output:07gradient_tape/strided_slice_8/StridedSliceGrad:output:07gradient_tape/strided_slice_9/StridedSliceGrad:output:08gradient_tape/strided_slice_10/StridedSliceGrad:output:0%gradient_tape/DCE-net/concat:output:0*
N*
T0*&
 _has_manual_control_dependencies(*(
_output_shapes
:���
(gradient_tape/DCE-net/conv2d_48/TanhGradTanhGradDCE-net/conv2d_48/Tanh:y:0AddN_10:sum:0*
T0*(
_output_shapes
:���
3gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGradBiasAddGrad,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*
_output_shapes
:�
-gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeNShapeN&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeN:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_20/concat:output:06gradient_tape/DCE-net/conv2d_48/Conv2D/ShapeN:output:1,gradient_tape/DCE-net/conv2d_48/TanhGrad:z:0*
T0*&
_output_shapes
:@*
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_20/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_20/modFloorMod+DCE-net/concatenate_20/concat/axis:output:02gradient_tape/DCE-net/concatenate_20/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_20/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_20/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_20/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_20/mod:z:03gradient_tape/DCE-net/concatenate_20/Shape:output:05gradient_tape/DCE-net/concatenate_20/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_20/SliceSliceCgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_20/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_20/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_20/Slice_1SliceCgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_20/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_20/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_47/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_20/Slice_1:output:0$DCE-net/conv2d_47/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeNShapeN&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeN:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_19/concat:output:06gradient_tape/DCE-net/conv2d_47/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_47/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_19/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_19/modFloorMod+DCE-net/concatenate_19/concat/axis:output:02gradient_tape/DCE-net/concatenate_19/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_19/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_19/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_19/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_19/mod:z:03gradient_tape/DCE-net/concatenate_19/Shape:output:05gradient_tape/DCE-net/concatenate_19/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_19/SliceSliceCgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_19/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_19/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_19/Slice_1SliceCgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_19/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_19/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_46/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_19/Slice_1:output:0$DCE-net/conv2d_46/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeNShapeN&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeN:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*(
_output_shapes
:��@*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter&DCE-net/concatenate_18/concat:output:06gradient_tape/DCE-net/conv2d_46/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_46/ReluGrad:backprops:0*
T0*&
_output_shapes
:@ *
paddingSAME*
strides
k
)gradient_tape/DCE-net/concatenate_18/RankConst*
_output_shapes
: *
dtype0*
value	B :�
(gradient_tape/DCE-net/concatenate_18/modFloorMod+DCE-net/concatenate_18/concat/axis:output:02gradient_tape/DCE-net/concatenate_18/Rank:output:0*
T0*
_output_shapes
: �
*gradient_tape/DCE-net/concatenate_18/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �         �
,gradient_tape/DCE-net/concatenate_18/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �         �
1gradient_tape/DCE-net/concatenate_18/ConcatOffsetConcatOffset,gradient_tape/DCE-net/concatenate_18/mod:z:03gradient_tape/DCE-net/concatenate_18/Shape:output:05gradient_tape/DCE-net/concatenate_18/Shape_1:output:0*
N* 
_output_shapes
::�
*gradient_tape/DCE-net/concatenate_18/SliceSliceCgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_18/ConcatOffset:offset:03gradient_tape/DCE-net/concatenate_18/Shape:output:0*
Index0*
T0*(
_output_shapes
:�� �
,gradient_tape/DCE-net/concatenate_18/Slice_1SliceCgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropInput:output:0:gradient_tape/DCE-net/concatenate_18/ConcatOffset:offset:15gradient_tape/DCE-net/concatenate_18/Shape_1:output:0*
Index0*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_45/ReluGradReluGrad5gradient_tape/DCE-net/concatenate_18/Slice_1:output:0$DCE-net/conv2d_45/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeNShapeN$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeN:output:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_44/Relu:activations:06gradient_tape/DCE-net/conv2d_45/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_45/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_11AddN3gradient_tape/DCE-net/concatenate_18/Slice:output:0Cgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_44/ReluGradReluGradAddN_11:sum:0$DCE-net/conv2d_44/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeNShapeN$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeN:output:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_43/Relu:activations:06gradient_tape/DCE-net/conv2d_44/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_44/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_12AddN3gradient_tape/DCE-net/concatenate_19/Slice:output:0Cgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_43/ReluGradReluGradAddN_12:sum:0$DCE-net/conv2d_43/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeNShapeN$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeN:output:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilterConv2DBackpropFilter$DCE-net/conv2d_42/Relu:activations:06gradient_tape/DCE-net/conv2d_43/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_43/ReluGrad:backprops:0*
T0*&
_output_shapes
:  *
paddingSAME*
strides
�
AddN_13AddN3gradient_tape/DCE-net/concatenate_20/Slice:output:0Cgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropInput:output:0*
N*
T0*(
_output_shapes
:�� �
(gradient_tape/DCE-net/conv2d_42/ReluGradReluGradAddN_13:sum:0$DCE-net/conv2d_42/Relu:activations:0*
T0*(
_output_shapes
:�� �
3gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGradBiasAddGrad4gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*
_output_shapes
: �
-gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeNShapeNinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
N*
T0* 
_output_shapes
::�
:gradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropInputConv2DBackpropInput6gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeN:output:0/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:04gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
;gradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilterConv2DBackpropFilterinputs6gradient_tape/DCE-net/conv2d_42/Conv2D/ShapeN:output:14gradient_tape/DCE-net/conv2d_42/ReluGrad:backprops:0*
T0*&
_output_shapes
: *
paddingSAME*
strides
r
Adam/Cast/ReadVariableOpReadVariableOp!adam_cast_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/IdentityIdentity Adam/Cast/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: h
Adam/ReadVariableOpReadVariableOpadam_readvariableop_resource*
_output_shapes
: *
dtype0	z

Adam/add/yConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/addAddV2Adam/ReadVariableOp:value:0Adam/add/y:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0	*
_output_shapes
: 
Adam/Cast_1CastAdam/add:z:0",/job:localhost/replica:0/task:0/device:CPU:0*

DstT0*

SrcT0	*
_output_shapes
: v
Adam/Cast_2/ReadVariableOpReadVariableOp#adam_cast_2_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_1Identity"Adam/Cast_2/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: v
Adam/Cast_3/ReadVariableOpReadVariableOp#adam_cast_3_readvariableop_resource*
_output_shapes
: *
dtype0�
Adam/Identity_2Identity"Adam/Cast_3/ReadVariableOp:value:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/PowPowAdam/Identity_1:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �

Adam/Pow_1PowAdam/Identity_2:output:0Adam/Cast_1:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/sub/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�
Adam/subSubAdam/sub/x:output:0Adam/Pow_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: n
	Adam/SqrtSqrtAdam/sub:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_1/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_1SubAdam/sub_1/x:output:0Adam/Pow:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/truedivRealDivAdam/Sqrt:y:0Adam/sub_1:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/mulMulAdam/Identity:output:0Adam/truediv:z:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: }

Adam/ConstConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *���3
Adam/sub_2/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_2SubAdam/sub_2/x:output:0Adam/Identity_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: 
Adam/sub_3/xConst",/job:localhost/replica:0/task:0/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  �?�

Adam/sub_3SubAdam/sub_3/x:output:0Adam/Identity_2:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*
_output_shapes
: �
Adam/Identity_3IdentityDgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
: ~
Adam/Identity_4Identity<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_5IdentityDgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  ~
Adam/Identity_6Identity<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_7IdentityDgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  ~
Adam/Identity_8Identity<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_9IdentityDgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:  
Adam/Identity_10Identity<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_11IdentityDgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ 
Adam/Identity_12Identity<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_13IdentityDgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@ 
Adam/Identity_14Identity<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
: �
Adam/Identity_15IdentityDgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0*
T0*&
_output_shapes
:@
Adam/Identity_16Identity<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0*
T0*
_output_shapes
:�
Adam/IdentityN	IdentityNDgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_42/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_42/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_43/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_43/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_44/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_44/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_45/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_45/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_46/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_46/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_47/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_47/BiasAdd/BiasAddGrad:output:0Dgradient_tape/DCE-net/conv2d_48/Conv2D/Conv2DBackpropFilter:output:0<gradient_tape/DCE-net/conv2d_48/BiasAdd/BiasAddGrad:output:0*%
T 
2*,
_gradient_op_typeCustomGradient-514686*�
_output_shapes�
�: : :  : :  : :  : :@ : :@ : :@:: : :  : :  : :  : :@ : :@ : :@:�
"Adam/Adam/update/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_42_conv2d_readvariableop_resource$adam_adam_update_resourceapplyadam_m$adam_adam_update_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:0(^DCE-net/conv2d_42/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_1/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_42_biasadd_readvariableop_resource&adam_adam_update_1_resourceapplyadam_m&adam_adam_update_1_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:1)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_2/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_43_conv2d_readvariableop_resource&adam_adam_update_2_resourceapplyadam_m&adam_adam_update_2_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:2(^DCE-net/conv2d_43/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_3/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_43_biasadd_readvariableop_resource&adam_adam_update_3_resourceapplyadam_m&adam_adam_update_3_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:3)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_4/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_44_conv2d_readvariableop_resource&adam_adam_update_4_resourceapplyadam_m&adam_adam_update_4_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:4(^DCE-net/conv2d_44/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_5/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_44_biasadd_readvariableop_resource&adam_adam_update_5_resourceapplyadam_m&adam_adam_update_5_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:5)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_6/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_45_conv2d_readvariableop_resource&adam_adam_update_6_resourceapplyadam_m&adam_adam_update_6_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:6(^DCE-net/conv2d_45/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_7/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_45_biasadd_readvariableop_resource&adam_adam_update_7_resourceapplyadam_m&adam_adam_update_7_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:7)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_8/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_46_conv2d_readvariableop_resource&adam_adam_update_8_resourceapplyadam_m&adam_adam_update_8_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:8(^DCE-net/conv2d_46/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
$Adam/Adam/update_9/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_46_biasadd_readvariableop_resource&adam_adam_update_9_resourceapplyadam_m&adam_adam_update_9_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:9)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_10/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_47_conv2d_readvariableop_resource'adam_adam_update_10_resourceapplyadam_m'adam_adam_update_10_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:10(^DCE-net/conv2d_47/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_11/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_47_biasadd_readvariableop_resource'adam_adam_update_11_resourceapplyadam_m'adam_adam_update_11_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:11)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_12/ResourceApplyAdamResourceApplyAdam0dce_net_conv2d_48_conv2d_readvariableop_resource'adam_adam_update_12_resourceapplyadam_m'adam_adam_update_12_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:12(^DCE-net/conv2d_48/Conv2D/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
%Adam/Adam/update_13/ResourceApplyAdamResourceApplyAdam1dce_net_conv2d_48_biasadd_readvariableop_resource'adam_adam_update_13_resourceapplyadam_m'adam_adam_update_13_resourceapplyadam_vAdam/Pow:z:0Adam/Pow_1:z:0Adam/Identity:output:0Adam/Identity_1:output:0Adam/Identity_2:output:0Adam/Const:output:0Adam/IdentityN:output:13)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*
T0*D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource*&
 _has_manual_control_dependencies(*
_output_shapes
 *
use_locking(�
Adam/Adam/group_depsNoOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam",/job:localhost/replica:0/task:0/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 h
Adam/Adam/ConstConst^Adam/Adam/group_deps*
_output_shapes
: *
dtype0	*
value	B	 R�
Adam/Adam/AssignAddVariableOpAssignAddVariableOpadam_readvariableop_resourceAdam/Adam/Const:output:0^Adam/ReadVariableOp*
_output_shapes
 *
dtype0	G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: �

NoOpNoOp^Adam/Adam/AssignAddVariableOp#^Adam/Adam/update/ResourceApplyAdam%^Adam/Adam/update_1/ResourceApplyAdam&^Adam/Adam/update_10/ResourceApplyAdam&^Adam/Adam/update_11/ResourceApplyAdam&^Adam/Adam/update_12/ResourceApplyAdam&^Adam/Adam/update_13/ResourceApplyAdam%^Adam/Adam/update_2/ResourceApplyAdam%^Adam/Adam/update_3/ResourceApplyAdam%^Adam/Adam/update_4/ResourceApplyAdam%^Adam/Adam/update_5/ResourceApplyAdam%^Adam/Adam/update_6/ResourceApplyAdam%^Adam/Adam/update_7/ResourceApplyAdam%^Adam/Adam/update_8/ResourceApplyAdam%^Adam/Adam/update_9/ResourceApplyAdam^Adam/Cast/ReadVariableOp^Adam/Cast_2/ReadVariableOp^Adam/Cast_3/ReadVariableOp^Adam/ReadVariableOp)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp(^DCE-net/conv2d_42/Conv2D/ReadVariableOp)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp(^DCE-net/conv2d_43/Conv2D/ReadVariableOp)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp(^DCE-net/conv2d_44/Conv2D/ReadVariableOp)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp(^DCE-net/conv2d_45/Conv2D/ReadVariableOp)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp(^DCE-net/conv2d_46/Conv2D/ReadVariableOp)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp(^DCE-net/conv2d_47/Conv2D/ReadVariableOp)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp(^DCE-net/conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:��: : : : : : : : : : : : : : ::::: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
Adam/Adam/AssignAddVariableOpAdam/Adam/AssignAddVariableOp2H
"Adam/Adam/update/ResourceApplyAdam"Adam/Adam/update/ResourceApplyAdam2L
$Adam/Adam/update_1/ResourceApplyAdam$Adam/Adam/update_1/ResourceApplyAdam2N
%Adam/Adam/update_10/ResourceApplyAdam%Adam/Adam/update_10/ResourceApplyAdam2N
%Adam/Adam/update_11/ResourceApplyAdam%Adam/Adam/update_11/ResourceApplyAdam2N
%Adam/Adam/update_12/ResourceApplyAdam%Adam/Adam/update_12/ResourceApplyAdam2N
%Adam/Adam/update_13/ResourceApplyAdam%Adam/Adam/update_13/ResourceApplyAdam2L
$Adam/Adam/update_2/ResourceApplyAdam$Adam/Adam/update_2/ResourceApplyAdam2L
$Adam/Adam/update_3/ResourceApplyAdam$Adam/Adam/update_3/ResourceApplyAdam2L
$Adam/Adam/update_4/ResourceApplyAdam$Adam/Adam/update_4/ResourceApplyAdam2L
$Adam/Adam/update_5/ResourceApplyAdam$Adam/Adam/update_5/ResourceApplyAdam2L
$Adam/Adam/update_6/ResourceApplyAdam$Adam/Adam/update_6/ResourceApplyAdam2L
$Adam/Adam/update_7/ResourceApplyAdam$Adam/Adam/update_7/ResourceApplyAdam2L
$Adam/Adam/update_8/ResourceApplyAdam$Adam/Adam/update_8/ResourceApplyAdam2L
$Adam/Adam/update_9/ResourceApplyAdam$Adam/Adam/update_9/ResourceApplyAdam24
Adam/Cast/ReadVariableOpAdam/Cast/ReadVariableOp28
Adam/Cast_2/ReadVariableOpAdam/Cast_2/ReadVariableOp28
Adam/Cast_3/ReadVariableOpAdam/Cast_3/ReadVariableOp2*
Adam/ReadVariableOpAdam/ReadVariableOp2T
(DCE-net/conv2d_42/BiasAdd/ReadVariableOp(DCE-net/conv2d_42/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_42/Conv2D/ReadVariableOp'DCE-net/conv2d_42/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_43/BiasAdd/ReadVariableOp(DCE-net/conv2d_43/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_43/Conv2D/ReadVariableOp'DCE-net/conv2d_43/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_44/BiasAdd/ReadVariableOp(DCE-net/conv2d_44/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_44/Conv2D/ReadVariableOp'DCE-net/conv2d_44/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_45/BiasAdd/ReadVariableOp(DCE-net/conv2d_45/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_45/Conv2D/ReadVariableOp'DCE-net/conv2d_45/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_46/BiasAdd/ReadVariableOp(DCE-net/conv2d_46/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_46/Conv2D/ReadVariableOp'DCE-net/conv2d_46/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_47/BiasAdd/ReadVariableOp(DCE-net/conv2d_47/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_47/Conv2D/ReadVariableOp'DCE-net/conv2d_47/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_48/BiasAdd/ReadVariableOp(DCE-net/conv2d_48/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_48/Conv2D/ReadVariableOp'DCE-net/conv2d_48/Conv2D/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::IE
C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_42/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_42/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_43/Conv2D/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource:JF
D
_class:
86loc:@DCE-net/conv2d_43/BiasAdd/ReadVariableOp/resource:IE
C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource:I E
C
_class9
75loc:@DCE-net/conv2d_44/Conv2D/ReadVariableOp/resource:J!F
D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource:J"F
D
_class:
86loc:@DCE-net/conv2d_44/BiasAdd/ReadVariableOp/resource:I#E
C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource:I$E
C
_class9
75loc:@DCE-net/conv2d_45/Conv2D/ReadVariableOp/resource:J%F
D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource:J&F
D
_class:
86loc:@DCE-net/conv2d_45/BiasAdd/ReadVariableOp/resource:I'E
C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource:I(E
C
_class9
75loc:@DCE-net/conv2d_46/Conv2D/ReadVariableOp/resource:J)F
D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource:J*F
D
_class:
86loc:@DCE-net/conv2d_46/BiasAdd/ReadVariableOp/resource:I+E
C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource:I,E
C
_class9
75loc:@DCE-net/conv2d_47/Conv2D/ReadVariableOp/resource:J-F
D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource:J.F
D
_class:
86loc:@DCE-net/conv2d_47/BiasAdd/ReadVariableOp/resource:I/E
C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource:I0E
C
_class9
75loc:@DCE-net/conv2d_48/Conv2D/ReadVariableOp/resource:J1F
D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource:J2F
D
_class:
86loc:@DCE-net/conv2d_48/BiasAdd/ReadVariableOp/resource
�
�
E__inference_conv2d_44_layer_call_and_return_conditional_losses_578628

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_579244

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
�
*__inference_conv2d_45_layer_call_fn_579233

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_578645y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�G
�
C__inference_DCE-net_layer_call_and_return_conditional_losses_578995
input_1*
conv2d_42_578924: 
conv2d_42_578926: *
conv2d_43_578929:  
conv2d_43_578931: *
conv2d_44_578934:  
conv2d_44_578936: *
conv2d_45_578939:  
conv2d_45_578941: *
conv2d_46_578945:@ 
conv2d_46_578947: *
conv2d_47_578951:@ 
conv2d_47_578953: *
conv2d_48_578957:@
conv2d_48_578959:
identity

identity_1��!conv2d_42/StatefulPartitionedCall�!conv2d_43/StatefulPartitionedCall�!conv2d_44/StatefulPartitionedCall�!conv2d_45/StatefulPartitionedCall�!conv2d_46/StatefulPartitionedCall�!conv2d_47/StatefulPartitionedCall�!conv2d_48/StatefulPartitionedCall�
!conv2d_42/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_42_578924conv2d_42_578926*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_42_layer_call_and_return_conditional_losses_578594�
!conv2d_43/StatefulPartitionedCallStatefulPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0conv2d_43_578929conv2d_43_578931*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_578611�
!conv2d_44/StatefulPartitionedCallStatefulPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0conv2d_44_578934conv2d_44_578936*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_44_layer_call_and_return_conditional_losses_578628�
!conv2d_45/StatefulPartitionedCallStatefulPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0conv2d_45_578939conv2d_45_578941*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_45_layer_call_and_return_conditional_losses_578645�
concatenate_18/PartitionedCallPartitionedCall*conv2d_44/StatefulPartitionedCall:output:0*conv2d_45/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_578658�
!conv2d_46/StatefulPartitionedCallStatefulPartitionedCall'concatenate_18/PartitionedCall:output:0conv2d_46_578945conv2d_46_578947*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_46_layer_call_and_return_conditional_losses_578671�
concatenate_19/PartitionedCallPartitionedCall*conv2d_43/StatefulPartitionedCall:output:0*conv2d_46/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_19_layer_call_and_return_conditional_losses_578684�
!conv2d_47/StatefulPartitionedCallStatefulPartitionedCall'concatenate_19/PartitionedCall:output:0conv2d_47_578951conv2d_47_578953*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_47_layer_call_and_return_conditional_losses_578697�
concatenate_20/PartitionedCallPartitionedCall*conv2d_42/StatefulPartitionedCall:output:0*conv2d_47/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_20_layer_call_and_return_conditional_losses_578710�
!conv2d_48/StatefulPartitionedCallStatefulPartitionedCall'concatenate_20/PartitionedCall:output:0conv2d_48_578957conv2d_48_578959*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_578723Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0*conv2d_48/StatefulPartitionedCall:output:0*
T0*�
_output_shapes�
�:�����������:�����������:�����������:�����������:�����������:�����������*
	num_splitU
SquareSquareinput_1*
T0*1
_output_shapes
:�����������[
subSub
Square:y:0input_1*
T0*1
_output_shapes
:�����������_
mulMulsplit:output:0sub:z:0*
T0*1
_output_shapes
:�����������Z
addAddV2input_1mul:z:0*
T0*1
_output_shapes
:�����������W
Square_1Squareadd:z:0*
T0*1
_output_shapes
:�����������_
sub_1SubSquare_1:y:0add:z:0*
T0*1
_output_shapes
:�����������c
mul_1Mulsplit:output:1	sub_1:z:0*
T0*1
_output_shapes
:�����������^
add_1AddV2add:z:0	mul_1:z:0*
T0*1
_output_shapes
:�����������Y
Square_2Square	add_1:z:0*
T0*1
_output_shapes
:�����������a
sub_2SubSquare_2:y:0	add_1:z:0*
T0*1
_output_shapes
:�����������c
mul_2Mulsplit:output:2	sub_2:z:0*
T0*1
_output_shapes
:�����������`
add_2AddV2	add_1:z:0	mul_2:z:0*
T0*1
_output_shapes
:�����������Y
Square_3Square	add_2:z:0*
T0*1
_output_shapes
:�����������a
sub_3SubSquare_3:y:0	add_2:z:0*
T0*1
_output_shapes
:�����������c
mul_3Mulsplit:output:3	sub_3:z:0*
T0*1
_output_shapes
:�����������`
add_3AddV2	add_2:z:0	mul_3:z:0*
T0*1
_output_shapes
:�����������Y
Square_4Square	add_3:z:0*
T0*1
_output_shapes
:�����������a
sub_4SubSquare_4:y:0	add_3:z:0*
T0*1
_output_shapes
:�����������c
mul_4Mulsplit:output:4	sub_4:z:0*
T0*1
_output_shapes
:�����������`
add_4AddV2	add_3:z:0	mul_4:z:0*
T0*1
_output_shapes
:�����������Y
Square_5Square	add_4:z:0*
T0*1
_output_shapes
:�����������a
sub_5SubSquare_5:y:0	add_4:z:0*
T0*1
_output_shapes
:�����������c
mul_5Mulsplit:output:5	sub_5:z:0*
T0*1
_output_shapes
:�����������`
add_5AddV2	add_4:z:0	mul_5:z:0*
T0*1
_output_shapes
:�����������b
IdentityIdentity	add_5:z:0^NoOp*
T0*1
_output_shapes
:������������

Identity_1Identity*conv2d_48/StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp"^conv2d_42/StatefulPartitionedCall"^conv2d_43/StatefulPartitionedCall"^conv2d_44/StatefulPartitionedCall"^conv2d_45/StatefulPartitionedCall"^conv2d_46/StatefulPartitionedCall"^conv2d_47/StatefulPartitionedCall"^conv2d_48/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:�����������: : : : : : : : : : : : : : 2F
!conv2d_42/StatefulPartitionedCall!conv2d_42/StatefulPartitionedCall2F
!conv2d_43/StatefulPartitionedCall!conv2d_43/StatefulPartitionedCall2F
!conv2d_44/StatefulPartitionedCall!conv2d_44/StatefulPartitionedCall2F
!conv2d_45/StatefulPartitionedCall!conv2d_45/StatefulPartitionedCall2F
!conv2d_46/StatefulPartitionedCall!conv2d_46/StatefulPartitionedCall2F
!conv2d_47/StatefulPartitionedCall!conv2d_47/StatefulPartitionedCall2F
!conv2d_48/StatefulPartitionedCall!conv2d_48/StatefulPartitionedCall:Z V
1
_output_shapes
:�����������
!
_user_specified_name	input_1
�
�
E__inference_conv2d_42_layer_call_and_return_conditional_losses_578594

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
__inference_test_step_513315

inputsJ
0dce_net_conv2d_42_conv2d_readvariableop_resource: ?
1dce_net_conv2d_42_biasadd_readvariableop_resource: J
0dce_net_conv2d_43_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_43_biasadd_readvariableop_resource: J
0dce_net_conv2d_44_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_44_biasadd_readvariableop_resource: J
0dce_net_conv2d_45_conv2d_readvariableop_resource:  ?
1dce_net_conv2d_45_biasadd_readvariableop_resource: J
0dce_net_conv2d_46_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_46_biasadd_readvariableop_resource: J
0dce_net_conv2d_47_conv2d_readvariableop_resource:@ ?
1dce_net_conv2d_47_biasadd_readvariableop_resource: J
0dce_net_conv2d_48_conv2d_readvariableop_resource:@?
1dce_net_conv2d_48_biasadd_readvariableop_resource:(
$spatialconsistencyloss_conv2d_filter*
&spatialconsistencyloss_conv2d_1_filter*
&spatialconsistencyloss_conv2d_2_filter*
&spatialconsistencyloss_conv2d_3_filter
identity

identity_1

identity_2

identity_3

identity_4��(DCE-net/conv2d_42/BiasAdd/ReadVariableOp�'DCE-net/conv2d_42/Conv2D/ReadVariableOp�(DCE-net/conv2d_43/BiasAdd/ReadVariableOp�'DCE-net/conv2d_43/Conv2D/ReadVariableOp�(DCE-net/conv2d_44/BiasAdd/ReadVariableOp�'DCE-net/conv2d_44/Conv2D/ReadVariableOp�(DCE-net/conv2d_45/BiasAdd/ReadVariableOp�'DCE-net/conv2d_45/Conv2D/ReadVariableOp�(DCE-net/conv2d_46/BiasAdd/ReadVariableOp�'DCE-net/conv2d_46/Conv2D/ReadVariableOp�(DCE-net/conv2d_47/BiasAdd/ReadVariableOp�'DCE-net/conv2d_47/Conv2D/ReadVariableOp�(DCE-net/conv2d_48/BiasAdd/ReadVariableOp�'DCE-net/conv2d_48/Conv2D/ReadVariableOp�
'DCE-net/conv2d_42/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_42_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/Conv2DConv2Dinputs/DCE-net/conv2d_42/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_42/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_42_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_42/BiasAddBiasAdd!DCE-net/conv2d_42/Conv2D:output:00DCE-net/conv2d_42/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_42/ReluRelu"DCE-net/conv2d_42/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_43/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_43_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_43/Conv2DConv2D$DCE-net/conv2d_42/Relu:activations:0/DCE-net/conv2d_43/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_43/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_43_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_43/BiasAddBiasAdd!DCE-net/conv2d_43/Conv2D:output:00DCE-net/conv2d_43/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_43/ReluRelu"DCE-net/conv2d_43/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_44/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_44_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_44/Conv2DConv2D$DCE-net/conv2d_43/Relu:activations:0/DCE-net/conv2d_44/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_44/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_44_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_44/BiasAddBiasAdd!DCE-net/conv2d_44/Conv2D:output:00DCE-net/conv2d_44/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_44/ReluRelu"DCE-net/conv2d_44/BiasAdd:output:0*
T0*(
_output_shapes
:�� �
'DCE-net/conv2d_45/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_45_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0�
DCE-net/conv2d_45/Conv2DConv2D$DCE-net/conv2d_44/Relu:activations:0/DCE-net/conv2d_45/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_45/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_45_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_45/BiasAddBiasAdd!DCE-net/conv2d_45/Conv2D:output:00DCE-net/conv2d_45/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_45/ReluRelu"DCE-net/conv2d_45/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_18/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_18/concatConcatV2$DCE-net/conv2d_44/Relu:activations:0$DCE-net/conv2d_45/Relu:activations:0+DCE-net/concatenate_18/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_46/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_46_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_46/Conv2DConv2D&DCE-net/concatenate_18/concat:output:0/DCE-net/conv2d_46/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_46/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_46_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_46/BiasAddBiasAdd!DCE-net/conv2d_46/Conv2D:output:00DCE-net/conv2d_46/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_46/ReluRelu"DCE-net/conv2d_46/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_19/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_19/concatConcatV2$DCE-net/conv2d_43/Relu:activations:0$DCE-net/conv2d_46/Relu:activations:0+DCE-net/concatenate_19/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_47/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_47_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
DCE-net/conv2d_47/Conv2DConv2D&DCE-net/concatenate_19/concat:output:0/DCE-net/conv2d_47/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� *
paddingSAME*
strides
�
(DCE-net/conv2d_47/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_47_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0�
DCE-net/conv2d_47/BiasAddBiasAdd!DCE-net/conv2d_47/Conv2D:output:00DCE-net/conv2d_47/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�� u
DCE-net/conv2d_47/ReluRelu"DCE-net/conv2d_47/BiasAdd:output:0*
T0*(
_output_shapes
:�� d
"DCE-net/concatenate_20/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
DCE-net/concatenate_20/concatConcatV2$DCE-net/conv2d_42/Relu:activations:0$DCE-net/conv2d_47/Relu:activations:0+DCE-net/concatenate_20/concat/axis:output:0*
N*
T0*(
_output_shapes
:��@�
'DCE-net/conv2d_48/Conv2D/ReadVariableOpReadVariableOp0dce_net_conv2d_48_conv2d_readvariableop_resource*&
_output_shapes
:@*
dtype0�
DCE-net/conv2d_48/Conv2DConv2D&DCE-net/concatenate_20/concat:output:0/DCE-net/conv2d_48/Conv2D/ReadVariableOp:value:0*
T0*(
_output_shapes
:��*
paddingSAME*
strides
�
(DCE-net/conv2d_48/BiasAdd/ReadVariableOpReadVariableOp1dce_net_conv2d_48_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
DCE-net/conv2d_48/BiasAddBiasAdd!DCE-net/conv2d_48/Conv2D:output:00DCE-net/conv2d_48/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:��u
DCE-net/conv2d_48/TanhTanh"DCE-net/conv2d_48/BiasAdd:output:0*
T0*(
_output_shapes
:��b
DCE-net/split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
DCE-net/splitSplit DCE-net/split/split_dim:output:0DCE-net/conv2d_48/Tanh:y:0*
T0*�
_output_shapesz
x:��:��:��:��:��:��*
	num_splitS
DCE-net/SquareSquareinputs*
T0*(
_output_shapes
:��a
DCE-net/subSubDCE-net/Square:y:0inputs*
T0*(
_output_shapes
:��n
DCE-net/mulMulDCE-net/split:output:0DCE-net/sub:z:0*
T0*(
_output_shapes
:��`
DCE-net/addAddV2inputsDCE-net/mul:z:0*
T0*(
_output_shapes
:��^
DCE-net/Square_1SquareDCE-net/add:z:0*
T0*(
_output_shapes
:��n
DCE-net/sub_1SubDCE-net/Square_1:y:0DCE-net/add:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_1MulDCE-net/split:output:1DCE-net/sub_1:z:0*
T0*(
_output_shapes
:��m
DCE-net/add_1AddV2DCE-net/add:z:0DCE-net/mul_1:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_2SquareDCE-net/add_1:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_2SubDCE-net/Square_2:y:0DCE-net/add_1:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_2MulDCE-net/split:output:2DCE-net/sub_2:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_2AddV2DCE-net/add_1:z:0DCE-net/mul_2:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_3SquareDCE-net/add_2:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_3SubDCE-net/Square_3:y:0DCE-net/add_2:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_3MulDCE-net/split:output:3DCE-net/sub_3:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_3AddV2DCE-net/add_2:z:0DCE-net/mul_3:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_4SquareDCE-net/add_3:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_4SubDCE-net/Square_4:y:0DCE-net/add_3:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_4MulDCE-net/split:output:4DCE-net/sub_4:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_4AddV2DCE-net/add_3:z:0DCE-net/mul_4:z:0*
T0*(
_output_shapes
:��`
DCE-net/Square_5SquareDCE-net/add_4:z:0*
T0*(
_output_shapes
:��p
DCE-net/sub_5SubDCE-net/Square_5:y:0DCE-net/add_4:z:0*
T0*(
_output_shapes
:��r
DCE-net/mul_5MulDCE-net/split:output:5DCE-net/sub_5:z:0*
T0*(
_output_shapes
:��o
DCE-net/add_5AddV2DCE-net/add_4:z:0DCE-net/mul_5:z:0*
T0*(
_output_shapes
:��x
-SpatialConsistencyLoss/Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/MeanMeaninputs6SpatialConsistencyLoss/Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(z
/SpatialConsistencyLoss/Mean_1/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
SpatialConsistencyLoss/Mean_1MeanDCE-net/add_5:z:08SpatialConsistencyLoss/Mean_1/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
 SpatialConsistencyLoss/AvgPool2DAvgPool$SpatialConsistencyLoss/Mean:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
"SpatialConsistencyLoss/AvgPool2D_1AvgPool&SpatialConsistencyLoss/Mean_1:output:0*
T0*'
_output_shapes
:`�*
ksize
*
paddingVALID*
strides
�
SpatialConsistencyLoss/Conv2DConv2D)SpatialConsistencyLoss/AvgPool2D:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_1Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_2Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_3Conv2D)SpatialConsistencyLoss/AvgPool2D:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_4Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0$spatialconsistencyloss_conv2d_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_5Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_1_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_6Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_2_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/Conv2D_7Conv2D+SpatialConsistencyLoss/AvgPool2D_1:output:0&spatialconsistencyloss_conv2d_3_filter*
T0*'
_output_shapes
:`�*
paddingSAME*
strides
�
SpatialConsistencyLoss/subSub&SpatialConsistencyLoss/Conv2D:output:0(SpatialConsistencyLoss/Conv2D_4:output:0*
T0*'
_output_shapes
:`�y
SpatialConsistencyLoss/SquareSquareSpatialConsistencyLoss/sub:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_1Sub(SpatialConsistencyLoss/Conv2D_1:output:0(SpatialConsistencyLoss/Conv2D_5:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_1Square SpatialConsistencyLoss/sub_1:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_2Sub(SpatialConsistencyLoss/Conv2D_2:output:0(SpatialConsistencyLoss/Conv2D_6:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_2Square SpatialConsistencyLoss/sub_2:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/sub_3Sub(SpatialConsistencyLoss/Conv2D_3:output:0(SpatialConsistencyLoss/Conv2D_7:output:0*
T0*'
_output_shapes
:`�}
SpatialConsistencyLoss/Square_3Square SpatialConsistencyLoss/sub_3:z:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/addAddV2!SpatialConsistencyLoss/Square:y:0#SpatialConsistencyLoss/Square_1:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_1AddV2SpatialConsistencyLoss/add:z:0#SpatialConsistencyLoss/Square_2:y:0*
T0*'
_output_shapes
:`��
SpatialConsistencyLoss/add_2AddV2 SpatialConsistencyLoss/add_1:z:0#SpatialConsistencyLoss/Square_3:y:0*
T0*'
_output_shapes
:`�u
SpatialConsistencyLoss/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
SpatialConsistencyLoss/Mean_2Mean SpatialConsistencyLoss/add_2:z:0%SpatialConsistencyLoss/Const:output:0*
T0*
_output_shapes
: o
*SpatialConsistencyLoss/weighted_loss/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(SpatialConsistencyLoss/weighted_loss/MulMul&SpatialConsistencyLoss/Mean_2:output:03SpatialConsistencyLoss/weighted_loss/Const:output:0*
T0*
_output_shapes
: k
)SpatialConsistencyLoss/weighted_loss/RankConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/startConst*
_output_shapes
: *
dtype0*
value	B : r
0SpatialConsistencyLoss/weighted_loss/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
*SpatialConsistencyLoss/weighted_loss/rangeRange9SpatialConsistencyLoss/weighted_loss/range/start:output:02SpatialConsistencyLoss/weighted_loss/Rank:output:09SpatialConsistencyLoss/weighted_loss/range/delta:output:0*
_output_shapes
: �
(SpatialConsistencyLoss/weighted_loss/SumSum,SpatialConsistencyLoss/weighted_loss/Mul:z:03SpatialConsistencyLoss/weighted_loss/range:output:0*
T0*
_output_shapes
: s
1SpatialConsistencyLoss/weighted_loss/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
6SpatialConsistencyLoss/weighted_loss/num_elements/CastCast:SpatialConsistencyLoss/weighted_loss/num_elements:output:0*

DstT0*

SrcT0*
_output_shapes
: m
+SpatialConsistencyLoss/weighted_loss/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/startConst*
_output_shapes
: *
dtype0*
value	B : t
2SpatialConsistencyLoss/weighted_loss/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
,SpatialConsistencyLoss/weighted_loss/range_1Range;SpatialConsistencyLoss/weighted_loss/range_1/start:output:04SpatialConsistencyLoss/weighted_loss/Rank_1:output:0;SpatialConsistencyLoss/weighted_loss/range_1/delta:output:0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/Sum_1Sum1SpatialConsistencyLoss/weighted_loss/Sum:output:05SpatialConsistencyLoss/weighted_loss/range_1:output:0*
T0*
_output_shapes
: �
*SpatialConsistencyLoss/weighted_loss/valueDivNoNan3SpatialConsistencyLoss/weighted_loss/Sum_1:output:0:SpatialConsistencyLoss/weighted_loss/num_elements/Cast:y:0*
T0*
_output_shapes
: J
mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?k
mulMulmul/x:output:0.SpatialConsistencyLoss/weighted_loss/value:z:0*
T0*
_output_shapes
: a
Mean/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
����������
MeanMeanDCE-net/add_5:z:0Mean/reduction_indices:output:0*
T0*(
_output_shapes
:��*
	keep_dims(�
	AvgPool2DAvgPoolMean:output:0*
T0*&
_output_shapes
: *
ksize
*
paddingVALID*
strides
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *��?_
subSubAvgPool2D:output:0sub/y:output:0*
T0*&
_output_shapes
: J
SquareSquaresub:z:0*
T0*&
_output_shapes
: ^
ConstConst*
_output_shapes
:*
dtype0*%
valueB"             K
Mean_1Mean
Square:y:0Const:output:0*
T0*
_output_shapes
: L
mul_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �AP
mul_1Mulmul_1/x:output:0Mean_1:output:0*
T0*
_output_shapes
: i
Mean_2/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
Mean_2MeanDCE-net/add_5:z:0!Mean_2/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(Z
split/split_dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
splitSplitsplit/split_dim:output:0Mean_2:output:0*
T0*J
_output_shapes8
6:::*
	num_split]
sub_1Subsplit:output:0split:output:1*
T0*&
_output_shapes
:N
Square_1Square	sub_1:z:0*
T0*&
_output_shapes
:]
sub_2Subsplit:output:0split:output:2*
T0*&
_output_shapes
:N
Square_2Square	sub_2:z:0*
T0*&
_output_shapes
:]
sub_3Subsplit:output:2split:output:1*
T0*&
_output_shapes
:N
Square_3Square	sub_3:z:0*
T0*&
_output_shapes
:Q
Square_4SquareSquare_1:y:0*
T0*&
_output_shapes
:Q
Square_5SquareSquare_2:y:0*
T0*&
_output_shapes
:Y
addAddV2Square_4:y:0Square_5:y:0*
T0*&
_output_shapes
:Q
Square_6SquareSquare_3:y:0*
T0*&
_output_shapes
:V
add_1AddV2add:z:0Square_6:y:0*
T0*&
_output_shapes
:H
SqrtSqrt	add_1:z:0*
T0*&
_output_shapes
:=
SqueezeSqueezeSqrt:y:0*
T0*
_output_shapes
: F
RankConst*
_output_shapes
: *
dtype0*
value	B : M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :c
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
: Q
Mean_3MeanSqueeze:output:0range:output:0*
T0*
_output_shapes
: L
mul_2/xConst*
_output_shapes
: *
dtype0*
valueB
 *   AP
mul_2Mulmul_2/x:output:0Mean_3:output:0*
T0*
_output_shapes
: ^
ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   �        ]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_2Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSliceShape_2:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_3Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSliceShape_3:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_4/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_4Substrided_slice_3:output:0sub_4/y:output:0*
T0*
_output_shapes
: `
Shape_4Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_4StridedSliceShape_4:output:0strided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
mul_3Mul	sub_4:z:0strided_slice_4:output:0*
T0*
_output_shapes
: `
Shape_5Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_5StridedSliceShape_5:output:0strided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
Shape_6Const*
_output_shapes
:*
dtype0*%
valueB"   �        _
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_6StridedSliceShape_6:output:0strided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskI
sub_5/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_5Substrided_slice_6:output:0sub_5/y:output:0*
T0*
_output_shapes
: R
mul_4Mulstrided_slice_5:output:0	sub_5:z:0*
T0*
_output_shapes
: T
CastCaststrided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_1Cast	mul_3:z:0*

DstT0*

SrcT0*
_output_shapes
: I
Cast_2Cast	mul_4:z:0*

DstT0*

SrcT0*
_output_shapes
: n
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_7StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_6/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_6Substrided_slice_1:output:0sub_6/y:output:0*
T0*
_output_shapes
: I
Const_1Const*
_output_shapes
: *
dtype0*
value	B : I
Const_2Const*
_output_shapes
: *
dtype0*
value	B :Y
strided_slice_8/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/2Const*
_output_shapes
: *
dtype0*
value	B : Y
strided_slice_8/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stackPack strided_slice_8/stack/0:output:0Const_1:output:0 strided_slice_8/stack/2:output:0 strided_slice_8/stack/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/2Const*
_output_shapes
: *
dtype0*
value	B : [
strided_slice_8/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_8/stack_1Pack"strided_slice_8/stack_1/0:output:0	sub_6:z:0"strided_slice_8/stack_1/2:output:0"strided_slice_8/stack_1/3:output:0*
N*
T0*
_output_shapes
:[
strided_slice_8/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/2Const*
_output_shapes
: *
dtype0*
value	B :[
strided_slice_8/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_8/stack_2Pack"strided_slice_8/stack_2/0:output:0Const_2:output:0"strided_slice_8/stack_2/2:output:0"strided_slice_8/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_8StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_masks
sub_7Substrided_slice_7:output:0strided_slice_8:output:0*
T0*(
_output_shapes
:��P
Square_7Square	sub_7:z:0*
T0*(
_output_shapes
:��`
Const_3Const*
_output_shapes
:*
dtype0*%
valueB"             K
SumSumSquare_7:y:0Const_3:output:0*
T0*
_output_shapes
: M
truedivRealDivSum:output:0
Cast_1:y:0*
T0*
_output_shapes
: n
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*%
valueB"               p
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*%
valueB"                p
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*%
valueB"            �
strided_slice_9StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskI
sub_8/yConst*
_output_shapes
: *
dtype0*
value	B :Y
sub_8Substrided_slice_2:output:0sub_8/y:output:0*
T0*
_output_shapes
: I
Const_4Const*
_output_shapes
: *
dtype0*
value	B : I
Const_5Const*
_output_shapes
: *
dtype0*
value	B :Z
strided_slice_10/stack/0Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Z
strided_slice_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stackPack!strided_slice_10/stack/0:output:0!strided_slice_10/stack/1:output:0Const_4:output:0!strided_slice_10/stack/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_1/0Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : \
strided_slice_10/stack_1/3Const*
_output_shapes
: *
dtype0*
value	B : �
strided_slice_10/stack_1Pack#strided_slice_10/stack_1/0:output:0#strided_slice_10/stack_1/1:output:0	sub_8:z:0#strided_slice_10/stack_1/3:output:0*
N*
T0*
_output_shapes
:\
strided_slice_10/stack_2/0Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/1Const*
_output_shapes
: *
dtype0*
value	B :\
strided_slice_10/stack_2/3Const*
_output_shapes
: *
dtype0*
value	B :�
strided_slice_10/stack_2Pack#strided_slice_10/stack_2/0:output:0#strided_slice_10/stack_2/1:output:0Const_5:output:0#strided_slice_10/stack_2/3:output:0*
N*
T0*
_output_shapes
:�
strided_slice_10StridedSliceDCE-net/conv2d_48/Tanh:y:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*(
_output_shapes
:��*

begin_mask*
end_maskt
sub_9Substrided_slice_9:output:0strided_slice_10:output:0*
T0*(
_output_shapes
:��P
Square_8Square	sub_9:z:0*
T0*(
_output_shapes
:��`
Const_6Const*
_output_shapes
:*
dtype0*%
valueB"             M
Sum_1SumSquare_8:y:0Const_6:output:0*
T0*
_output_shapes
: Q
	truediv_1RealDivSum_1:output:0
Cast_2:y:0*
T0*
_output_shapes
: K
add_2AddV2truediv:z:0truediv_1:z:0*
T0*
_output_shapes
: L
mul_5/xConst*
_output_shapes
: *
dtype0*
valueB
 *   @J
mul_5Mulmul_5/x:output:0	add_2:z:0*
T0*
_output_shapes
: J
	truediv_2RealDiv	mul_5:z:0Cast:y:0*
T0*
_output_shapes
: L
mul_6/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �CN
mul_6Mulmul_6/x:output:0truediv_2:z:0*
T0*
_output_shapes
: C
add_3AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes
: E
add_4AddV2	add_3:z:0	mul_2:z:0*
T0*
_output_shapes
: E
add_5AddV2	add_4:z:0	mul_6:z:0*
T0*
_output_shapes
: G
IdentityIdentity	mul_2:z:0^NoOp*
T0*
_output_shapes
: I

Identity_1Identity	mul_1:z:0^NoOp*
T0*
_output_shapes
: I

Identity_2Identity	mul_6:z:0^NoOp*
T0*
_output_shapes
: G

Identity_3Identitymul:z:0^NoOp*
T0*
_output_shapes
: I

Identity_4Identity	add_5:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp)^DCE-net/conv2d_42/BiasAdd/ReadVariableOp(^DCE-net/conv2d_42/Conv2D/ReadVariableOp)^DCE-net/conv2d_43/BiasAdd/ReadVariableOp(^DCE-net/conv2d_43/Conv2D/ReadVariableOp)^DCE-net/conv2d_44/BiasAdd/ReadVariableOp(^DCE-net/conv2d_44/Conv2D/ReadVariableOp)^DCE-net/conv2d_45/BiasAdd/ReadVariableOp(^DCE-net/conv2d_45/Conv2D/ReadVariableOp)^DCE-net/conv2d_46/BiasAdd/ReadVariableOp(^DCE-net/conv2d_46/Conv2D/ReadVariableOp)^DCE-net/conv2d_47/BiasAdd/ReadVariableOp(^DCE-net/conv2d_47/Conv2D/ReadVariableOp)^DCE-net/conv2d_48/BiasAdd/ReadVariableOp(^DCE-net/conv2d_48/Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*�
_input_shapesz
x:��: : : : : : : : : : : : : : ::::2T
(DCE-net/conv2d_42/BiasAdd/ReadVariableOp(DCE-net/conv2d_42/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_42/Conv2D/ReadVariableOp'DCE-net/conv2d_42/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_43/BiasAdd/ReadVariableOp(DCE-net/conv2d_43/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_43/Conv2D/ReadVariableOp'DCE-net/conv2d_43/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_44/BiasAdd/ReadVariableOp(DCE-net/conv2d_44/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_44/Conv2D/ReadVariableOp'DCE-net/conv2d_44/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_45/BiasAdd/ReadVariableOp(DCE-net/conv2d_45/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_45/Conv2D/ReadVariableOp'DCE-net/conv2d_45/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_46/BiasAdd/ReadVariableOp(DCE-net/conv2d_46/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_46/Conv2D/ReadVariableOp'DCE-net/conv2d_46/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_47/BiasAdd/ReadVariableOp(DCE-net/conv2d_47/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_47/Conv2D/ReadVariableOp'DCE-net/conv2d_47/Conv2D/ReadVariableOp2T
(DCE-net/conv2d_48/BiasAdd/ReadVariableOp(DCE-net/conv2d_48/BiasAdd/ReadVariableOp2R
'DCE-net/conv2d_48/Conv2D/ReadVariableOp'DCE-net/conv2d_48/Conv2D/ReadVariableOp:P L
(
_output_shapes
:��
 
_user_specified_nameinputs:,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
::,(
&
_output_shapes
:
�
�
E__inference_conv2d_42_layer_call_and_return_conditional_losses_579184

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_48_layer_call_fn_579332

inputs!
unknown:@
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_48_layer_call_and_return_conditional_losses_578723y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs
�
�
*__inference_conv2d_43_layer_call_fn_579193

inputs!
unknown:  
	unknown_0: 
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:����������� *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_conv2d_43_layer_call_and_return_conditional_losses_578611y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:����������� `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:����������� : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:����������� 
 
_user_specified_nameinputs
�
[
/__inference_concatenate_20_layer_call_fn_579316
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_20_layer_call_and_return_conditional_losses_578710j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
�
[
/__inference_concatenate_18_layer_call_fn_579250
inputs_0
inputs_1
identity�
PartitionedCallPartitionedCallinputs_0inputs_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *S
fNRL
J__inference_concatenate_18_layer_call_and_return_conditional_losses_578658j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������@"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::����������� :����������� :[ W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_0:[W
1
_output_shapes
:����������� 
"
_user_specified_name
inputs_1
�
�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_579310

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:����������� Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:����������� k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:����������� w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:�����������@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:�����������@
 
_user_specified_nameinputs<
#__inference_internal_grad_fn_579533CustomGradient-514686<
#__inference_internal_grad_fn_579621CustomGradient-513953"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
E
input_1:
serving_default_input_1:0�����������F
output_1:
StatefulPartitionedCall:0�����������F
output_2:
StatefulPartitionedCall:1�����������tensorflow/serving/predict:��
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
		conv2
	
conv3
	conv4

concat_3_4
	conv5

concat_2_5
	conv6

concat_1_6

a_map_conv
	optimizer
loss
loss_weights
	test_step

train_step

signatures"
_tf_keras_model
�
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13"
trackable_list_wrapper
�
0
1
2
3
4
5
6
7
 8
!9
"10
#11
$12
%13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
&non_trainable_variables

'layers
(metrics
)layer_regularization_losses
*layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
+trace_0
,trace_12�
(__inference_DCE-net_layer_call_fn_578795
(__inference_DCE-net_layer_call_fn_579073�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z+trace_0z,trace_1
�
-trace_0
.trace_12�
C__inference_DCE-net_layer_call_and_return_conditional_losses_579164
C__inference_DCE-net_layer_call_and_return_conditional_losses_578995�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z-trace_0z.trace_1
�B�
!__inference__wrapped_model_578576input_1"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
/	variables
0trainable_variables
1regularization_losses
2	keras_api
3__call__
*4&call_and_return_all_conditional_losses

kernel
bias
 5_jit_compiled_convolution_op"
_tf_keras_layer
�
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

kernel
bias
 <_jit_compiled_convolution_op"
_tf_keras_layer
�
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

kernel
bias
 C_jit_compiled_convolution_op"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

kernel
bias
 J_jit_compiled_convolution_op"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses"
_tf_keras_layer
�
Q	variables
Rtrainable_variables
Sregularization_losses
T	keras_api
U__call__
*V&call_and_return_all_conditional_losses

 kernel
!bias
 W_jit_compiled_convolution_op"
_tf_keras_layer
�
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\__call__
*]&call_and_return_all_conditional_losses"
_tf_keras_layer
�
^	variables
_trainable_variables
`regularization_losses
a	keras_api
b__call__
*c&call_and_return_all_conditional_losses

"kernel
#bias
 d_jit_compiled_convolution_op"
_tf_keras_layer
�
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses"
_tf_keras_layer
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

$kernel
%bias
 q_jit_compiled_convolution_op"
_tf_keras_layer
�
riter

sbeta_1

tbeta_2
	udecay
vlearning_ratem�m�m�m�m�m�m�m� m�!m�"m�#m�$m�%m�v�v�v�v�v�v�v�v� v�!v�"v�#v�$v�%v�"
	optimizer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
�
wtrace_0
xtrace_12�
__inference_test_step_513032
__inference_test_step_513315�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zwtrace_0zxtrace_1
�
ytrace_0
ztrace_12�
__inference_train_step_514044
__inference_train_step_514777�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zytrace_0zztrace_1
,
{serving_default"
signature_map
2:0 2DCE-net/conv2d_42/kernel
$:" 2DCE-net/conv2d_42/bias
2:0  2DCE-net/conv2d_43/kernel
$:" 2DCE-net/conv2d_43/bias
2:0  2DCE-net/conv2d_44/kernel
$:" 2DCE-net/conv2d_44/bias
2:0  2DCE-net/conv2d_45/kernel
$:" 2DCE-net/conv2d_45/bias
2:0@ 2DCE-net/conv2d_46/kernel
$:" 2DCE-net/conv2d_46/bias
2:0@ 2DCE-net/conv2d_47/kernel
$:" 2DCE-net/conv2d_47/bias
2:0@2DCE-net/conv2d_48/kernel
$:"2DCE-net/conv2d_48/bias
 "
trackable_list_wrapper
f
0
	1

2
3
4
5
6
7
8
9"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
(__inference_DCE-net_layer_call_fn_578795input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
(__inference_DCE-net_layer_call_fn_579073inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_DCE-net_layer_call_and_return_conditional_losses_579164inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
C__inference_DCE-net_layer_call_and_return_conditional_losses_578995input_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
�layer_metrics
/	variables
0trainable_variables
1regularization_losses
3__call__
*4&call_and_return_all_conditional_losses
&4"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_42_layer_call_fn_579173�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_42_layer_call_and_return_conditional_losses_579184�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_43_layer_call_fn_579193�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_43_layer_call_and_return_conditional_losses_579204�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_44_layer_call_fn_579213�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_44_layer_call_and_return_conditional_losses_579224�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_45_layer_call_fn_579233�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_579244�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_concatenate_18_layer_call_fn_579250�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_concatenate_18_layer_call_and_return_conditional_losses_579257�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Q	variables
Rtrainable_variables
Sregularization_losses
U__call__
*V&call_and_return_all_conditional_losses
&V"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_46_layer_call_fn_579266�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_579277�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
\__call__
*]&call_and_return_all_conditional_losses
&]"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_concatenate_19_layer_call_fn_579283�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_concatenate_19_layer_call_and_return_conditional_losses_579290�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
^	variables
_trainable_variables
`regularization_losses
b__call__
*c&call_and_return_all_conditional_losses
&c"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_47_layer_call_fn_579299�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_579310�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
/__inference_concatenate_20_layer_call_fn_579316�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
J__inference_concatenate_20_layer_call_and_return_conditional_losses_579323�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_48_layer_call_fn_579332�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_579343�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
�
�
capture_14
�
capture_15
�
capture_16
�
capture_17B�
__inference_test_step_513032inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_14z�
capture_15z�
capture_16z�
capture_17
�
�
capture_14
�
capture_15
�
capture_16
�
capture_17B�
__inference_test_step_513315inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_14z�
capture_15z�
capture_16z�
capture_17
�
�
capture_14
�
capture_15
�
capture_16
�
capture_17B�
__inference_train_step_514044inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_14z�
capture_15z�
capture_16z�
capture_17
�
�
capture_14
�
capture_15
�
capture_16
�
capture_17B�
__inference_train_step_514777inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�
capture_14z�
capture_15z�
capture_16z�
capture_17
�B�
$__inference_signature_wrapper_579038input_1"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_42_layer_call_fn_579173inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_42_layer_call_and_return_conditional_losses_579184inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_43_layer_call_fn_579193inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_43_layer_call_and_return_conditional_losses_579204inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_44_layer_call_fn_579213inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_44_layer_call_and_return_conditional_losses_579224inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_45_layer_call_fn_579233inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_45_layer_call_and_return_conditional_losses_579244inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_concatenate_18_layer_call_fn_579250inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_concatenate_18_layer_call_and_return_conditional_losses_579257inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_46_layer_call_fn_579266inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_46_layer_call_and_return_conditional_losses_579277inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_concatenate_19_layer_call_fn_579283inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_concatenate_19_layer_call_and_return_conditional_losses_579290inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_47_layer_call_fn_579299inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_47_layer_call_and_return_conditional_losses_579310inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
/__inference_concatenate_20_layer_call_fn_579316inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
J__inference_concatenate_20_layer_call_and_return_conditional_losses_579323inputs_0inputs_1"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_48_layer_call_fn_579332inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_conv2d_48_layer_call_and_return_conditional_losses_579343inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
!J	
Const_3jtf.TrackableConstant
!J	
Const_2jtf.TrackableConstant
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
7:5 2Adam/DCE-net/conv2d_42/kernel/m
):' 2Adam/DCE-net/conv2d_42/bias/m
7:5  2Adam/DCE-net/conv2d_43/kernel/m
):' 2Adam/DCE-net/conv2d_43/bias/m
7:5  2Adam/DCE-net/conv2d_44/kernel/m
):' 2Adam/DCE-net/conv2d_44/bias/m
7:5  2Adam/DCE-net/conv2d_45/kernel/m
):' 2Adam/DCE-net/conv2d_45/bias/m
7:5@ 2Adam/DCE-net/conv2d_46/kernel/m
):' 2Adam/DCE-net/conv2d_46/bias/m
7:5@ 2Adam/DCE-net/conv2d_47/kernel/m
):' 2Adam/DCE-net/conv2d_47/bias/m
7:5@2Adam/DCE-net/conv2d_48/kernel/m
):'2Adam/DCE-net/conv2d_48/bias/m
7:5 2Adam/DCE-net/conv2d_42/kernel/v
):' 2Adam/DCE-net/conv2d_42/bias/v
7:5  2Adam/DCE-net/conv2d_43/kernel/v
):' 2Adam/DCE-net/conv2d_43/bias/v
7:5  2Adam/DCE-net/conv2d_44/kernel/v
):' 2Adam/DCE-net/conv2d_44/bias/v
7:5  2Adam/DCE-net/conv2d_45/kernel/v
):' 2Adam/DCE-net/conv2d_45/bias/v
7:5@ 2Adam/DCE-net/conv2d_46/kernel/v
):' 2Adam/DCE-net/conv2d_46/bias/v
7:5@ 2Adam/DCE-net/conv2d_47/kernel/v
):' 2Adam/DCE-net/conv2d_47/bias/v
7:5@2Adam/DCE-net/conv2d_48/kernel/v
):'2Adam/DCE-net/conv2d_48/bias/v�
C__inference_DCE-net_layer_call_and_return_conditional_losses_578995� !"#$%:�7
0�-
+�(
input_1�����������
� "m�j
c�`
.�+

tensor_0_0�����������
.�+

tensor_0_1�����������
� �
C__inference_DCE-net_layer_call_and_return_conditional_losses_579164� !"#$%9�6
/�,
*�'
inputs�����������
� "m�j
c�`
.�+

tensor_0_0�����������
.�+

tensor_0_1�����������
� �
(__inference_DCE-net_layer_call_fn_578795� !"#$%:�7
0�-
+�(
input_1�����������
� "_�\
,�)
tensor_0�����������
,�)
tensor_1������������
(__inference_DCE-net_layer_call_fn_579073� !"#$%9�6
/�,
*�'
inputs�����������
� "_�\
,�)
tensor_0�����������
,�)
tensor_1������������
!__inference__wrapped_model_578576� !"#$%:�7
0�-
+�(
input_1�����������
� "w�t
8
output_1,�)
output_1�����������
8
output_2,�)
output_2������������
J__inference_concatenate_18_layer_call_and_return_conditional_losses_579257�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "6�3
,�)
tensor_0�����������@
� �
/__inference_concatenate_18_layer_call_fn_579250�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "+�(
unknown�����������@�
J__inference_concatenate_19_layer_call_and_return_conditional_losses_579290�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "6�3
,�)
tensor_0�����������@
� �
/__inference_concatenate_19_layer_call_fn_579283�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "+�(
unknown�����������@�
J__inference_concatenate_20_layer_call_and_return_conditional_losses_579323�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "6�3
,�)
tensor_0�����������@
� �
/__inference_concatenate_20_layer_call_fn_579316�n�k
d�a
_�\
,�)
inputs_0����������� 
,�)
inputs_1����������� 
� "+�(
unknown�����������@�
E__inference_conv2d_42_layer_call_and_return_conditional_losses_579184w9�6
/�,
*�'
inputs�����������
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_42_layer_call_fn_579173l9�6
/�,
*�'
inputs�����������
� "+�(
unknown����������� �
E__inference_conv2d_43_layer_call_and_return_conditional_losses_579204w9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_43_layer_call_fn_579193l9�6
/�,
*�'
inputs����������� 
� "+�(
unknown����������� �
E__inference_conv2d_44_layer_call_and_return_conditional_losses_579224w9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_44_layer_call_fn_579213l9�6
/�,
*�'
inputs����������� 
� "+�(
unknown����������� �
E__inference_conv2d_45_layer_call_and_return_conditional_losses_579244w9�6
/�,
*�'
inputs����������� 
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_45_layer_call_fn_579233l9�6
/�,
*�'
inputs����������� 
� "+�(
unknown����������� �
E__inference_conv2d_46_layer_call_and_return_conditional_losses_579277w !9�6
/�,
*�'
inputs�����������@
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_46_layer_call_fn_579266l !9�6
/�,
*�'
inputs�����������@
� "+�(
unknown����������� �
E__inference_conv2d_47_layer_call_and_return_conditional_losses_579310w"#9�6
/�,
*�'
inputs�����������@
� "6�3
,�)
tensor_0����������� 
� �
*__inference_conv2d_47_layer_call_fn_579299l"#9�6
/�,
*�'
inputs�����������@
� "+�(
unknown����������� �
E__inference_conv2d_48_layer_call_and_return_conditional_losses_579343w$%9�6
/�,
*�'
inputs�����������@
� "6�3
,�)
tensor_0�����������
� �
*__inference_conv2d_48_layer_call_fn_579332l$%9�6
/�,
*�'
inputs�����������@
� "+�(
unknown������������
#__inference_internal_grad_fn_579533����
���

 
'�$
result_grads_0 
�
result_grads_1 
'�$
result_grads_2  
�
result_grads_3 
'�$
result_grads_4  
�
result_grads_5 
'�$
result_grads_6  
�
result_grads_7 
'�$
result_grads_8@ 
�
result_grads_9 
(�%
result_grads_10@ 
�
result_grads_11 
(�%
result_grads_12@
�
result_grads_13
(�%
result_grads_14 
�
result_grads_15 
(�%
result_grads_16  
�
result_grads_17 
(�%
result_grads_18  
�
result_grads_19 
(�%
result_grads_20  
�
result_grads_21 
(�%
result_grads_22@ 
�
result_grads_23 
(�%
result_grads_24@ 
�
result_grads_25 
(�%
result_grads_26@
�
result_grads_27
� "���

 

 

 

 

 

 

 

 

 

 

 

 

 

 
"�
	tensor_14 
�
	tensor_15 
"�
	tensor_16  
�
	tensor_17 
"�
	tensor_18  
�
	tensor_19 
"�
	tensor_20  
�
	tensor_21 
"�
	tensor_22@ 
�
	tensor_23 
"�
	tensor_24@ 
�
	tensor_25 
"�
	tensor_26@
�
	tensor_27�
#__inference_internal_grad_fn_579621����
���

 
'�$
result_grads_0 
�
result_grads_1 
'�$
result_grads_2  
�
result_grads_3 
'�$
result_grads_4  
�
result_grads_5 
'�$
result_grads_6  
�
result_grads_7 
'�$
result_grads_8@ 
�
result_grads_9 
(�%
result_grads_10@ 
�
result_grads_11 
(�%
result_grads_12@
�
result_grads_13
(�%
result_grads_14 
�
result_grads_15 
(�%
result_grads_16  
�
result_grads_17 
(�%
result_grads_18  
�
result_grads_19 
(�%
result_grads_20  
�
result_grads_21 
(�%
result_grads_22@ 
�
result_grads_23 
(�%
result_grads_24@ 
�
result_grads_25 
(�%
result_grads_26@
�
result_grads_27
� "���

 

 

 

 

 

 

 

 

 

 

 

 

 

 
"�
	tensor_14 
�
	tensor_15 
"�
	tensor_16  
�
	tensor_17 
"�
	tensor_18  
�
	tensor_19 
"�
	tensor_20  
�
	tensor_21 
"�
	tensor_22@ 
�
	tensor_23 
"�
	tensor_24@ 
�
	tensor_25 
"�
	tensor_26@
�
	tensor_27�
$__inference_signature_wrapper_579038� !"#$%E�B
� 
;�8
6
input_1+�(
input_1�����������"w�t
8
output_1,�)
output_1�����������
8
output_2,�)
output_2������������
__inference_test_step_513032� !"#$%����0�-
&�#
!�
inputs��
� "���
5
color_constancy_loss�
color_constancy_loss 
7
exposure_control_loss�
exposure_control_loss 
E
illumination_smoothness_loss%�"
illumination_smoothness_loss 
=
spatial_consistency_loss!�
spatial_consistency_loss 
!

total_loss�

total_loss �
__inference_test_step_513315� !"#$%����0�-
&�#
!�
inputs��
� "���
5
color_constancy_loss�
color_constancy_loss 
7
exposure_control_loss�
exposure_control_loss 
E
illumination_smoothness_loss%�"
illumination_smoothness_loss 
=
spatial_consistency_loss!�
spatial_consistency_loss 
!

total_loss�

total_loss �
__inference_train_step_514044�R !"#$%����vrst����������������������������0�-
&�#
!�
inputs��
� "���
5
color_constancy_loss�
color_constancy_loss 
7
exposure_control_loss�
exposure_control_loss 
E
illumination_smoothness_loss%�"
illumination_smoothness_loss 
=
spatial_consistency_loss!�
spatial_consistency_loss 
!

total_loss�

total_loss �
__inference_train_step_514777�R !"#$%����vrst����������������������������0�-
&�#
!�
inputs��
� "���
5
color_constancy_loss�
color_constancy_loss 
7
exposure_control_loss�
exposure_control_loss 
E
illumination_smoothness_loss%�"
illumination_smoothness_loss 
=
spatial_consistency_loss!�
spatial_consistency_loss 
!

total_loss�

total_loss 