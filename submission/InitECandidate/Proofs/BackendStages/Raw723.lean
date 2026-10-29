import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function723
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody723_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody723_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody723_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3245#64)

def rawBody723_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody723_5 : StackLang.HolProg 64 :=
.seq rawBody723_3 rawBody723_4

def rawBody723_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody723_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody723_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody723_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 723 3

def rawBody723_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody723_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody723_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody723_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody723_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody723_16 : StackLang.HolProg 64 :=
.seq rawBody723_14 rawBody723_15

def rawBody723_17 : StackLang.HolProg 64 :=
.seq rawBody723_13 rawBody723_16

def rawBody723_18 : StackLang.HolProg 64 :=
.seq rawBody723_12 rawBody723_17

def rawBody723_19 : StackLang.HolProg 64 :=
.seq rawBody723_11 rawBody723_18

def rawBody723_20 : StackLang.HolProg 64 :=
.seq rawBody723_10 rawBody723_19

def rawBody723_21 : StackLang.HolProg 64 :=
.seq rawBody723_9 rawBody723_20

def rawBody723_22 : StackLang.HolProg 64 :=
.seq rawBody723_8 rawBody723_21

def rawBody723_23 : StackLang.HolProg 64 :=
.seq rawBody723_7 rawBody723_22

def rawBody723_24 : StackLang.HolProg 64 :=
.seq rawBody723_6 rawBody723_23

def rawBody723_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody723_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody723_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody723_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody723_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody723_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody723_33 : StackLang.HolProg 64 :=
.seq rawBody723_31 rawBody723_32

def rawBody723_34 : StackLang.HolProg 64 :=
.seq rawBody723_30 rawBody723_33

def rawBody723_35 : StackLang.HolProg 64 :=
.seq rawBody723_29 rawBody723_34

def rawBody723_36 : StackLang.HolProg 64 :=
.seq rawBody723_28 rawBody723_35

def rawBody723_37 : StackLang.HolProg 64 :=
.seq rawBody723_27 rawBody723_36

def rawBody723_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody723_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody723_40 : StackLang.HolProg 64 :=
.seq rawBody723_38 rawBody723_39

def rawBody723_41 : StackLang.HolProg 64 :=
.call (some (rawBody723_37, 0, 723, 2)) (Sum.inl 717) (some (rawBody723_40, 723, 3))

def rawBody723_42 : StackLang.HolProg 64 :=
.seq rawBody723_26 rawBody723_41

def rawBody723_43 : StackLang.HolProg 64 :=
.seq rawBody723_25 rawBody723_42

def rawBody723_44 : StackLang.HolProg 64 :=
.seq rawBody723_24 rawBody723_43

def rawBody723_45 : StackLang.HolProg 64 :=
.seq rawBody723_5 rawBody723_44

def rawBody723_46 : StackLang.HolProg 64 :=
.seq rawBody723_2 rawBody723_45

def rawBody723_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody723_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody723_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody723_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody723_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody723_53 : StackLang.HolProg 64 :=
.seq rawBody723_51 rawBody723_52

def rawBody723_54 : StackLang.HolProg 64 :=
.seq rawBody723_50 rawBody723_53

def rawBody723_55 : StackLang.HolProg 64 :=
.seq rawBody723_49 rawBody723_54

def rawBody723_56 : StackLang.HolProg 64 :=
.seq rawBody723_48 rawBody723_55

def rawBody723_57 : StackLang.HolProg 64 :=
.seq rawBody723_47 rawBody723_56

def rawBody723_58 : StackLang.HolProg 64 :=
.seq rawBody723_46 rawBody723_57

def rawBody723_59 : StackLang.HolProg 64 :=
.seq rawBody723_1 rawBody723_58

def rawBody723_60 : StackLang.HolProg 64 :=
.seq rawBody723_0 rawBody723_59

def raw723 : StackLang.HolProg 64 := rawBody723_60
theorem raw723_eq : StackRawCall.compTop RawInfo.rawInfo (function723 (.list [])).1 = raw723 := by
  kernel_rfl
#print axioms raw723_eq
end InitECandidate.Proofs.BackendStages
