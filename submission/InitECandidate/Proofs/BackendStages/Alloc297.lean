import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw297
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody297_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody297_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody297_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def AllocBody297_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody297_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody297_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody297_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody297_7 : StackLang.HolProg 64 :=
.seq AllocBody297_5 AllocBody297_6

def AllocBody297_8 : StackLang.HolProg 64 :=
.seq AllocBody297_4 AllocBody297_7

def AllocBody297_9 : StackLang.HolProg 64 :=
.seq AllocBody297_3 AllocBody297_8

def AllocBody297_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 803#64)

def AllocBody297_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody297_13 : StackLang.HolProg 64 :=
.seq AllocBody297_11 AllocBody297_12

def AllocBody297_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody297_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody297_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody297_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 297 3

def AllocBody297_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody297_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody297_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody297_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody297_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody297_24 : StackLang.HolProg 64 :=
.seq AllocBody297_22 AllocBody297_23

def AllocBody297_25 : StackLang.HolProg 64 :=
.seq AllocBody297_21 AllocBody297_24

def AllocBody297_26 : StackLang.HolProg 64 :=
.seq AllocBody297_20 AllocBody297_25

def AllocBody297_27 : StackLang.HolProg 64 :=
.seq AllocBody297_19 AllocBody297_26

def AllocBody297_28 : StackLang.HolProg 64 :=
.seq AllocBody297_18 AllocBody297_27

def AllocBody297_29 : StackLang.HolProg 64 :=
.seq AllocBody297_17 AllocBody297_28

def AllocBody297_30 : StackLang.HolProg 64 :=
.seq AllocBody297_16 AllocBody297_29

def AllocBody297_31 : StackLang.HolProg 64 :=
.seq AllocBody297_15 AllocBody297_30

def AllocBody297_32 : StackLang.HolProg 64 :=
.seq AllocBody297_14 AllocBody297_31

def AllocBody297_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody297_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody297_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody297_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody297_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody297_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody297_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody297_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody297_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody297_44 : StackLang.HolProg 64 :=
.seq AllocBody297_42 AllocBody297_43

def AllocBody297_45 : StackLang.HolProg 64 :=
.seq AllocBody297_41 AllocBody297_44

def AllocBody297_46 : StackLang.HolProg 64 :=
.seq AllocBody297_40 AllocBody297_45

def AllocBody297_47 : StackLang.HolProg 64 :=
.seq AllocBody297_39 AllocBody297_46

def AllocBody297_48 : StackLang.HolProg 64 :=
.seq AllocBody297_38 AllocBody297_47

def AllocBody297_49 : StackLang.HolProg 64 :=
.seq AllocBody297_37 AllocBody297_48

def AllocBody297_50 : StackLang.HolProg 64 :=
.seq AllocBody297_36 AllocBody297_49

def AllocBody297_51 : StackLang.HolProg 64 :=
.seq AllocBody297_35 AllocBody297_50

def AllocBody297_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody297_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody297_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody297_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody297_56 : StackLang.HolProg 64 :=
.seq AllocBody297_54 AllocBody297_55

def AllocBody297_57 : StackLang.HolProg 64 :=
.seq AllocBody297_53 AllocBody297_56

def AllocBody297_58 : StackLang.HolProg 64 :=
.seq AllocBody297_52 AllocBody297_57

def AllocBody297_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody297_60 : StackLang.HolProg 64 :=
.seq AllocBody297_58 AllocBody297_59

def AllocBody297_61 : StackLang.HolProg 64 :=
.call (some (AllocBody297_51, 0, 297, 2)) (Sum.inl 68) (some (AllocBody297_60, 297, 3))

def AllocBody297_62 : StackLang.HolProg 64 :=
.seq AllocBody297_34 AllocBody297_61

def AllocBody297_63 : StackLang.HolProg 64 :=
.seq AllocBody297_33 AllocBody297_62

def AllocBody297_64 : StackLang.HolProg 64 :=
.seq AllocBody297_32 AllocBody297_63

def AllocBody297_65 : StackLang.HolProg 64 :=
.seq AllocBody297_13 AllocBody297_64

def AllocBody297_66 : StackLang.HolProg 64 :=
.seq AllocBody297_10 AllocBody297_65

def AllocBody297_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody297_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody297_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody297_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody297_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody297_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody297_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody297_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody297_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody297_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody297_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody297_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody297_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody297_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody297_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody297_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody297_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody297_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody297_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody297_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody297_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody297_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody297_102 : StackLang.HolProg 64 :=
.seq AllocBody297_100 AllocBody297_101

def AllocBody297_103 : StackLang.HolProg 64 :=
.seq AllocBody297_99 AllocBody297_102

def AllocBody297_104 : StackLang.HolProg 64 :=
.seq AllocBody297_98 AllocBody297_103

def AllocBody297_105 : StackLang.HolProg 64 :=
.seq AllocBody297_97 AllocBody297_104

def AllocBody297_106 : StackLang.HolProg 64 :=
.seq AllocBody297_96 AllocBody297_105

def AllocBody297_107 : StackLang.HolProg 64 :=
.seq AllocBody297_95 AllocBody297_106

def AllocBody297_108 : StackLang.HolProg 64 :=
.seq AllocBody297_94 AllocBody297_107

def AllocBody297_109 : StackLang.HolProg 64 :=
.seq AllocBody297_93 AllocBody297_108

def AllocBody297_110 : StackLang.HolProg 64 :=
.seq AllocBody297_92 AllocBody297_109

def AllocBody297_111 : StackLang.HolProg 64 :=
.seq AllocBody297_91 AllocBody297_110

def AllocBody297_112 : StackLang.HolProg 64 :=
.seq AllocBody297_90 AllocBody297_111

def AllocBody297_113 : StackLang.HolProg 64 :=
.seq AllocBody297_89 AllocBody297_112

def AllocBody297_114 : StackLang.HolProg 64 :=
.seq AllocBody297_88 AllocBody297_113

def AllocBody297_115 : StackLang.HolProg 64 :=
.seq AllocBody297_87 AllocBody297_114

def AllocBody297_116 : StackLang.HolProg 64 :=
.seq AllocBody297_86 AllocBody297_115

def AllocBody297_117 : StackLang.HolProg 64 :=
.seq AllocBody297_85 AllocBody297_116

def AllocBody297_118 : StackLang.HolProg 64 :=
.seq AllocBody297_84 AllocBody297_117

def AllocBody297_119 : StackLang.HolProg 64 :=
.seq AllocBody297_83 AllocBody297_118

def AllocBody297_120 : StackLang.HolProg 64 :=
.seq AllocBody297_82 AllocBody297_119

def AllocBody297_121 : StackLang.HolProg 64 :=
.seq AllocBody297_81 AllocBody297_120

def AllocBody297_122 : StackLang.HolProg 64 :=
.seq AllocBody297_80 AllocBody297_121

def AllocBody297_123 : StackLang.HolProg 64 :=
.seq AllocBody297_79 AllocBody297_122

def AllocBody297_124 : StackLang.HolProg 64 :=
.seq AllocBody297_78 AllocBody297_123

def AllocBody297_125 : StackLang.HolProg 64 :=
.seq AllocBody297_77 AllocBody297_124

def AllocBody297_126 : StackLang.HolProg 64 :=
.seq AllocBody297_76 AllocBody297_125

def AllocBody297_127 : StackLang.HolProg 64 :=
.seq AllocBody297_75 AllocBody297_126

def AllocBody297_128 : StackLang.HolProg 64 :=
.seq AllocBody297_74 AllocBody297_127

def AllocBody297_129 : StackLang.HolProg 64 :=
.seq AllocBody297_73 AllocBody297_128

def AllocBody297_130 : StackLang.HolProg 64 :=
.seq AllocBody297_72 AllocBody297_129

def AllocBody297_131 : StackLang.HolProg 64 :=
.seq AllocBody297_71 AllocBody297_130

def AllocBody297_132 : StackLang.HolProg 64 :=
.seq AllocBody297_70 AllocBody297_131

def AllocBody297_133 : StackLang.HolProg 64 :=
.seq AllocBody297_69 AllocBody297_132

def AllocBody297_134 : StackLang.HolProg 64 :=
.seq AllocBody297_68 AllocBody297_133

def AllocBody297_135 : StackLang.HolProg 64 :=
.seq AllocBody297_67 AllocBody297_134

def AllocBody297_136 : StackLang.HolProg 64 :=
.seq AllocBody297_66 AllocBody297_135

def AllocBody297_137 : StackLang.HolProg 64 :=
.seq AllocBody297_9 AllocBody297_136

def AllocBody297_138 : StackLang.HolProg 64 :=
.seq AllocBody297_2 AllocBody297_137

def AllocBody297_139 : StackLang.HolProg 64 :=
.seq AllocBody297_1 AllocBody297_138

def AllocBody297_140 : StackLang.HolProg 64 :=
.seq AllocBody297_0 AllocBody297_139

def Alloc297 : Nat × StackLang.HolProg 64 := (297, AllocBody297_140)
theorem Alloc297_eq : StackAlloc.progComp (297, raw297) = Alloc297 := by
  kernel_rfl
#print axioms Alloc297_eq
end InitECandidate.Proofs.BackendStages
