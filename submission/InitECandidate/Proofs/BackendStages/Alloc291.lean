import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw291
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody291_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody291_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody291_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody291_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody291_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody291_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody291_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody291_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody291_8 : StackLang.HolProg 64 :=
.seq AllocBody291_6 AllocBody291_7

def AllocBody291_9 : StackLang.HolProg 64 :=
.seq AllocBody291_5 AllocBody291_8

def AllocBody291_10 : StackLang.HolProg 64 :=
.seq AllocBody291_4 AllocBody291_9

def AllocBody291_11 : StackLang.HolProg 64 :=
.seq AllocBody291_3 AllocBody291_10

def AllocBody291_12 : StackLang.HolProg 64 :=
.seq AllocBody291_2 AllocBody291_11

def AllocBody291_13 : StackLang.HolProg 64 :=
.seq AllocBody291_1 AllocBody291_12

def AllocBody291_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 793#64)

def AllocBody291_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody291_17 : StackLang.HolProg 64 :=
.seq AllocBody291_15 AllocBody291_16

def AllocBody291_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody291_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody291_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody291_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 291 3

def AllocBody291_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody291_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody291_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody291_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody291_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody291_28 : StackLang.HolProg 64 :=
.seq AllocBody291_26 AllocBody291_27

def AllocBody291_29 : StackLang.HolProg 64 :=
.seq AllocBody291_25 AllocBody291_28

def AllocBody291_30 : StackLang.HolProg 64 :=
.seq AllocBody291_24 AllocBody291_29

def AllocBody291_31 : StackLang.HolProg 64 :=
.seq AllocBody291_23 AllocBody291_30

def AllocBody291_32 : StackLang.HolProg 64 :=
.seq AllocBody291_22 AllocBody291_31

def AllocBody291_33 : StackLang.HolProg 64 :=
.seq AllocBody291_21 AllocBody291_32

def AllocBody291_34 : StackLang.HolProg 64 :=
.seq AllocBody291_20 AllocBody291_33

def AllocBody291_35 : StackLang.HolProg 64 :=
.seq AllocBody291_19 AllocBody291_34

def AllocBody291_36 : StackLang.HolProg 64 :=
.seq AllocBody291_18 AllocBody291_35

def AllocBody291_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody291_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody291_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody291_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody291_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody291_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody291_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody291_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody291_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def AllocBody291_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody291_49 : StackLang.HolProg 64 :=
.seq AllocBody291_47 AllocBody291_48

def AllocBody291_50 : StackLang.HolProg 64 :=
.seq AllocBody291_46 AllocBody291_49

def AllocBody291_51 : StackLang.HolProg 64 :=
.seq AllocBody291_45 AllocBody291_50

def AllocBody291_52 : StackLang.HolProg 64 :=
.seq AllocBody291_44 AllocBody291_51

def AllocBody291_53 : StackLang.HolProg 64 :=
.seq AllocBody291_43 AllocBody291_52

def AllocBody291_54 : StackLang.HolProg 64 :=
.seq AllocBody291_42 AllocBody291_53

def AllocBody291_55 : StackLang.HolProg 64 :=
.seq AllocBody291_41 AllocBody291_54

def AllocBody291_56 : StackLang.HolProg 64 :=
.seq AllocBody291_40 AllocBody291_55

def AllocBody291_57 : StackLang.HolProg 64 :=
.seq AllocBody291_39 AllocBody291_56

def AllocBody291_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def AllocBody291_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody291_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody291_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 2

def AllocBody291_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody291_63 : StackLang.HolProg 64 :=
.seq AllocBody291_61 AllocBody291_62

def AllocBody291_64 : StackLang.HolProg 64 :=
.seq AllocBody291_60 AllocBody291_63

def AllocBody291_65 : StackLang.HolProg 64 :=
.seq AllocBody291_59 AllocBody291_64

def AllocBody291_66 : StackLang.HolProg 64 :=
.seq AllocBody291_58 AllocBody291_65

def AllocBody291_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody291_68 : StackLang.HolProg 64 :=
.seq AllocBody291_66 AllocBody291_67

def AllocBody291_69 : StackLang.HolProg 64 :=
.call (some (AllocBody291_57, 0, 291, 2)) (Sum.inl 92) (some (AllocBody291_68, 291, 3))

def AllocBody291_70 : StackLang.HolProg 64 :=
.seq AllocBody291_38 AllocBody291_69

def AllocBody291_71 : StackLang.HolProg 64 :=
.seq AllocBody291_37 AllocBody291_70

def AllocBody291_72 : StackLang.HolProg 64 :=
.seq AllocBody291_36 AllocBody291_71

def AllocBody291_73 : StackLang.HolProg 64 :=
.seq AllocBody291_17 AllocBody291_72

def AllocBody291_74 : StackLang.HolProg 64 :=
.seq AllocBody291_14 AllocBody291_73

def AllocBody291_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody291_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody291_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody291_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody291_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody291_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody291_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody291_92 : StackLang.HolProg 64 :=
.seq AllocBody291_90 AllocBody291_91

def AllocBody291_93 : StackLang.HolProg 64 :=
.seq AllocBody291_89 AllocBody291_92

def AllocBody291_94 : StackLang.HolProg 64 :=
.seq AllocBody291_88 AllocBody291_93

def AllocBody291_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody291_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody291_94 AllocBody291_95

def AllocBody291_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody291_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody291_103 : StackLang.HolProg 64 :=
.seq AllocBody291_101 AllocBody291_102

def AllocBody291_104 : StackLang.HolProg 64 :=
.seq AllocBody291_100 AllocBody291_103

def AllocBody291_105 : StackLang.HolProg 64 :=
.seq AllocBody291_99 AllocBody291_104

def AllocBody291_106 : StackLang.HolProg 64 :=
.seq AllocBody291_98 AllocBody291_105

def AllocBody291_107 : StackLang.HolProg 64 :=
.seq AllocBody291_97 AllocBody291_106

def AllocBody291_108 : StackLang.HolProg 64 :=
.seq AllocBody291_96 AllocBody291_107

def AllocBody291_109 : StackLang.HolProg 64 :=
.seq AllocBody291_87 AllocBody291_108

def AllocBody291_110 : StackLang.HolProg 64 :=
.seq AllocBody291_86 AllocBody291_109

def AllocBody291_111 : StackLang.HolProg 64 :=
.seq AllocBody291_85 AllocBody291_110

def AllocBody291_112 : StackLang.HolProg 64 :=
.seq AllocBody291_84 AllocBody291_111

def AllocBody291_113 : StackLang.HolProg 64 :=
.seq AllocBody291_83 AllocBody291_112

def AllocBody291_114 : StackLang.HolProg 64 :=
.seq AllocBody291_82 AllocBody291_113

def AllocBody291_115 : StackLang.HolProg 64 :=
.seq AllocBody291_81 AllocBody291_114

def AllocBody291_116 : StackLang.HolProg 64 :=
.seq AllocBody291_80 AllocBody291_115

def AllocBody291_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody291_120 : StackLang.HolProg 64 :=
.seq AllocBody291_118 AllocBody291_119

def AllocBody291_121 : StackLang.HolProg 64 :=
.seq AllocBody291_117 AllocBody291_120

def AllocBody291_122 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody291_116 AllocBody291_121

def AllocBody291_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody291_125 : StackLang.HolProg 64 :=
.seq AllocBody291_123 AllocBody291_124

def AllocBody291_126 : StackLang.HolProg 64 :=
.seq AllocBody291_122 AllocBody291_125

def AllocBody291_127 : StackLang.HolProg 64 :=
.seq AllocBody291_79 AllocBody291_126

def AllocBody291_128 : StackLang.HolProg 64 :=
.loop AllocBody291_127

def AllocBody291_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody291_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody291_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody291_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody291_133 : StackLang.HolProg 64 :=
.seq AllocBody291_131 AllocBody291_132

def AllocBody291_134 : StackLang.HolProg 64 :=
.seq AllocBody291_130 AllocBody291_133

def AllocBody291_135 : StackLang.HolProg 64 :=
.seq AllocBody291_129 AllocBody291_134

def AllocBody291_136 : StackLang.HolProg 64 :=
.seq AllocBody291_128 AllocBody291_135

def AllocBody291_137 : StackLang.HolProg 64 :=
.seq AllocBody291_78 AllocBody291_136

def AllocBody291_138 : StackLang.HolProg 64 :=
.seq AllocBody291_77 AllocBody291_137

def AllocBody291_139 : StackLang.HolProg 64 :=
.seq AllocBody291_76 AllocBody291_138

def AllocBody291_140 : StackLang.HolProg 64 :=
.seq AllocBody291_75 AllocBody291_139

def AllocBody291_141 : StackLang.HolProg 64 :=
.seq AllocBody291_74 AllocBody291_140

def AllocBody291_142 : StackLang.HolProg 64 :=
.seq AllocBody291_13 AllocBody291_141

def AllocBody291_143 : StackLang.HolProg 64 :=
.seq AllocBody291_0 AllocBody291_142

def Alloc291 : Nat × StackLang.HolProg 64 := (291, AllocBody291_143)
theorem Alloc291_eq : StackAlloc.progComp (291, raw291) = Alloc291 := by
  kernel_rfl
#print axioms Alloc291_eq
end InitECandidate.Proofs.BackendStages
