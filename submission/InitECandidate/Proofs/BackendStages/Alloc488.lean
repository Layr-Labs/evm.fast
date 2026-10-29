import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw488
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody488_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody488_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def AllocBody488_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody488_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1527#64)

def AllocBody488_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody488_7 : StackLang.HolProg 64 :=
.seq AllocBody488_5 AllocBody488_6

def AllocBody488_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody488_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody488_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody488_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 3

def AllocBody488_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody488_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody488_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody488_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody488_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody488_18 : StackLang.HolProg 64 :=
.seq AllocBody488_16 AllocBody488_17

def AllocBody488_19 : StackLang.HolProg 64 :=
.seq AllocBody488_15 AllocBody488_18

def AllocBody488_20 : StackLang.HolProg 64 :=
.seq AllocBody488_14 AllocBody488_19

def AllocBody488_21 : StackLang.HolProg 64 :=
.seq AllocBody488_13 AllocBody488_20

def AllocBody488_22 : StackLang.HolProg 64 :=
.seq AllocBody488_12 AllocBody488_21

def AllocBody488_23 : StackLang.HolProg 64 :=
.seq AllocBody488_11 AllocBody488_22

def AllocBody488_24 : StackLang.HolProg 64 :=
.seq AllocBody488_10 AllocBody488_23

def AllocBody488_25 : StackLang.HolProg 64 :=
.seq AllocBody488_9 AllocBody488_24

def AllocBody488_26 : StackLang.HolProg 64 :=
.seq AllocBody488_8 AllocBody488_25

def AllocBody488_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody488_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody488_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody488_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody488_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody488_34 : StackLang.HolProg 64 :=
.seq AllocBody488_32 AllocBody488_33

def AllocBody488_35 : StackLang.HolProg 64 :=
.seq AllocBody488_31 AllocBody488_34

def AllocBody488_36 : StackLang.HolProg 64 :=
.seq AllocBody488_30 AllocBody488_35

def AllocBody488_37 : StackLang.HolProg 64 :=
.seq AllocBody488_29 AllocBody488_36

def AllocBody488_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody488_40 : StackLang.HolProg 64 :=
.seq AllocBody488_38 AllocBody488_39

def AllocBody488_41 : StackLang.HolProg 64 :=
.call (some (AllocBody488_37, 0, 488, 2)) (Sum.inl 74) (some (AllocBody488_40, 488, 3))

def AllocBody488_42 : StackLang.HolProg 64 :=
.seq AllocBody488_28 AllocBody488_41

def AllocBody488_43 : StackLang.HolProg 64 :=
.seq AllocBody488_27 AllocBody488_42

def AllocBody488_44 : StackLang.HolProg 64 :=
.seq AllocBody488_26 AllocBody488_43

def AllocBody488_45 : StackLang.HolProg 64 :=
.seq AllocBody488_7 AllocBody488_44

def AllocBody488_46 : StackLang.HolProg 64 :=
.seq AllocBody488_4 AllocBody488_45

def AllocBody488_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody488_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody488_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def AllocBody488_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody488_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1528#64)

def AllocBody488_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody488_54 : StackLang.HolProg 64 :=
.seq AllocBody488_52 AllocBody488_53

def AllocBody488_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody488_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody488_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody488_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 5

def AllocBody488_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody488_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody488_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody488_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody488_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody488_65 : StackLang.HolProg 64 :=
.seq AllocBody488_63 AllocBody488_64

def AllocBody488_66 : StackLang.HolProg 64 :=
.seq AllocBody488_62 AllocBody488_65

def AllocBody488_67 : StackLang.HolProg 64 :=
.seq AllocBody488_61 AllocBody488_66

def AllocBody488_68 : StackLang.HolProg 64 :=
.seq AllocBody488_60 AllocBody488_67

def AllocBody488_69 : StackLang.HolProg 64 :=
.seq AllocBody488_59 AllocBody488_68

def AllocBody488_70 : StackLang.HolProg 64 :=
.seq AllocBody488_58 AllocBody488_69

def AllocBody488_71 : StackLang.HolProg 64 :=
.seq AllocBody488_57 AllocBody488_70

def AllocBody488_72 : StackLang.HolProg 64 :=
.seq AllocBody488_56 AllocBody488_71

def AllocBody488_73 : StackLang.HolProg 64 :=
.seq AllocBody488_55 AllocBody488_72

def AllocBody488_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody488_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody488_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody488_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody488_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody488_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody488_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody488_82 : StackLang.HolProg 64 :=
.seq AllocBody488_80 AllocBody488_81

def AllocBody488_83 : StackLang.HolProg 64 :=
.seq AllocBody488_79 AllocBody488_82

def AllocBody488_84 : StackLang.HolProg 64 :=
.seq AllocBody488_78 AllocBody488_83

def AllocBody488_85 : StackLang.HolProg 64 :=
.seq AllocBody488_77 AllocBody488_84

def AllocBody488_86 : StackLang.HolProg 64 :=
.seq AllocBody488_76 AllocBody488_85

def AllocBody488_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody488_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody488_89 : StackLang.HolProg 64 :=
.seq AllocBody488_87 AllocBody488_88

def AllocBody488_90 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody488_91 : StackLang.HolProg 64 :=
.seq AllocBody488_89 AllocBody488_90

def AllocBody488_92 : StackLang.HolProg 64 :=
.call (some (AllocBody488_86, 0, 488, 4)) (Sum.inl 78) (some (AllocBody488_91, 488, 5))

def AllocBody488_93 : StackLang.HolProg 64 :=
.seq AllocBody488_75 AllocBody488_92

def AllocBody488_94 : StackLang.HolProg 64 :=
.seq AllocBody488_74 AllocBody488_93

def AllocBody488_95 : StackLang.HolProg 64 :=
.seq AllocBody488_73 AllocBody488_94

def AllocBody488_96 : StackLang.HolProg 64 :=
.seq AllocBody488_54 AllocBody488_95

def AllocBody488_97 : StackLang.HolProg 64 :=
.seq AllocBody488_51 AllocBody488_96

def AllocBody488_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody488_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody488_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody488_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody488_102 : StackLang.HolProg 64 :=
.seq AllocBody488_100 AllocBody488_101

def AllocBody488_103 : StackLang.HolProg 64 :=
.seq AllocBody488_99 AllocBody488_102

def AllocBody488_104 : StackLang.HolProg 64 :=
.seq AllocBody488_98 AllocBody488_103

def AllocBody488_105 : StackLang.HolProg 64 :=
.seq AllocBody488_97 AllocBody488_104

def AllocBody488_106 : StackLang.HolProg 64 :=
.seq AllocBody488_50 AllocBody488_105

def AllocBody488_107 : StackLang.HolProg 64 :=
.seq AllocBody488_49 AllocBody488_106

def AllocBody488_108 : StackLang.HolProg 64 :=
.seq AllocBody488_48 AllocBody488_107

def AllocBody488_109 : StackLang.HolProg 64 :=
.seq AllocBody488_47 AllocBody488_108

def AllocBody488_110 : StackLang.HolProg 64 :=
.seq AllocBody488_46 AllocBody488_109

def AllocBody488_111 : StackLang.HolProg 64 :=
.seq AllocBody488_3 AllocBody488_110

def AllocBody488_112 : StackLang.HolProg 64 :=
.seq AllocBody488_2 AllocBody488_111

def AllocBody488_113 : StackLang.HolProg 64 :=
.seq AllocBody488_1 AllocBody488_112

def AllocBody488_114 : StackLang.HolProg 64 :=
.seq AllocBody488_0 AllocBody488_113

def Alloc488 : Nat × StackLang.HolProg 64 := (488, AllocBody488_114)
theorem Alloc488_eq : StackAlloc.progComp (488, raw488) = Alloc488 := by
  kernel_rfl
#print axioms Alloc488_eq
end InitECandidate.Proofs.BackendStages
