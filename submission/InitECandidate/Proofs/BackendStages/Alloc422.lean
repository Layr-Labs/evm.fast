import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw422
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody422_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody422_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody422_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody422_3 : StackLang.HolProg 64 :=
.seq AllocBody422_1 AllocBody422_2

def AllocBody422_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1259#64)

def AllocBody422_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody422_7 : StackLang.HolProg 64 :=
.seq AllocBody422_5 AllocBody422_6

def AllocBody422_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody422_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody422_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody422_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 3

def AllocBody422_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody422_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody422_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody422_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody422_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody422_18 : StackLang.HolProg 64 :=
.seq AllocBody422_16 AllocBody422_17

def AllocBody422_19 : StackLang.HolProg 64 :=
.seq AllocBody422_15 AllocBody422_18

def AllocBody422_20 : StackLang.HolProg 64 :=
.seq AllocBody422_14 AllocBody422_19

def AllocBody422_21 : StackLang.HolProg 64 :=
.seq AllocBody422_13 AllocBody422_20

def AllocBody422_22 : StackLang.HolProg 64 :=
.seq AllocBody422_12 AllocBody422_21

def AllocBody422_23 : StackLang.HolProg 64 :=
.seq AllocBody422_11 AllocBody422_22

def AllocBody422_24 : StackLang.HolProg 64 :=
.seq AllocBody422_10 AllocBody422_23

def AllocBody422_25 : StackLang.HolProg 64 :=
.seq AllocBody422_9 AllocBody422_24

def AllocBody422_26 : StackLang.HolProg 64 :=
.seq AllocBody422_8 AllocBody422_25

def AllocBody422_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody422_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody422_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody422_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody422_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody422_34 : StackLang.HolProg 64 :=
.seq AllocBody422_32 AllocBody422_33

def AllocBody422_35 : StackLang.HolProg 64 :=
.seq AllocBody422_31 AllocBody422_34

def AllocBody422_36 : StackLang.HolProg 64 :=
.seq AllocBody422_30 AllocBody422_35

def AllocBody422_37 : StackLang.HolProg 64 :=
.seq AllocBody422_29 AllocBody422_36

def AllocBody422_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody422_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody422_40 : StackLang.HolProg 64 :=
.seq AllocBody422_38 AllocBody422_39

def AllocBody422_41 : StackLang.HolProg 64 :=
.call (some (AllocBody422_37, 0, 422, 2)) (Sum.inl 421) (some (AllocBody422_40, 422, 3))

def AllocBody422_42 : StackLang.HolProg 64 :=
.seq AllocBody422_28 AllocBody422_41

def AllocBody422_43 : StackLang.HolProg 64 :=
.seq AllocBody422_27 AllocBody422_42

def AllocBody422_44 : StackLang.HolProg 64 :=
.seq AllocBody422_26 AllocBody422_43

def AllocBody422_45 : StackLang.HolProg 64 :=
.seq AllocBody422_7 AllocBody422_44

def AllocBody422_46 : StackLang.HolProg 64 :=
.seq AllocBody422_4 AllocBody422_45

def AllocBody422_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody422_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody422_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody422_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1260#64)

def AllocBody422_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody422_54 : StackLang.HolProg 64 :=
.seq AllocBody422_52 AllocBody422_53

def AllocBody422_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody422_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody422_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody422_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 422 5

def AllocBody422_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody422_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody422_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody422_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody422_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody422_65 : StackLang.HolProg 64 :=
.seq AllocBody422_63 AllocBody422_64

def AllocBody422_66 : StackLang.HolProg 64 :=
.seq AllocBody422_62 AllocBody422_65

def AllocBody422_67 : StackLang.HolProg 64 :=
.seq AllocBody422_61 AllocBody422_66

def AllocBody422_68 : StackLang.HolProg 64 :=
.seq AllocBody422_60 AllocBody422_67

def AllocBody422_69 : StackLang.HolProg 64 :=
.seq AllocBody422_59 AllocBody422_68

def AllocBody422_70 : StackLang.HolProg 64 :=
.seq AllocBody422_58 AllocBody422_69

def AllocBody422_71 : StackLang.HolProg 64 :=
.seq AllocBody422_57 AllocBody422_70

def AllocBody422_72 : StackLang.HolProg 64 :=
.seq AllocBody422_56 AllocBody422_71

def AllocBody422_73 : StackLang.HolProg 64 :=
.seq AllocBody422_55 AllocBody422_72

def AllocBody422_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody422_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody422_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody422_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody422_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody422_81 : StackLang.HolProg 64 :=
.seq AllocBody422_79 AllocBody422_80

def AllocBody422_82 : StackLang.HolProg 64 :=
.seq AllocBody422_78 AllocBody422_81

def AllocBody422_83 : StackLang.HolProg 64 :=
.seq AllocBody422_77 AllocBody422_82

def AllocBody422_84 : StackLang.HolProg 64 :=
.seq AllocBody422_76 AllocBody422_83

def AllocBody422_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody422_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody422_87 : StackLang.HolProg 64 :=
.seq AllocBody422_85 AllocBody422_86

def AllocBody422_88 : StackLang.HolProg 64 :=
.call (some (AllocBody422_84, 0, 422, 4)) (Sum.inl 419) (some (AllocBody422_87, 422, 5))

def AllocBody422_89 : StackLang.HolProg 64 :=
.seq AllocBody422_75 AllocBody422_88

def AllocBody422_90 : StackLang.HolProg 64 :=
.seq AllocBody422_74 AllocBody422_89

def AllocBody422_91 : StackLang.HolProg 64 :=
.seq AllocBody422_73 AllocBody422_90

def AllocBody422_92 : StackLang.HolProg 64 :=
.seq AllocBody422_54 AllocBody422_91

def AllocBody422_93 : StackLang.HolProg 64 :=
.seq AllocBody422_51 AllocBody422_92

def AllocBody422_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody422_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody422_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody422_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody422_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody422_99 : StackLang.HolProg 64 :=
.seq AllocBody422_97 AllocBody422_98

def AllocBody422_100 : StackLang.HolProg 64 :=
.seq AllocBody422_96 AllocBody422_99

def AllocBody422_101 : StackLang.HolProg 64 :=
.seq AllocBody422_95 AllocBody422_100

def AllocBody422_102 : StackLang.HolProg 64 :=
.seq AllocBody422_94 AllocBody422_101

def AllocBody422_103 : StackLang.HolProg 64 :=
.seq AllocBody422_93 AllocBody422_102

def AllocBody422_104 : StackLang.HolProg 64 :=
.seq AllocBody422_50 AllocBody422_103

def AllocBody422_105 : StackLang.HolProg 64 :=
.seq AllocBody422_49 AllocBody422_104

def AllocBody422_106 : StackLang.HolProg 64 :=
.seq AllocBody422_48 AllocBody422_105

def AllocBody422_107 : StackLang.HolProg 64 :=
.seq AllocBody422_47 AllocBody422_106

def AllocBody422_108 : StackLang.HolProg 64 :=
.seq AllocBody422_46 AllocBody422_107

def AllocBody422_109 : StackLang.HolProg 64 :=
.seq AllocBody422_3 AllocBody422_108

def AllocBody422_110 : StackLang.HolProg 64 :=
.seq AllocBody422_0 AllocBody422_109

def Alloc422 : Nat × StackLang.HolProg 64 := (422, AllocBody422_110)
theorem Alloc422_eq : StackAlloc.progComp (422, raw422) = Alloc422 := by
  kernel_rfl
#print axioms Alloc422_eq
end InitECandidate.Proofs.BackendStages
