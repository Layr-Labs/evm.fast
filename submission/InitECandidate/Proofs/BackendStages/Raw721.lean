import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function721
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody721_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody721_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody721_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3242#64)

def rawBody721_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody721_5 : StackLang.HolProg 64 :=
.seq rawBody721_3 rawBody721_4

def rawBody721_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody721_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody721_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody721_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 721 3

def rawBody721_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody721_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody721_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody721_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody721_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody721_16 : StackLang.HolProg 64 :=
.seq rawBody721_14 rawBody721_15

def rawBody721_17 : StackLang.HolProg 64 :=
.seq rawBody721_13 rawBody721_16

def rawBody721_18 : StackLang.HolProg 64 :=
.seq rawBody721_12 rawBody721_17

def rawBody721_19 : StackLang.HolProg 64 :=
.seq rawBody721_11 rawBody721_18

def rawBody721_20 : StackLang.HolProg 64 :=
.seq rawBody721_10 rawBody721_19

def rawBody721_21 : StackLang.HolProg 64 :=
.seq rawBody721_9 rawBody721_20

def rawBody721_22 : StackLang.HolProg 64 :=
.seq rawBody721_8 rawBody721_21

def rawBody721_23 : StackLang.HolProg 64 :=
.seq rawBody721_7 rawBody721_22

def rawBody721_24 : StackLang.HolProg 64 :=
.seq rawBody721_6 rawBody721_23

def rawBody721_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody721_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody721_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody721_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody721_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody721_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody721_33 : StackLang.HolProg 64 :=
.seq rawBody721_31 rawBody721_32

def rawBody721_34 : StackLang.HolProg 64 :=
.seq rawBody721_30 rawBody721_33

def rawBody721_35 : StackLang.HolProg 64 :=
.seq rawBody721_29 rawBody721_34

def rawBody721_36 : StackLang.HolProg 64 :=
.seq rawBody721_28 rawBody721_35

def rawBody721_37 : StackLang.HolProg 64 :=
.seq rawBody721_27 rawBody721_36

def rawBody721_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody721_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody721_40 : StackLang.HolProg 64 :=
.seq rawBody721_38 rawBody721_39

def rawBody721_41 : StackLang.HolProg 64 :=
.call (some (rawBody721_37, 0, 721, 2)) (Sum.inl 720) (some (rawBody721_40, 721, 3))

def rawBody721_42 : StackLang.HolProg 64 :=
.seq rawBody721_26 rawBody721_41

def rawBody721_43 : StackLang.HolProg 64 :=
.seq rawBody721_25 rawBody721_42

def rawBody721_44 : StackLang.HolProg 64 :=
.seq rawBody721_24 rawBody721_43

def rawBody721_45 : StackLang.HolProg 64 :=
.seq rawBody721_5 rawBody721_44

def rawBody721_46 : StackLang.HolProg 64 :=
.seq rawBody721_2 rawBody721_45

def rawBody721_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody721_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody721_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 767358375875140941#64)

def rawBody721_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2671430854784468776#64)

def rawBody721_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3801124253586036577#64)

def rawBody721_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11120290361046346205#64)

def rawBody721_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3557706395579559416#64)

def rawBody721_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17098105564519244256#64)

def rawBody721_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody721_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody721_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 20

def rawBody721_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 714

def rawBody721_60 : StackLang.HolProg 64 :=
.seq rawBody721_58 rawBody721_59

def rawBody721_61 : StackLang.HolProg 64 :=
.seq rawBody721_57 rawBody721_60

def rawBody721_62 : StackLang.HolProg 64 :=
.seq rawBody721_56 rawBody721_61

def rawBody721_63 : StackLang.HolProg 64 :=
.seq rawBody721_55 rawBody721_62

def rawBody721_64 : StackLang.HolProg 64 :=
.seq rawBody721_54 rawBody721_63

def rawBody721_65 : StackLang.HolProg 64 :=
.seq rawBody721_53 rawBody721_64

def rawBody721_66 : StackLang.HolProg 64 :=
.seq rawBody721_52 rawBody721_65

def rawBody721_67 : StackLang.HolProg 64 :=
.seq rawBody721_51 rawBody721_66

def rawBody721_68 : StackLang.HolProg 64 :=
.seq rawBody721_50 rawBody721_67

def rawBody721_69 : StackLang.HolProg 64 :=
.seq rawBody721_49 rawBody721_68

def rawBody721_70 : StackLang.HolProg 64 :=
.seq rawBody721_48 rawBody721_69

def rawBody721_71 : StackLang.HolProg 64 :=
.seq rawBody721_47 rawBody721_70

def rawBody721_72 : StackLang.HolProg 64 :=
.seq rawBody721_46 rawBody721_71

def rawBody721_73 : StackLang.HolProg 64 :=
.seq rawBody721_1 rawBody721_72

def rawBody721_74 : StackLang.HolProg 64 :=
.seq rawBody721_0 rawBody721_73

def raw721 : StackLang.HolProg 64 := rawBody721_74
theorem raw721_eq : StackRawCall.compTop RawInfo.rawInfo (function721 (.list [])).1 = raw721 := by
  kernel_rfl
#print axioms raw721_eq
end InitECandidate.Proofs.BackendStages
