éà+
Í
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
³
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨

StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68¡ï*
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
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

lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x**
shared_namelstm_1/lstm_cell_1/kernel

-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes

:x*
dtype0
¢
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel

7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel*
_output_shapes

:x*
dtype0

lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes
:x*
dtype0
z
lstm_1/VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namelstm_1/Variable
s
#lstm_1/Variable/Read/ReadVariableOpReadVariableOplstm_1/Variable*
_output_shapes

:*
dtype0
~
lstm_1/Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*"
shared_namelstm_1/Variable_1
w
%lstm_1/Variable_1/Read/ReadVariableOpReadVariableOplstm_1/Variable_1*
_output_shapes

:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m

4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes

:x*
dtype0
°
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
©
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m*
_output_shapes

:x*
dtype0

Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m

2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes
:x*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v

4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes

:x*
dtype0
°
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:x*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
©
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v*
_output_shapes

:x*
dtype0

Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:x*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v

2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes
:x*
dtype0

NoOpNoOp
¦*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*á)
value×)BÔ) BÍ)

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

iter

beta_1

beta_2
	 decay
!learning_ratemJmK"mL#mM$mNvOvP"vQ#vR$vS*
'
"0
#1
$2
3
4*
'
"0
#1
$2
3
4*
* 
°
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*
* 
* 
* 

*serving_default* 
ã
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses*
* 

"0
#1
$2*

"0
#1
$2*
* 


3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
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
YS
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

>0*
* 
* 
* 
* 

"0
#1
$2*

"0
#1
$2*
* 

?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
* 

D0
E1*
* 

0*
* 
* 
* 
* 
* 
* 
* 
* 
8
	Ftotal
	Gcount
H	variables
I	keras_api*
* 
* 
* 
* 
* 
ke
VARIABLE_VALUElstm_1/VariableBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUElstm_1/Variable_1Blayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

H	variables*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
u
serving_default_lstm_1_inputPlaceholder*"
_output_shapes
:*
dtype0*
shape:
Õ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_1_inputlstm_1/Variablelstm_1/Variable_1lstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_178667
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
µ

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp#lstm_1/Variable/Read/ReadVariableOp%lstm_1/Variable_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpConst*%
Tin
2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_180515
Ð
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_1/Variablelstm_1/Variable_1totalcountAdam/dense_1/kernel/mAdam/dense_1/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/mAdam/dense_1/kernel/vAdam/dense_1/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v*$
Tin
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_180597þ)
ð

H__inference_sequential_1_layer_call_and_return_conditional_losses_177159

inputs
lstm_1_177131:
lstm_1_177133:
lstm_1_177135:x
lstm_1_177137:x
lstm_1_177139:x 
dense_1_177153:
dense_1_177155:
identity¢dense_1/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_177131lstm_1_177133lstm_1_177135lstm_1_177137lstm_1_177139*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177130
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_177153dense_1_177155*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177152n
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ë
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_176692

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7::ÿÿÿÿÿÿÿÿÿ::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_176421
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
J

'__forward_gpu_lstm_with_fallback_177127

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_ccdc6c56-501f-4252-97d6-cad00455c0fe*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_176953_177128*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
¶J

'__forward_gpu_lstm_with_fallback_179560

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_1d5ef544-f8a1-4149-8eec-d2a28324bac3*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_179387_179561*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
	
­
-__inference_sequential_1_layer_call_fn_177176
lstm_1_input
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177159f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
è>
Ì
)__inference_gpu_lstm_with_fallback_177444

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0f34aaef-7458-43c5-94de-45fc5002666a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
J

'__forward_gpu_lstm_with_fallback_180398

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0829c262-f6f5-4bd8-be74-ae0aa5984ffb*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_180224_180399*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_176953_177128
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_ccdc6c56-501f-4252-97d6-cad00455c0fe*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_177127*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
§
-__inference_sequential_1_layer_call_fn_177777

inputs
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177159f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
è>
Ì
)__inference_gpu_lstm_with_fallback_175653

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_9f47f549-9556-40cb-9f08-acde5147a7a8*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
,
®
!__inference__wrapped_model_175837
lstm_1_inputB
0sequential_1_lstm_1_read_readvariableop_resource:D
2sequential_1_lstm_1_read_1_readvariableop_resource:D
2sequential_1_lstm_1_read_2_readvariableop_resource:xD
2sequential_1_lstm_1_read_3_readvariableop_resource:x@
2sequential_1_lstm_1_read_4_readvariableop_resource:xE
3sequential_1_dense_1_matmul_readvariableop_resource:B
4sequential_1_dense_1_biasadd_readvariableop_resource:
identity¢+sequential_1/dense_1/BiasAdd/ReadVariableOp¢*sequential_1/dense_1/MatMul/ReadVariableOp¢$sequential_1/lstm_1/AssignVariableOp¢&sequential_1/lstm_1/AssignVariableOp_1¢'sequential_1/lstm_1/Read/ReadVariableOp¢)sequential_1/lstm_1/Read_1/ReadVariableOp¢)sequential_1/lstm_1/Read_2/ReadVariableOp¢)sequential_1/lstm_1/Read_3/ReadVariableOp¢)sequential_1/lstm_1/Read_4/ReadVariableOp
'sequential_1/lstm_1/Read/ReadVariableOpReadVariableOp0sequential_1_lstm_1_read_readvariableop_resource*
_output_shapes

:*
dtype0
sequential_1/lstm_1/IdentityIdentity/sequential_1/lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:
)sequential_1/lstm_1/Read_1/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_1_readvariableop_resource*
_output_shapes

:*
dtype0
sequential_1/lstm_1/Identity_1Identity1sequential_1/lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
)sequential_1/lstm_1/Read_2/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_2_readvariableop_resource*
_output_shapes

:x*
dtype0
sequential_1/lstm_1/Identity_2Identity1sequential_1/lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:x
)sequential_1/lstm_1/Read_3/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_3_readvariableop_resource*
_output_shapes

:x*
dtype0
sequential_1/lstm_1/Identity_3Identity1sequential_1/lstm_1/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:x
)sequential_1/lstm_1/Read_4/ReadVariableOpReadVariableOp2sequential_1_lstm_1_read_4_readvariableop_resource*
_output_shapes
:x*
dtype0
sequential_1/lstm_1/Identity_4Identity1sequential_1/lstm_1/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
#sequential_1/lstm_1/PartitionedCallPartitionedCalllstm_1_input%sequential_1/lstm_1/Identity:output:0'sequential_1/lstm_1/Identity_1:output:0'sequential_1/lstm_1/Identity_2:output:0'sequential_1/lstm_1/Identity_3:output:0'sequential_1/lstm_1/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_175559å
$sequential_1/lstm_1/AssignVariableOpAssignVariableOp0sequential_1_lstm_1_read_readvariableop_resource,sequential_1/lstm_1/PartitionedCall:output:2(^sequential_1/lstm_1/Read/ReadVariableOp*
_output_shapes
 *
dtype0ë
&sequential_1/lstm_1/AssignVariableOp_1AssignVariableOp2sequential_1_lstm_1_read_1_readvariableop_resource,sequential_1/lstm_1/PartitionedCall:output:3*^sequential_1/lstm_1/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0
*sequential_1/dense_1/MatMul/ReadVariableOpReadVariableOp3sequential_1_dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0°
sequential_1/dense_1/MatMulMatMul,sequential_1/lstm_1/PartitionedCall:output:02sequential_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
+sequential_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential_1/dense_1/BiasAddBiasAdd%sequential_1/dense_1/MatMul:product:03sequential_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:k
IdentityIdentity%sequential_1/dense_1/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Ë
NoOpNoOp,^sequential_1/dense_1/BiasAdd/ReadVariableOp+^sequential_1/dense_1/MatMul/ReadVariableOp%^sequential_1/lstm_1/AssignVariableOp'^sequential_1/lstm_1/AssignVariableOp_1(^sequential_1/lstm_1/Read/ReadVariableOp*^sequential_1/lstm_1/Read_1/ReadVariableOp*^sequential_1/lstm_1/Read_2/ReadVariableOp*^sequential_1/lstm_1/Read_3/ReadVariableOp*^sequential_1/lstm_1/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2Z
+sequential_1/dense_1/BiasAdd/ReadVariableOp+sequential_1/dense_1/BiasAdd/ReadVariableOp2X
*sequential_1/dense_1/MatMul/ReadVariableOp*sequential_1/dense_1/MatMul/ReadVariableOp2L
$sequential_1/lstm_1/AssignVariableOp$sequential_1/lstm_1/AssignVariableOp2P
&sequential_1/lstm_1/AssignVariableOp_1&sequential_1/lstm_1/AssignVariableOp_12R
'sequential_1/lstm_1/Read/ReadVariableOp'sequential_1/lstm_1/Read/ReadVariableOp2V
)sequential_1/lstm_1/Read_1/ReadVariableOp)sequential_1/lstm_1/Read_1/ReadVariableOp2V
)sequential_1/lstm_1/Read_2/ReadVariableOp)sequential_1/lstm_1/Read_2/ReadVariableOp2V
)sequential_1/lstm_1/Read_3/ReadVariableOp)sequential_1/lstm_1/Read_3/ReadVariableOp2V
)sequential_1/lstm_1/Read_4/ReadVariableOp)sequential_1/lstm_1/Read_4/ReadVariableOp:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
#
ÿ
H__inference_sequential_1_layer_call_and_return_conditional_losses_178221

inputs5
#lstm_1_read_readvariableop_resource:7
%lstm_1_read_1_readvariableop_resource:7
%lstm_1_read_2_readvariableop_resource:x7
%lstm_1_read_3_readvariableop_resource:x3
%lstm_1_read_4_readvariableop_resource:x8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢lstm_1/AssignVariableOp¢lstm_1/AssignVariableOp_1¢lstm_1/Read/ReadVariableOp¢lstm_1/Read_1/ReadVariableOp¢lstm_1/Read_2/ReadVariableOp¢lstm_1/Read_3/ReadVariableOp¢lstm_1/Read_4/ReadVariableOp~
lstm_1/Read/ReadVariableOpReadVariableOp#lstm_1_read_readvariableop_resource*
_output_shapes

:*
dtype0h
lstm_1/IdentityIdentity"lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:
lstm_1/Read_1/ReadVariableOpReadVariableOp%lstm_1_read_1_readvariableop_resource*
_output_shapes

:*
dtype0l
lstm_1/Identity_1Identity$lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
lstm_1/Read_2/ReadVariableOpReadVariableOp%lstm_1_read_2_readvariableop_resource*
_output_shapes

:x*
dtype0l
lstm_1/Identity_2Identity$lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:x
lstm_1/Read_3/ReadVariableOpReadVariableOp%lstm_1_read_3_readvariableop_resource*
_output_shapes

:x*
dtype0l
lstm_1/Identity_3Identity$lstm_1/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:x~
lstm_1/Read_4/ReadVariableOpReadVariableOp%lstm_1_read_4_readvariableop_resource*
_output_shapes
:x*
dtype0h
lstm_1/Identity_4Identity$lstm_1/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:xÀ
lstm_1/PartitionedCallPartitionedCallinputslstm_1/Identity:output:0lstm_1/Identity_1:output:0lstm_1/Identity_2:output:0lstm_1/Identity_3:output:0lstm_1/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_177943±
lstm_1/AssignVariableOpAssignVariableOp#lstm_1_read_readvariableop_resourcelstm_1/PartitionedCall:output:2^lstm_1/Read/ReadVariableOp*
_output_shapes
 *
dtype0·
lstm_1/AssignVariableOp_1AssignVariableOp%lstm_1_read_1_readvariableop_resourcelstm_1/PartitionedCall:output:3^lstm_1/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMullstm_1/PartitionedCall:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:^
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Ö
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^lstm_1/AssignVariableOp^lstm_1/AssignVariableOp_1^lstm_1/Read/ReadVariableOp^lstm_1/Read_1/ReadVariableOp^lstm_1/Read_2/ReadVariableOp^lstm_1/Read_3/ReadVariableOp^lstm_1/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp22
lstm_1/AssignVariableOplstm_1/AssignVariableOp26
lstm_1/AssignVariableOp_1lstm_1/AssignVariableOp_128
lstm_1/Read/ReadVariableOplstm_1/Read/ReadVariableOp2<
lstm_1/Read_1/ReadVariableOplstm_1/Read_1/ReadVariableOp2<
lstm_1/Read_2/ReadVariableOplstm_1/Read_2/ReadVariableOp2<
lstm_1/Read_3/ReadVariableOplstm_1/Read_3/ReadVariableOp2<
lstm_1/Read_4/ReadVariableOplstm_1/Read_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
?
Ì
)__inference_gpu_lstm_with_fallback_176082

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_90495126-0e82-4fdd-8ebb-764d70fa04e6*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
	
ô
C__inference_dense_1_layer_call_and_return_conditional_losses_177152

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
î&
Ï
while_body_175474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
¤
ë
'__inference_lstm_1_layer_call_fn_178727

inputs
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177622f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
	
­
-__inference_sequential_1_layer_call_fn_177712
lstm_1_input
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177676f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
	
ô
C__inference_dense_1_layer_call_and_return_conditional_losses_180420

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
î&
Ï
while_body_176773
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
í
Á
while_cond_177264
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_177264___redundant_placeholder04
0while_while_cond_177264___redundant_placeholder14
0while_while_cond_177264___redundant_placeholder24
0while_while_cond_177264___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
î&
Ï
while_body_178283
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
?
Ì
)__inference_gpu_lstm_with_fallback_179386

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_1d5ef544-f8a1-4149-8eec-d2a28324bac3*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
¶J

'__forward_gpu_lstm_with_fallback_179142

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_44c7c925-2680-4cb7-86ba-021bd225aadd*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_178969_179143*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
Ñ
÷
B__inference_lstm_1_layer_call_and_return_conditional_losses_179145
inputs_0.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x¡
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7::ÿÿÿÿÿÿÿÿÿ::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_178874
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í
Á
while_cond_176772
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_176772___redundant_placeholder04
0while_while_cond_176772___redundant_placeholder14
0while_while_cond_176772___redundant_placeholder24
0while_while_cond_176772___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
î&
Ï
while_body_178789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
è>
Ì
)__inference_gpu_lstm_with_fallback_180223

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0829c262-f6f5-4bd8-be74-ae0aa5984ffb*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
ä7
À
 __inference_standard_lstm_176858

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_176773*
condR
while_cond_176772*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_ccdc6c56-501f-4252-97d6-cad00455c0fe*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
í
Á
while_cond_175473
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_175473___redundant_placeholder04
0while_while_cond_175473___redundant_placeholder14
0while_while_cond_175473___redundant_placeholder24
0while_while_cond_175473___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
í
Á
while_cond_178788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_178788___redundant_placeholder04
0while_while_cond_178788___redundant_placeholder14
0while_while_cond_178788___redundant_placeholder24
0while_while_cond_178788___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
°
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_179982

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_179710
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ä¾
±
;__inference___backward_gpu_lstm_with_fallback_178969_179143
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î::ÿÿÿÿÿÿÿÿÿ::: :ÿÿÿÿÿÿÿÿÿ:::ÿÿÿÿÿÿÿÿÿ:::ø:::: ::::::::: : : : *=
api_implements+)lstm_44c7c925-2680-4cb7-86ba-021bd225aadd*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_179142*
go_backwards( *

time_major( :$  

_output_shapes

::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
::(
$
"
_output_shapes
::!

_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
í
Á
while_cond_178282
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_178282___redundant_placeholder04
0while_while_cond_178282___redundant_placeholder14
0while_while_cond_178282___redundant_placeholder24
0while_while_cond_178282___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
è>
Ì
)__inference_gpu_lstm_with_fallback_179804

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_565d72ed-5235-49b1-b2a2-951bec03ceb5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
ä7
À
 __inference_standard_lstm_178368

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_178283*
condR
while_cond_178282*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_a3cbfa31-ee66-43c0-9979-93ab069ddf43*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
°
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_177622

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_177350
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
J

'__forward_gpu_lstm_with_fallback_179979

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_565d72ed-5235-49b1-b2a2-951bec03ceb5*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_179805_179980*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
ä7
À
 __inference_standard_lstm_179710

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_179625*
condR
while_cond_179624*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_565d72ed-5235-49b1-b2a2-951bec03ceb5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_180224_180399
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_0829c262-f6f5-4bd8-be74-ae0aa5984ffb*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_180398*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¢b
£
"__inference__traced_restore_180597
file_prefix1
assignvariableop_dense_1_kernel:-
assignvariableop_1_dense_1_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: >
,assignvariableop_7_lstm_1_lstm_cell_1_kernel:xH
6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernel:x8
*assignvariableop_9_lstm_1_lstm_cell_1_bias:x5
#assignvariableop_10_lstm_1_variable:7
%assignvariableop_11_lstm_1_variable_1:#
assignvariableop_12_total: #
assignvariableop_13_count: ;
)assignvariableop_14_adam_dense_1_kernel_m:5
'assignvariableop_15_adam_dense_1_bias_m:F
4assignvariableop_16_adam_lstm_1_lstm_cell_1_kernel_m:xP
>assignvariableop_17_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:x@
2assignvariableop_18_adam_lstm_1_lstm_cell_1_bias_m:x;
)assignvariableop_19_adam_dense_1_kernel_v:5
'assignvariableop_20_adam_dense_1_bias_v:F
4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_v:xP
>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:x@
2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_v:x
identity_25¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9°
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ö
valueÌBÉB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH¢
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B 
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*x
_output_shapesf
d:::::::::::::::::::::::::*'
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp,assignvariableop_7_lstm_1_lstm_cell_1_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_8AssignVariableOp6assignvariableop_8_lstm_1_lstm_cell_1_recurrent_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp*assignvariableop_9_lstm_1_lstm_cell_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp#assignvariableop_10_lstm_1_variableIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp%assignvariableop_11_lstm_1_variable_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp)assignvariableop_14_adam_dense_1_kernel_mIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp'assignvariableop_15_adam_dense_1_bias_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_16AssignVariableOp4assignvariableop_16_adam_lstm_1_lstm_cell_1_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_17AssignVariableOp>assignvariableop_17_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_18AssignVariableOp2assignvariableop_18_adam_lstm_1_lstm_cell_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_dense_1_kernel_vIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp'assignvariableop_20_adam_dense_1_bias_vIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_21AssignVariableOp4assignvariableop_21_adam_lstm_1_lstm_cell_1_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_22AssignVariableOp>assignvariableop_22_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_23AssignVariableOp2assignvariableop_23_adam_lstm_1_lstm_cell_1_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ß
Identity_24Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_25IdentityIdentity_24:output:0^NoOp_1*
T0*
_output_shapes
: Ì
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_25Identity_25:output:0*E
_input_shapes4
2: : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_23AssignVariableOp_232(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
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
í
Á
while_cond_180043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_180043___redundant_placeholder04
0while_while_cond_180043___redundant_placeholder14
0while_while_cond_180043___redundant_placeholder24
0while_while_cond_180043___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
í
Á
while_cond_177857
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_177857___redundant_placeholder04
0while_while_cond_177857___redundant_placeholder14
0while_while_cond_177857___redundant_placeholder24
0while_while_cond_177857___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
í
Á
while_cond_176335
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_176335___redundant_placeholder04
0while_while_cond_176335___redundant_placeholder14
0while_while_cond_176335___redundant_placeholder24
0while_while_cond_176335___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
¶J

'__forward_gpu_lstm_with_fallback_176689

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_e0d07ce6-9c57-4e8f-b557-5a531b3fc929*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_176516_176690*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
î&
Ï
while_body_177265
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
?
Ì
)__inference_gpu_lstm_with_fallback_178968

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_44c7c925-2680-4cb7-86ba-021bd225aadd*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
î&
Ï
while_body_175903
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
8
À
 __inference_standard_lstm_178874

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_178789*
condR
while_cond_178788*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_44c7c925-2680-4cb7-86ba-021bd225aadd*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
°
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_180401

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_180129
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
Ñ
÷
B__inference_lstm_1_layer_call_and_return_conditional_losses_179563
inputs_0.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x¡
PartitionedCallPartitionedCallinputs_0Identity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7::ÿÿÿÿÿÿÿÿÿ::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_179292
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
¼
í
'__inference_lstm_1_layer_call_fn_178682
inputs_0
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_176259f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_175654_175829
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_9f47f549-9556-40cb-9f08-acde5147a7a8*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_175828*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
°
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_177130

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_176858
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ä7
À
 __inference_standard_lstm_177350

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_177265*
condR
while_cond_177264*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0f34aaef-7458-43c5-94de-45fc5002666a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
¶J

'__forward_gpu_lstm_with_fallback_176256

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
cudnnrnn
transpose_9_perm

cudnnrnn_0
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0¼
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"&

cudnnrnn_0CudnnRNN:reserve_space:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_90495126-0e82-4fdd-8ebb-764d70fa04e6*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_176083_176257*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
î&
Ï
while_body_177858
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
è>
Ì
)__inference_gpu_lstm_with_fallback_178462

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_a3cbfa31-ee66-43c0-9979-93ab069ddf43*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
î&
Ï
while_body_176336
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
J

'__forward_gpu_lstm_with_fallback_177619

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0f34aaef-7458-43c5-94de-45fc5002666a*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_177445_177620*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
8
ö

__inference__traced_save_180515
file_prefix-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop.
*savev2_lstm_1_variable_read_readvariableop0
,savev2_lstm_1_variable_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ­
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ö
valueÌBÉB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/0/.ATTRIBUTES/VARIABLE_VALUEBBlayer_with_weights-0/keras_api/states/1/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*E
value<B:B B B B B B B B B B B B B B B B B B B B B B B B B ò

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop*savev2_lstm_1_variable_read_readvariableop,savev2_lstm_1_variable_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *'
dtypes
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
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

identity_1Identity_1:output:0*¹
_input_shapes§
¤: ::: : : : : :x:x:x::: : :::x:x:x:::x:x:x: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:$ 

_output_shapes

:: 

_output_shapes
::$ 

_output_shapes

:x:$ 

_output_shapes

:x: 

_output_shapes
:x:

_output_shapes
: 
Ä¾
±
;__inference___backward_gpu_lstm_with_fallback_179387_179561
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î::ÿÿÿÿÿÿÿÿÿ::: :ÿÿÿÿÿÿÿÿÿ:::ÿÿÿÿÿÿÿÿÿ:::ø:::: ::::::::: : : : *=
api_implements+)lstm_1d5ef544-f8a1-4149-8eec-d2a28324bac3*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_179560*
go_backwards( *

time_major( :$  

_output_shapes

::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
::(
$
"
_output_shapes
::!

_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
§
-__inference_sequential_1_layer_call_fn_177796

inputs
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_177676f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ä7
À
 __inference_standard_lstm_175559

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_175474*
condR
while_cond_175473*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_9f47f549-9556-40cb-9f08-acde5147a7a8*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
Ë
õ
B__inference_lstm_1_layer_call_and_return_conditional_losses_176259

inputs.
read_readvariableop_resource:0
read_1_readvariableop_resource:0
read_2_readvariableop_resource:x0
read_3_readvariableop_resource:x,
read_4_readvariableop_resource:x

identity_5¢AssignVariableOp¢AssignVariableOp_1¢Read/ReadVariableOp¢Read_1/ReadVariableOp¢Read_2/ReadVariableOp¢Read_3/ReadVariableOp¢Read_4/ReadVariableOpp
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes

:*
dtype0Z
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes

:*
dtype0^

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes

:t
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:xt
Read_3/ReadVariableOpReadVariableOpread_3_readvariableop_resource*
_output_shapes

:x*
dtype0^

Identity_3IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:xp
Read_4/ReadVariableOpReadVariableOpread_4_readvariableop_resource*
_output_shapes
:x*
dtype0Z

Identity_4IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
:x
PartitionedCallPartitionedCallinputsIdentity:output:0Identity_1:output:0Identity_2:output:0Identity_3:output:0Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *K
_output_shapes9
7::ÿÿÿÿÿÿÿÿÿ::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_175988
AssignVariableOpAssignVariableOpread_readvariableop_resourcePartitionedCall:output:2^Read/ReadVariableOp*
_output_shapes
 *
dtype0
AssignVariableOp_1AssignVariableOpread_1_readvariableop_resourcePartitionedCall:output:3^Read_1/ReadVariableOp*
_output_shapes
 *
dtype0`

Identity_5IdentityPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:ä
NoOpNoOp^AssignVariableOp^AssignVariableOp_1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp^Read_3/ReadVariableOp^Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2.
Read_3/ReadVariableOpRead_3/ReadVariableOp2.
Read_4/ReadVariableOpRead_4/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_178038_178213
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_1335acb8-0b31-46d5-a9ff-6af383989bc9*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_178212*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
í
Á
while_cond_175902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_175902___redundant_placeholder04
0while_while_cond_175902___redundant_placeholder14
0while_while_cond_175902___redundant_placeholder24
0while_while_cond_175902___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
î&
Ï
while_body_179625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_177445_177620
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_0f34aaef-7458-43c5-94de-45fc5002666a*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_177619*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
í
Á
while_cond_179624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_179624___redundant_placeholder04
0while_while_cond_179624___redundant_placeholder14
0while_while_cond_179624___redundant_placeholder24
0while_while_cond_179624___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_179805_179980
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_565d72ed-5235-49b1-b2a2-951bec03ceb5*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_179979*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ä¾
±
;__inference___backward_gpu_lstm_with_fallback_176516_176690
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î::ÿÿÿÿÿÿÿÿÿ::: :ÿÿÿÿÿÿÿÿÿ:::ÿÿÿÿÿÿÿÿÿ:::ø:::: ::::::::: : : : *=
api_implements+)lstm_e0d07ce6-9c57-4e8f-b557-5a531b3fc929*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_176689*
go_backwards( *

time_major( :$  

_output_shapes

::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
::(
$
"
_output_shapes
::!

_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


H__inference_sequential_1_layer_call_and_return_conditional_losses_177732
lstm_1_input
lstm_1_177715:
lstm_1_177717:
lstm_1_177719:x
lstm_1_177721:x
lstm_1_177723:x 
dense_1_177726:
dense_1_177728:
identity¢dense_1/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_177715lstm_1_177717lstm_1_177719lstm_1_177721lstm_1_177723*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177130
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_177726dense_1_177728*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177152n
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
?
Ì
)__inference_gpu_lstm_with_fallback_176515

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¸
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          |
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_9:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_e0d07ce6-9c57-4e8f-b557-5a531b3fc929*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
í
Á
while_cond_179206
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice4
0while_while_cond_179206___redundant_placeholder04
0while_while_cond_179206___redundant_placeholder14
0while_while_cond_179206___redundant_placeholder24
0while_while_cond_179206___redundant_placeholder3
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : ::: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
J

'__forward_gpu_lstm_with_fallback_178212

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_1335acb8-0b31-46d5-a9ff-6af383989bc9*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_178038_178213*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
8
À
 __inference_standard_lstm_175988

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_175903*
condR
while_cond_175902*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_90495126-0e82-4fdd-8ebb-764d70fa04e6*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
ð

H__inference_sequential_1_layer_call_and_return_conditional_losses_177676

inputs
lstm_1_177659:
lstm_1_177661:
lstm_1_177663:x
lstm_1_177665:x
lstm_1_177667:x 
dense_1_177670:
dense_1_177672:
identity¢dense_1/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCallinputslstm_1_177659lstm_1_177661lstm_1_177663lstm_1_177665lstm_1_177667*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177622
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_177670dense_1_177672*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177152n
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
¼
í
'__inference_lstm_1_layer_call_fn_178697
inputs_0
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_176692f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿ: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
î&
Ï
while_body_180044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x


H__inference_sequential_1_layer_call_and_return_conditional_losses_177752
lstm_1_input
lstm_1_177735:
lstm_1_177737:
lstm_1_177739:x
lstm_1_177741:x
lstm_1_177743:x 
dense_1_177746:
dense_1_177748:
identity¢dense_1/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall
lstm_1/StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputlstm_1_177735lstm_1_177737lstm_1_177739lstm_1_177741lstm_1_177743*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177622
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_177746dense_1_177748*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177152n
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
õ¾
¹
;__inference___backward_gpu_lstm_with_fallback_178463_178638
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4A
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_17
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:[
gradients/grad_ys_1Identityplaceholder_1*
T0*"
_output_shapes
:W
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: w
"gradients/strided_slice_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/shapeConst*
_output_shapes
:*
dtype0*!
valueB"         
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:©
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad<gradients/strided_slice_grad/StridedSliceGrad/shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*"
_output_shapes
:*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:®
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:q
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ð
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*"
_output_shapes
:c
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_11gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_13gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_2gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*E
_output_shapes3
1::::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ç
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*"
_output_shapes
:p
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xi
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*"
_output_shapes
:k

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*è
_input_shapesÖ
Ó::::: ::::::ø::::: ::::::::: : : : *=
api_implements+)lstm_a3cbfa31-ee66-43c0-9979-93ab069ddf43*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_178637*
go_backwards( *

time_major( :$  

_output_shapes

::($
"
_output_shapes
::$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: : 

_output_shapes
::

_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
::(	$
"
_output_shapes
::!


_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
J

'__forward_gpu_lstm_with_fallback_175828

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_9f47f549-9556-40cb-9f08-acde5147a7a8*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_175654_175829*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
Ä¾
±
;__inference___backward_gpu_lstm_with_fallback_176083_176257
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_4/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_9_grad_invertpermutation_transpose_9_perm!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1=
9gradients_transpose_grad_invertpermutation_transpose_perm-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5U
gradients/grad_ys_0Identityplaceholder*
T0*
_output_shapes

:d
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
gradients/grad_ys_2Identityplaceholder_2*
T0*
_output_shapes

:W
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes

:O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: }
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:¡
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
,gradients/transpose_9_grad/InvertPermutationInvertPermutation=gradients_transpose_9_grad_invertpermutation_transpose_9_perm*
_output_shapes
:·
$gradients/transpose_9_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_9_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
gradients/Squeeze_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*"
_output_shapes
:s
gradients/Squeeze_1_grad/ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*"
_output_shapes
:ù
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_9_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn1gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn3gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_1gradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*N
_output_shapes<
::ÿÿÿÿÿÿÿÿÿ:::ø
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:Ð
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
gradients/ExpandDims_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*
_output_shapes

:r
!gradients/ExpandDims_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      À
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*
_output_shapes

:^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:j
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:i
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:j
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:ø
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::ë
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes
:ð
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:ð
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:ï
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:ï
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes
:ò
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes
:m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      ¡
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      §
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes

:h
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:h
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:£
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes
:i
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:¦
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes
:
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:µ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:·
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:·
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:·
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:·
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:·
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:·
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*
_output_shapes

:
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:·
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0*
_output_shapes

:ç
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:ð®
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes

:x´
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes

:x\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: e
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:xg
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:xÊ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::Ñ
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes
:xÕ
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes
:xr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿk

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*
_output_shapes

:m

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*
_output_shapes

:e

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes

:xg

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes

:xc

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes
:x"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*
_input_shapesñ
î::ÿÿÿÿÿÿÿÿÿ::: :ÿÿÿÿÿÿÿÿÿ:::ÿÿÿÿÿÿÿÿÿ:::ø:::: ::::::::: : : : *=
api_implements+)lstm_90495126-0e82-4fdd-8ebb-764d70fa04e6*
api_preferred_deviceGPU*B
forward_function_name)'__forward_gpu_lstm_with_fallback_176256*
go_backwards( *

time_major( :$  

_output_shapes

::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
::1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:(	$
"
_output_shapes
::(
$
"
_output_shapes
::!

_output_shapes	
:ø:($
"
_output_shapes
::($
"
_output_shapes
:: 

_output_shapes
::

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
æ
¤
$__inference_signature_wrapper_178667
lstm_1_input
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCalllstm_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*'
_read_only_resource_inputs	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_175837f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
"
_output_shapes
:
&
_user_specified_namelstm_1_input
#
ÿ
H__inference_sequential_1_layer_call_and_return_conditional_losses_178646

inputs5
#lstm_1_read_readvariableop_resource:7
%lstm_1_read_1_readvariableop_resource:7
%lstm_1_read_2_readvariableop_resource:x7
%lstm_1_read_3_readvariableop_resource:x3
%lstm_1_read_4_readvariableop_resource:x8
&dense_1_matmul_readvariableop_resource:5
'dense_1_biasadd_readvariableop_resource:
identity¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢lstm_1/AssignVariableOp¢lstm_1/AssignVariableOp_1¢lstm_1/Read/ReadVariableOp¢lstm_1/Read_1/ReadVariableOp¢lstm_1/Read_2/ReadVariableOp¢lstm_1/Read_3/ReadVariableOp¢lstm_1/Read_4/ReadVariableOp~
lstm_1/Read/ReadVariableOpReadVariableOp#lstm_1_read_readvariableop_resource*
_output_shapes

:*
dtype0h
lstm_1/IdentityIdentity"lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes

:
lstm_1/Read_1/ReadVariableOpReadVariableOp%lstm_1_read_1_readvariableop_resource*
_output_shapes

:*
dtype0l
lstm_1/Identity_1Identity$lstm_1/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes

:
lstm_1/Read_2/ReadVariableOpReadVariableOp%lstm_1_read_2_readvariableop_resource*
_output_shapes

:x*
dtype0l
lstm_1/Identity_2Identity$lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes

:x
lstm_1/Read_3/ReadVariableOpReadVariableOp%lstm_1_read_3_readvariableop_resource*
_output_shapes

:x*
dtype0l
lstm_1/Identity_3Identity$lstm_1/Read_3/ReadVariableOp:value:0*
T0*
_output_shapes

:x~
lstm_1/Read_4/ReadVariableOpReadVariableOp%lstm_1_read_4_readvariableop_resource*
_output_shapes
:x*
dtype0h
lstm_1/Identity_4Identity$lstm_1/Read_4/ReadVariableOp:value:0*
T0*
_output_shapes
:xÀ
lstm_1/PartitionedCallPartitionedCallinputslstm_1/Identity:output:0lstm_1/Identity_1:output:0lstm_1/Identity_2:output:0lstm_1/Identity_3:output:0lstm_1/Identity_4:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *B
_output_shapes0
.::::: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference_standard_lstm_178368±
lstm_1/AssignVariableOpAssignVariableOp#lstm_1_read_readvariableop_resourcelstm_1/PartitionedCall:output:2^lstm_1/Read/ReadVariableOp*
_output_shapes
 *
dtype0·
lstm_1/AssignVariableOp_1AssignVariableOp%lstm_1_read_1_readvariableop_resourcelstm_1/PartitionedCall:output:3^lstm_1/Read_1/ReadVariableOp*
_output_shapes
 *
dtype0
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_1/MatMulMatMullstm_1/PartitionedCall:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:^
IdentityIdentitydense_1/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Ö
NoOpNoOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^lstm_1/AssignVariableOp^lstm_1/AssignVariableOp_1^lstm_1/Read/ReadVariableOp^lstm_1/Read_1/ReadVariableOp^lstm_1/Read_2/ReadVariableOp^lstm_1/Read_3/ReadVariableOp^lstm_1/Read_4/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:: : : : : : : 2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp22
lstm_1/AssignVariableOplstm_1/AssignVariableOp26
lstm_1/AssignVariableOp_1lstm_1/AssignVariableOp_128
lstm_1/Read/ReadVariableOplstm_1/Read/ReadVariableOp2<
lstm_1/Read_1/ReadVariableOplstm_1/Read_1/ReadVariableOp2<
lstm_1/Read_2/ReadVariableOplstm_1/Read_2/ReadVariableOp2<
lstm_1/Read_3/ReadVariableOplstm_1/Read_3/ReadVariableOp2<
lstm_1/Read_4/ReadVariableOplstm_1/Read_4/ReadVariableOp:J F
"
_output_shapes
:
 
_user_specified_nameinputs
8
À
 __inference_standard_lstm_176421

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_176336*
condR
while_cond_176335*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_e0d07ce6-9c57-4e8f-b557-5a531b3fc929*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
J

'__forward_gpu_lstm_with_fallback_178637

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
transpose_9_perm
cudnnrnn
	transpose

expanddims
expanddims_1
concat_1

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
transpose_perm
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0³
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"$
cudnnrnnCudnnRNN:reserve_space:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_h:0"!

cudnnrnn_2CudnnRNN:output_c:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0"-
transpose_9_permtranspose_9/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_a3cbfa31-ee66-43c0-9979-93ab069ddf43*
api_preferred_deviceGPU*W
backward_function_name=;__inference___backward_gpu_lstm_with_fallback_178463_178638*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
¤
ë
'__inference_lstm_1_layer_call_fn_178712

inputs
unknown:
	unknown_0:
	unknown_1:x
	unknown_2:x
	unknown_3:x
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3*
Tin

2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_177130f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:: : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
"
_output_shapes
:
 
_user_specified_nameinputs
ä7
À
 __inference_standard_lstm_180129

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_180044*
condR
while_cond_180043*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_0829c262-f6f5-4bd8-be74-ae0aa5984ffb*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
ä7
À
 __inference_standard_lstm_177943

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:Z
ShapeConst*
_output_shapes
:*
dtype0*!
valueB"         ]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_177858*
condR
while_cond_177857*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¹
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*"
_output_shapes
:*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*"
_output_shapes
:[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_1:y:0*
T0*"
_output_shapes
:O

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_1335acb8-0b31-46d5-a9ff-6af383989bc9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias


(__inference_dense_1_layer_call_fn_180410

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÏ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_177152f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
è>
Ì
)__inference_gpu_lstm_with_fallback_176952

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_ccdc6c56-501f-4252-97d6-cad00455c0fe*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
è>
Ì
)__inference_gpu_lstm_with_fallback_178037

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          d
	transpose	Transposeinputstranspose/perm:output:0*
T0*"
_output_shapes
:P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : f

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*"
_output_shapes
:R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : j
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*"
_output_shapes
:Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0kernel*
T0*<
_output_shapes*
(::::*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*<
_output_shapes*
(::::*
	num_splitW

zeros_likeConst*
_output_shapes
:x*
dtype0*
valueBx*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:ðS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*D
_output_shapes2
0::::::::*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes

:X
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       l
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes

:Z
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes
:a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:[
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0*
_output_shapes

:[
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0*
_output_shapes

:[
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes	
:a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0*
_output_shapes

:[
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes	
:[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:[
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:\

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:\

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:\

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:\

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes
:\

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes
:O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes	
:ø¯
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*B
_output_shapes0
.::::f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_9/permConst*
_output_shapes
:*
dtype0*!
valueB"          s
transpose_9	TransposeCudnnRNN:output:0transpose_9/perm:output:0*
T0*"
_output_shapes
:g
SqueezeSqueezeCudnnRNN:output_h:0*
T0*
_output_shapes

:*
squeeze_dims
 i
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*
_output_shapes

:*
squeeze_dims
 [
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @U
IdentityIdentitystrided_slice:output:0*
T0*
_output_shapes

:T

Identity_1Identitytranspose_9:y:0*
T0*"
_output_shapes
:Q

Identity_2IdentitySqueeze:output:0*
T0*
_output_shapes

:S

Identity_3IdentitySqueeze_1:output:0*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<::::x:x:x*=
api_implements+)lstm_1335acb8-0b31-46d5-a9ff-6af383989bc9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :J F
"
_output_shapes
:
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
8
À
 __inference_standard_lstm_179292

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
ShapeShapetranspose:y:0*
T0*
_output_shapes
:]
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
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_mask[
MatMulMatMulstrided_slice_1:output:0kernel*
T0*
_output_shapes

:xU
MatMul_1MatMulinit_hrecurrent_kernel*
T0*
_output_shapes

:x[
addAddV2MatMul:product:0MatMul_1:product:0*
T0*
_output_shapes

:xJ
BiasAddBiasAddadd:z:0bias*
T0*
_output_shapes

:xQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitK
SigmoidSigmoidsplit:output:0*
T0*
_output_shapes

:M
	Sigmoid_1Sigmoidsplit:output:1*
T0*
_output_shapes

:J
mulMulSigmoid_1:y:0init_c*
T0*
_output_shapes

:E
TanhTanhsplit:output:2*
T0*
_output_shapes

:L
mul_1MulSigmoid:y:0Tanh:y:0*
T0*
_output_shapes

:K
add_1AddV2mul:z:0	mul_1:z:0*
T0*
_output_shapes

:M
	Sigmoid_2Sigmoidsplit:output:3*
T0*
_output_shapes

:B
Tanh_1Tanh	add_1:z:0*
T0*
_output_shapes

:P
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*
_output_shapes

:n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      ¶
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : ::: : :x:x:x* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_179207*
condR
while_cond_179206*M
output_shapes<
:: : : : ::: : :x:x:x*
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ?W
IdentityIdentitystrided_slice_2:output:0*
T0*
_output_shapes

:]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿO

Identity_2Identitywhile:output:4*
T0*
_output_shapes

:O

Identity_3Identitywhile:output:5*
T0*
_output_shapes

:I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*X
_input_shapesG
E:ÿÿÿÿÿÿÿÿÿ:::x:x:x*=
api_implements+)lstm_1d5ef544-f8a1-4149-8eec-d2a28324bac3*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:FB

_output_shapes

:
 
_user_specified_nameinit_h:FB

_output_shapes

:
 
_user_specified_nameinit_c:FB

_output_shapes

:x
 
_user_specified_namekernel:PL

_output_shapes

:x
*
_user_specified_namerecurrent_kernel:@<

_output_shapes
:x

_user_specified_namebias
î&
Ï
while_body_179207
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_bias
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"      
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*
_output_shapes

:*
element_dtype0
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*
_output_shapes

:xy
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*
_output_shapes

:xm
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*
_output_shapes

:xf
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*
_output_shapes

:xW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¤
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*<
_output_shapes*
(::::*
	num_splitW
while/SigmoidSigmoidwhile/split:output:0*
T0*
_output_shapes

:Y
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*
_output_shapes

:c
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*
_output_shapes

:Q

while/TanhTanhwhile/split:output:2*
T0*
_output_shapes

:^
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*
_output_shapes

:]
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*
_output_shapes

:Y
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*
_output_shapes

:N
while/Tanh_1Tanhwhile/add_1:z:0*
T0*
_output_shapes

:b
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*
_output_shapes

:¸
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒO
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: :éèÒV
while/Identity_4Identitywhile/mul_2:z:0*
T0*
_output_shapes

:V
while/Identity_5Identitywhile/add_1:z:0*
T0*
_output_shapes

:"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : ::: : :x:x:x: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

::$ 

_output_shapes

::

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:x:$	 

_output_shapes

:x: 


_output_shapes
:x"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¦
serving_default
@
lstm_1_input0
serving_default_lstm_1_input:02
dense_1'
StatefulPartitionedCall:0tensorflow/serving/predict:V
´
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
­
iter

beta_1

beta_2
	 decay
!learning_ratemJmK"mL#mM$mNvOvP"vQ#vR$vS"
	optimizer
C
"0
#1
$2
3
4"
trackable_list_wrapper
C
"0
#1
$2
3
4"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
%non_trainable_variables

&layers
'metrics
(layer_regularization_losses
)layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
2ÿ
-__inference_sequential_1_layer_call_fn_177176
-__inference_sequential_1_layer_call_fn_177777
-__inference_sequential_1_layer_call_fn_177796
-__inference_sequential_1_layer_call_fn_177712À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
î2ë
H__inference_sequential_1_layer_call_and_return_conditional_losses_178221
H__inference_sequential_1_layer_call_and_return_conditional_losses_178646
H__inference_sequential_1_layer_call_and_return_conditional_losses_177732
H__inference_sequential_1_layer_call_and_return_conditional_losses_177752À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÑBÎ
!__inference__wrapped_model_175837lstm_1_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
*serving_default"
signature_map
ø
+
state_size

"kernel
#recurrent_kernel
$bias
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0_random_generator
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

3states
4non_trainable_variables

5layers
6metrics
7layer_regularization_losses
8layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ÿ2ü
'__inference_lstm_1_layer_call_fn_178682
'__inference_lstm_1_layer_call_fn_178697
'__inference_lstm_1_layer_call_fn_178712
'__inference_lstm_1_layer_call_fn_178727Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_1_layer_call_and_return_conditional_losses_179145
B__inference_lstm_1_layer_call_and_return_conditional_losses_179563
B__inference_lstm_1_layer_call_and_return_conditional_losses_179982
B__inference_lstm_1_layer_call_and_return_conditional_losses_180401Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :2dense_1/kernel
:2dense_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
9non_trainable_variables

:layers
;metrics
<layer_regularization_losses
=layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_1_layer_call_fn_180410¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_180420¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
+:)x2lstm_1/lstm_cell_1/kernel
5:3x2#lstm_1/lstm_cell_1/recurrent_kernel
%:#x2lstm_1/lstm_cell_1/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
>0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÐBÍ
$__inference_signature_wrapper_178667lstm_1_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
5
"0
#1
$2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
,	variables
-trainable_variables
.regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ä2Á¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
N
	Ftotal
	Gcount
H	variables
I	keras_api"
_tf_keras_metric
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
!:2lstm_1/Variable
!:2lstm_1/Variable
:  (2total
:  (2count
.
F0
G1"
trackable_list_wrapper
-
H	variables"
_generic_user_object
%:#2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
0:.x2 Adam/lstm_1/lstm_cell_1/kernel/m
::8x2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
*:(x2Adam/lstm_1/lstm_cell_1/bias/m
%:#2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
0:.x2 Adam/lstm_1/lstm_cell_1/kernel/v
::8x2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
*:(x2Adam/lstm_1/lstm_cell_1/bias/v
!__inference__wrapped_model_175837eDE"#$0¢-
&¢#
!
lstm_1_input
ª "(ª%
#
dense_1
dense_1
C__inference_dense_1_layer_call_and_return_conditional_losses_180420J&¢#
¢

inputs
ª "¢

0
 i
(__inference_dense_1_layer_call_fn_180410=&¢#
¢

inputs
ª "³
B__inference_lstm_1_layer_call_and_return_conditional_losses_179145mDE"#$F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "¢

0
 ³
B__inference_lstm_1_layer_call_and_return_conditional_losses_179563mDE"#$F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "¢

0
 £
B__inference_lstm_1_layer_call_and_return_conditional_losses_179982]DE"#$6¢3
,¢)

inputs

 
p 

 
ª "¢

0
 £
B__inference_lstm_1_layer_call_and_return_conditional_losses_180401]DE"#$6¢3
,¢)

inputs

 
p

 
ª "¢

0
 
'__inference_lstm_1_layer_call_fn_178682`DE"#$F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "
'__inference_lstm_1_layer_call_fn_178697`DE"#$F¢C
<¢9
+(
&#
inputs/0ÿÿÿÿÿÿÿÿÿ

 
p

 
ª "{
'__inference_lstm_1_layer_call_fn_178712PDE"#$6¢3
,¢)

inputs

 
p 

 
ª "{
'__inference_lstm_1_layer_call_fn_178727PDE"#$6¢3
,¢)

inputs

 
p

 
ª "­
H__inference_sequential_1_layer_call_and_return_conditional_losses_177732aDE"#$8¢5
.¢+
!
lstm_1_input
p 

 
ª "¢

0
 ­
H__inference_sequential_1_layer_call_and_return_conditional_losses_177752aDE"#$8¢5
.¢+
!
lstm_1_input
p

 
ª "¢

0
 §
H__inference_sequential_1_layer_call_and_return_conditional_losses_178221[DE"#$2¢/
(¢%

inputs
p 

 
ª "¢

0
 §
H__inference_sequential_1_layer_call_and_return_conditional_losses_178646[DE"#$2¢/
(¢%

inputs
p

 
ª "¢

0
 
-__inference_sequential_1_layer_call_fn_177176TDE"#$8¢5
.¢+
!
lstm_1_input
p 

 
ª "
-__inference_sequential_1_layer_call_fn_177712TDE"#$8¢5
.¢+
!
lstm_1_input
p

 
ª "
-__inference_sequential_1_layer_call_fn_177777NDE"#$2¢/
(¢%

inputs
p 

 
ª "
-__inference_sequential_1_layer_call_fn_177796NDE"#$2¢/
(¢%

inputs
p

 
ª "
$__inference_signature_wrapper_178667uDE"#$@¢=
¢ 
6ª3
1
lstm_1_input!
lstm_1_input"(ª%
#
dense_1
dense_1