import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw487
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody487_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody487_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def AllocBody487_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody487_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1525#64)

def AllocBody487_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody487_7 : StackLang.HolProg 64 :=
.seq AllocBody487_5 AllocBody487_6

def AllocBody487_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody487_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody487_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody487_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 3

def AllocBody487_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody487_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody487_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody487_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody487_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody487_18 : StackLang.HolProg 64 :=
.seq AllocBody487_16 AllocBody487_17

def AllocBody487_19 : StackLang.HolProg 64 :=
.seq AllocBody487_15 AllocBody487_18

def AllocBody487_20 : StackLang.HolProg 64 :=
.seq AllocBody487_14 AllocBody487_19

def AllocBody487_21 : StackLang.HolProg 64 :=
.seq AllocBody487_13 AllocBody487_20

def AllocBody487_22 : StackLang.HolProg 64 :=
.seq AllocBody487_12 AllocBody487_21

def AllocBody487_23 : StackLang.HolProg 64 :=
.seq AllocBody487_11 AllocBody487_22

def AllocBody487_24 : StackLang.HolProg 64 :=
.seq AllocBody487_10 AllocBody487_23

def AllocBody487_25 : StackLang.HolProg 64 :=
.seq AllocBody487_9 AllocBody487_24

def AllocBody487_26 : StackLang.HolProg 64 :=
.seq AllocBody487_8 AllocBody487_25

def AllocBody487_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody487_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody487_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody487_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody487_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody487_34 : StackLang.HolProg 64 :=
.seq AllocBody487_32 AllocBody487_33

def AllocBody487_35 : StackLang.HolProg 64 :=
.seq AllocBody487_31 AllocBody487_34

def AllocBody487_36 : StackLang.HolProg 64 :=
.seq AllocBody487_30 AllocBody487_35

def AllocBody487_37 : StackLang.HolProg 64 :=
.seq AllocBody487_29 AllocBody487_36

def AllocBody487_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody487_40 : StackLang.HolProg 64 :=
.seq AllocBody487_38 AllocBody487_39

def AllocBody487_41 : StackLang.HolProg 64 :=
.call (some (AllocBody487_37, 0, 487, 2)) (Sum.inl 68) (some (AllocBody487_40, 487, 3))

def AllocBody487_42 : StackLang.HolProg 64 :=
.seq AllocBody487_28 AllocBody487_41

def AllocBody487_43 : StackLang.HolProg 64 :=
.seq AllocBody487_27 AllocBody487_42

def AllocBody487_44 : StackLang.HolProg 64 :=
.seq AllocBody487_26 AllocBody487_43

def AllocBody487_45 : StackLang.HolProg 64 :=
.seq AllocBody487_7 AllocBody487_44

def AllocBody487_46 : StackLang.HolProg 64 :=
.seq AllocBody487_4 AllocBody487_45

def AllocBody487_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody487_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody487_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def AllocBody487_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody487_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1526#64)

def AllocBody487_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody487_54 : StackLang.HolProg 64 :=
.seq AllocBody487_52 AllocBody487_53

def AllocBody487_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody487_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody487_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody487_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 487 5

def AllocBody487_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody487_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody487_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody487_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody487_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody487_65 : StackLang.HolProg 64 :=
.seq AllocBody487_63 AllocBody487_64

def AllocBody487_66 : StackLang.HolProg 64 :=
.seq AllocBody487_62 AllocBody487_65

def AllocBody487_67 : StackLang.HolProg 64 :=
.seq AllocBody487_61 AllocBody487_66

def AllocBody487_68 : StackLang.HolProg 64 :=
.seq AllocBody487_60 AllocBody487_67

def AllocBody487_69 : StackLang.HolProg 64 :=
.seq AllocBody487_59 AllocBody487_68

def AllocBody487_70 : StackLang.HolProg 64 :=
.seq AllocBody487_58 AllocBody487_69

def AllocBody487_71 : StackLang.HolProg 64 :=
.seq AllocBody487_57 AllocBody487_70

def AllocBody487_72 : StackLang.HolProg 64 :=
.seq AllocBody487_56 AllocBody487_71

def AllocBody487_73 : StackLang.HolProg 64 :=
.seq AllocBody487_55 AllocBody487_72

def AllocBody487_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody487_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody487_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody487_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody487_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody487_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody487_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody487_82 : StackLang.HolProg 64 :=
.seq AllocBody487_80 AllocBody487_81

def AllocBody487_83 : StackLang.HolProg 64 :=
.seq AllocBody487_79 AllocBody487_82

def AllocBody487_84 : StackLang.HolProg 64 :=
.seq AllocBody487_78 AllocBody487_83

def AllocBody487_85 : StackLang.HolProg 64 :=
.seq AllocBody487_77 AllocBody487_84

def AllocBody487_86 : StackLang.HolProg 64 :=
.seq AllocBody487_76 AllocBody487_85

def AllocBody487_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody487_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody487_89 : StackLang.HolProg 64 :=
.seq AllocBody487_87 AllocBody487_88

def AllocBody487_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody487_91 : StackLang.HolProg 64 :=
.seq AllocBody487_89 AllocBody487_90

def AllocBody487_92 : StackLang.HolProg 64 :=
.call (some (AllocBody487_86, 0, 487, 4)) (Sum.inl 78) (some (AllocBody487_91, 487, 5))

def AllocBody487_93 : StackLang.HolProg 64 :=
.seq AllocBody487_75 AllocBody487_92

def AllocBody487_94 : StackLang.HolProg 64 :=
.seq AllocBody487_74 AllocBody487_93

def AllocBody487_95 : StackLang.HolProg 64 :=
.seq AllocBody487_73 AllocBody487_94

def AllocBody487_96 : StackLang.HolProg 64 :=
.seq AllocBody487_54 AllocBody487_95

def AllocBody487_97 : StackLang.HolProg 64 :=
.seq AllocBody487_51 AllocBody487_96

def AllocBody487_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody487_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody487_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody487_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody487_102 : StackLang.HolProg 64 :=
.seq AllocBody487_100 AllocBody487_101

def AllocBody487_103 : StackLang.HolProg 64 :=
.seq AllocBody487_99 AllocBody487_102

def AllocBody487_104 : StackLang.HolProg 64 :=
.seq AllocBody487_98 AllocBody487_103

def AllocBody487_105 : StackLang.HolProg 64 :=
.seq AllocBody487_97 AllocBody487_104

def AllocBody487_106 : StackLang.HolProg 64 :=
.seq AllocBody487_50 AllocBody487_105

def AllocBody487_107 : StackLang.HolProg 64 :=
.seq AllocBody487_49 AllocBody487_106

def AllocBody487_108 : StackLang.HolProg 64 :=
.seq AllocBody487_48 AllocBody487_107

def AllocBody487_109 : StackLang.HolProg 64 :=
.seq AllocBody487_47 AllocBody487_108

def AllocBody487_110 : StackLang.HolProg 64 :=
.seq AllocBody487_46 AllocBody487_109

def AllocBody487_111 : StackLang.HolProg 64 :=
.seq AllocBody487_3 AllocBody487_110

def AllocBody487_112 : StackLang.HolProg 64 :=
.seq AllocBody487_2 AllocBody487_111

def AllocBody487_113 : StackLang.HolProg 64 :=
.seq AllocBody487_1 AllocBody487_112

def AllocBody487_114 : StackLang.HolProg 64 :=
.seq AllocBody487_0 AllocBody487_113

def Alloc487 : Nat × StackLang.HolProg 64 := (487, AllocBody487_114)
theorem Alloc487_eq : StackAlloc.progComp (487, raw487) = Alloc487 := by
  kernel_rfl
#print axioms Alloc487_eq
end InitECandidate.Proofs.BackendStages
