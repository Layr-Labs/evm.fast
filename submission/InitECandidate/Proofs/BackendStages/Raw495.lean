import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function495
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody495_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody495_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody495_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1542#64)

def rawBody495_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody495_5 : StackLang.HolProg 64 :=
.seq rawBody495_3 rawBody495_4

def rawBody495_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody495_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody495_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody495_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 495 3

def rawBody495_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody495_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody495_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody495_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody495_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody495_16 : StackLang.HolProg 64 :=
.seq rawBody495_14 rawBody495_15

def rawBody495_17 : StackLang.HolProg 64 :=
.seq rawBody495_13 rawBody495_16

def rawBody495_18 : StackLang.HolProg 64 :=
.seq rawBody495_12 rawBody495_17

def rawBody495_19 : StackLang.HolProg 64 :=
.seq rawBody495_11 rawBody495_18

def rawBody495_20 : StackLang.HolProg 64 :=
.seq rawBody495_10 rawBody495_19

def rawBody495_21 : StackLang.HolProg 64 :=
.seq rawBody495_9 rawBody495_20

def rawBody495_22 : StackLang.HolProg 64 :=
.seq rawBody495_8 rawBody495_21

def rawBody495_23 : StackLang.HolProg 64 :=
.seq rawBody495_7 rawBody495_22

def rawBody495_24 : StackLang.HolProg 64 :=
.seq rawBody495_6 rawBody495_23

def rawBody495_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody495_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody495_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody495_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody495_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody495_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody495_33 : StackLang.HolProg 64 :=
.seq rawBody495_31 rawBody495_32

def rawBody495_34 : StackLang.HolProg 64 :=
.seq rawBody495_30 rawBody495_33

def rawBody495_35 : StackLang.HolProg 64 :=
.seq rawBody495_29 rawBody495_34

def rawBody495_36 : StackLang.HolProg 64 :=
.seq rawBody495_28 rawBody495_35

def rawBody495_37 : StackLang.HolProg 64 :=
.seq rawBody495_27 rawBody495_36

def rawBody495_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody495_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody495_40 : StackLang.HolProg 64 :=
.seq rawBody495_38 rawBody495_39

def rawBody495_41 : StackLang.HolProg 64 :=
.call (some (rawBody495_37, 0, 495, 2)) (Sum.inl 493) (some (rawBody495_40, 495, 3))

def rawBody495_42 : StackLang.HolProg 64 :=
.seq rawBody495_26 rawBody495_41

def rawBody495_43 : StackLang.HolProg 64 :=
.seq rawBody495_25 rawBody495_42

def rawBody495_44 : StackLang.HolProg 64 :=
.seq rawBody495_24 rawBody495_43

def rawBody495_45 : StackLang.HolProg 64 :=
.seq rawBody495_5 rawBody495_44

def rawBody495_46 : StackLang.HolProg 64 :=
.seq rawBody495_2 rawBody495_45

def rawBody495_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody495_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody495_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody495_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 100#64)

def rawBody495_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody495_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody495_55 : StackLang.HolProg 64 :=
.seq rawBody495_53 rawBody495_54

def rawBody495_56 : StackLang.HolProg 64 :=
.seq rawBody495_52 rawBody495_55

def rawBody495_57 : StackLang.HolProg 64 :=
.seq rawBody495_51 rawBody495_56

def rawBody495_58 : StackLang.HolProg 64 :=
.seq rawBody495_50 rawBody495_57

def rawBody495_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_60 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody495_58 rawBody495_59

def rawBody495_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody495_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody495_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3000#64)

def rawBody495_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody495_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody495_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody495_67 : StackLang.HolProg 64 :=
.seq rawBody495_65 rawBody495_66

def rawBody495_68 : StackLang.HolProg 64 :=
.seq rawBody495_64 rawBody495_67

def rawBody495_69 : StackLang.HolProg 64 :=
.seq rawBody495_63 rawBody495_68

def rawBody495_70 : StackLang.HolProg 64 :=
.seq rawBody495_62 rawBody495_69

def rawBody495_71 : StackLang.HolProg 64 :=
.seq rawBody495_61 rawBody495_70

def rawBody495_72 : StackLang.HolProg 64 :=
.seq rawBody495_60 rawBody495_71

def rawBody495_73 : StackLang.HolProg 64 :=
.seq rawBody495_49 rawBody495_72

def rawBody495_74 : StackLang.HolProg 64 :=
.seq rawBody495_48 rawBody495_73

def rawBody495_75 : StackLang.HolProg 64 :=
.seq rawBody495_47 rawBody495_74

def rawBody495_76 : StackLang.HolProg 64 :=
.seq rawBody495_46 rawBody495_75

def rawBody495_77 : StackLang.HolProg 64 :=
.seq rawBody495_1 rawBody495_76

def rawBody495_78 : StackLang.HolProg 64 :=
.seq rawBody495_0 rawBody495_77

def raw495 : StackLang.HolProg 64 := rawBody495_78
theorem raw495_eq : StackRawCall.compTop RawInfo.rawInfo (function495 (.list [])).1 = raw495 := by
  kernel_rfl
#print axioms raw495_eq
end InitECandidate.Proofs.BackendStages
