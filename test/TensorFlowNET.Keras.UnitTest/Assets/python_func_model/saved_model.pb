Íđ
đź
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*
2.11.0-rc22v2.11.0-rc2-0-gdb80fa53b768ą
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
n
learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
f
	iterationVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	

transformer/matrixVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
*#
shared_nametransformer/matrix
z
&transformer/matrix/Read/ReadVariableOpReadVariableOptransformer/matrix*
_output_shapes
:	
*
dtype0
|
serving_default_input_1Placeholder*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
Ĺ
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1transformer/matrix*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference_signature_wrapper_185

NoOpNoOp
Í
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueţBű Bô

layer_with_weights-0
layer-0
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
Ž
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

matrix
owned_weight*

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 

0*

0*
* 
°
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
trace_0
trace_1
 trace_2
!trace_3* 
6
"trace_0
#trace_1
$trace_2
%trace_3* 
* 
O
&
_variables
'_iterations
(_learning_rate
)_update_step_xla*

*serving_default* 

0*

0*
* 

+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

0trace_0* 

1trace_0* 
b\
VARIABLE_VALUEtransformer/matrix6layer_with_weights-0/matrix/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

7trace_0* 

8trace_0* 
* 

0
1*

90
:1*
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

'0*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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
8
;	variables
<	keras_api
	=total
	>count*
H
?	variables
@	keras_api
	Atotal
	Bcount
C
_fn_kwargs*

=0
>1*

;	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

?	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ů
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename&transformer/matrix/Read/ReadVariableOpiteration/Read/ReadVariableOp!learning_rate/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOpConst*
Tin
2		*
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
GPU 2J 8 *%
f R
__inference__traced_save_298
č
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenametransformer/matrix	iterationlearning_ratetotal_1count_1totalcount*
Tin

2*
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
__inference__traced_restore_329´Ű
"
ö
__inference__traced_restore_329
file_prefix6
#assignvariableop_transformer_matrix:	
&
assignvariableop_1_iteration:	 *
 assignvariableop_2_learning_rate: $
assignvariableop_3_total_1: $
assignvariableop_4_count_1: "
assignvariableop_5_total: "
assignvariableop_6_count: 

identity_8˘AssignVariableOp˘AssignVariableOp_1˘AssignVariableOp_2˘AssignVariableOp_3˘AssignVariableOp_4˘AssignVariableOp_5˘AssignVariableOp_6
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ş
value BB6layer_with_weights-0/matrix/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B Ć
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*4
_output_shapes"
 ::::::::*
dtypes

2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:ś
AssignVariableOpAssignVariableOp#assignvariableop_transformer_matrixIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0	*
_output_shapes
:ł
AssignVariableOp_1AssignVariableOpassignvariableop_1_iterationIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:ˇ
AssignVariableOp_2AssignVariableOp assignvariableop_2_learning_rateIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_3AssignVariableOpassignvariableop_3_total_1Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:ą
AssignVariableOp_4AssignVariableOpassignvariableop_4_count_1Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ż
AssignVariableOp_5AssignVariableOpassignvariableop_5_totalIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ż
AssignVariableOp_6AssignVariableOpassignvariableop_6_countIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ë

Identity_7Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^NoOp"/device:CPU:0*
T0*
_output_shapes
: U

Identity_8IdentityIdentity_7:output:0^NoOp_1*
T0*
_output_shapes
: Ů
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6*"
_acd_function_control_output(*
_output_shapes
 "!

identity_8Identity_8:output:0*#
_input_shapes
: : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_6:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
É
\
@__inference_softmax_layer_call_and_return_conditional_losses_254

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙
:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs

A
%__inference_softmax_layer_call_fn_249

inputs
identityŤ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_softmax_layer_call_and_return_conditional_losses_107`
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙
:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
Ů
Ĺ
C__inference_sequential_layer_call_and_return_conditional_losses_212

inputs=
*transformer_matmul_readvariableop_resource:	

identity˘!transformer/MatMul/ReadVariableOpV
transformer/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?o
transformer/addAddV2inputstransformer/add/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!transformer/MatMul/ReadVariableOpReadVariableOp*transformer_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
transformer/MatMulMatMultransformer/add:z:0)transformer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
transformer/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
transformer/subSubtransformer/MatMul:product:0transformer/sub/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

transformer/add_1AddV2transformer/MatMul:product:0transformer/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
softmax/SoftmaxSoftmaxtransformer/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
NoOpNoOp"^transformer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2F
!transformer/MatMul/ReadVariableOp!transformer/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
ľ
ś
__inference__wrapped_model_79
input_1H
5sequential_transformer_matmul_readvariableop_resource:	

identity˘,sequential/transformer/MatMul/ReadVariableOpa
sequential/transformer/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
sequential/transformer/addAddV2input_1%sequential/transformer/add/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙Ł
,sequential/transformer/MatMul/ReadVariableOpReadVariableOp5sequential_transformer_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0Ż
sequential/transformer/MatMulMatMulsequential/transformer/add:z:04sequential/transformer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
a
sequential/transformer/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ł
sequential/transformer/subSub'sequential/transformer/MatMul:product:0%sequential/transformer/sub/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
sequential/transformer/add_1AddV2'sequential/transformer/MatMul:product:0sequential/transformer/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
sequential/softmax/SoftmaxSoftmax sequential/transformer/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
s
IdentityIdentity$sequential/softmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
u
NoOpNoOp-^sequential/transformer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2\
,sequential/transformer/MatMul/ReadVariableOp,sequential/transformer/MatMul/ReadVariableOp:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1


__inference__traced_save_298
file_prefix1
-savev2_transformer_matrix_read_readvariableop(
$savev2_iteration_read_readvariableop	,
(savev2_learning_rate_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop
savev2_const

identity_1˘MergeV2Checkpointsw
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
: 
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ş
value BB6layer_with_weights-0/matrix/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH}
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*#
valueBB B B B B B B B ę
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0-savev2_transformer_matrix_read_readvariableop$savev2_iteration_read_readvariableop(savev2_learning_rate_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableopsavev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes

2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:ł
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

identity_1Identity_1:output:0*.
_input_shapes
: :	
: : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
:

_output_shapes
: :
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
: :

_output_shapes
: 
ń	
­
C__inference_transformer_layer_call_and_return_conditional_losses_98

inputs1
matmul_readvariableop_resource:	

identity˘MatMul/ReadVariableOpJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?W
addAddV2inputsadd/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMuladd:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?^
subSubMatMul:product:0sub/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
add_1AddV2MatMul:product:0sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

~
(__inference_sequential_layer_call_fn_115
input_1
unknown:	

identity˘StatefulPartitionedCallĚ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_110o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

}
(__inference_sequential_layer_call_fn_199

inputs
unknown:	

identity˘StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
á

­
C__inference_sequential_layer_call_and_return_conditional_losses_174
input_1"
transformer_169:	

identity˘#transformer/StatefulPartitionedCallŕ
#transformer/StatefulPartitionedCallStatefulPartitionedCallinput_1transformer_169*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_transformer_layer_call_and_return_conditional_losses_98Ů
softmax/PartitionedCallPartitionedCall,transformer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_softmax_layer_call_and_return_conditional_losses_107o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
NoOpNoOp$^transformer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2J
#transformer/StatefulPartitionedCall#transformer/StatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

~
)__inference_transformer_layer_call_fn_232

inputs
unknown:	

identity˘StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_transformer_layer_call_and_return_conditional_losses_98o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ţ

Ź
C__inference_sequential_layer_call_and_return_conditional_losses_146

inputs"
transformer_141:	

identity˘#transformer/StatefulPartitionedCallß
#transformer/StatefulPartitionedCallStatefulPartitionedCallinputstransformer_141*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_transformer_layer_call_and_return_conditional_losses_98Ů
softmax/PartitionedCallPartitionedCall,transformer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_softmax_layer_call_and_return_conditional_losses_107o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
NoOpNoOp$^transformer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2J
#transformer/StatefulPartitionedCall#transformer/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
đ
w
!__inference_signature_wrapper_185
input_1
unknown:	

identity˘StatefulPartitionedCallŚ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__wrapped_model_79o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1
ň	
Ž
D__inference_transformer_layer_call_and_return_conditional_losses_244

inputs1
matmul_readvariableop_resource:	

identity˘MatMul/ReadVariableOpJ
add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?W
addAddV2inputsadd/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙u
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
*
dtype0j
MatMulMatMuladd:z:0MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
J
sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?^
subSubMatMul:product:0sub/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
add_1AddV2MatMul:product:0sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
X
IdentityIdentity	add_1:z:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
^
NoOpNoOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
Ů
Ĺ
C__inference_sequential_layer_call_and_return_conditional_losses_225

inputs=
*transformer_matmul_readvariableop_resource:	

identity˘!transformer/MatMul/ReadVariableOpV
transformer/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?o
transformer/addAddV2inputstransformer/add/y:output:0*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!transformer/MatMul/ReadVariableOpReadVariableOp*transformer_matmul_readvariableop_resource*
_output_shapes
:	
*
dtype0
transformer/MatMulMatMultransformer/add:z:0)transformer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
V
transformer/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
transformer/subSubtransformer/MatMul:product:0transformer/sub/y:output:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

transformer/add_1AddV2transformer/MatMul:product:0transformer/sub:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
c
softmax/SoftmaxSoftmaxtransformer/add_1:z:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
h
IdentityIdentitysoftmax/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
NoOpNoOp"^transformer/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2F
!transformer/MatMul/ReadVariableOp!transformer/MatMul/ReadVariableOp:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs

~
(__inference_sequential_layer_call_fn_158
input_1
unknown:	

identity˘StatefulPartitionedCallĚ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_146o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1

}
(__inference_sequential_layer_call_fn_192

inputs
unknown:	

identity˘StatefulPartitionedCallË
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_sequential_layer_call_and_return_conditional_losses_110o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
É
\
@__inference_softmax_layer_call_and_return_conditional_losses_107

inputs
identityL
SoftmaxSoftmaxinputs*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
Y
IdentityIdentitySoftmax:softmax:0*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:˙˙˙˙˙˙˙˙˙
:O K
'
_output_shapes
:˙˙˙˙˙˙˙˙˙

 
_user_specified_nameinputs
Ü

Ť
C__inference_sequential_layer_call_and_return_conditional_losses_110

inputs!
transformer_99:	

identity˘#transformer/StatefulPartitionedCallŢ
#transformer/StatefulPartitionedCallStatefulPartitionedCallinputstransformer_99*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_transformer_layer_call_and_return_conditional_losses_98Ů
softmax/PartitionedCallPartitionedCall,transformer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_softmax_layer_call_and_return_conditional_losses_107o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
NoOpNoOp$^transformer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2J
#transformer/StatefulPartitionedCall#transformer/StatefulPartitionedCall:P L
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
 
_user_specified_nameinputs
á

­
C__inference_sequential_layer_call_and_return_conditional_losses_166
input_1"
transformer_161:	

identity˘#transformer/StatefulPartitionedCallŕ
#transformer/StatefulPartitionedCallStatefulPartitionedCallinput_1transformer_161*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_transformer_layer_call_and_return_conditional_losses_98Ů
softmax/PartitionedCallPartitionedCall,transformer/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:˙˙˙˙˙˙˙˙˙
* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_softmax_layer_call_and_return_conditional_losses_107o
IdentityIdentity softmax/PartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
l
NoOpNoOp$^transformer/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
:˙˙˙˙˙˙˙˙˙: 2J
#transformer/StatefulPartitionedCall#transformer/StatefulPartitionedCall:Q M
(
_output_shapes
:˙˙˙˙˙˙˙˙˙
!
_user_specified_name	input_1"
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Ť
serving_default
<
input_11
serving_default_input_1:0˙˙˙˙˙˙˙˙˙;
softmax0
StatefulPartitionedCall:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict:ĹW

layer_with_weights-0
layer-0
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
Ă
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

matrix
owned_weight"
_tf_keras_layer
Ľ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
Ę
non_trainable_variables

layers
metrics
layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
	_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ő
trace_0
trace_1
 trace_2
!trace_32ę
(__inference_sequential_layer_call_fn_115
(__inference_sequential_layer_call_fn_192
(__inference_sequential_layer_call_fn_199
(__inference_sequential_layer_call_fn_158ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 ztrace_0ztrace_1z trace_2z!trace_3
Á
"trace_0
#trace_1
$trace_2
%trace_32Ö
C__inference_sequential_layer_call_and_return_conditional_losses_212
C__inference_sequential_layer_call_and_return_conditional_losses_225
C__inference_sequential_layer_call_and_return_conditional_losses_166
C__inference_sequential_layer_call_and_return_conditional_losses_174ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z"trace_0z#trace_1z$trace_2z%trace_3
ČBĹ
__inference__wrapped_model_79input_1"
˛
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
j
&
_variables
'_iterations
(_learning_rate
)_update_step_xla"
experimentalOptimizer
,
*serving_default"
signature_map
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
­
+non_trainable_variables

,layers
-metrics
.layer_regularization_losses
/layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
í
0trace_02Đ
)__inference_transformer_layer_call_fn_232˘
˛
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
annotationsŞ *
 z0trace_0

1trace_02ë
D__inference_transformer_layer_call_and_return_conditional_losses_244˘
˛
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
annotationsŞ *
 z1trace_0
%:#	
2transformer/matrix
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2non_trainable_variables

3layers
4metrics
5layer_regularization_losses
6layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ö
7trace_02Ů
%__inference_softmax_layer_call_fn_249Ż
Ś˛˘
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z7trace_0

8trace_02ô
@__inference_softmax_layer_call_and_return_conditional_losses_254Ż
Ś˛˘
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 z8trace_0
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
úB÷
(__inference_sequential_layer_call_fn_115input_1"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
(__inference_sequential_layer_call_fn_192inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
ůBö
(__inference_sequential_layer_call_fn_199inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
úB÷
(__inference_sequential_layer_call_fn_158input_1"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_sequential_layer_call_and_return_conditional_losses_212inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_sequential_layer_call_and_return_conditional_losses_225inputs"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_sequential_layer_call_and_return_conditional_losses_166input_1"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
B
C__inference_sequential_layer_call_and_return_conditional_losses_174input_1"ż
ś˛˛
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

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
'
'0"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
ż2źš
Ž˛Ş
FullArgSpec2
args*'
jself

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 0
ČBĹ
!__inference_signature_wrapper_185input_1"
˛
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
annotationsŞ *
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
ÝBÚ
)__inference_transformer_layer_call_fn_232inputs"˘
˛
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
annotationsŞ *
 
řBő
D__inference_transformer_layer_call_and_return_conditional_losses_244inputs"˘
˛
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
annotationsŞ *
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
ćBă
%__inference_softmax_layer_call_fn_249inputs"Ż
Ś˛˘
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
Bţ
@__inference_softmax_layer_call_and_return_conditional_losses_254inputs"Ż
Ś˛˘
FullArgSpec%
args
jself
jinputs
jmask
varargs
 
varkw
 
defaults˘

 

kwonlyargs 
kwonlydefaults
 
annotationsŞ *
 
N
;	variables
<	keras_api
	=total
	>count"
_tf_keras_metric
^
?	variables
@	keras_api
	Atotal
	Bcount
C
_fn_kwargs"
_tf_keras_metric
.
=0
>1"
trackable_list_wrapper
-
;	variables"
_generic_user_object
:  (2total
:  (2count
.
A0
B1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
__inference__wrapped_model_79i1˘.
'˘$
"
input_1˙˙˙˙˙˙˙˙˙
Ş "1Ş.
,
softmax!
softmax˙˙˙˙˙˙˙˙˙
ł
C__inference_sequential_layer_call_and_return_conditional_losses_166l9˘6
/˘,
"
input_1˙˙˙˙˙˙˙˙˙
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 ł
C__inference_sequential_layer_call_and_return_conditional_losses_174l9˘6
/˘,
"
input_1˙˙˙˙˙˙˙˙˙
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 ˛
C__inference_sequential_layer_call_and_return_conditional_losses_212k8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 ˛
C__inference_sequential_layer_call_and_return_conditional_losses_225k8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 
(__inference_sequential_layer_call_fn_115a9˘6
/˘,
"
input_1˙˙˙˙˙˙˙˙˙
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙

(__inference_sequential_layer_call_fn_158a9˘6
/˘,
"
input_1˙˙˙˙˙˙˙˙˙
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙

(__inference_sequential_layer_call_fn_192`8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p 

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙

(__inference_sequential_layer_call_fn_199`8˘5
.˘+
!
inputs˙˙˙˙˙˙˙˙˙
p

 
Ş "!
unknown˙˙˙˙˙˙˙˙˙

!__inference_signature_wrapper_185t<˘9
˘ 
2Ş/
-
input_1"
input_1˙˙˙˙˙˙˙˙˙"1Ş.
,
softmax!
softmax˙˙˙˙˙˙˙˙˙
§
@__inference_softmax_layer_call_and_return_conditional_losses_254c3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙


 
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 
%__inference_softmax_layer_call_fn_249X3˘0
)˘&
 
inputs˙˙˙˙˙˙˙˙˙


 
Ş "!
unknown˙˙˙˙˙˙˙˙˙
Ť
D__inference_transformer_layer_call_and_return_conditional_losses_244c0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş ",˘)
"
tensor_0˙˙˙˙˙˙˙˙˙

 
)__inference_transformer_layer_call_fn_232X0˘-
&˘#
!
inputs˙˙˙˙˙˙˙˙˙
Ş "!
unknown˙˙˙˙˙˙˙˙˙
