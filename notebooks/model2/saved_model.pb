ξΎ
Ϋ
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
Α
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.9.12v2.9.0-18-gd8ce9f9c3018Ω
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
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
p
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_4/bias
i
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes
:*
dtype0
x
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedense_4/kernel
q
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes

:
*
dtype0
x
HiddenLayer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*!
shared_nameHiddenLayer/bias
q
$HiddenLayer/bias/Read/ReadVariableOpReadVariableOpHiddenLayer/bias*
_output_shapes
:
*
dtype0

HiddenLayer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*#
shared_nameHiddenLayer/kernel
y
&HiddenLayer/kernel/Read/ReadVariableOpReadVariableOpHiddenLayer/kernel*
_output_shapes

:
*
dtype0

NoOpNoOp
ζ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*‘
valueB B

layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
¦
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
 
0
1
2
3*
 
0
1
2
3*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
!trace_0
"trace_1
#trace_2
$trace_3* 
6
%trace_0
&trace_1
'trace_2
(trace_3* 
* 
:
)iter
	*decay
+learning_rate
,momentum*

-serving_default* 

0
1*

0
1*
* 

.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

3trace_0* 

4trace_0* 
b\
VARIABLE_VALUEHiddenLayer/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEHiddenLayer/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

:trace_0* 

;trace_0* 
^X
VARIABLE_VALUEdense_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

<0
=1*
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
KE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE*
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
8
>	variables
?	keras_api
	@total
	Acount*
H
B	variables
C	keras_api
	Dtotal
	Ecount
F
_fn_kwargs*

@0
A1*

>	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

D0
E1*

B	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
k
serving_default_InputLayerPlaceholder*
_output_shapes

:*
dtype0*
shape
:
χ
StatefulPartitionedCallStatefulPartitionedCallserving_default_InputLayerHiddenLayer/kernelHiddenLayer/biasdense_4/kerneldense_4/bias*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_25916
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
°
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&HiddenLayer/kernel/Read/ReadVariableOp$HiddenLayer/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2	*
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
GPU 2J 8 *'
f"R 
__inference__traced_save_26071
»
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameHiddenLayer/kernelHiddenLayer/biasdense_4/kerneldense_4/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotal_1count_1totalcount*
Tin
2*
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
GPU 2J 8 **
f%R#
!__inference__traced_restore_26117χ
ΐ!
ω
__inference__traced_save_26071
file_prefix1
-savev2_hiddenlayer_kernel_read_readvariableop/
+savev2_hiddenlayer_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1’MergeV2Checkpointsw
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
: ψ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*‘
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_hiddenlayer_kernel_read_readvariableop+savev2_hiddenlayer_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	
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

identity_1Identity_1:output:0*G
_input_shapes6
4: :
:
:
:: : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
	
σ
B__inference_dense_4_layer_call_and_return_conditional_losses_25778

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:

 
_user_specified_nameinputs
ϊ
²
G__inference_sequential_4_layer_call_and_return_conditional_losses_25845

inputs#
hiddenlayer_25834:

hiddenlayer_25836:

dense_4_25839:

dense_4_25841:
identity’#HiddenLayer/StatefulPartitionedCall’dense_4/StatefulPartitionedCallπ
#HiddenLayer/StatefulPartitionedCallStatefulPartitionedCallinputshiddenlayer_25834hiddenlayer_25836*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762
dense_4/StatefulPartitionedCallStatefulPartitionedCall,HiddenLayer/StatefulPartitionedCall:output:0dense_4_25839dense_4_25841*
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
GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_25778n
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp$^HiddenLayer/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2J
#HiddenLayer/StatefulPartitionedCall#HiddenLayer/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs

Ά
G__inference_sequential_4_layer_call_and_return_conditional_losses_25883

inputlayer#
hiddenlayer_25872:

hiddenlayer_25874:

dense_4_25877:

dense_4_25879:
identity’#HiddenLayer/StatefulPartitionedCall’dense_4/StatefulPartitionedCallτ
#HiddenLayer/StatefulPartitionedCallStatefulPartitionedCall
inputlayerhiddenlayer_25872hiddenlayer_25874*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762
dense_4/StatefulPartitionedCallStatefulPartitionedCall,HiddenLayer/StatefulPartitionedCall:output:0dense_4_25877dense_4_25879*
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
GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_25778n
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp$^HiddenLayer/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2J
#HiddenLayer/StatefulPartitionedCall#HiddenLayer/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:J F

_output_shapes

:
$
_user_specified_name
InputLayer

Ά
G__inference_sequential_4_layer_call_and_return_conditional_losses_25897

inputlayer#
hiddenlayer_25886:

hiddenlayer_25888:

dense_4_25891:

dense_4_25893:
identity’#HiddenLayer/StatefulPartitionedCall’dense_4/StatefulPartitionedCallτ
#HiddenLayer/StatefulPartitionedCallStatefulPartitionedCall
inputlayerhiddenlayer_25886hiddenlayer_25888*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762
dense_4/StatefulPartitionedCallStatefulPartitionedCall,HiddenLayer/StatefulPartitionedCall:output:0dense_4_25891dense_4_25893*
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
GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_25778n
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp$^HiddenLayer/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2J
#HiddenLayer/StatefulPartitionedCall#HiddenLayer/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:J F

_output_shapes

:
$
_user_specified_name
InputLayer
ϊ
²
G__inference_sequential_4_layer_call_and_return_conditional_losses_25785

inputs#
hiddenlayer_25763:

hiddenlayer_25765:

dense_4_25779:

dense_4_25781:
identity’#HiddenLayer/StatefulPartitionedCall’dense_4/StatefulPartitionedCallπ
#HiddenLayer/StatefulPartitionedCallStatefulPartitionedCallinputshiddenlayer_25763hiddenlayer_25765*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762
dense_4/StatefulPartitionedCallStatefulPartitionedCall,HiddenLayer/StatefulPartitionedCall:output:0dense_4_25779dense_4_25781*
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
GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_25778n
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp$^HiddenLayer/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2J
#HiddenLayer/StatefulPartitionedCall#HiddenLayer/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
ψ
Ο
,__inference_sequential_4_layer_call_fn_25942

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity’StatefulPartitionedCallν
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_25845f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
£
Ϊ
G__inference_sequential_4_layer_call_and_return_conditional_losses_25974

inputs<
*hiddenlayer_matmul_readvariableop_resource:
9
+hiddenlayer_biasadd_readvariableop_resource:
8
&dense_4_matmul_readvariableop_resource:
5
'dense_4_biasadd_readvariableop_resource:
identity’"HiddenLayer/BiasAdd/ReadVariableOp’!HiddenLayer/MatMul/ReadVariableOp’dense_4/BiasAdd/ReadVariableOp’dense_4/MatMul/ReadVariableOp
!HiddenLayer/MatMul/ReadVariableOpReadVariableOp*hiddenlayer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0x
HiddenLayer/MatMulMatMulinputs)HiddenLayer/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:

"HiddenLayer/BiasAdd/ReadVariableOpReadVariableOp+hiddenlayer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
HiddenLayer/BiasAddBiasAddHiddenLayer/MatMul:product:0*HiddenLayer/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:

dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_4/MatMulMatMulHiddenLayer/BiasAdd:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:^
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Π
NoOpNoOp#^HiddenLayer/BiasAdd/ReadVariableOp"^HiddenLayer/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2H
"HiddenLayer/BiasAdd/ReadVariableOp"HiddenLayer/BiasAdd/ReadVariableOp2F
!HiddenLayer/MatMul/ReadVariableOp!HiddenLayer/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
	
χ
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
’

+__inference_HiddenLayer_layer_call_fn_25983

inputs
unknown:

	unknown_0:

identity’StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25762f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs
	
χ
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25993

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0`
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0m
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:
V
IdentityIdentityBiasAdd:output:0^NoOp*
T0*
_output_shapes

:
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
:: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs


'__inference_dense_4_layer_call_fn_26002

inputs
unknown:

	unknown_0:
identity’StatefulPartitionedCallΞ
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
GPU 2J 8 *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_25778f
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
:
: : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:

 
_user_specified_nameinputs
	
σ
B__inference_dense_4_layer_call_and_return_conditional_losses_26012

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity’BiasAdd/ReadVariableOp’MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
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
:
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:F B

_output_shapes

:

 
_user_specified_nameinputs

Σ
,__inference_sequential_4_layer_call_fn_25796

inputlayer
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCall
inputlayerunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_25785f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F

_output_shapes

:
$
_user_specified_name
InputLayer
£
Ϊ
G__inference_sequential_4_layer_call_and_return_conditional_losses_25958

inputs<
*hiddenlayer_matmul_readvariableop_resource:
9
+hiddenlayer_biasadd_readvariableop_resource:
8
&dense_4_matmul_readvariableop_resource:
5
'dense_4_biasadd_readvariableop_resource:
identity’"HiddenLayer/BiasAdd/ReadVariableOp’!HiddenLayer/MatMul/ReadVariableOp’dense_4/BiasAdd/ReadVariableOp’dense_4/MatMul/ReadVariableOp
!HiddenLayer/MatMul/ReadVariableOpReadVariableOp*hiddenlayer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0x
HiddenLayer/MatMulMatMulinputs)HiddenLayer/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:

"HiddenLayer/BiasAdd/ReadVariableOpReadVariableOp+hiddenlayer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0
HiddenLayer/BiasAddBiasAddHiddenLayer/MatMul:product:0*HiddenLayer/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:

dense_4/MatMul/ReadVariableOpReadVariableOp&dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
dense_4/MatMulMatMulHiddenLayer/BiasAdd:output:0%dense_4/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_4/BiasAddBiasAdddense_4/MatMul:product:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:^
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:Π
NoOpNoOp#^HiddenLayer/BiasAdd/ReadVariableOp"^HiddenLayer/MatMul/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp^dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2H
"HiddenLayer/BiasAdd/ReadVariableOp"HiddenLayer/BiasAdd/ReadVariableOp2F
!HiddenLayer/MatMul/ReadVariableOp!HiddenLayer/MatMul/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2>
dense_4/MatMul/ReadVariableOpdense_4/MatMul/ReadVariableOp:F B

_output_shapes

:
 
_user_specified_nameinputs
΄1
?
!__inference__traced_restore_26117
file_prefix5
#assignvariableop_hiddenlayer_kernel:
1
#assignvariableop_1_hiddenlayer_bias:
3
!assignvariableop_2_dense_4_kernel:
-
assignvariableop_3_dense_4_bias:%
assignvariableop_4_sgd_iter:	 &
assignvariableop_5_sgd_decay: .
$assignvariableop_6_sgd_learning_rate: )
assignvariableop_7_sgd_momentum: $
assignvariableop_8_total_1: $
assignvariableop_9_count_1: #
assignvariableop_10_total: #
assignvariableop_11_count: 
identity_13’AssignVariableOp’AssignVariableOp_1’AssignVariableOp_10’AssignVariableOp_11’AssignVariableOp_2’AssignVariableOp_3’AssignVariableOp_4’AssignVariableOp_5’AssignVariableOp_6’AssignVariableOp_7’AssignVariableOp_8’AssignVariableOp_9ϋ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*‘
valueBB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*-
value$B"B B B B B B B B B B B B B ί
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*H
_output_shapes6
4:::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp#assignvariableop_hiddenlayer_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp#assignvariableop_1_hiddenlayer_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_sgd_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_sgd_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp$assignvariableop_6_sgd_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_momentumIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_total_1Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_count_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 Χ
Identity_12Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_13IdentityIdentity_12:output:0^NoOp_1*
T0*
_output_shapes
: Δ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_13Identity_13:output:0*-
_input_shapes
: : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112(
AssignVariableOp_2AssignVariableOp_22(
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

Σ
,__inference_sequential_4_layer_call_fn_25869

inputlayer
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity’StatefulPartitionedCallρ
StatefulPartitionedCallStatefulPartitionedCall
inputlayerunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_25845f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F

_output_shapes

:
$
_user_specified_name
InputLayer
Τ
Κ
#__inference_signature_wrapper_25916

inputlayer
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity’StatefulPartitionedCallΚ
StatefulPartitionedCallStatefulPartitionedCall
inputlayerunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_25745f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F

_output_shapes

:
$
_user_specified_name
InputLayer


 __inference__wrapped_model_25745

inputlayerI
7sequential_4_hiddenlayer_matmul_readvariableop_resource:
F
8sequential_4_hiddenlayer_biasadd_readvariableop_resource:
E
3sequential_4_dense_4_matmul_readvariableop_resource:
B
4sequential_4_dense_4_biasadd_readvariableop_resource:
identity’/sequential_4/HiddenLayer/BiasAdd/ReadVariableOp’.sequential_4/HiddenLayer/MatMul/ReadVariableOp’+sequential_4/dense_4/BiasAdd/ReadVariableOp’*sequential_4/dense_4/MatMul/ReadVariableOp¦
.sequential_4/HiddenLayer/MatMul/ReadVariableOpReadVariableOp7sequential_4_hiddenlayer_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0
sequential_4/HiddenLayer/MatMulMatMul
inputlayer6sequential_4/HiddenLayer/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
€
/sequential_4/HiddenLayer/BiasAdd/ReadVariableOpReadVariableOp8sequential_4_hiddenlayer_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Έ
 sequential_4/HiddenLayer/BiasAddBiasAdd)sequential_4/HiddenLayer/MatMul:product:07sequential_4/HiddenLayer/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:

*sequential_4/dense_4/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_4_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0­
sequential_4/dense_4/MatMulMatMul)sequential_4/HiddenLayer/BiasAdd:output:02sequential_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes

:
+sequential_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_4_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¬
sequential_4/dense_4/BiasAddBiasAdd%sequential_4/dense_4/MatMul:product:03sequential_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*
_output_shapes

:k
IdentityIdentity%sequential_4/dense_4/BiasAdd:output:0^NoOp*
T0*
_output_shapes

:
NoOpNoOp0^sequential_4/HiddenLayer/BiasAdd/ReadVariableOp/^sequential_4/HiddenLayer/MatMul/ReadVariableOp,^sequential_4/dense_4/BiasAdd/ReadVariableOp+^sequential_4/dense_4/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 2b
/sequential_4/HiddenLayer/BiasAdd/ReadVariableOp/sequential_4/HiddenLayer/BiasAdd/ReadVariableOp2`
.sequential_4/HiddenLayer/MatMul/ReadVariableOp.sequential_4/HiddenLayer/MatMul/ReadVariableOp2Z
+sequential_4/dense_4/BiasAdd/ReadVariableOp+sequential_4/dense_4/BiasAdd/ReadVariableOp2X
*sequential_4/dense_4/MatMul/ReadVariableOp*sequential_4/dense_4/MatMul/ReadVariableOp:J F

_output_shapes

:
$
_user_specified_name
InputLayer
ψ
Ο
,__inference_sequential_4_layer_call_fn_25929

inputs
unknown:

	unknown_0:

	unknown_1:

	unknown_2:
identity’StatefulPartitionedCallν
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes

:*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_sequential_4_layer_call_and_return_conditional_losses_25785f
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes

:`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*%
_input_shapes
:: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:F B

_output_shapes

:
 
_user_specified_nameinputs"ΏL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*
serving_default
8

InputLayer*
serving_default_InputLayer:02
dense_4'
StatefulPartitionedCall:0tensorflow/serving/predict:χU
΄
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
	_default_save_signature

	optimizer

signatures"
_tf_keras_sequential
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
Κ
non_trainable_variables

layers
metrics
layer_regularization_losses
 layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ζ
!trace_0
"trace_1
#trace_2
$trace_32ϋ
,__inference_sequential_4_layer_call_fn_25796
,__inference_sequential_4_layer_call_fn_25929
,__inference_sequential_4_layer_call_fn_25942
,__inference_sequential_4_layer_call_fn_25869ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z!trace_0z"trace_1z#trace_2z$trace_3
?
%trace_0
&trace_1
'trace_2
(trace_32η
G__inference_sequential_4_layer_call_and_return_conditional_losses_25958
G__inference_sequential_4_layer_call_and_return_conditional_losses_25974
G__inference_sequential_4_layer_call_and_return_conditional_losses_25883
G__inference_sequential_4_layer_call_and_return_conditional_losses_25897ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 z%trace_0z&trace_1z'trace_2z(trace_3
ΞBΛ
 __inference__wrapped_model_25745
InputLayer"
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
annotationsͺ *
 
I
)iter
	*decay
+learning_rate
,momentum"
	optimizer
,
-serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ο
3trace_02?
+__inference_HiddenLayer_layer_call_fn_25983’
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
annotationsͺ *
 z3trace_0

4trace_02ν
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25993’
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
annotationsͺ *
 z4trace_0
$:"
2HiddenLayer/kernel
:
2HiddenLayer/bias
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
­
5non_trainable_variables

6layers
7metrics
8layer_regularization_losses
9layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
λ
:trace_02Ξ
'__inference_dense_4_layer_call_fn_26002’
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
annotationsͺ *
 z:trace_0

;trace_02ι
B__inference_dense_4_layer_call_and_return_conditional_losses_26012’
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
annotationsͺ *
 z;trace_0
 :
2dense_4/kernel
:2dense_4/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B?
,__inference_sequential_4_layer_call_fn_25796
InputLayer"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_4_layer_call_fn_25929inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
ώBϋ
,__inference_sequential_4_layer_call_fn_25942inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B?
,__inference_sequential_4_layer_call_fn_25869
InputLayer"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_25958inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_25974inputs"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_25883
InputLayer"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
B
G__inference_sequential_4_layer_call_and_return_conditional_losses_25897
InputLayer"ΐ
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
kwonlydefaultsͺ 
annotationsͺ *
 
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
ΝBΚ
#__inference_signature_wrapper_25916
InputLayer"
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
annotationsͺ *
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
ίBά
+__inference_HiddenLayer_layer_call_fn_25983inputs"’
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
annotationsͺ *
 
ϊBχ
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25993inputs"’
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
annotationsͺ *
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
ΫBΨ
'__inference_dense_4_layer_call_fn_26002inputs"’
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
annotationsͺ *
 
φBσ
B__inference_dense_4_layer_call_and_return_conditional_losses_26012inputs"’
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
annotationsͺ *
 
N
>	variables
?	keras_api
	@total
	Acount"
_tf_keras_metric
^
B	variables
C	keras_api
	Dtotal
	Ecount
F
_fn_kwargs"
_tf_keras_metric
.
@0
A1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
:  (2total
:  (2count
.
D0
E1"
trackable_list_wrapper
-
B	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
F__inference_HiddenLayer_layer_call_and_return_conditional_losses_25993J&’#
’

inputs
ͺ "’

0

 l
+__inference_HiddenLayer_layer_call_fn_25983=&’#
’

inputs
ͺ "

 __inference__wrapped_model_25745\*’'
 ’


InputLayer
ͺ "(ͺ%
#
dense_4
dense_4
B__inference_dense_4_layer_call_and_return_conditional_losses_26012J&’#
’

inputs

ͺ "’

0
 h
'__inference_dense_4_layer_call_fn_26002=&’#
’

inputs

ͺ "£
G__inference_sequential_4_layer_call_and_return_conditional_losses_25883X2’/
(’%


InputLayer
p 

 
ͺ "’

0
 £
G__inference_sequential_4_layer_call_and_return_conditional_losses_25897X2’/
(’%


InputLayer
p

 
ͺ "’

0
 
G__inference_sequential_4_layer_call_and_return_conditional_losses_25958T.’+
$’!

inputs
p 

 
ͺ "’

0
 
G__inference_sequential_4_layer_call_and_return_conditional_losses_25974T.’+
$’!

inputs
p

 
ͺ "’

0
 {
,__inference_sequential_4_layer_call_fn_25796K2’/
(’%


InputLayer
p 

 
ͺ "{
,__inference_sequential_4_layer_call_fn_25869K2’/
(’%


InputLayer
p

 
ͺ "w
,__inference_sequential_4_layer_call_fn_25929G.’+
$’!

inputs
p 

 
ͺ "w
,__inference_sequential_4_layer_call_fn_25942G.’+
$’!

inputs
p

 
ͺ "
#__inference_signature_wrapper_25916j8’5
’ 
.ͺ+
)

InputLayer

InputLayer"(ͺ%
#
dense_4
dense_4