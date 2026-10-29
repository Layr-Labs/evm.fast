import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw282
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody282_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody282_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody282_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody282_3 : StackLang.HolProg 64 :=
.seq AllocBody282_1 AllocBody282_2

def AllocBody282_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1024#64)

def AllocBody282_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody282_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody282_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody282_8 : StackLang.HolProg 64 :=
.seq AllocBody282_6 AllocBody282_7

def AllocBody282_9 : StackLang.HolProg 64 :=
.seq AllocBody282_5 AllocBody282_8

def AllocBody282_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 752#64)

def AllocBody282_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody282_13 : StackLang.HolProg 64 :=
.seq AllocBody282_11 AllocBody282_12

def AllocBody282_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody282_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody282_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody282_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 282 3

def AllocBody282_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody282_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody282_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody282_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody282_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody282_24 : StackLang.HolProg 64 :=
.seq AllocBody282_22 AllocBody282_23

def AllocBody282_25 : StackLang.HolProg 64 :=
.seq AllocBody282_21 AllocBody282_24

def AllocBody282_26 : StackLang.HolProg 64 :=
.seq AllocBody282_20 AllocBody282_25

def AllocBody282_27 : StackLang.HolProg 64 :=
.seq AllocBody282_19 AllocBody282_26

def AllocBody282_28 : StackLang.HolProg 64 :=
.seq AllocBody282_18 AllocBody282_27

def AllocBody282_29 : StackLang.HolProg 64 :=
.seq AllocBody282_17 AllocBody282_28

def AllocBody282_30 : StackLang.HolProg 64 :=
.seq AllocBody282_16 AllocBody282_29

def AllocBody282_31 : StackLang.HolProg 64 :=
.seq AllocBody282_15 AllocBody282_30

def AllocBody282_32 : StackLang.HolProg 64 :=
.seq AllocBody282_14 AllocBody282_31

def AllocBody282_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody282_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody282_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody282_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody282_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody282_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody282_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody282_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody282_43 : StackLang.HolProg 64 :=
.seq AllocBody282_41 AllocBody282_42

def AllocBody282_44 : StackLang.HolProg 64 :=
.seq AllocBody282_40 AllocBody282_43

def AllocBody282_45 : StackLang.HolProg 64 :=
.seq AllocBody282_39 AllocBody282_44

def AllocBody282_46 : StackLang.HolProg 64 :=
.seq AllocBody282_38 AllocBody282_45

def AllocBody282_47 : StackLang.HolProg 64 :=
.seq AllocBody282_37 AllocBody282_46

def AllocBody282_48 : StackLang.HolProg 64 :=
.seq AllocBody282_36 AllocBody282_47

def AllocBody282_49 : StackLang.HolProg 64 :=
.seq AllocBody282_35 AllocBody282_48

def AllocBody282_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody282_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody282_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody282_53 : StackLang.HolProg 64 :=
.seq AllocBody282_51 AllocBody282_52

def AllocBody282_54 : StackLang.HolProg 64 :=
.seq AllocBody282_50 AllocBody282_53

def AllocBody282_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody282_56 : StackLang.HolProg 64 :=
.seq AllocBody282_54 AllocBody282_55

def AllocBody282_57 : StackLang.HolProg 64 :=
.call (some (AllocBody282_49, 0, 282, 2)) (Sum.inl 95) (some (AllocBody282_56, 282, 3))

def AllocBody282_58 : StackLang.HolProg 64 :=
.seq AllocBody282_34 AllocBody282_57

def AllocBody282_59 : StackLang.HolProg 64 :=
.seq AllocBody282_33 AllocBody282_58

def AllocBody282_60 : StackLang.HolProg 64 :=
.seq AllocBody282_32 AllocBody282_59

def AllocBody282_61 : StackLang.HolProg 64 :=
.seq AllocBody282_13 AllocBody282_60

def AllocBody282_62 : StackLang.HolProg 64 :=
.seq AllocBody282_10 AllocBody282_61

def AllocBody282_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody282_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody282_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody282_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody282_71 : StackLang.HolProg 64 :=
.seq AllocBody282_69 AllocBody282_70

def AllocBody282_72 : StackLang.HolProg 64 :=
.seq AllocBody282_68 AllocBody282_71

def AllocBody282_73 : StackLang.HolProg 64 :=
.seq AllocBody282_67 AllocBody282_72

def AllocBody282_74 : StackLang.HolProg 64 :=
.seq AllocBody282_66 AllocBody282_73

def AllocBody282_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody282_74 AllocBody282_75

def AllocBody282_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody282_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody282_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody282_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody282_86 : StackLang.HolProg 64 :=
.seq AllocBody282_84 AllocBody282_85

def AllocBody282_87 : StackLang.HolProg 64 :=
.seq AllocBody282_83 AllocBody282_86

def AllocBody282_88 : StackLang.HolProg 64 :=
.seq AllocBody282_82 AllocBody282_87

def AllocBody282_89 : StackLang.HolProg 64 :=
.seq AllocBody282_81 AllocBody282_88

def AllocBody282_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody282_89 AllocBody282_90

def AllocBody282_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5000#64)

def AllocBody282_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody282_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody282_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody282_101 : StackLang.HolProg 64 :=
.seq AllocBody282_99 AllocBody282_100

def AllocBody282_102 : StackLang.HolProg 64 :=
.seq AllocBody282_98 AllocBody282_101

def AllocBody282_103 : StackLang.HolProg 64 :=
.seq AllocBody282_97 AllocBody282_102

def AllocBody282_104 : StackLang.HolProg 64 :=
.seq AllocBody282_96 AllocBody282_103

def AllocBody282_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody282_104 AllocBody282_105

def AllocBody282_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody282_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody282_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody282_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody282_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def AllocBody282_113 : StackLang.HolProg 64 :=
.seq AllocBody282_111 AllocBody282_112

def AllocBody282_114 : StackLang.HolProg 64 :=
.seq AllocBody282_110 AllocBody282_113

def AllocBody282_115 : StackLang.HolProg 64 :=
.seq AllocBody282_109 AllocBody282_114

def AllocBody282_116 : StackLang.HolProg 64 :=
.seq AllocBody282_108 AllocBody282_115

def AllocBody282_117 : StackLang.HolProg 64 :=
.seq AllocBody282_107 AllocBody282_116

def AllocBody282_118 : StackLang.HolProg 64 :=
.seq AllocBody282_106 AllocBody282_117

def AllocBody282_119 : StackLang.HolProg 64 :=
.seq AllocBody282_95 AllocBody282_118

def AllocBody282_120 : StackLang.HolProg 64 :=
.seq AllocBody282_94 AllocBody282_119

def AllocBody282_121 : StackLang.HolProg 64 :=
.seq AllocBody282_93 AllocBody282_120

def AllocBody282_122 : StackLang.HolProg 64 :=
.seq AllocBody282_92 AllocBody282_121

def AllocBody282_123 : StackLang.HolProg 64 :=
.seq AllocBody282_91 AllocBody282_122

def AllocBody282_124 : StackLang.HolProg 64 :=
.seq AllocBody282_80 AllocBody282_123

def AllocBody282_125 : StackLang.HolProg 64 :=
.seq AllocBody282_79 AllocBody282_124

def AllocBody282_126 : StackLang.HolProg 64 :=
.seq AllocBody282_78 AllocBody282_125

def AllocBody282_127 : StackLang.HolProg 64 :=
.seq AllocBody282_77 AllocBody282_126

def AllocBody282_128 : StackLang.HolProg 64 :=
.seq AllocBody282_76 AllocBody282_127

def AllocBody282_129 : StackLang.HolProg 64 :=
.seq AllocBody282_65 AllocBody282_128

def AllocBody282_130 : StackLang.HolProg 64 :=
.seq AllocBody282_64 AllocBody282_129

def AllocBody282_131 : StackLang.HolProg 64 :=
.seq AllocBody282_63 AllocBody282_130

def AllocBody282_132 : StackLang.HolProg 64 :=
.seq AllocBody282_62 AllocBody282_131

def AllocBody282_133 : StackLang.HolProg 64 :=
.seq AllocBody282_9 AllocBody282_132

def AllocBody282_134 : StackLang.HolProg 64 :=
.seq AllocBody282_4 AllocBody282_133

def AllocBody282_135 : StackLang.HolProg 64 :=
.seq AllocBody282_3 AllocBody282_134

def AllocBody282_136 : StackLang.HolProg 64 :=
.seq AllocBody282_0 AllocBody282_135

def Alloc282 : Nat × StackLang.HolProg 64 := (282, AllocBody282_136)
theorem Alloc282_eq : StackAlloc.progComp (282, raw282) = Alloc282 := by
  kernel_rfl
#print axioms Alloc282_eq
end InitECandidate.Proofs.BackendStages
