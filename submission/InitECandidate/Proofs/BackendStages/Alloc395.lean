import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw395
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody395_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody395_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody395_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def AllocBody395_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody395_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody395_5 : StackLang.HolProg 64 :=
.seq AllocBody395_3 AllocBody395_4

def AllocBody395_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1173#64)

def AllocBody395_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody395_9 : StackLang.HolProg 64 :=
.seq AllocBody395_7 AllocBody395_8

def AllocBody395_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody395_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody395_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody395_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 3

def AllocBody395_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody395_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody395_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody395_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody395_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody395_20 : StackLang.HolProg 64 :=
.seq AllocBody395_18 AllocBody395_19

def AllocBody395_21 : StackLang.HolProg 64 :=
.seq AllocBody395_17 AllocBody395_20

def AllocBody395_22 : StackLang.HolProg 64 :=
.seq AllocBody395_16 AllocBody395_21

def AllocBody395_23 : StackLang.HolProg 64 :=
.seq AllocBody395_15 AllocBody395_22

def AllocBody395_24 : StackLang.HolProg 64 :=
.seq AllocBody395_14 AllocBody395_23

def AllocBody395_25 : StackLang.HolProg 64 :=
.seq AllocBody395_13 AllocBody395_24

def AllocBody395_26 : StackLang.HolProg 64 :=
.seq AllocBody395_12 AllocBody395_25

def AllocBody395_27 : StackLang.HolProg 64 :=
.seq AllocBody395_11 AllocBody395_26

def AllocBody395_28 : StackLang.HolProg 64 :=
.seq AllocBody395_10 AllocBody395_27

def AllocBody395_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody395_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody395_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody395_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody395_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody395_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody395_37 : StackLang.HolProg 64 :=
.seq AllocBody395_35 AllocBody395_36

def AllocBody395_38 : StackLang.HolProg 64 :=
.seq AllocBody395_34 AllocBody395_37

def AllocBody395_39 : StackLang.HolProg 64 :=
.seq AllocBody395_33 AllocBody395_38

def AllocBody395_40 : StackLang.HolProg 64 :=
.seq AllocBody395_32 AllocBody395_39

def AllocBody395_41 : StackLang.HolProg 64 :=
.seq AllocBody395_31 AllocBody395_40

def AllocBody395_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody395_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody395_44 : StackLang.HolProg 64 :=
.seq AllocBody395_42 AllocBody395_43

def AllocBody395_45 : StackLang.HolProg 64 :=
.call (some (AllocBody395_41, 0, 395, 2)) (Sum.inl 68) (some (AllocBody395_44, 395, 3))

def AllocBody395_46 : StackLang.HolProg 64 :=
.seq AllocBody395_30 AllocBody395_45

def AllocBody395_47 : StackLang.HolProg 64 :=
.seq AllocBody395_29 AllocBody395_46

def AllocBody395_48 : StackLang.HolProg 64 :=
.seq AllocBody395_28 AllocBody395_47

def AllocBody395_49 : StackLang.HolProg 64 :=
.seq AllocBody395_9 AllocBody395_48

def AllocBody395_50 : StackLang.HolProg 64 :=
.seq AllocBody395_6 AllocBody395_49

def AllocBody395_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody395_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody395_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 56#64)

def AllocBody395_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody395_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1174#64)

def AllocBody395_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody395_58 : StackLang.HolProg 64 :=
.seq AllocBody395_56 AllocBody395_57

def AllocBody395_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody395_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody395_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody395_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 395 5

def AllocBody395_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody395_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody395_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody395_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody395_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody395_69 : StackLang.HolProg 64 :=
.seq AllocBody395_67 AllocBody395_68

def AllocBody395_70 : StackLang.HolProg 64 :=
.seq AllocBody395_66 AllocBody395_69

def AllocBody395_71 : StackLang.HolProg 64 :=
.seq AllocBody395_65 AllocBody395_70

def AllocBody395_72 : StackLang.HolProg 64 :=
.seq AllocBody395_64 AllocBody395_71

def AllocBody395_73 : StackLang.HolProg 64 :=
.seq AllocBody395_63 AllocBody395_72

def AllocBody395_74 : StackLang.HolProg 64 :=
.seq AllocBody395_62 AllocBody395_73

def AllocBody395_75 : StackLang.HolProg 64 :=
.seq AllocBody395_61 AllocBody395_74

def AllocBody395_76 : StackLang.HolProg 64 :=
.seq AllocBody395_60 AllocBody395_75

def AllocBody395_77 : StackLang.HolProg 64 :=
.seq AllocBody395_59 AllocBody395_76

def AllocBody395_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody395_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody395_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody395_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody395_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody395_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody395_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody395_86 : StackLang.HolProg 64 :=
.seq AllocBody395_84 AllocBody395_85

def AllocBody395_87 : StackLang.HolProg 64 :=
.seq AllocBody395_83 AllocBody395_86

def AllocBody395_88 : StackLang.HolProg 64 :=
.seq AllocBody395_82 AllocBody395_87

def AllocBody395_89 : StackLang.HolProg 64 :=
.seq AllocBody395_81 AllocBody395_88

def AllocBody395_90 : StackLang.HolProg 64 :=
.seq AllocBody395_80 AllocBody395_89

def AllocBody395_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody395_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody395_93 : StackLang.HolProg 64 :=
.seq AllocBody395_91 AllocBody395_92

def AllocBody395_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody395_95 : StackLang.HolProg 64 :=
.seq AllocBody395_93 AllocBody395_94

def AllocBody395_96 : StackLang.HolProg 64 :=
.call (some (AllocBody395_90, 0, 395, 4)) (Sum.inl 77) (some (AllocBody395_95, 395, 5))

def AllocBody395_97 : StackLang.HolProg 64 :=
.seq AllocBody395_79 AllocBody395_96

def AllocBody395_98 : StackLang.HolProg 64 :=
.seq AllocBody395_78 AllocBody395_97

def AllocBody395_99 : StackLang.HolProg 64 :=
.seq AllocBody395_77 AllocBody395_98

def AllocBody395_100 : StackLang.HolProg 64 :=
.seq AllocBody395_58 AllocBody395_99

def AllocBody395_101 : StackLang.HolProg 64 :=
.seq AllocBody395_55 AllocBody395_100

def AllocBody395_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody395_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody395_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody395_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody395_106 : StackLang.HolProg 64 :=
.seq AllocBody395_104 AllocBody395_105

def AllocBody395_107 : StackLang.HolProg 64 :=
.seq AllocBody395_103 AllocBody395_106

def AllocBody395_108 : StackLang.HolProg 64 :=
.seq AllocBody395_102 AllocBody395_107

def AllocBody395_109 : StackLang.HolProg 64 :=
.seq AllocBody395_101 AllocBody395_108

def AllocBody395_110 : StackLang.HolProg 64 :=
.seq AllocBody395_54 AllocBody395_109

def AllocBody395_111 : StackLang.HolProg 64 :=
.seq AllocBody395_53 AllocBody395_110

def AllocBody395_112 : StackLang.HolProg 64 :=
.seq AllocBody395_52 AllocBody395_111

def AllocBody395_113 : StackLang.HolProg 64 :=
.seq AllocBody395_51 AllocBody395_112

def AllocBody395_114 : StackLang.HolProg 64 :=
.seq AllocBody395_50 AllocBody395_113

def AllocBody395_115 : StackLang.HolProg 64 :=
.seq AllocBody395_5 AllocBody395_114

def AllocBody395_116 : StackLang.HolProg 64 :=
.seq AllocBody395_2 AllocBody395_115

def AllocBody395_117 : StackLang.HolProg 64 :=
.seq AllocBody395_1 AllocBody395_116

def AllocBody395_118 : StackLang.HolProg 64 :=
.seq AllocBody395_0 AllocBody395_117

def Alloc395 : Nat × StackLang.HolProg 64 := (395, AllocBody395_118)
theorem Alloc395_eq : StackAlloc.progComp (395, raw395) = Alloc395 := by
  kernel_rfl
#print axioms Alloc395_eq
end InitECandidate.Proofs.BackendStages
