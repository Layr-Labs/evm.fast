import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function413
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody413_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody413_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody413_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1233#64)

def rawBody413_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody413_5 : StackLang.HolProg 64 :=
.seq rawBody413_3 rawBody413_4

def rawBody413_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody413_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody413_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody413_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 413 3

def rawBody413_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody413_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody413_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody413_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody413_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody413_16 : StackLang.HolProg 64 :=
.seq rawBody413_14 rawBody413_15

def rawBody413_17 : StackLang.HolProg 64 :=
.seq rawBody413_13 rawBody413_16

def rawBody413_18 : StackLang.HolProg 64 :=
.seq rawBody413_12 rawBody413_17

def rawBody413_19 : StackLang.HolProg 64 :=
.seq rawBody413_11 rawBody413_18

def rawBody413_20 : StackLang.HolProg 64 :=
.seq rawBody413_10 rawBody413_19

def rawBody413_21 : StackLang.HolProg 64 :=
.seq rawBody413_9 rawBody413_20

def rawBody413_22 : StackLang.HolProg 64 :=
.seq rawBody413_8 rawBody413_21

def rawBody413_23 : StackLang.HolProg 64 :=
.seq rawBody413_7 rawBody413_22

def rawBody413_24 : StackLang.HolProg 64 :=
.seq rawBody413_6 rawBody413_23

def rawBody413_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody413_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody413_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody413_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody413_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody413_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody413_33 : StackLang.HolProg 64 :=
.seq rawBody413_31 rawBody413_32

def rawBody413_34 : StackLang.HolProg 64 :=
.seq rawBody413_30 rawBody413_33

def rawBody413_35 : StackLang.HolProg 64 :=
.seq rawBody413_29 rawBody413_34

def rawBody413_36 : StackLang.HolProg 64 :=
.seq rawBody413_28 rawBody413_35

def rawBody413_37 : StackLang.HolProg 64 :=
.seq rawBody413_27 rawBody413_36

def rawBody413_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody413_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody413_40 : StackLang.HolProg 64 :=
.seq rawBody413_38 rawBody413_39

def rawBody413_41 : StackLang.HolProg 64 :=
.call (some (rawBody413_37, 0, 413, 2)) (Sum.inl 406) (some (rawBody413_40, 413, 3))

def rawBody413_42 : StackLang.HolProg 64 :=
.seq rawBody413_26 rawBody413_41

def rawBody413_43 : StackLang.HolProg 64 :=
.seq rawBody413_25 rawBody413_42

def rawBody413_44 : StackLang.HolProg 64 :=
.seq rawBody413_24 rawBody413_43

def rawBody413_45 : StackLang.HolProg 64 :=
.seq rawBody413_5 rawBody413_44

def rawBody413_46 : StackLang.HolProg 64 :=
.seq rawBody413_2 rawBody413_45

def rawBody413_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody413_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody413_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody413_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody413_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody413_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody413_55 : StackLang.HolProg 64 :=
.seq rawBody413_53 rawBody413_54

def rawBody413_56 : StackLang.HolProg 64 :=
.seq rawBody413_52 rawBody413_55

def rawBody413_57 : StackLang.HolProg 64 :=
.seq rawBody413_51 rawBody413_56

def rawBody413_58 : StackLang.HolProg 64 :=
.seq rawBody413_50 rawBody413_57

def rawBody413_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody413_58 rawBody413_59

def rawBody413_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody413_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody413_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody413_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody413_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody413_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody413_67 : StackLang.HolProg 64 :=
.seq rawBody413_65 rawBody413_66

def rawBody413_68 : StackLang.HolProg 64 :=
.seq rawBody413_64 rawBody413_67

def rawBody413_69 : StackLang.HolProg 64 :=
.seq rawBody413_63 rawBody413_68

def rawBody413_70 : StackLang.HolProg 64 :=
.seq rawBody413_62 rawBody413_69

def rawBody413_71 : StackLang.HolProg 64 :=
.seq rawBody413_61 rawBody413_70

def rawBody413_72 : StackLang.HolProg 64 :=
.seq rawBody413_60 rawBody413_71

def rawBody413_73 : StackLang.HolProg 64 :=
.seq rawBody413_49 rawBody413_72

def rawBody413_74 : StackLang.HolProg 64 :=
.seq rawBody413_48 rawBody413_73

def rawBody413_75 : StackLang.HolProg 64 :=
.seq rawBody413_47 rawBody413_74

def rawBody413_76 : StackLang.HolProg 64 :=
.seq rawBody413_46 rawBody413_75

def rawBody413_77 : StackLang.HolProg 64 :=
.seq rawBody413_1 rawBody413_76

def rawBody413_78 : StackLang.HolProg 64 :=
.seq rawBody413_0 rawBody413_77

def raw413 : StackLang.HolProg 64 := rawBody413_78
theorem raw413_eq : StackRawCall.compTop RawInfo.rawInfo (function413 (.list [])).1 = raw413 := by
  kernel_rfl
#print axioms raw413_eq
end InitECandidate.Proofs.BackendStages
