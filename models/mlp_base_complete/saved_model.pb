
Á¥
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
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
¾
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
executor_typestring 
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8©
|
dense_215/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F@*!
shared_namedense_215/kernel
u
$dense_215/kernel/Read/ReadVariableOpReadVariableOpdense_215/kernel*
_output_shapes

:F@*
dtype0
t
dense_215/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_namedense_215/bias
m
"dense_215/bias/Read/ReadVariableOpReadVariableOpdense_215/bias*
_output_shapes
:@*
dtype0

batch_normalization_16/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_16/gamma

0batch_normalization_16/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_16/gamma*
_output_shapes
:@*
dtype0

batch_normalization_16/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_16/beta

/batch_normalization_16/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_16/beta*
_output_shapes
:@*
dtype0

"batch_normalization_16/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_16/moving_mean

6batch_normalization_16/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_16/moving_mean*
_output_shapes
:@*
dtype0
¤
&batch_normalization_16/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_16/moving_variance

:batch_normalization_16/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_16/moving_variance*
_output_shapes
:@*
dtype0
}
dense_216/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*!
shared_namedense_216/kernel
v
$dense_216/kernel/Read/ReadVariableOpReadVariableOpdense_216/kernel*
_output_shapes
:	@*
dtype0
u
dense_216/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_216/bias
n
"dense_216/bias/Read/ReadVariableOpReadVariableOpdense_216/bias*
_output_shapes	
:*
dtype0

batch_normalization_17/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_namebatch_normalization_17/gamma

0batch_normalization_17/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_17/gamma*
_output_shapes	
:*
dtype0

batch_normalization_17/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_17/beta

/batch_normalization_17/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_17/beta*
_output_shapes	
:*
dtype0

"batch_normalization_17/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"batch_normalization_17/moving_mean

6batch_normalization_17/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_17/moving_mean*
_output_shapes	
:*
dtype0
¥
&batch_normalization_17/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&batch_normalization_17/moving_variance

:batch_normalization_17/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_17/moving_variance*
_output_shapes	
:*
dtype0
~
dense_217/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Î*!
shared_namedense_217/kernel
w
$dense_217/kernel/Read/ReadVariableOpReadVariableOpdense_217/kernel* 
_output_shapes
:
Î*
dtype0
u
dense_217/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Î*
shared_namedense_217/bias
n
"dense_217/bias/Read/ReadVariableOpReadVariableOpdense_217/bias*
_output_shapes	
:Î*
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

Adam/dense_215/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F@*(
shared_nameAdam/dense_215/kernel/m

+Adam/dense_215/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_215/kernel/m*
_output_shapes

:F@*
dtype0

Adam/dense_215/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_215/bias/m
{
)Adam/dense_215/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_215/bias/m*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_16/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_16/gamma/m

7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/m*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_16/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_16/beta/m

6Adam/batch_normalization_16/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/m*
_output_shapes
:@*
dtype0

Adam/dense_216/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_216/kernel/m

+Adam/dense_216/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_216/kernel/m*
_output_shapes
:	@*
dtype0

Adam/dense_216/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_216/bias/m
|
)Adam/dense_216/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_216/bias/m*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_17/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_17/gamma/m

7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_17/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_17/beta/m

6Adam/batch_normalization_17/beta/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/m*
_output_shapes	
:*
dtype0

Adam/dense_217/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Î*(
shared_nameAdam/dense_217/kernel/m

+Adam/dense_217/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_217/kernel/m* 
_output_shapes
:
Î*
dtype0

Adam/dense_217/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:Î*&
shared_nameAdam/dense_217/bias/m
|
)Adam/dense_217/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_217/bias/m*
_output_shapes	
:Î*
dtype0

Adam/dense_215/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:F@*(
shared_nameAdam/dense_215/kernel/v

+Adam/dense_215/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_215/kernel/v*
_output_shapes

:F@*
dtype0

Adam/dense_215/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*&
shared_nameAdam/dense_215/bias/v
{
)Adam/dense_215/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_215/bias/v*
_output_shapes
:@*
dtype0

#Adam/batch_normalization_16/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*4
shared_name%#Adam/batch_normalization_16/gamma/v

7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_16/gamma/v*
_output_shapes
:@*
dtype0

"Adam/batch_normalization_16/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"Adam/batch_normalization_16/beta/v

6Adam/batch_normalization_16/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_16/beta/v*
_output_shapes
:@*
dtype0

Adam/dense_216/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*(
shared_nameAdam/dense_216/kernel/v

+Adam/dense_216/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_216/kernel/v*
_output_shapes
:	@*
dtype0

Adam/dense_216/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_216/bias/v
|
)Adam/dense_216/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_216/bias/v*
_output_shapes	
:*
dtype0

#Adam/batch_normalization_17/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#Adam/batch_normalization_17/gamma/v

7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOpReadVariableOp#Adam/batch_normalization_17/gamma/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_17/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_17/beta/v

6Adam/batch_normalization_17/beta/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_17/beta/v*
_output_shapes	
:*
dtype0

Adam/dense_217/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Î*(
shared_nameAdam/dense_217/kernel/v

+Adam/dense_217/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_217/kernel/v* 
_output_shapes
:
Î*
dtype0

Adam/dense_217/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:Î*&
shared_nameAdam/dense_217/bias/v
|
)Adam/dense_217/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_217/bias/v*
_output_shapes	
:Î*
dtype0

NoOpNoOp
°B
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ëA
valueáABÞA B×A
Î
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api

axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
R
trainable_variables
	variables
regularization_losses
 	keras_api
h

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api

'axis
	(gamma
)beta
*moving_mean
+moving_variance
,trainable_variables
-	variables
.regularization_losses
/	keras_api
R
0trainable_variables
1	variables
2regularization_losses
3	keras_api
h

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
ú
:iter

;beta_1

<beta_2
	=decay
>learning_ratemrmsmtmu!mv"mw(mx)my4mz5m{v|v}v~v!v"v(v)v4v5v
F
0
1
2
3
!4
"5
(6
)7
48
59
f
0
1
2
3
4
5
!6
"7
(8
)9
*10
+11
412
513
 
­
	trainable_variables
?layer_metrics
@layer_regularization_losses
Anon_trainable_variables

Blayers

	variables
regularization_losses
Cmetrics
 
\Z
VARIABLE_VALUEdense_215/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_215/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
­
trainable_variables
Dlayer_metrics
Elayer_regularization_losses
Fnon_trainable_variables

Glayers
	variables
regularization_losses
Hmetrics
 
ge
VARIABLE_VALUEbatch_normalization_16/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_16/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_16/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_16/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
2
3
 
­
trainable_variables
Ilayer_metrics
Jlayer_regularization_losses
Knon_trainable_variables

Llayers
	variables
regularization_losses
Mmetrics
 
 
 
­
trainable_variables
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables

Qlayers
	variables
regularization_losses
Rmetrics
\Z
VARIABLE_VALUEdense_216/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_216/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

!0
"1

!0
"1
 
­
#trainable_variables
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables

Vlayers
$	variables
%regularization_losses
Wmetrics
 
ge
VARIABLE_VALUEbatch_normalization_17/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_17/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_17/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_17/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

(0
)1

(0
)1
*2
+3
 
­
,trainable_variables
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables

[layers
-	variables
.regularization_losses
\metrics
 
 
 
­
0trainable_variables
]layer_metrics
^layer_regularization_losses
_non_trainable_variables

`layers
1	variables
2regularization_losses
ametrics
\Z
VARIABLE_VALUEdense_217/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_217/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

40
51

40
51
 
­
6trainable_variables
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables

elayers
7	variables
8regularization_losses
fmetrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

0
1
*2
+3
1
0
1
2
3
4
5
6

g0
h1
 
 
 
 
 
 
 

0
1
 
 
 
 
 
 
 
 
 
 
 
 
 
 

*0
+1
 
 
 
 
 
 
 
 
 
 
 
 
4
	itotal
	jcount
k	variables
l	keras_api
D
	mtotal
	ncount
o
_fn_kwargs
p	variables
q	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

i0
j1

k	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

m0
n1

p	variables
}
VARIABLE_VALUEAdam/dense_215/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_215/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_16/gamma/mQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_16/beta/mPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_216/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_216/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_17/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_17/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_217/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_217/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_215/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_215/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_16/gamma/vQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_16/beta/vPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_216/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_216/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adam/batch_normalization_17/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_17/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_217/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_217/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_dense_215_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿF
Ï
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_215_inputdense_215/kerneldense_215/bias&batch_normalization_16/moving_variancebatch_normalization_16/gamma"batch_normalization_16/moving_meanbatch_normalization_16/betadense_216/kerneldense_216/bias&batch_normalization_17/moving_variancebatch_normalization_17/gamma"batch_normalization_17/moving_meanbatch_normalization_17/betadense_217/kerneldense_217/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_3037469
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ã
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_215/kernel/Read/ReadVariableOp"dense_215/bias/Read/ReadVariableOp0batch_normalization_16/gamma/Read/ReadVariableOp/batch_normalization_16/beta/Read/ReadVariableOp6batch_normalization_16/moving_mean/Read/ReadVariableOp:batch_normalization_16/moving_variance/Read/ReadVariableOp$dense_216/kernel/Read/ReadVariableOp"dense_216/bias/Read/ReadVariableOp0batch_normalization_17/gamma/Read/ReadVariableOp/batch_normalization_17/beta/Read/ReadVariableOp6batch_normalization_17/moving_mean/Read/ReadVariableOp:batch_normalization_17/moving_variance/Read/ReadVariableOp$dense_217/kernel/Read/ReadVariableOp"dense_217/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_215/kernel/m/Read/ReadVariableOp)Adam/dense_215/bias/m/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_16/beta/m/Read/ReadVariableOp+Adam/dense_216/kernel/m/Read/ReadVariableOp)Adam/dense_216/bias/m/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/m/Read/ReadVariableOp6Adam/batch_normalization_17/beta/m/Read/ReadVariableOp+Adam/dense_217/kernel/m/Read/ReadVariableOp)Adam/dense_217/bias/m/Read/ReadVariableOp+Adam/dense_215/kernel/v/Read/ReadVariableOp)Adam/dense_215/bias/v/Read/ReadVariableOp7Adam/batch_normalization_16/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_16/beta/v/Read/ReadVariableOp+Adam/dense_216/kernel/v/Read/ReadVariableOp)Adam/dense_216/bias/v/Read/ReadVariableOp7Adam/batch_normalization_17/gamma/v/Read/ReadVariableOp6Adam/batch_normalization_17/beta/v/Read/ReadVariableOp+Adam/dense_217/kernel/v/Read/ReadVariableOp)Adam/dense_217/bias/v/Read/ReadVariableOpConst*8
Tin1
/2-	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *)
f$R"
 __inference__traced_save_3038129
â

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_215/kerneldense_215/biasbatch_normalization_16/gammabatch_normalization_16/beta"batch_normalization_16/moving_mean&batch_normalization_16/moving_variancedense_216/kerneldense_216/biasbatch_normalization_17/gammabatch_normalization_17/beta"batch_normalization_17/moving_mean&batch_normalization_17/moving_variancedense_217/kerneldense_217/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_215/kernel/mAdam/dense_215/bias/m#Adam/batch_normalization_16/gamma/m"Adam/batch_normalization_16/beta/mAdam/dense_216/kernel/mAdam/dense_216/bias/m#Adam/batch_normalization_17/gamma/m"Adam/batch_normalization_17/beta/mAdam/dense_217/kernel/mAdam/dense_217/bias/mAdam/dense_215/kernel/vAdam/dense_215/bias/v#Adam/batch_normalization_16/gamma/v"Adam/batch_normalization_16/beta/vAdam/dense_216/kernel/vAdam/dense_216/bias/v#Adam/batch_normalization_17/gamma/v"Adam/batch_normalization_17/beta/vAdam/dense_217/kernel/vAdam/dense_217/bias/v*7
Tin0
.2,*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *,
f'R%
#__inference__traced_restore_3038268ÿÈ


I
-__inference_dropout_157_layer_call_fn_3037828

inputs
identityÉ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371092
PartitionedCalll
IdentityIdentityPartitionedCall:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
û	
ß
F__inference_dense_217_layer_call_and_return_conditional_losses_3037225

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Î*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Î*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
\
¿
 __inference__traced_save_3038129
file_prefix/
+savev2_dense_215_kernel_read_readvariableop-
)savev2_dense_215_bias_read_readvariableop;
7savev2_batch_normalization_16_gamma_read_readvariableop:
6savev2_batch_normalization_16_beta_read_readvariableopA
=savev2_batch_normalization_16_moving_mean_read_readvariableopE
Asavev2_batch_normalization_16_moving_variance_read_readvariableop/
+savev2_dense_216_kernel_read_readvariableop-
)savev2_dense_216_bias_read_readvariableop;
7savev2_batch_normalization_17_gamma_read_readvariableop:
6savev2_batch_normalization_17_beta_read_readvariableopA
=savev2_batch_normalization_17_moving_mean_read_readvariableopE
Asavev2_batch_normalization_17_moving_variance_read_readvariableop/
+savev2_dense_217_kernel_read_readvariableop-
)savev2_dense_217_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_215_kernel_m_read_readvariableop4
0savev2_adam_dense_215_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_m_read_readvariableop6
2savev2_adam_dense_216_kernel_m_read_readvariableop4
0savev2_adam_dense_216_bias_m_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_m_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_m_read_readvariableop6
2savev2_adam_dense_217_kernel_m_read_readvariableop4
0savev2_adam_dense_217_bias_m_read_readvariableop6
2savev2_adam_dense_215_kernel_v_read_readvariableop4
0savev2_adam_dense_215_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_16_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_16_beta_v_read_readvariableop6
2savev2_adam_dense_216_kernel_v_read_readvariableop4
0savev2_adam_dense_216_bias_v_read_readvariableopB
>savev2_adam_batch_normalization_17_gamma_v_read_readvariableopA
=savev2_adam_batch_normalization_17_beta_v_read_readvariableop6
2savev2_adam_dense_217_kernel_v_read_readvariableop4
0savev2_adam_dense_217_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameö
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*
valueþBû,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesà
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_215_kernel_read_readvariableop)savev2_dense_215_bias_read_readvariableop7savev2_batch_normalization_16_gamma_read_readvariableop6savev2_batch_normalization_16_beta_read_readvariableop=savev2_batch_normalization_16_moving_mean_read_readvariableopAsavev2_batch_normalization_16_moving_variance_read_readvariableop+savev2_dense_216_kernel_read_readvariableop)savev2_dense_216_bias_read_readvariableop7savev2_batch_normalization_17_gamma_read_readvariableop6savev2_batch_normalization_17_beta_read_readvariableop=savev2_batch_normalization_17_moving_mean_read_readvariableopAsavev2_batch_normalization_17_moving_variance_read_readvariableop+savev2_dense_217_kernel_read_readvariableop)savev2_dense_217_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_215_kernel_m_read_readvariableop0savev2_adam_dense_215_bias_m_read_readvariableop>savev2_adam_batch_normalization_16_gamma_m_read_readvariableop=savev2_adam_batch_normalization_16_beta_m_read_readvariableop2savev2_adam_dense_216_kernel_m_read_readvariableop0savev2_adam_dense_216_bias_m_read_readvariableop>savev2_adam_batch_normalization_17_gamma_m_read_readvariableop=savev2_adam_batch_normalization_17_beta_m_read_readvariableop2savev2_adam_dense_217_kernel_m_read_readvariableop0savev2_adam_dense_217_bias_m_read_readvariableop2savev2_adam_dense_215_kernel_v_read_readvariableop0savev2_adam_dense_215_bias_v_read_readvariableop>savev2_adam_batch_normalization_16_gamma_v_read_readvariableop=savev2_adam_batch_normalization_16_beta_v_read_readvariableop2savev2_adam_dense_216_kernel_v_read_readvariableop0savev2_adam_dense_216_bias_v_read_readvariableop>savev2_adam_batch_normalization_17_gamma_v_read_readvariableop=savev2_adam_batch_normalization_17_beta_v_read_readvariableop2savev2_adam_dense_217_kernel_v_read_readvariableop0savev2_adam_dense_217_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *:
dtypes0
.2,	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*²
_input_shapes 
: :F@:@:@:@:@:@:	@::::::
Î:Î: : : : : : : : : :F@:@:@:@:	@::::
Î:Î:F@:@:@:@:	@::::
Î:Î: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:F@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::!	

_output_shapes	
::!


_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::&"
 
_output_shapes
:
Î:!

_output_shapes	
:Î:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:F@: 

_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:%!

_output_shapes
:	@:!

_output_shapes	
::!

_output_shapes	
::!

_output_shapes	
::& "
 
_output_shapes
:
Î:!!

_output_shapes	
:Î:$" 

_output_shapes

:F@: #

_output_shapes
:@: $

_output_shapes
:@: %

_output_shapes
:@:%&!

_output_shapes
:	@:!'

_output_shapes	
::!(

_output_shapes	
::!)

_output_shapes	
::&*"
 
_output_shapes
:
Î:!+

_output_shapes	
:Î:,

_output_shapes
: 
ð	
ß
F__inference_dense_215_layer_call_and_return_conditional_losses_3037710

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
Ï
f
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037947

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037813

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ý	
º
%__inference_signature_wrapper_3037469
dense_215_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCallþ
StatefulPartitionedCallStatefulPartitionedCalldense_215_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_30367462
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input


Ä
/__inference_sequential_58_layer_call_fn_3037354
dense_215_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCalldense_215_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_30373232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input


Ä
/__inference_sequential_58_layer_call_fn_3037426
dense_215_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall¦
StatefulPartitionedCallStatefulPartitionedCalldense_215_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_30373952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input
Â
«
8__inference_batch_normalization_17_layer_call_fn_3037930

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_30370152
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

g
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037196

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÎZ
ï
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037633

inputs,
(dense_215_matmul_readvariableop_resource-
)dense_215_biasadd_readvariableop_resource<
8batch_normalization_16_batchnorm_readvariableop_resource@
<batch_normalization_16_batchnorm_mul_readvariableop_resource>
:batch_normalization_16_batchnorm_readvariableop_1_resource>
:batch_normalization_16_batchnorm_readvariableop_2_resource,
(dense_216_matmul_readvariableop_resource-
)dense_216_biasadd_readvariableop_resource<
8batch_normalization_17_batchnorm_readvariableop_resource@
<batch_normalization_17_batchnorm_mul_readvariableop_resource>
:batch_normalization_17_batchnorm_readvariableop_1_resource>
:batch_normalization_17_batchnorm_readvariableop_2_resource,
(dense_217_matmul_readvariableop_resource-
)dense_217_biasadd_readvariableop_resource
identity¢/batch_normalization_16/batchnorm/ReadVariableOp¢1batch_normalization_16/batchnorm/ReadVariableOp_1¢1batch_normalization_16/batchnorm/ReadVariableOp_2¢3batch_normalization_16/batchnorm/mul/ReadVariableOp¢/batch_normalization_17/batchnorm/ReadVariableOp¢1batch_normalization_17/batchnorm/ReadVariableOp_1¢1batch_normalization_17/batchnorm/ReadVariableOp_2¢3batch_normalization_17/batchnorm/mul/ReadVariableOp¢ dense_215/BiasAdd/ReadVariableOp¢dense_215/MatMul/ReadVariableOp¢ dense_216/BiasAdd/ReadVariableOp¢dense_216/MatMul/ReadVariableOp¢ dense_217/BiasAdd/ReadVariableOp¢dense_217/MatMul/ReadVariableOp«
dense_215/MatMul/ReadVariableOpReadVariableOp(dense_215_matmul_readvariableop_resource*
_output_shapes

:F@*
dtype02!
dense_215/MatMul/ReadVariableOp
dense_215/MatMulMatMulinputs'dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/MatMulª
 dense_215/BiasAdd/ReadVariableOpReadVariableOp)dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_215/BiasAdd/ReadVariableOp©
dense_215/BiasAddBiasAdddense_215/MatMul:product:0(dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/BiasAddv
dense_215/ReluReludense_215/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/Relu×
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOp
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_16/batchnorm/add/yä
$batch_normalization_16/batchnorm/addAddV27batch_normalization_16/batchnorm/ReadVariableOp:value:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/add¨
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_16/batchnorm/Rsqrtã
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOpá
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/mulÑ
&batch_normalization_16/batchnorm/mul_1Muldense_215/Relu:activations:0(batch_normalization_16/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&batch_normalization_16/batchnorm/mul_1Ý
1batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_1á
&batch_normalization_16/batchnorm/mul_2Mul9batch_normalization_16/batchnorm/ReadVariableOp_1:value:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_16/batchnorm/mul_2Ý
1batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype023
1batch_normalization_16/batchnorm/ReadVariableOp_2ß
$batch_normalization_16/batchnorm/subSub9batch_normalization_16/batchnorm/ReadVariableOp_2:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/subá
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&batch_normalization_16/batchnorm/add_1
dropout_157/IdentityIdentity*batch_normalization_16/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_157/Identity¬
dense_216/MatMul/ReadVariableOpReadVariableOp(dense_216_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_216/MatMul/ReadVariableOp©
dense_216/MatMulMatMuldropout_157/Identity:output:0'dense_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/MatMul«
 dense_216/BiasAdd/ReadVariableOpReadVariableOp)dense_216_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 dense_216/BiasAdd/ReadVariableOpª
dense_216/BiasAddBiasAdddense_216/MatMul:product:0(dense_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/BiasAddw
dense_216/ReluReludense_216/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/ReluØ
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOp
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_17/batchnorm/add/yå
$batch_normalization_17/batchnorm/addAddV27batch_normalization_17/batchnorm/ReadVariableOp:value:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/add©
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_17/batchnorm/Rsqrtä
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOpâ
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/mulÒ
&batch_normalization_17/batchnorm/mul_1Muldense_216/Relu:activations:0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_17/batchnorm/mul_1Þ
1batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_1â
&batch_normalization_17/batchnorm/mul_2Mul9batch_normalization_17/batchnorm/ReadVariableOp_1:value:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_17/batchnorm/mul_2Þ
1batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype023
1batch_normalization_17/batchnorm/ReadVariableOp_2à
$batch_normalization_17/batchnorm/subSub9batch_normalization_17/batchnorm/ReadVariableOp_2:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/subâ
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_17/batchnorm/add_1
dropout_158/IdentityIdentity*batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_158/Identity­
dense_217/MatMul/ReadVariableOpReadVariableOp(dense_217_matmul_readvariableop_resource* 
_output_shapes
:
Î*
dtype02!
dense_217/MatMul/ReadVariableOp©
dense_217/MatMulMatMuldropout_158/Identity:output:0'dense_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/MatMul«
 dense_217/BiasAdd/ReadVariableOpReadVariableOp)dense_217_biasadd_readvariableop_resource*
_output_shapes	
:Î*
dtype02"
 dense_217/BiasAdd/ReadVariableOpª
dense_217/BiasAddBiasAdddense_217/MatMul:product:0(dense_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/BiasAdd
dense_217/SigmoidSigmoiddense_217/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/SigmoidÙ
IdentityIdentitydense_217/Sigmoid:y:00^batch_normalization_16/batchnorm/ReadVariableOp2^batch_normalization_16/batchnorm/ReadVariableOp_12^batch_normalization_16/batchnorm/ReadVariableOp_24^batch_normalization_16/batchnorm/mul/ReadVariableOp0^batch_normalization_17/batchnorm/ReadVariableOp2^batch_normalization_17/batchnorm/ReadVariableOp_12^batch_normalization_17/batchnorm/ReadVariableOp_24^batch_normalization_17/batchnorm/mul/ReadVariableOp!^dense_215/BiasAdd/ReadVariableOp ^dense_215/MatMul/ReadVariableOp!^dense_216/BiasAdd/ReadVariableOp ^dense_216/MatMul/ReadVariableOp!^dense_217/BiasAdd/ReadVariableOp ^dense_217/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2f
1batch_normalization_16/batchnorm/ReadVariableOp_11batch_normalization_16/batchnorm/ReadVariableOp_12f
1batch_normalization_16/batchnorm/ReadVariableOp_21batch_normalization_16/batchnorm/ReadVariableOp_22j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2f
1batch_normalization_17/batchnorm/ReadVariableOp_11batch_normalization_17/batchnorm/ReadVariableOp_12f
1batch_normalization_17/batchnorm/ReadVariableOp_21batch_normalization_17/batchnorm/ReadVariableOp_22j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp2D
 dense_215/BiasAdd/ReadVariableOp dense_215/BiasAdd/ReadVariableOp2B
dense_215/MatMul/ReadVariableOpdense_215/MatMul/ReadVariableOp2D
 dense_216/BiasAdd/ReadVariableOp dense_216/BiasAdd/ReadVariableOp2B
dense_216/MatMul/ReadVariableOpdense_216/MatMul/ReadVariableOp2D
 dense_217/BiasAdd/ReadVariableOp dense_217/BiasAdd/ReadVariableOp2B
dense_217/MatMul/ReadVariableOpdense_217/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs

g
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037942

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ë¸

#__inference__traced_restore_3038268
file_prefix%
!assignvariableop_dense_215_kernel%
!assignvariableop_1_dense_215_bias3
/assignvariableop_2_batch_normalization_16_gamma2
.assignvariableop_3_batch_normalization_16_beta9
5assignvariableop_4_batch_normalization_16_moving_mean=
9assignvariableop_5_batch_normalization_16_moving_variance'
#assignvariableop_6_dense_216_kernel%
!assignvariableop_7_dense_216_bias3
/assignvariableop_8_batch_normalization_17_gamma2
.assignvariableop_9_batch_normalization_17_beta:
6assignvariableop_10_batch_normalization_17_moving_mean>
:assignvariableop_11_batch_normalization_17_moving_variance(
$assignvariableop_12_dense_217_kernel&
"assignvariableop_13_dense_217_bias!
assignvariableop_14_adam_iter#
assignvariableop_15_adam_beta_1#
assignvariableop_16_adam_beta_2"
assignvariableop_17_adam_decay*
&assignvariableop_18_adam_learning_rate
assignvariableop_19_total
assignvariableop_20_count
assignvariableop_21_total_1
assignvariableop_22_count_1/
+assignvariableop_23_adam_dense_215_kernel_m-
)assignvariableop_24_adam_dense_215_bias_m;
7assignvariableop_25_adam_batch_normalization_16_gamma_m:
6assignvariableop_26_adam_batch_normalization_16_beta_m/
+assignvariableop_27_adam_dense_216_kernel_m-
)assignvariableop_28_adam_dense_216_bias_m;
7assignvariableop_29_adam_batch_normalization_17_gamma_m:
6assignvariableop_30_adam_batch_normalization_17_beta_m/
+assignvariableop_31_adam_dense_217_kernel_m-
)assignvariableop_32_adam_dense_217_bias_m/
+assignvariableop_33_adam_dense_215_kernel_v-
)assignvariableop_34_adam_dense_215_bias_v;
7assignvariableop_35_adam_batch_normalization_16_gamma_v:
6assignvariableop_36_adam_batch_normalization_16_beta_v/
+assignvariableop_37_adam_dense_216_kernel_v-
)assignvariableop_38_adam_dense_216_bias_v;
7assignvariableop_39_adam_batch_normalization_17_gamma_v:
6assignvariableop_40_adam_batch_normalization_17_beta_v/
+assignvariableop_41_adam_dense_217_kernel_v-
)assignvariableop_42_adam_dense_217_bias_v
identity_44¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ü
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*
valueþBû,B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-1/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesæ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:,*
dtype0*k
valuebB`,B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Æ
_output_shapes³
°::::::::::::::::::::::::::::::::::::::::::::*:
dtypes0
.2,	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_215_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_215_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2´
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_16_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3³
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_16_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4º
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_16_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¾
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_16_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¨
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_216_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_216_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8´
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_17_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9³
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_17_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¾
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_17_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11Â
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_17_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¬
AssignVariableOp_12AssignVariableOp$assignvariableop_12_dense_217_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13ª
AssignVariableOp_13AssignVariableOp"assignvariableop_13_dense_217_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_14¥
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15§
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16§
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¦
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18®
AssignVariableOp_18AssignVariableOp&assignvariableop_18_adam_learning_rateIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¡
AssignVariableOp_19AssignVariableOpassignvariableop_19_totalIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¡
AssignVariableOp_20AssignVariableOpassignvariableop_20_countIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21£
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22£
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23³
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_215_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24±
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_215_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25¿
AssignVariableOp_25AssignVariableOp7assignvariableop_25_adam_batch_normalization_16_gamma_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26¾
AssignVariableOp_26AssignVariableOp6assignvariableop_26_adam_batch_normalization_16_beta_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27³
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_216_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28±
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_216_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29¿
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adam_batch_normalization_17_gamma_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¾
AssignVariableOp_30AssignVariableOp6assignvariableop_30_adam_batch_normalization_17_beta_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31³
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_217_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32±
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_217_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33³
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_215_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34±
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_215_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35¿
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adam_batch_normalization_16_gamma_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¾
AssignVariableOp_36AssignVariableOp6assignvariableop_36_adam_batch_normalization_16_beta_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37³
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_216_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38±
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_216_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39¿
AssignVariableOp_39AssignVariableOp7assignvariableop_39_adam_batch_normalization_17_gamma_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40¾
AssignVariableOp_40AssignVariableOp6assignvariableop_40_adam_batch_normalization_17_beta_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41³
AssignVariableOp_41AssignVariableOp+assignvariableop_41_adam_dense_217_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42±
AssignVariableOp_42AssignVariableOp)assignvariableop_42_adam_dense_217_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_429
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_43Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_43
Identity_44IdentityIdentity_43:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_44"#
identity_44Identity_44:output:0*Ã
_input_shapes±
®: :::::::::::::::::::::::::::::::::::::::::::2$
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
AssignVariableOp_42AssignVariableOp_422(
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
0
Ì
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3036842

inputs
assignmovingavg_3036817
assignmovingavg_1_3036823)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Í
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3036817*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3036817*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3036817*
_output_shapes
:@2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3036817*
_output_shapes
:@2
AssignMovingAvg/mul±
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3036817AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3036817*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÓ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3036823*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3036823*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3036823*
_output_shapes
:@2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3036823*
_output_shapes
:@2
AssignMovingAvg_1/mul½
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3036823AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3036823*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1³
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ö	
ß
F__inference_dense_216_layer_call_and_return_conditional_losses_3037133

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ö	
ß
F__inference_dense_216_layer_call_and_return_conditional_losses_3037839

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
0
Ì
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037755

inputs
assignmovingavg_3037730
assignmovingavg_1_3037736)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/mean|
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes

:@2
moments/StopGradient¤
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices²
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2
moments/Squeeze_1Í
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3037730*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3037730*
_output_shapes
:@*
dtype02 
AssignMovingAvg/ReadVariableOpò
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3037730*
_output_shapes
:@2
AssignMovingAvg/subé
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3037730*
_output_shapes
:@2
AssignMovingAvg/mul±
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3037730AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3037730*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÓ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3037736*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3037736*
_output_shapes
:@*
dtype02"
 AssignMovingAvg_1/ReadVariableOpü
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3037736*
_output_shapes
:@2
AssignMovingAvg_1/subó
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3037736*
_output_shapes
:@2
AssignMovingAvg_1/mul½
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3037736AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3037736*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1{
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1³
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¡'
ê
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037281
dense_215_input
dense_215_3037245
dense_215_3037247"
batch_normalization_16_3037250"
batch_normalization_16_3037252"
batch_normalization_16_3037254"
batch_normalization_16_3037256
dense_216_3037260
dense_216_3037262"
batch_normalization_17_3037265"
batch_normalization_17_3037267"
batch_normalization_17_3037269"
batch_normalization_17_3037271
dense_217_3037275
dense_217_3037277
identity¢.batch_normalization_16/StatefulPartitionedCall¢.batch_normalization_17/StatefulPartitionedCall¢!dense_215/StatefulPartitionedCall¢!dense_216/StatefulPartitionedCall¢!dense_217/StatefulPartitionedCall¨
!dense_215/StatefulPartitionedCallStatefulPartitionedCalldense_215_inputdense_215_3037245dense_215_3037247*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_215_layer_call_and_return_conditional_losses_30370412#
!dense_215/StatefulPartitionedCallÈ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*dense_215/StatefulPartitionedCall:output:0batch_normalization_16_3037250batch_normalization_16_3037252batch_normalization_16_3037254batch_normalization_16_3037256*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_303687520
.batch_normalization_16/StatefulPartitionedCall
dropout_157/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371092
dropout_157/PartitionedCall¾
!dense_216/StatefulPartitionedCallStatefulPartitionedCall$dropout_157/PartitionedCall:output:0dense_216_3037260dense_216_3037262*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_216_layer_call_and_return_conditional_losses_30371332#
!dense_216/StatefulPartitionedCallÉ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*dense_216/StatefulPartitionedCall:output:0batch_normalization_17_3037265batch_normalization_17_3037267batch_normalization_17_3037269batch_normalization_17_3037271*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_303701520
.batch_normalization_17/StatefulPartitionedCall
dropout_158/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30372012
dropout_158/PartitionedCall¾
!dense_217/StatefulPartitionedCallStatefulPartitionedCall$dropout_158/PartitionedCall:output:0dense_217_3037275dense_217_3037277*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_217_layer_call_and_return_conditional_losses_30372252#
!dense_217/StatefulPartitionedCallÍ
IdentityIdentity*dense_217/StatefulPartitionedCall:output:0/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall"^dense_216/StatefulPartitionedCall"^dense_217/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2F
!dense_217/StatefulPartitionedCall!dense_217/StatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input
*
­
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037323

inputs
dense_215_3037287
dense_215_3037289"
batch_normalization_16_3037292"
batch_normalization_16_3037294"
batch_normalization_16_3037296"
batch_normalization_16_3037298
dense_216_3037302
dense_216_3037304"
batch_normalization_17_3037307"
batch_normalization_17_3037309"
batch_normalization_17_3037311"
batch_normalization_17_3037313
dense_217_3037317
dense_217_3037319
identity¢.batch_normalization_16/StatefulPartitionedCall¢.batch_normalization_17/StatefulPartitionedCall¢!dense_215/StatefulPartitionedCall¢!dense_216/StatefulPartitionedCall¢!dense_217/StatefulPartitionedCall¢#dropout_157/StatefulPartitionedCall¢#dropout_158/StatefulPartitionedCall
!dense_215/StatefulPartitionedCallStatefulPartitionedCallinputsdense_215_3037287dense_215_3037289*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_215_layer_call_and_return_conditional_losses_30370412#
!dense_215/StatefulPartitionedCallÆ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*dense_215/StatefulPartitionedCall:output:0batch_normalization_16_3037292batch_normalization_16_3037294batch_normalization_16_3037296batch_normalization_16_3037298*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_303684220
.batch_normalization_16/StatefulPartitionedCallª
#dropout_157/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371042%
#dropout_157/StatefulPartitionedCallÆ
!dense_216/StatefulPartitionedCallStatefulPartitionedCall,dropout_157/StatefulPartitionedCall:output:0dense_216_3037302dense_216_3037304*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_216_layer_call_and_return_conditional_losses_30371332#
!dense_216/StatefulPartitionedCallÇ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*dense_216/StatefulPartitionedCall:output:0batch_normalization_17_3037307batch_normalization_17_3037309batch_normalization_17_3037311batch_normalization_17_3037313*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_303698220
.batch_normalization_17/StatefulPartitionedCallÑ
#dropout_158/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0$^dropout_157/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30371962%
#dropout_158/StatefulPartitionedCallÆ
!dense_217/StatefulPartitionedCallStatefulPartitionedCall,dropout_158/StatefulPartitionedCall:output:0dense_217_3037317dense_217_3037319*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_217_layer_call_and_return_conditional_losses_30372252#
!dense_217/StatefulPartitionedCall
IdentityIdentity*dense_217/StatefulPartitionedCall:output:0/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall"^dense_216/StatefulPartitionedCall"^dense_217/StatefulPartitionedCall$^dropout_157/StatefulPartitionedCall$^dropout_158/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2F
!dense_217/StatefulPartitionedCall!dense_217/StatefulPartitionedCall2J
#dropout_157/StatefulPartitionedCall#dropout_157/StatefulPartitionedCall2J
#dropout_158/StatefulPartitionedCall#dropout_158/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
Ö

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037775

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
À
«
8__inference_batch_normalization_17_layer_call_fn_3037917

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_30369822
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­
f
-__inference_dropout_158_layer_call_fn_3037952

inputs
identity¢StatefulPartitionedCallâ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30371962
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯0
Ì
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037884

inputs
assignmovingavg_3037859
assignmovingavg_1_3037865)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Í
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3037859*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3037859*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpó
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3037859*
_output_shapes	
:2
AssignMovingAvg/subê
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3037859*
_output_shapes	
:2
AssignMovingAvg/mul±
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3037859AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3037859*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÓ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3037865*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3037865*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpý
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3037865*
_output_shapes	
:2
AssignMovingAvg_1/subô
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3037865*
_output_shapes	
:2
AssignMovingAvg_1/mul½
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3037865AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3037865*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä

+__inference_dense_215_layer_call_fn_3037719

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_215_layer_call_and_return_conditional_losses_30370412
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
Ö

S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3036875

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:@2
batchnorm/addc
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:@2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2
batchnorm/mulv
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:@2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
batchnorm/add_1Û
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³*
¶
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037242
dense_215_input
dense_215_3037052
dense_215_3037054"
batch_normalization_16_3037083"
batch_normalization_16_3037085"
batch_normalization_16_3037087"
batch_normalization_16_3037089
dense_216_3037144
dense_216_3037146"
batch_normalization_17_3037175"
batch_normalization_17_3037177"
batch_normalization_17_3037179"
batch_normalization_17_3037181
dense_217_3037236
dense_217_3037238
identity¢.batch_normalization_16/StatefulPartitionedCall¢.batch_normalization_17/StatefulPartitionedCall¢!dense_215/StatefulPartitionedCall¢!dense_216/StatefulPartitionedCall¢!dense_217/StatefulPartitionedCall¢#dropout_157/StatefulPartitionedCall¢#dropout_158/StatefulPartitionedCall¨
!dense_215/StatefulPartitionedCallStatefulPartitionedCalldense_215_inputdense_215_3037052dense_215_3037054*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_215_layer_call_and_return_conditional_losses_30370412#
!dense_215/StatefulPartitionedCallÆ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*dense_215/StatefulPartitionedCall:output:0batch_normalization_16_3037083batch_normalization_16_3037085batch_normalization_16_3037087batch_normalization_16_3037089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_303684220
.batch_normalization_16/StatefulPartitionedCallª
#dropout_157/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371042%
#dropout_157/StatefulPartitionedCallÆ
!dense_216/StatefulPartitionedCallStatefulPartitionedCall,dropout_157/StatefulPartitionedCall:output:0dense_216_3037144dense_216_3037146*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_216_layer_call_and_return_conditional_losses_30371332#
!dense_216/StatefulPartitionedCallÇ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*dense_216/StatefulPartitionedCall:output:0batch_normalization_17_3037175batch_normalization_17_3037177batch_normalization_17_3037179batch_normalization_17_3037181*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_303698220
.batch_normalization_17/StatefulPartitionedCallÑ
#dropout_158/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0$^dropout_157/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30371962%
#dropout_158/StatefulPartitionedCallÆ
!dense_217/StatefulPartitionedCallStatefulPartitionedCall,dropout_158/StatefulPartitionedCall:output:0dense_217_3037236dense_217_3037238*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_217_layer_call_and_return_conditional_losses_30372252#
!dense_217/StatefulPartitionedCall
IdentityIdentity*dense_217/StatefulPartitionedCall:output:0/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall"^dense_216/StatefulPartitionedCall"^dense_217/StatefulPartitionedCall$^dropout_157/StatefulPartitionedCall$^dropout_158/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2F
!dense_217/StatefulPartitionedCall!dense_217/StatefulPartitionedCall2J
#dropout_157/StatefulPartitionedCall#dropout_157/StatefulPartitionedCall2J
#dropout_158/StatefulPartitionedCall#dropout_158/StatefulPartitionedCall:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input
¡
I
-__inference_dropout_158_layer_call_fn_3037957

inputs
identityÊ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30372012
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è¾
Ï
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037574

inputs,
(dense_215_matmul_readvariableop_resource-
)dense_215_biasadd_readvariableop_resource2
.batch_normalization_16_assignmovingavg_30374874
0batch_normalization_16_assignmovingavg_1_3037493@
<batch_normalization_16_batchnorm_mul_readvariableop_resource<
8batch_normalization_16_batchnorm_readvariableop_resource,
(dense_216_matmul_readvariableop_resource-
)dense_216_biasadd_readvariableop_resource2
.batch_normalization_17_assignmovingavg_30375344
0batch_normalization_17_assignmovingavg_1_3037540@
<batch_normalization_17_batchnorm_mul_readvariableop_resource<
8batch_normalization_17_batchnorm_readvariableop_resource,
(dense_217_matmul_readvariableop_resource-
)dense_217_biasadd_readvariableop_resource
identity¢:batch_normalization_16/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_16/AssignMovingAvg/ReadVariableOp¢<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_16/batchnorm/ReadVariableOp¢3batch_normalization_16/batchnorm/mul/ReadVariableOp¢:batch_normalization_17/AssignMovingAvg/AssignSubVariableOp¢5batch_normalization_17/AssignMovingAvg/ReadVariableOp¢<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp¢7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp¢/batch_normalization_17/batchnorm/ReadVariableOp¢3batch_normalization_17/batchnorm/mul/ReadVariableOp¢ dense_215/BiasAdd/ReadVariableOp¢dense_215/MatMul/ReadVariableOp¢ dense_216/BiasAdd/ReadVariableOp¢dense_216/MatMul/ReadVariableOp¢ dense_217/BiasAdd/ReadVariableOp¢dense_217/MatMul/ReadVariableOp«
dense_215/MatMul/ReadVariableOpReadVariableOp(dense_215_matmul_readvariableop_resource*
_output_shapes

:F@*
dtype02!
dense_215/MatMul/ReadVariableOp
dense_215/MatMulMatMulinputs'dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/MatMulª
 dense_215/BiasAdd/ReadVariableOpReadVariableOp)dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02"
 dense_215/BiasAdd/ReadVariableOp©
dense_215/BiasAddBiasAdddense_215/MatMul:product:0(dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/BiasAddv
dense_215/ReluReludense_215/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dense_215/Relu¸
5batch_normalization_16/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_16/moments/mean/reduction_indicesê
#batch_normalization_16/moments/meanMeandense_215/Relu:activations:0>batch_normalization_16/moments/mean/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2%
#batch_normalization_16/moments/meanÁ
+batch_normalization_16/moments/StopGradientStopGradient,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes

:@2-
+batch_normalization_16/moments/StopGradientÿ
0batch_normalization_16/moments/SquaredDifferenceSquaredDifferencedense_215/Relu:activations:04batch_normalization_16/moments/StopGradient:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@22
0batch_normalization_16/moments/SquaredDifferenceÀ
9batch_normalization_16/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_16/moments/variance/reduction_indices
'batch_normalization_16/moments/varianceMean4batch_normalization_16/moments/SquaredDifference:z:0Bbatch_normalization_16/moments/variance/reduction_indices:output:0*
T0*
_output_shapes

:@*
	keep_dims(2)
'batch_normalization_16/moments/varianceÅ
&batch_normalization_16/moments/SqueezeSqueeze,batch_normalization_16/moments/mean:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2(
&batch_normalization_16/moments/SqueezeÍ
(batch_normalization_16/moments/Squeeze_1Squeeze0batch_normalization_16/moments/variance:output:0*
T0*
_output_shapes
:@*
squeeze_dims
 2*
(batch_normalization_16/moments/Squeeze_1
,batch_normalization_16/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_16/AssignMovingAvg/3037487*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_16/AssignMovingAvg/decayÙ
5batch_normalization_16/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_16_assignmovingavg_3037487*
_output_shapes
:@*
dtype027
5batch_normalization_16/AssignMovingAvg/ReadVariableOpå
*batch_normalization_16/AssignMovingAvg/subSub=batch_normalization_16/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_16/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_16/AssignMovingAvg/3037487*
_output_shapes
:@2,
*batch_normalization_16/AssignMovingAvg/subÜ
*batch_normalization_16/AssignMovingAvg/mulMul.batch_normalization_16/AssignMovingAvg/sub:z:05batch_normalization_16/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_16/AssignMovingAvg/3037487*
_output_shapes
:@2,
*batch_normalization_16/AssignMovingAvg/mul»
:batch_normalization_16/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_16_assignmovingavg_3037487.batch_normalization_16/AssignMovingAvg/mul:z:06^batch_normalization_16/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_16/AssignMovingAvg/3037487*
_output_shapes
 *
dtype02<
:batch_normalization_16/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_16/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_16/AssignMovingAvg_1/3037493*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_16/AssignMovingAvg_1/decayß
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_16_assignmovingavg_1_3037493*
_output_shapes
:@*
dtype029
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOpï
,batch_normalization_16/AssignMovingAvg_1/subSub?batch_normalization_16/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_16/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_16/AssignMovingAvg_1/3037493*
_output_shapes
:@2.
,batch_normalization_16/AssignMovingAvg_1/subæ
,batch_normalization_16/AssignMovingAvg_1/mulMul0batch_normalization_16/AssignMovingAvg_1/sub:z:07batch_normalization_16/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_16/AssignMovingAvg_1/3037493*
_output_shapes
:@2.
,batch_normalization_16/AssignMovingAvg_1/mulÇ
<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_16_assignmovingavg_1_30374930batch_normalization_16/AssignMovingAvg_1/mul:z:08^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_16/AssignMovingAvg_1/3037493*
_output_shapes
 *
dtype02>
<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_16/batchnorm/add/yÞ
$batch_normalization_16/batchnorm/addAddV21batch_normalization_16/moments/Squeeze_1:output:0/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/add¨
&batch_normalization_16/batchnorm/RsqrtRsqrt(batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_16/batchnorm/Rsqrtã
3batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype025
3batch_normalization_16/batchnorm/mul/ReadVariableOpá
$batch_normalization_16/batchnorm/mulMul*batch_normalization_16/batchnorm/Rsqrt:y:0;batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/mulÑ
&batch_normalization_16/batchnorm/mul_1Muldense_215/Relu:activations:0(batch_normalization_16/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&batch_normalization_16/batchnorm/mul_1×
&batch_normalization_16/batchnorm/mul_2Mul/batch_normalization_16/moments/Squeeze:output:0(batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes
:@2(
&batch_normalization_16/batchnorm/mul_2×
/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype021
/batch_normalization_16/batchnorm/ReadVariableOpÝ
$batch_normalization_16/batchnorm/subSub7batch_normalization_16/batchnorm/ReadVariableOp:value:0*batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@2&
$batch_normalization_16/batchnorm/subá
&batch_normalization_16/batchnorm/add_1AddV2*batch_normalization_16/batchnorm/mul_1:z:0(batch_normalization_16/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2(
&batch_normalization_16/batchnorm/add_1{
dropout_157/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_157/dropout/Const»
dropout_157/dropout/MulMul*batch_normalization_16/batchnorm/add_1:z:0"dropout_157/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_157/dropout/Mul
dropout_157/dropout/ShapeShape*batch_normalization_16/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_157/dropout/ShapeØ
0dropout_157/dropout/random_uniform/RandomUniformRandomUniform"dropout_157/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype022
0dropout_157/dropout/random_uniform/RandomUniform
"dropout_157/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2$
"dropout_157/dropout/GreaterEqual/yî
 dropout_157/dropout/GreaterEqualGreaterEqual9dropout_157/dropout/random_uniform/RandomUniform:output:0+dropout_157/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2"
 dropout_157/dropout/GreaterEqual£
dropout_157/dropout/CastCast$dropout_157/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_157/dropout/Castª
dropout_157/dropout/Mul_1Muldropout_157/dropout/Mul:z:0dropout_157/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout_157/dropout/Mul_1¬
dense_216/MatMul/ReadVariableOpReadVariableOp(dense_216_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02!
dense_216/MatMul/ReadVariableOp©
dense_216/MatMulMatMuldropout_157/dropout/Mul_1:z:0'dense_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/MatMul«
 dense_216/BiasAdd/ReadVariableOpReadVariableOp)dense_216_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02"
 dense_216/BiasAdd/ReadVariableOpª
dense_216/BiasAddBiasAdddense_216/MatMul:product:0(dense_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/BiasAddw
dense_216/ReluReludense_216/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_216/Relu¸
5batch_normalization_17/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_17/moments/mean/reduction_indicesë
#batch_normalization_17/moments/meanMeandense_216/Relu:activations:0>batch_normalization_17/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2%
#batch_normalization_17/moments/meanÂ
+batch_normalization_17/moments/StopGradientStopGradient,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes
:	2-
+batch_normalization_17/moments/StopGradient
0batch_normalization_17/moments/SquaredDifferenceSquaredDifferencedense_216/Relu:activations:04batch_normalization_17/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ22
0batch_normalization_17/moments/SquaredDifferenceÀ
9batch_normalization_17/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_17/moments/variance/reduction_indices
'batch_normalization_17/moments/varianceMean4batch_normalization_17/moments/SquaredDifference:z:0Bbatch_normalization_17/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2)
'batch_normalization_17/moments/varianceÆ
&batch_normalization_17/moments/SqueezeSqueeze,batch_normalization_17/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2(
&batch_normalization_17/moments/SqueezeÎ
(batch_normalization_17/moments/Squeeze_1Squeeze0batch_normalization_17/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2*
(batch_normalization_17/moments/Squeeze_1
,batch_normalization_17/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_17/AssignMovingAvg/3037534*
_output_shapes
: *
dtype0*
valueB
 *
×#<2.
,batch_normalization_17/AssignMovingAvg/decayÚ
5batch_normalization_17/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_17_assignmovingavg_3037534*
_output_shapes	
:*
dtype027
5batch_normalization_17/AssignMovingAvg/ReadVariableOpæ
*batch_normalization_17/AssignMovingAvg/subSub=batch_normalization_17/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_17/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_17/AssignMovingAvg/3037534*
_output_shapes	
:2,
*batch_normalization_17/AssignMovingAvg/subÝ
*batch_normalization_17/AssignMovingAvg/mulMul.batch_normalization_17/AssignMovingAvg/sub:z:05batch_normalization_17/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*A
_class7
53loc:@batch_normalization_17/AssignMovingAvg/3037534*
_output_shapes	
:2,
*batch_normalization_17/AssignMovingAvg/mul»
:batch_normalization_17/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_17_assignmovingavg_3037534.batch_normalization_17/AssignMovingAvg/mul:z:06^batch_normalization_17/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*A
_class7
53loc:@batch_normalization_17/AssignMovingAvg/3037534*
_output_shapes
 *
dtype02<
:batch_normalization_17/AssignMovingAvg/AssignSubVariableOp
.batch_normalization_17/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_17/AssignMovingAvg_1/3037540*
_output_shapes
: *
dtype0*
valueB
 *
×#<20
.batch_normalization_17/AssignMovingAvg_1/decayà
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_17_assignmovingavg_1_3037540*
_output_shapes	
:*
dtype029
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOpð
,batch_normalization_17/AssignMovingAvg_1/subSub?batch_normalization_17/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_17/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_17/AssignMovingAvg_1/3037540*
_output_shapes	
:2.
,batch_normalization_17/AssignMovingAvg_1/subç
,batch_normalization_17/AssignMovingAvg_1/mulMul0batch_normalization_17/AssignMovingAvg_1/sub:z:07batch_normalization_17/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*C
_class9
75loc:@batch_normalization_17/AssignMovingAvg_1/3037540*
_output_shapes	
:2.
,batch_normalization_17/AssignMovingAvg_1/mulÇ
<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_17_assignmovingavg_1_30375400batch_normalization_17/AssignMovingAvg_1/mul:z:08^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*C
_class9
75loc:@batch_normalization_17/AssignMovingAvg_1/3037540*
_output_shapes
 *
dtype02>
<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp
&batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2(
&batch_normalization_17/batchnorm/add/yß
$batch_normalization_17/batchnorm/addAddV21batch_normalization_17/moments/Squeeze_1:output:0/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/add©
&batch_normalization_17/batchnorm/RsqrtRsqrt(batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_17/batchnorm/Rsqrtä
3batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype025
3batch_normalization_17/batchnorm/mul/ReadVariableOpâ
$batch_normalization_17/batchnorm/mulMul*batch_normalization_17/batchnorm/Rsqrt:y:0;batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/mulÒ
&batch_normalization_17/batchnorm/mul_1Muldense_216/Relu:activations:0(batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_17/batchnorm/mul_1Ø
&batch_normalization_17/batchnorm/mul_2Mul/batch_normalization_17/moments/Squeeze:output:0(batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:2(
&batch_normalization_17/batchnorm/mul_2Ø
/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype021
/batch_normalization_17/batchnorm/ReadVariableOpÞ
$batch_normalization_17/batchnorm/subSub7batch_normalization_17/batchnorm/ReadVariableOp:value:0*batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2&
$batch_normalization_17/batchnorm/subâ
&batch_normalization_17/batchnorm/add_1AddV2*batch_normalization_17/batchnorm/mul_1:z:0(batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&batch_normalization_17/batchnorm/add_1{
dropout_158/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout_158/dropout/Const¼
dropout_158/dropout/MulMul*batch_normalization_17/batchnorm/add_1:z:0"dropout_158/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_158/dropout/Mul
dropout_158/dropout/ShapeShape*batch_normalization_17/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_158/dropout/ShapeÙ
0dropout_158/dropout/random_uniform/RandomUniformRandomUniform"dropout_158/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype022
0dropout_158/dropout/random_uniform/RandomUniform
"dropout_158/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2$
"dropout_158/dropout/GreaterEqual/yï
 dropout_158/dropout/GreaterEqualGreaterEqual9dropout_158/dropout/random_uniform/RandomUniform:output:0+dropout_158/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 dropout_158/dropout/GreaterEqual¤
dropout_158/dropout/CastCast$dropout_158/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_158/dropout/Cast«
dropout_158/dropout/Mul_1Muldropout_158/dropout/Mul:z:0dropout_158/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_158/dropout/Mul_1­
dense_217/MatMul/ReadVariableOpReadVariableOp(dense_217_matmul_readvariableop_resource* 
_output_shapes
:
Î*
dtype02!
dense_217/MatMul/ReadVariableOp©
dense_217/MatMulMatMuldropout_158/dropout/Mul_1:z:0'dense_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/MatMul«
 dense_217/BiasAdd/ReadVariableOpReadVariableOp)dense_217_biasadd_readvariableop_resource*
_output_shapes	
:Î*
dtype02"
 dense_217/BiasAdd/ReadVariableOpª
dense_217/BiasAddBiasAdddense_217/MatMul:product:0(dense_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/BiasAdd
dense_217/SigmoidSigmoiddense_217/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
dense_217/Sigmoidå
IdentityIdentitydense_217/Sigmoid:y:0;^batch_normalization_16/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_16/AssignMovingAvg/ReadVariableOp=^batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_16/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_16/batchnorm/ReadVariableOp4^batch_normalization_16/batchnorm/mul/ReadVariableOp;^batch_normalization_17/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_17/AssignMovingAvg/ReadVariableOp=^batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_17/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_17/batchnorm/ReadVariableOp4^batch_normalization_17/batchnorm/mul/ReadVariableOp!^dense_215/BiasAdd/ReadVariableOp ^dense_215/MatMul/ReadVariableOp!^dense_216/BiasAdd/ReadVariableOp ^dense_216/MatMul/ReadVariableOp!^dense_217/BiasAdd/ReadVariableOp ^dense_217/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2x
:batch_normalization_16/AssignMovingAvg/AssignSubVariableOp:batch_normalization_16/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_16/AssignMovingAvg/ReadVariableOp5batch_normalization_16/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_16/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp7batch_normalization_16/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_16/batchnorm/ReadVariableOp/batch_normalization_16/batchnorm/ReadVariableOp2j
3batch_normalization_16/batchnorm/mul/ReadVariableOp3batch_normalization_16/batchnorm/mul/ReadVariableOp2x
:batch_normalization_17/AssignMovingAvg/AssignSubVariableOp:batch_normalization_17/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_17/AssignMovingAvg/ReadVariableOp5batch_normalization_17/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_17/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp7batch_normalization_17/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_17/batchnorm/ReadVariableOp/batch_normalization_17/batchnorm/ReadVariableOp2j
3batch_normalization_17/batchnorm/mul/ReadVariableOp3batch_normalization_17/batchnorm/mul/ReadVariableOp2D
 dense_215/BiasAdd/ReadVariableOp dense_215/BiasAdd/ReadVariableOp2B
dense_215/MatMul/ReadVariableOpdense_215/MatMul/ReadVariableOp2D
 dense_216/BiasAdd/ReadVariableOp dense_216/BiasAdd/ReadVariableOp2B
dense_216/MatMul/ReadVariableOpdense_216/MatMul/ReadVariableOp2D
 dense_217/BiasAdd/ReadVariableOp dense_217/BiasAdd/ReadVariableOp2B
dense_217/MatMul/ReadVariableOpdense_217/MatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
'
á
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037395

inputs
dense_215_3037359
dense_215_3037361"
batch_normalization_16_3037364"
batch_normalization_16_3037366"
batch_normalization_16_3037368"
batch_normalization_16_3037370
dense_216_3037374
dense_216_3037376"
batch_normalization_17_3037379"
batch_normalization_17_3037381"
batch_normalization_17_3037383"
batch_normalization_17_3037385
dense_217_3037389
dense_217_3037391
identity¢.batch_normalization_16/StatefulPartitionedCall¢.batch_normalization_17/StatefulPartitionedCall¢!dense_215/StatefulPartitionedCall¢!dense_216/StatefulPartitionedCall¢!dense_217/StatefulPartitionedCall
!dense_215/StatefulPartitionedCallStatefulPartitionedCallinputsdense_215_3037359dense_215_3037361*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_215_layer_call_and_return_conditional_losses_30370412#
!dense_215/StatefulPartitionedCallÈ
.batch_normalization_16/StatefulPartitionedCallStatefulPartitionedCall*dense_215/StatefulPartitionedCall:output:0batch_normalization_16_3037364batch_normalization_16_3037366batch_normalization_16_3037368batch_normalization_16_3037370*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_303687520
.batch_normalization_16/StatefulPartitionedCall
dropout_157/PartitionedCallPartitionedCall7batch_normalization_16/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371092
dropout_157/PartitionedCall¾
!dense_216/StatefulPartitionedCallStatefulPartitionedCall$dropout_157/PartitionedCall:output:0dense_216_3037374dense_216_3037376*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_216_layer_call_and_return_conditional_losses_30371332#
!dense_216/StatefulPartitionedCallÉ
.batch_normalization_17/StatefulPartitionedCallStatefulPartitionedCall*dense_216/StatefulPartitionedCall:output:0batch_normalization_17_3037379batch_normalization_17_3037381batch_normalization_17_3037383batch_normalization_17_3037385*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_303701520
.batch_normalization_17/StatefulPartitionedCall
dropout_158/PartitionedCallPartitionedCall7batch_normalization_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_158_layer_call_and_return_conditional_losses_30372012
dropout_158/PartitionedCall¾
!dense_217/StatefulPartitionedCallStatefulPartitionedCall$dropout_158/PartitionedCall:output:0dense_217_3037389dense_217_3037391*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_217_layer_call_and_return_conditional_losses_30372252#
!dense_217/StatefulPartitionedCallÍ
IdentityIdentity*dense_217/StatefulPartitionedCall:output:0/^batch_normalization_16/StatefulPartitionedCall/^batch_normalization_17/StatefulPartitionedCall"^dense_215/StatefulPartitionedCall"^dense_216/StatefulPartitionedCall"^dense_217/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2`
.batch_normalization_16/StatefulPartitionedCall.batch_normalization_16/StatefulPartitionedCall2`
.batch_normalization_17/StatefulPartitionedCall.batch_normalization_17/StatefulPartitionedCall2F
!dense_215/StatefulPartitionedCall!dense_215/StatefulPartitionedCall2F
!dense_216/StatefulPartitionedCall!dense_216/StatefulPartitionedCall2F
!dense_217/StatefulPartitionedCall!dense_217/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
Ï
f
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037201

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ä

S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037904

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ð	
ß
F__inference_dense_215_layer_call_and_return_conditional_losses_3037041

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:F@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
Relu
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿF::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
ð	
»
/__inference_sequential_58_layer_call_fn_3037666

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*,
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_30373232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
Ë
f
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037818

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
æ

+__inference_dense_216_layer_call_fn_3037848

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_216_layer_call_and_return_conditional_losses_30371332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
è

+__inference_dense_217_layer_call_fn_3037977

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_dense_217_layer_call_and_return_conditional_losses_30372252
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯0
Ì
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3036982

inputs
assignmovingavg_3036957
assignmovingavg_1_3036963)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Í
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3036957*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_3036957*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpó
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3036957*
_output_shapes	
:2
AssignMovingAvg/subê
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0**
_class 
loc:@AssignMovingAvg/3036957*
_output_shapes	
:2
AssignMovingAvg/mul±
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_3036957AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0**
_class 
loc:@AssignMovingAvg/3036957*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÓ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3036963*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_3036963*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpý
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3036963*
_output_shapes	
:2
AssignMovingAvg_1/subô
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:GPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/3036963*
_output_shapes	
:2
AssignMovingAvg_1/mul½
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_3036963AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:GPU:0*,
_class"
 loc:@AssignMovingAvg_1/3036963*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1´
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·q
Ø
"__inference__wrapped_model_3036746
dense_215_input:
6sequential_58_dense_215_matmul_readvariableop_resource;
7sequential_58_dense_215_biasadd_readvariableop_resourceJ
Fsequential_58_batch_normalization_16_batchnorm_readvariableop_resourceN
Jsequential_58_batch_normalization_16_batchnorm_mul_readvariableop_resourceL
Hsequential_58_batch_normalization_16_batchnorm_readvariableop_1_resourceL
Hsequential_58_batch_normalization_16_batchnorm_readvariableop_2_resource:
6sequential_58_dense_216_matmul_readvariableop_resource;
7sequential_58_dense_216_biasadd_readvariableop_resourceJ
Fsequential_58_batch_normalization_17_batchnorm_readvariableop_resourceN
Jsequential_58_batch_normalization_17_batchnorm_mul_readvariableop_resourceL
Hsequential_58_batch_normalization_17_batchnorm_readvariableop_1_resourceL
Hsequential_58_batch_normalization_17_batchnorm_readvariableop_2_resource:
6sequential_58_dense_217_matmul_readvariableop_resource;
7sequential_58_dense_217_biasadd_readvariableop_resource
identity¢=sequential_58/batch_normalization_16/batchnorm/ReadVariableOp¢?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1¢?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2¢Asequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOp¢=sequential_58/batch_normalization_17/batchnorm/ReadVariableOp¢?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1¢?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2¢Asequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOp¢.sequential_58/dense_215/BiasAdd/ReadVariableOp¢-sequential_58/dense_215/MatMul/ReadVariableOp¢.sequential_58/dense_216/BiasAdd/ReadVariableOp¢-sequential_58/dense_216/MatMul/ReadVariableOp¢.sequential_58/dense_217/BiasAdd/ReadVariableOp¢-sequential_58/dense_217/MatMul/ReadVariableOpÕ
-sequential_58/dense_215/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_215_matmul_readvariableop_resource*
_output_shapes

:F@*
dtype02/
-sequential_58/dense_215/MatMul/ReadVariableOpÄ
sequential_58/dense_215/MatMulMatMuldense_215_input5sequential_58/dense_215/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2 
sequential_58/dense_215/MatMulÔ
.sequential_58/dense_215/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_215_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype020
.sequential_58/dense_215/BiasAdd/ReadVariableOpá
sequential_58/dense_215/BiasAddBiasAdd(sequential_58/dense_215/MatMul:product:06sequential_58/dense_215/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2!
sequential_58/dense_215/BiasAdd 
sequential_58/dense_215/ReluRelu(sequential_58/dense_215/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
sequential_58/dense_215/Relu
=sequential_58/batch_normalization_16/batchnorm/ReadVariableOpReadVariableOpFsequential_58_batch_normalization_16_batchnorm_readvariableop_resource*
_output_shapes
:@*
dtype02?
=sequential_58/batch_normalization_16/batchnorm/ReadVariableOp±
4sequential_58/batch_normalization_16/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4sequential_58/batch_normalization_16/batchnorm/add/y
2sequential_58/batch_normalization_16/batchnorm/addAddV2Esequential_58/batch_normalization_16/batchnorm/ReadVariableOp:value:0=sequential_58/batch_normalization_16/batchnorm/add/y:output:0*
T0*
_output_shapes
:@24
2sequential_58/batch_normalization_16/batchnorm/addÒ
4sequential_58/batch_normalization_16/batchnorm/RsqrtRsqrt6sequential_58/batch_normalization_16/batchnorm/add:z:0*
T0*
_output_shapes
:@26
4sequential_58/batch_normalization_16/batchnorm/Rsqrt
Asequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_58_batch_normalization_16_batchnorm_mul_readvariableop_resource*
_output_shapes
:@*
dtype02C
Asequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOp
2sequential_58/batch_normalization_16/batchnorm/mulMul8sequential_58/batch_normalization_16/batchnorm/Rsqrt:y:0Isequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:@24
2sequential_58/batch_normalization_16/batchnorm/mul
4sequential_58/batch_normalization_16/batchnorm/mul_1Mul*sequential_58/dense_215/Relu:activations:06sequential_58/batch_normalization_16/batchnorm/mul:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4sequential_58/batch_normalization_16/batchnorm/mul_1
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_58_batch_normalization_16_batchnorm_readvariableop_1_resource*
_output_shapes
:@*
dtype02A
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1
4sequential_58/batch_normalization_16/batchnorm/mul_2MulGsequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1:value:06sequential_58/batch_normalization_16/batchnorm/mul:z:0*
T0*
_output_shapes
:@26
4sequential_58/batch_normalization_16/batchnorm/mul_2
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_58_batch_normalization_16_batchnorm_readvariableop_2_resource*
_output_shapes
:@*
dtype02A
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2
2sequential_58/batch_normalization_16/batchnorm/subSubGsequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2:value:08sequential_58/batch_normalization_16/batchnorm/mul_2:z:0*
T0*
_output_shapes
:@24
2sequential_58/batch_normalization_16/batchnorm/sub
4sequential_58/batch_normalization_16/batchnorm/add_1AddV28sequential_58/batch_normalization_16/batchnorm/mul_1:z:06sequential_58/batch_normalization_16/batchnorm/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@26
4sequential_58/batch_normalization_16/batchnorm/add_1À
"sequential_58/dropout_157/IdentityIdentity8sequential_58/batch_normalization_16/batchnorm/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2$
"sequential_58/dropout_157/IdentityÖ
-sequential_58/dense_216/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_216_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype02/
-sequential_58/dense_216/MatMul/ReadVariableOpá
sequential_58/dense_216/MatMulMatMul+sequential_58/dropout_157/Identity:output:05sequential_58/dense_216/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
sequential_58/dense_216/MatMulÕ
.sequential_58/dense_216/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_216_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype020
.sequential_58/dense_216/BiasAdd/ReadVariableOpâ
sequential_58/dense_216/BiasAddBiasAdd(sequential_58/dense_216/MatMul:product:06sequential_58/dense_216/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
sequential_58/dense_216/BiasAdd¡
sequential_58/dense_216/ReluRelu(sequential_58/dense_216/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_58/dense_216/Relu
=sequential_58/batch_normalization_17/batchnorm/ReadVariableOpReadVariableOpFsequential_58_batch_normalization_17_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02?
=sequential_58/batch_normalization_17/batchnorm/ReadVariableOp±
4sequential_58/batch_normalization_17/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:26
4sequential_58/batch_normalization_17/batchnorm/add/y
2sequential_58/batch_normalization_17/batchnorm/addAddV2Esequential_58/batch_normalization_17/batchnorm/ReadVariableOp:value:0=sequential_58/batch_normalization_17/batchnorm/add/y:output:0*
T0*
_output_shapes	
:24
2sequential_58/batch_normalization_17/batchnorm/addÓ
4sequential_58/batch_normalization_17/batchnorm/RsqrtRsqrt6sequential_58/batch_normalization_17/batchnorm/add:z:0*
T0*
_output_shapes	
:26
4sequential_58/batch_normalization_17/batchnorm/Rsqrt
Asequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOpReadVariableOpJsequential_58_batch_normalization_17_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02C
Asequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOp
2sequential_58/batch_normalization_17/batchnorm/mulMul8sequential_58/batch_normalization_17/batchnorm/Rsqrt:y:0Isequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:24
2sequential_58/batch_normalization_17/batchnorm/mul
4sequential_58/batch_normalization_17/batchnorm/mul_1Mul*sequential_58/dense_216/Relu:activations:06sequential_58/batch_normalization_17/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_58/batch_normalization_17/batchnorm/mul_1
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1ReadVariableOpHsequential_58_batch_normalization_17_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02A
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1
4sequential_58/batch_normalization_17/batchnorm/mul_2MulGsequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1:value:06sequential_58/batch_normalization_17/batchnorm/mul:z:0*
T0*
_output_shapes	
:26
4sequential_58/batch_normalization_17/batchnorm/mul_2
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2ReadVariableOpHsequential_58_batch_normalization_17_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02A
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2
2sequential_58/batch_normalization_17/batchnorm/subSubGsequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2:value:08sequential_58/batch_normalization_17/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:24
2sequential_58/batch_normalization_17/batchnorm/sub
4sequential_58/batch_normalization_17/batchnorm/add_1AddV28sequential_58/batch_normalization_17/batchnorm/mul_1:z:06sequential_58/batch_normalization_17/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ26
4sequential_58/batch_normalization_17/batchnorm/add_1Á
"sequential_58/dropout_158/IdentityIdentity8sequential_58/batch_normalization_17/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"sequential_58/dropout_158/Identity×
-sequential_58/dense_217/MatMul/ReadVariableOpReadVariableOp6sequential_58_dense_217_matmul_readvariableop_resource* 
_output_shapes
:
Î*
dtype02/
-sequential_58/dense_217/MatMul/ReadVariableOpá
sequential_58/dense_217/MatMulMatMul+sequential_58/dropout_158/Identity:output:05sequential_58/dense_217/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2 
sequential_58/dense_217/MatMulÕ
.sequential_58/dense_217/BiasAdd/ReadVariableOpReadVariableOp7sequential_58_dense_217_biasadd_readvariableop_resource*
_output_shapes	
:Î*
dtype020
.sequential_58/dense_217/BiasAdd/ReadVariableOpâ
sequential_58/dense_217/BiasAddBiasAdd(sequential_58/dense_217/MatMul:product:06sequential_58/dense_217/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2!
sequential_58/dense_217/BiasAddª
sequential_58/dense_217/SigmoidSigmoid(sequential_58/dense_217/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2!
sequential_58/dense_217/Sigmoid«
IdentityIdentity#sequential_58/dense_217/Sigmoid:y:0>^sequential_58/batch_normalization_16/batchnorm/ReadVariableOp@^sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1@^sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2B^sequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOp>^sequential_58/batch_normalization_17/batchnorm/ReadVariableOp@^sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1@^sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2B^sequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOp/^sequential_58/dense_215/BiasAdd/ReadVariableOp.^sequential_58/dense_215/MatMul/ReadVariableOp/^sequential_58/dense_216/BiasAdd/ReadVariableOp.^sequential_58/dense_216/MatMul/ReadVariableOp/^sequential_58/dense_217/BiasAdd/ReadVariableOp.^sequential_58/dense_217/MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::2~
=sequential_58/batch_normalization_16/batchnorm/ReadVariableOp=sequential_58/batch_normalization_16/batchnorm/ReadVariableOp2
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_1?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_12
?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_2?sequential_58/batch_normalization_16/batchnorm/ReadVariableOp_22
Asequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOpAsequential_58/batch_normalization_16/batchnorm/mul/ReadVariableOp2~
=sequential_58/batch_normalization_17/batchnorm/ReadVariableOp=sequential_58/batch_normalization_17/batchnorm/ReadVariableOp2
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_1?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_12
?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_2?sequential_58/batch_normalization_17/batchnorm/ReadVariableOp_22
Asequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOpAsequential_58/batch_normalization_17/batchnorm/mul/ReadVariableOp2`
.sequential_58/dense_215/BiasAdd/ReadVariableOp.sequential_58/dense_215/BiasAdd/ReadVariableOp2^
-sequential_58/dense_215/MatMul/ReadVariableOp-sequential_58/dense_215/MatMul/ReadVariableOp2`
.sequential_58/dense_216/BiasAdd/ReadVariableOp.sequential_58/dense_216/BiasAdd/ReadVariableOp2^
-sequential_58/dense_216/MatMul/ReadVariableOp-sequential_58/dense_216/MatMul/ReadVariableOp2`
.sequential_58/dense_217/BiasAdd/ReadVariableOp.sequential_58/dense_217/BiasAdd/ReadVariableOp2^
-sequential_58/dense_217/MatMul/ReadVariableOp-sequential_58/dense_217/MatMul/ReadVariableOp:X T
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
)
_user_specified_namedense_215_input

g
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037104

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ä8?2
dropout/Consts
dropout/MulMulinputsdropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape´
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ=2
dropout/GreaterEqual/y¾
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Castz
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2
dropout/Mul_1e
IdentityIdentitydropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Ë
f
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037109

inputs

identity_1Z
IdentityIdentityinputs*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identityi

Identity_1IdentityIdentity:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity_1"!

identity_1Identity_1:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¾
«
8__inference_batch_normalization_16_layer_call_fn_3037801

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_30368752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ä

S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037015

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1Ü
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ô	
»
/__inference_sequential_58_layer_call_fn_3037699

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_sequential_58_layer_call_and_return_conditional_losses_30373952
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*^
_input_shapesM
K:ÿÿÿÿÿÿÿÿÿF::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿF
 
_user_specified_nameinputs
û	
ß
F__inference_dense_217_layer_call_and_return_conditional_losses_3037968

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Î*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:Î*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2	
Sigmoid
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
«
8__inference_batch_normalization_16_layer_call_fn_3037788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *\
fWRU
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_30368422
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ@::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
©
f
-__inference_dropout_157_layer_call_fn_3037823

inputs
identity¢StatefulPartitionedCallá
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *Q
fLRJ
H__inference_dropout_157_layer_call_and_return_conditional_losses_30371042
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@2

Identity"
identityIdentity:output:0*&
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*½
serving_default©
K
dense_215_input8
!serving_default_dense_215_input:0ÿÿÿÿÿÿÿÿÿF>
	dense_2171
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿÎtensorflow/serving/predict:´þ
·;
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer-5
layer_with_weights-4
layer-6
	optimizer
	trainable_variables

	variables
regularization_losses
	keras_api

signatures
+&call_and_return_all_conditional_losses
__call__
_default_save_signature"8
_tf_keras_sequentialí7{"class_name": "Sequential", "name": "sequential_58", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_58", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_215_input"}}, {"class_name": "Dense", "config": {"name": "dense_215", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_157", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_216", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_158", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_217", "trainable": true, "dtype": "float32", "units": 206, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 70}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_58", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_215_input"}}, {"class_name": "Dense", "config": {"name": "dense_215", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_157", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_216", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_158", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_217", "trainable": true, "dtype": "float32", "units": 206, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": {"class_name": "BinaryCrossentropy", "config": {"reduction": "auto", "name": "binary_crossentropy", "from_logits": false, "label_smoothing": 0.001}}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "logloss", "dtype": "float32", "fn": "logloss"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 4.999999873689376e-06, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
é

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"Â
_tf_keras_layer¨{"class_name": "Dense", "name": "dense_215", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_215", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 70]}, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 70}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 70]}}
¶	
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
	variables
regularization_losses
	keras_api
+&call_and_return_all_conditional_losses
__call__"à
_tf_keras_layerÆ{"class_name": "BatchNormalization", "name": "batch_normalization_16", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_16", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
ë
trainable_variables
	variables
regularization_losses
 	keras_api
+&call_and_return_all_conditional_losses
__call__"Ú
_tf_keras_layerÀ{"class_name": "Dropout", "name": "dropout_157", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_157", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
÷

!kernel
"bias
#trainable_variables
$	variables
%regularization_losses
&	keras_api
+&call_and_return_all_conditional_losses
__call__"Ð
_tf_keras_layer¶{"class_name": "Dense", "name": "dense_216", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_216", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
¸	
'axis
	(gamma
)beta
*moving_mean
+moving_variance
,trainable_variables
-	variables
.regularization_losses
/	keras_api
+&call_and_return_all_conditional_losses
__call__"â
_tf_keras_layerÈ{"class_name": "BatchNormalization", "name": "batch_normalization_17", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_17", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
ë
0trainable_variables
1	variables
2regularization_losses
3	keras_api
+&call_and_return_all_conditional_losses
__call__"Ú
_tf_keras_layerÀ{"class_name": "Dropout", "name": "dropout_158", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_158", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
ü

4kernel
5bias
6trainable_variables
7	variables
8regularization_losses
9	keras_api
+&call_and_return_all_conditional_losses
__call__"Õ
_tf_keras_layer»{"class_name": "Dense", "name": "dense_217", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_217", "trainable": true, "dtype": "float32", "units": 206, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}

:iter

;beta_1

<beta_2
	=decay
>learning_ratemrmsmtmu!mv"mw(mx)my4mz5m{v|v}v~v!v"v(v)v4v5v"
	optimizer
f
0
1
2
3
!4
"5
(6
)7
48
59"
trackable_list_wrapper

0
1
2
3
4
5
!6
"7
(8
)9
*10
+11
412
513"
trackable_list_wrapper
 "
trackable_list_wrapper
Î
	trainable_variables
?layer_metrics
@layer_regularization_losses
Anon_trainable_variables

Blayers

	variables
regularization_losses
Cmetrics
__call__
_default_save_signature
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
-
serving_default"
signature_map
": F@2dense_215/kernel
:@2dense_215/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Dlayer_metrics
Elayer_regularization_losses
Fnon_trainable_variables

Glayers
	variables
regularization_losses
Hmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_16/gamma
):'@2batch_normalization_16/beta
2:0@ (2"batch_normalization_16/moving_mean
6:4@ (2&batch_normalization_16/moving_variance
.
0
1"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Ilayer_metrics
Jlayer_regularization_losses
Knon_trainable_variables

Llayers
	variables
regularization_losses
Mmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
trainable_variables
Nlayer_metrics
Olayer_regularization_losses
Pnon_trainable_variables

Qlayers
	variables
regularization_losses
Rmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
#:!	@2dense_216/kernel
:2dense_216/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
°
#trainable_variables
Slayer_metrics
Tlayer_regularization_losses
Unon_trainable_variables

Vlayers
$	variables
%regularization_losses
Wmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)2batch_normalization_17/gamma
*:(2batch_normalization_17/beta
3:1 (2"batch_normalization_17/moving_mean
7:5 (2&batch_normalization_17/moving_variance
.
(0
)1"
trackable_list_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
 "
trackable_list_wrapper
°
,trainable_variables
Xlayer_metrics
Ylayer_regularization_losses
Znon_trainable_variables

[layers
-	variables
.regularization_losses
\metrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
°
0trainable_variables
]layer_metrics
^layer_regularization_losses
_non_trainable_variables

`layers
1	variables
2regularization_losses
ametrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
$:"
Î2dense_217/kernel
:Î2dense_217/bias
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
°
6trainable_variables
blayer_metrics
clayer_regularization_losses
dnon_trainable_variables

elayers
7	variables
8regularization_losses
fmetrics
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
<
0
1
*2
+3"
trackable_list_wrapper
Q
0
1
2
3
4
5
6"
trackable_list_wrapper
.
g0
h1"
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
 "
trackable_list_wrapper
.
0
1"
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
 "
trackable_list_wrapper
.
*0
+1"
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
»
	itotal
	jcount
k	variables
l	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ð
	mtotal
	ncount
o
_fn_kwargs
p	variables
q	keras_api"©
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "logloss", "dtype": "float32", "config": {"name": "logloss", "dtype": "float32", "fn": "logloss"}}
:  (2total
:  (2count
.
i0
j1"
trackable_list_wrapper
-
k	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
m0
n1"
trackable_list_wrapper
-
p	variables"
_generic_user_object
':%F@2Adam/dense_215/kernel/m
!:@2Adam/dense_215/bias/m
/:-@2#Adam/batch_normalization_16/gamma/m
.:,@2"Adam/batch_normalization_16/beta/m
(:&	@2Adam/dense_216/kernel/m
": 2Adam/dense_216/bias/m
0:.2#Adam/batch_normalization_17/gamma/m
/:-2"Adam/batch_normalization_17/beta/m
):'
Î2Adam/dense_217/kernel/m
": Î2Adam/dense_217/bias/m
':%F@2Adam/dense_215/kernel/v
!:@2Adam/dense_215/bias/v
/:-@2#Adam/batch_normalization_16/gamma/v
.:,@2"Adam/batch_normalization_16/beta/v
(:&	@2Adam/dense_216/kernel/v
": 2Adam/dense_216/bias/v
0:.2#Adam/batch_normalization_17/gamma/v
/:-2"Adam/batch_normalization_17/beta/v
):'
Î2Adam/dense_217/kernel/v
": Î2Adam/dense_217/bias/v
ö2ó
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037633
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037574
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037242
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037281À
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
2
/__inference_sequential_58_layer_call_fn_3037354
/__inference_sequential_58_layer_call_fn_3037699
/__inference_sequential_58_layer_call_fn_3037426
/__inference_sequential_58_layer_call_fn_3037666À
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
è2å
"__inference__wrapped_model_3036746¾
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *.¢+
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
ð2í
F__inference_dense_215_layer_call_and_return_conditional_losses_3037710¢
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
Õ2Ò
+__inference_dense_215_layer_call_fn_3037719¢
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
ä2á
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037755
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037775´
«²§
FullArgSpec)
args!
jself
jinputs

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
®2«
8__inference_batch_normalization_16_layer_call_fn_3037788
8__inference_batch_normalization_16_layer_call_fn_3037801´
«²§
FullArgSpec)
args!
jself
jinputs

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
Î2Ë
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037813
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037818´
«²§
FullArgSpec)
args!
jself
jinputs

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
2
-__inference_dropout_157_layer_call_fn_3037823
-__inference_dropout_157_layer_call_fn_3037828´
«²§
FullArgSpec)
args!
jself
jinputs

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
ð2í
F__inference_dense_216_layer_call_and_return_conditional_losses_3037839¢
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
Õ2Ò
+__inference_dense_216_layer_call_fn_3037848¢
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
ä2á
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037904
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037884´
«²§
FullArgSpec)
args!
jself
jinputs

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
®2«
8__inference_batch_normalization_17_layer_call_fn_3037930
8__inference_batch_normalization_17_layer_call_fn_3037917´
«²§
FullArgSpec)
args!
jself
jinputs

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
Î2Ë
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037947
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037942´
«²§
FullArgSpec)
args!
jself
jinputs

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
2
-__inference_dropout_158_layer_call_fn_3037957
-__inference_dropout_158_layer_call_fn_3037952´
«²§
FullArgSpec)
args!
jself
jinputs

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
ð2í
F__inference_dense_217_layer_call_and_return_conditional_losses_3037968¢
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
Õ2Ò
+__inference_dense_217_layer_call_fn_3037977¢
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
ÔBÑ
%__inference_signature_wrapper_3037469dense_215_input"
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
 ©
"__inference__wrapped_model_3036746!"+(*)458¢5
.¢+
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
ª "6ª3
1
	dense_217$!
	dense_217ÿÿÿÿÿÿÿÿÿÎ¹
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037755b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¹
S__inference_batch_normalization_16_layer_call_and_return_conditional_losses_3037775b3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
8__inference_batch_normalization_16_layer_call_fn_3037788U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@
8__inference_batch_normalization_16_layer_call_fn_3037801U3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@»
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037884d*+()4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 »
S__inference_batch_normalization_17_layer_call_and_return_conditional_losses_3037904d+(*)4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
8__inference_batch_normalization_17_layer_call_fn_3037917W*+()4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
8__inference_batch_normalization_17_layer_call_fn_3037930W+(*)4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ¦
F__inference_dense_215_layer_call_and_return_conditional_losses_3037710\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿF
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ~
+__inference_dense_215_layer_call_fn_3037719O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿF
ª "ÿÿÿÿÿÿÿÿÿ@§
F__inference_dense_216_layer_call_and_return_conditional_losses_3037839]!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_dense_216_layer_call_fn_3037848P!"/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¨
F__inference_dense_217_layer_call_and_return_conditional_losses_3037968^450¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÎ
 
+__inference_dense_217_layer_call_fn_3037977Q450¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÎ¨
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037813\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ¨
H__inference_dropout_157_layer_call_and_return_conditional_losses_3037818\3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
-__inference_dropout_157_layer_call_fn_3037823O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p
ª "ÿÿÿÿÿÿÿÿÿ@
-__inference_dropout_157_layer_call_fn_3037828O3¢0
)¢&
 
inputsÿÿÿÿÿÿÿÿÿ@
p 
ª "ÿÿÿÿÿÿÿÿÿ@ª
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037942^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ª
H__inference_dropout_158_layer_call_and_return_conditional_losses_3037947^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_158_layer_call_fn_3037952Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_158_layer_call_fn_3037957Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿÈ
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037242z!"*+()45@¢=
6¢3
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÎ
 È
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037281z!"+(*)45@¢=
6¢3
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÎ
 ¿
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037574q!"*+()457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÎ
 ¿
J__inference_sequential_58_layer_call_and_return_conditional_losses_3037633q!"+(*)457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÎ
  
/__inference_sequential_58_layer_call_fn_3037354m!"*+()45@¢=
6¢3
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
p

 
ª "ÿÿÿÿÿÿÿÿÿÎ 
/__inference_sequential_58_layer_call_fn_3037426m!"+(*)45@¢=
6¢3
)&
dense_215_inputÿÿÿÿÿÿÿÿÿF
p 

 
ª "ÿÿÿÿÿÿÿÿÿÎ
/__inference_sequential_58_layer_call_fn_3037666d!"*+()457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p

 
ª "ÿÿÿÿÿÿÿÿÿÎ
/__inference_sequential_58_layer_call_fn_3037699d!"+(*)457¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿF
p 

 
ª "ÿÿÿÿÿÿÿÿÿÎ¿
%__inference_signature_wrapper_3037469!"+(*)45K¢H
¢ 
Aª>
<
dense_215_input)&
dense_215_inputÿÿÿÿÿÿÿÿÿF"6ª3
1
	dense_217$!
	dense_217ÿÿÿÿÿÿÿÿÿÎ