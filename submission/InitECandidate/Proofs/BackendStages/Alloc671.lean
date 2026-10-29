import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw671
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody671_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody671_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody671_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody671_3 : StackLang.HolProg 64 :=
.seq AllocBody671_1 AllocBody671_2

def AllocBody671_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 12#64)

def AllocBody671_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody671_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody671_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody671_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody671_9 : StackLang.HolProg 64 :=
.seq AllocBody671_7 AllocBody671_8

def AllocBody671_10 : StackLang.HolProg 64 :=
.seq AllocBody671_6 AllocBody671_9

def AllocBody671_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2786#64)

def AllocBody671_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody671_14 : StackLang.HolProg 64 :=
.seq AllocBody671_12 AllocBody671_13

def AllocBody671_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody671_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody671_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody671_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 3

def AllocBody671_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody671_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody671_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody671_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody671_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody671_25 : StackLang.HolProg 64 :=
.seq AllocBody671_23 AllocBody671_24

def AllocBody671_26 : StackLang.HolProg 64 :=
.seq AllocBody671_22 AllocBody671_25

def AllocBody671_27 : StackLang.HolProg 64 :=
.seq AllocBody671_21 AllocBody671_26

def AllocBody671_28 : StackLang.HolProg 64 :=
.seq AllocBody671_20 AllocBody671_27

def AllocBody671_29 : StackLang.HolProg 64 :=
.seq AllocBody671_19 AllocBody671_28

def AllocBody671_30 : StackLang.HolProg 64 :=
.seq AllocBody671_18 AllocBody671_29

def AllocBody671_31 : StackLang.HolProg 64 :=
.seq AllocBody671_17 AllocBody671_30

def AllocBody671_32 : StackLang.HolProg 64 :=
.seq AllocBody671_16 AllocBody671_31

def AllocBody671_33 : StackLang.HolProg 64 :=
.seq AllocBody671_15 AllocBody671_32

def AllocBody671_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody671_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody671_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody671_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody671_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody671_41 : StackLang.HolProg 64 :=
.seq AllocBody671_39 AllocBody671_40

def AllocBody671_42 : StackLang.HolProg 64 :=
.seq AllocBody671_38 AllocBody671_41

def AllocBody671_43 : StackLang.HolProg 64 :=
.seq AllocBody671_37 AllocBody671_42

def AllocBody671_44 : StackLang.HolProg 64 :=
.seq AllocBody671_36 AllocBody671_43

def AllocBody671_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody671_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody671_47 : StackLang.HolProg 64 :=
.seq AllocBody671_45 AllocBody671_46

def AllocBody671_48 : StackLang.HolProg 64 :=
.call (some (AllocBody671_44, 0, 671, 2)) (Sum.inl 669) (some (AllocBody671_47, 671, 3))

def AllocBody671_49 : StackLang.HolProg 64 :=
.seq AllocBody671_35 AllocBody671_48

def AllocBody671_50 : StackLang.HolProg 64 :=
.seq AllocBody671_34 AllocBody671_49

def AllocBody671_51 : StackLang.HolProg 64 :=
.seq AllocBody671_33 AllocBody671_50

def AllocBody671_52 : StackLang.HolProg 64 :=
.seq AllocBody671_14 AllocBody671_51

def AllocBody671_53 : StackLang.HolProg 64 :=
.seq AllocBody671_11 AllocBody671_52

def AllocBody671_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody671_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody671_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody671_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody671_59 : StackLang.HolProg 64 :=
.seq AllocBody671_57 AllocBody671_58

def AllocBody671_60 : StackLang.HolProg 64 :=
.seq AllocBody671_56 AllocBody671_59

def AllocBody671_61 : StackLang.HolProg 64 :=
.seq AllocBody671_55 AllocBody671_60

def AllocBody671_62 : StackLang.HolProg 64 :=
.seq AllocBody671_54 AllocBody671_61

def AllocBody671_63 : StackLang.HolProg 64 :=
.seq AllocBody671_53 AllocBody671_62

def AllocBody671_64 : StackLang.HolProg 64 :=
.seq AllocBody671_10 AllocBody671_63

def AllocBody671_65 : StackLang.HolProg 64 :=
.seq AllocBody671_5 AllocBody671_64

def AllocBody671_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody671_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody671_65 AllocBody671_66

def AllocBody671_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody671_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody671_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody671_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody671_72 : StackLang.HolProg 64 :=
.seq AllocBody671_70 AllocBody671_71

def AllocBody671_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2787#64)

def AllocBody671_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody671_76 : StackLang.HolProg 64 :=
.seq AllocBody671_74 AllocBody671_75

def AllocBody671_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody671_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody671_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody671_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 671 5

def AllocBody671_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody671_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody671_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody671_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody671_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody671_87 : StackLang.HolProg 64 :=
.seq AllocBody671_85 AllocBody671_86

def AllocBody671_88 : StackLang.HolProg 64 :=
.seq AllocBody671_84 AllocBody671_87

def AllocBody671_89 : StackLang.HolProg 64 :=
.seq AllocBody671_83 AllocBody671_88

def AllocBody671_90 : StackLang.HolProg 64 :=
.seq AllocBody671_82 AllocBody671_89

def AllocBody671_91 : StackLang.HolProg 64 :=
.seq AllocBody671_81 AllocBody671_90

def AllocBody671_92 : StackLang.HolProg 64 :=
.seq AllocBody671_80 AllocBody671_91

def AllocBody671_93 : StackLang.HolProg 64 :=
.seq AllocBody671_79 AllocBody671_92

def AllocBody671_94 : StackLang.HolProg 64 :=
.seq AllocBody671_78 AllocBody671_93

def AllocBody671_95 : StackLang.HolProg 64 :=
.seq AllocBody671_77 AllocBody671_94

def AllocBody671_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody671_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody671_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody671_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody671_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody671_103 : StackLang.HolProg 64 :=
.seq AllocBody671_101 AllocBody671_102

def AllocBody671_104 : StackLang.HolProg 64 :=
.seq AllocBody671_100 AllocBody671_103

def AllocBody671_105 : StackLang.HolProg 64 :=
.seq AllocBody671_99 AllocBody671_104

def AllocBody671_106 : StackLang.HolProg 64 :=
.seq AllocBody671_98 AllocBody671_105

def AllocBody671_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody671_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody671_109 : StackLang.HolProg 64 :=
.seq AllocBody671_107 AllocBody671_108

def AllocBody671_110 : StackLang.HolProg 64 :=
.call (some (AllocBody671_106, 0, 671, 4)) (Sum.inl 670) (some (AllocBody671_109, 671, 5))

def AllocBody671_111 : StackLang.HolProg 64 :=
.seq AllocBody671_97 AllocBody671_110

def AllocBody671_112 : StackLang.HolProg 64 :=
.seq AllocBody671_96 AllocBody671_111

def AllocBody671_113 : StackLang.HolProg 64 :=
.seq AllocBody671_95 AllocBody671_112

def AllocBody671_114 : StackLang.HolProg 64 :=
.seq AllocBody671_76 AllocBody671_113

def AllocBody671_115 : StackLang.HolProg 64 :=
.seq AllocBody671_73 AllocBody671_114

def AllocBody671_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody671_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody671_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody671_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody671_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody671_121 : StackLang.HolProg 64 :=
.seq AllocBody671_119 AllocBody671_120

def AllocBody671_122 : StackLang.HolProg 64 :=
.seq AllocBody671_118 AllocBody671_121

def AllocBody671_123 : StackLang.HolProg 64 :=
.seq AllocBody671_117 AllocBody671_122

def AllocBody671_124 : StackLang.HolProg 64 :=
.seq AllocBody671_116 AllocBody671_123

def AllocBody671_125 : StackLang.HolProg 64 :=
.seq AllocBody671_115 AllocBody671_124

def AllocBody671_126 : StackLang.HolProg 64 :=
.seq AllocBody671_72 AllocBody671_125

def AllocBody671_127 : StackLang.HolProg 64 :=
.seq AllocBody671_69 AllocBody671_126

def AllocBody671_128 : StackLang.HolProg 64 :=
.seq AllocBody671_68 AllocBody671_127

def AllocBody671_129 : StackLang.HolProg 64 :=
.seq AllocBody671_67 AllocBody671_128

def AllocBody671_130 : StackLang.HolProg 64 :=
.seq AllocBody671_4 AllocBody671_129

def AllocBody671_131 : StackLang.HolProg 64 :=
.seq AllocBody671_3 AllocBody671_130

def AllocBody671_132 : StackLang.HolProg 64 :=
.seq AllocBody671_0 AllocBody671_131

def Alloc671 : Nat × StackLang.HolProg 64 := (671, AllocBody671_132)
theorem Alloc671_eq : StackAlloc.progComp (671, raw671) = Alloc671 := by
  kernel_rfl
#print axioms Alloc671_eq
end InitECandidate.Proofs.BackendStages
