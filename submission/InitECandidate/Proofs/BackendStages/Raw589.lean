import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function589
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody589_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody589_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody589_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody589_3 : StackLang.HolProg 64 :=
.seq rawBody589_1 rawBody589_2

def rawBody589_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2102#64)

def rawBody589_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody589_7 : StackLang.HolProg 64 :=
.seq rawBody589_5 rawBody589_6

def rawBody589_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody589_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody589_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody589_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 589 3

def rawBody589_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody589_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody589_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody589_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody589_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody589_18 : StackLang.HolProg 64 :=
.seq rawBody589_16 rawBody589_17

def rawBody589_19 : StackLang.HolProg 64 :=
.seq rawBody589_15 rawBody589_18

def rawBody589_20 : StackLang.HolProg 64 :=
.seq rawBody589_14 rawBody589_19

def rawBody589_21 : StackLang.HolProg 64 :=
.seq rawBody589_13 rawBody589_20

def rawBody589_22 : StackLang.HolProg 64 :=
.seq rawBody589_12 rawBody589_21

def rawBody589_23 : StackLang.HolProg 64 :=
.seq rawBody589_11 rawBody589_22

def rawBody589_24 : StackLang.HolProg 64 :=
.seq rawBody589_10 rawBody589_23

def rawBody589_25 : StackLang.HolProg 64 :=
.seq rawBody589_9 rawBody589_24

def rawBody589_26 : StackLang.HolProg 64 :=
.seq rawBody589_8 rawBody589_25

def rawBody589_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody589_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody589_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody589_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody589_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody589_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody589_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody589_36 : StackLang.HolProg 64 :=
.seq rawBody589_34 rawBody589_35

def rawBody589_37 : StackLang.HolProg 64 :=
.seq rawBody589_33 rawBody589_36

def rawBody589_38 : StackLang.HolProg 64 :=
.seq rawBody589_32 rawBody589_37

def rawBody589_39 : StackLang.HolProg 64 :=
.seq rawBody589_31 rawBody589_38

def rawBody589_40 : StackLang.HolProg 64 :=
.seq rawBody589_30 rawBody589_39

def rawBody589_41 : StackLang.HolProg 64 :=
.seq rawBody589_29 rawBody589_40

def rawBody589_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody589_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody589_44 : StackLang.HolProg 64 :=
.seq rawBody589_42 rawBody589_43

def rawBody589_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody589_46 : StackLang.HolProg 64 :=
.seq rawBody589_44 rawBody589_45

def rawBody589_47 : StackLang.HolProg 64 :=
.call (some (rawBody589_41, 0, 589, 2)) (Sum.inl 468) (some (rawBody589_46, 589, 3))

def rawBody589_48 : StackLang.HolProg 64 :=
.seq rawBody589_28 rawBody589_47

def rawBody589_49 : StackLang.HolProg 64 :=
.seq rawBody589_27 rawBody589_48

def rawBody589_50 : StackLang.HolProg 64 :=
.seq rawBody589_26 rawBody589_49

def rawBody589_51 : StackLang.HolProg 64 :=
.seq rawBody589_7 rawBody589_50

def rawBody589_52 : StackLang.HolProg 64 :=
.seq rawBody589_4 rawBody589_51

def rawBody589_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody589_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody589_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody589_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody589_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody589_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody589_61 : StackLang.HolProg 64 :=
.seq rawBody589_59 rawBody589_60

def rawBody589_62 : StackLang.HolProg 64 :=
.seq rawBody589_58 rawBody589_61

def rawBody589_63 : StackLang.HolProg 64 :=
.seq rawBody589_57 rawBody589_62

def rawBody589_64 : StackLang.HolProg 64 :=
.seq rawBody589_56 rawBody589_63

def rawBody589_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody589_64 rawBody589_65

def rawBody589_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody589_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody589_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody589_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody589_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody589_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody589_74 : StackLang.HolProg 64 :=
.seq rawBody589_72 rawBody589_73

def rawBody589_75 : StackLang.HolProg 64 :=
.seq rawBody589_71 rawBody589_74

def rawBody589_76 : StackLang.HolProg 64 :=
.seq rawBody589_70 rawBody589_75

def rawBody589_77 : StackLang.HolProg 64 :=
.seq rawBody589_69 rawBody589_76

def rawBody589_78 : StackLang.HolProg 64 :=
.seq rawBody589_68 rawBody589_77

def rawBody589_79 : StackLang.HolProg 64 :=
.seq rawBody589_67 rawBody589_78

def rawBody589_80 : StackLang.HolProg 64 :=
.seq rawBody589_66 rawBody589_79

def rawBody589_81 : StackLang.HolProg 64 :=
.seq rawBody589_55 rawBody589_80

def rawBody589_82 : StackLang.HolProg 64 :=
.seq rawBody589_54 rawBody589_81

def rawBody589_83 : StackLang.HolProg 64 :=
.seq rawBody589_53 rawBody589_82

def rawBody589_84 : StackLang.HolProg 64 :=
.seq rawBody589_52 rawBody589_83

def rawBody589_85 : StackLang.HolProg 64 :=
.seq rawBody589_3 rawBody589_84

def rawBody589_86 : StackLang.HolProg 64 :=
.seq rawBody589_0 rawBody589_85

def raw589 : StackLang.HolProg 64 := rawBody589_86
theorem raw589_eq : StackRawCall.compTop RawInfo.rawInfo (function589 (.list [])).1 = raw589 := by
  kernel_rfl
#print axioms raw589_eq
end InitECandidate.Proofs.BackendStages
