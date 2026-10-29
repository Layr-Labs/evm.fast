import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw269
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody269_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody269_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody269_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody269_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody269_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody269_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody269_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody269_10 : StackLang.HolProg 64 :=
.seq AllocBody269_8 AllocBody269_9

def AllocBody269_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 655#64)

def AllocBody269_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody269_14 : StackLang.HolProg 64 :=
.seq AllocBody269_12 AllocBody269_13

def AllocBody269_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody269_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody269_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody269_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 269 3

def AllocBody269_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody269_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody269_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody269_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody269_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody269_25 : StackLang.HolProg 64 :=
.seq AllocBody269_23 AllocBody269_24

def AllocBody269_26 : StackLang.HolProg 64 :=
.seq AllocBody269_22 AllocBody269_25

def AllocBody269_27 : StackLang.HolProg 64 :=
.seq AllocBody269_21 AllocBody269_26

def AllocBody269_28 : StackLang.HolProg 64 :=
.seq AllocBody269_20 AllocBody269_27

def AllocBody269_29 : StackLang.HolProg 64 :=
.seq AllocBody269_19 AllocBody269_28

def AllocBody269_30 : StackLang.HolProg 64 :=
.seq AllocBody269_18 AllocBody269_29

def AllocBody269_31 : StackLang.HolProg 64 :=
.seq AllocBody269_17 AllocBody269_30

def AllocBody269_32 : StackLang.HolProg 64 :=
.seq AllocBody269_16 AllocBody269_31

def AllocBody269_33 : StackLang.HolProg 64 :=
.seq AllocBody269_15 AllocBody269_32

def AllocBody269_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody269_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody269_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody269_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody269_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody269_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody269_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody269_43 : StackLang.HolProg 64 :=
.seq AllocBody269_41 AllocBody269_42

def AllocBody269_44 : StackLang.HolProg 64 :=
.seq AllocBody269_40 AllocBody269_43

def AllocBody269_45 : StackLang.HolProg 64 :=
.seq AllocBody269_39 AllocBody269_44

def AllocBody269_46 : StackLang.HolProg 64 :=
.seq AllocBody269_38 AllocBody269_45

def AllocBody269_47 : StackLang.HolProg 64 :=
.seq AllocBody269_37 AllocBody269_46

def AllocBody269_48 : StackLang.HolProg 64 :=
.seq AllocBody269_36 AllocBody269_47

def AllocBody269_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody269_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody269_51 : StackLang.HolProg 64 :=
.seq AllocBody269_49 AllocBody269_50

def AllocBody269_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody269_53 : StackLang.HolProg 64 :=
.seq AllocBody269_51 AllocBody269_52

def AllocBody269_54 : StackLang.HolProg 64 :=
.call (some (AllocBody269_48, 0, 269, 2)) (Sum.inl 161) (some (AllocBody269_53, 269, 3))

def AllocBody269_55 : StackLang.HolProg 64 :=
.seq AllocBody269_35 AllocBody269_54

def AllocBody269_56 : StackLang.HolProg 64 :=
.seq AllocBody269_34 AllocBody269_55

def AllocBody269_57 : StackLang.HolProg 64 :=
.seq AllocBody269_33 AllocBody269_56

def AllocBody269_58 : StackLang.HolProg 64 :=
.seq AllocBody269_14 AllocBody269_57

def AllocBody269_59 : StackLang.HolProg 64 :=
.seq AllocBody269_11 AllocBody269_58

def AllocBody269_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody269_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody269_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody269_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody269_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody269_70 : StackLang.HolProg 64 :=
.seq AllocBody269_68 AllocBody269_69

def AllocBody269_71 : StackLang.HolProg 64 :=
.seq AllocBody269_67 AllocBody269_70

def AllocBody269_72 : StackLang.HolProg 64 :=
.seq AllocBody269_66 AllocBody269_71

def AllocBody269_73 : StackLang.HolProg 64 :=
.seq AllocBody269_65 AllocBody269_72

def AllocBody269_74 : StackLang.HolProg 64 :=
.seq AllocBody269_64 AllocBody269_73

def AllocBody269_75 : StackLang.HolProg 64 :=
.seq AllocBody269_63 AllocBody269_74

def AllocBody269_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody269_75 AllocBody269_76

def AllocBody269_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody269_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody269_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody269_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody269_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody269_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody269_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody269_94 : StackLang.HolProg 64 :=
.seq AllocBody269_92 AllocBody269_93

def AllocBody269_95 : StackLang.HolProg 64 :=
.seq AllocBody269_91 AllocBody269_94

def AllocBody269_96 : StackLang.HolProg 64 :=
.seq AllocBody269_90 AllocBody269_95

def AllocBody269_97 : StackLang.HolProg 64 :=
.seq AllocBody269_89 AllocBody269_96

def AllocBody269_98 : StackLang.HolProg 64 :=
.seq AllocBody269_88 AllocBody269_97

def AllocBody269_99 : StackLang.HolProg 64 :=
.seq AllocBody269_87 AllocBody269_98

def AllocBody269_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody269_99 AllocBody269_100

def AllocBody269_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_105 : StackLang.HolProg 64 :=
.seq AllocBody269_103 AllocBody269_104

def AllocBody269_106 : StackLang.HolProg 64 :=
.seq AllocBody269_102 AllocBody269_105

def AllocBody269_107 : StackLang.HolProg 64 :=
.seq AllocBody269_101 AllocBody269_106

def AllocBody269_108 : StackLang.HolProg 64 :=
.seq AllocBody269_86 AllocBody269_107

def AllocBody269_109 : StackLang.HolProg 64 :=
.seq AllocBody269_85 AllocBody269_108

def AllocBody269_110 : StackLang.HolProg 64 :=
.seq AllocBody269_84 AllocBody269_109

def AllocBody269_111 : StackLang.HolProg 64 :=
.seq AllocBody269_83 AllocBody269_110

def AllocBody269_112 : StackLang.HolProg 64 :=
.seq AllocBody269_82 AllocBody269_111

def AllocBody269_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_115 : StackLang.HolProg 64 :=
.seq AllocBody269_113 AllocBody269_114

def AllocBody269_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody269_112 AllocBody269_115

def AllocBody269_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody269_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 3#64)

def AllocBody269_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody269_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody269_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody269_129 : StackLang.HolProg 64 :=
.seq AllocBody269_127 AllocBody269_128

def AllocBody269_130 : StackLang.HolProg 64 :=
.seq AllocBody269_126 AllocBody269_129

def AllocBody269_131 : StackLang.HolProg 64 :=
.seq AllocBody269_125 AllocBody269_130

def AllocBody269_132 : StackLang.HolProg 64 :=
.seq AllocBody269_124 AllocBody269_131

def AllocBody269_133 : StackLang.HolProg 64 :=
.seq AllocBody269_123 AllocBody269_132

def AllocBody269_134 : StackLang.HolProg 64 :=
.seq AllocBody269_122 AllocBody269_133

def AllocBody269_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody269_134 AllocBody269_135

def AllocBody269_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_140 : StackLang.HolProg 64 :=
.seq AllocBody269_138 AllocBody269_139

def AllocBody269_141 : StackLang.HolProg 64 :=
.seq AllocBody269_137 AllocBody269_140

def AllocBody269_142 : StackLang.HolProg 64 :=
.seq AllocBody269_136 AllocBody269_141

def AllocBody269_143 : StackLang.HolProg 64 :=
.seq AllocBody269_121 AllocBody269_142

def AllocBody269_144 : StackLang.HolProg 64 :=
.seq AllocBody269_120 AllocBody269_143

def AllocBody269_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody269_147 : StackLang.HolProg 64 :=
.seq AllocBody269_145 AllocBody269_146

def AllocBody269_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody269_144 AllocBody269_147

def AllocBody269_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody269_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody269_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody269_152 : StackLang.HolProg 64 :=
.seq AllocBody269_150 AllocBody269_151

def AllocBody269_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody269_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody269_155 : StackLang.HolProg 64 :=
.seq AllocBody269_153 AllocBody269_154

def AllocBody269_156 : StackLang.HolProg 64 :=
.seq AllocBody269_152 AllocBody269_155

def AllocBody269_157 : StackLang.HolProg 64 :=
.seq AllocBody269_149 AllocBody269_156

def AllocBody269_158 : StackLang.HolProg 64 :=
.seq AllocBody269_148 AllocBody269_157

def AllocBody269_159 : StackLang.HolProg 64 :=
.seq AllocBody269_119 AllocBody269_158

def AllocBody269_160 : StackLang.HolProg 64 :=
.seq AllocBody269_118 AllocBody269_159

def AllocBody269_161 : StackLang.HolProg 64 :=
.seq AllocBody269_117 AllocBody269_160

def AllocBody269_162 : StackLang.HolProg 64 :=
.seq AllocBody269_116 AllocBody269_161

def AllocBody269_163 : StackLang.HolProg 64 :=
.seq AllocBody269_81 AllocBody269_162

def AllocBody269_164 : StackLang.HolProg 64 :=
.seq AllocBody269_80 AllocBody269_163

def AllocBody269_165 : StackLang.HolProg 64 :=
.seq AllocBody269_79 AllocBody269_164

def AllocBody269_166 : StackLang.HolProg 64 :=
.seq AllocBody269_78 AllocBody269_165

def AllocBody269_167 : StackLang.HolProg 64 :=
.seq AllocBody269_77 AllocBody269_166

def AllocBody269_168 : StackLang.HolProg 64 :=
.seq AllocBody269_62 AllocBody269_167

def AllocBody269_169 : StackLang.HolProg 64 :=
.seq AllocBody269_61 AllocBody269_168

def AllocBody269_170 : StackLang.HolProg 64 :=
.seq AllocBody269_60 AllocBody269_169

def AllocBody269_171 : StackLang.HolProg 64 :=
.seq AllocBody269_59 AllocBody269_170

def AllocBody269_172 : StackLang.HolProg 64 :=
.seq AllocBody269_10 AllocBody269_171

def AllocBody269_173 : StackLang.HolProg 64 :=
.seq AllocBody269_7 AllocBody269_172

def AllocBody269_174 : StackLang.HolProg 64 :=
.seq AllocBody269_6 AllocBody269_173

def AllocBody269_175 : StackLang.HolProg 64 :=
.seq AllocBody269_5 AllocBody269_174

def AllocBody269_176 : StackLang.HolProg 64 :=
.seq AllocBody269_4 AllocBody269_175

def AllocBody269_177 : StackLang.HolProg 64 :=
.seq AllocBody269_3 AllocBody269_176

def AllocBody269_178 : StackLang.HolProg 64 :=
.seq AllocBody269_2 AllocBody269_177

def AllocBody269_179 : StackLang.HolProg 64 :=
.seq AllocBody269_1 AllocBody269_178

def AllocBody269_180 : StackLang.HolProg 64 :=
.seq AllocBody269_0 AllocBody269_179

def Alloc269 : Nat × StackLang.HolProg 64 := (269, AllocBody269_180)
theorem Alloc269_eq : StackAlloc.progComp (269, raw269) = Alloc269 := by
  kernel_rfl
#print axioms Alloc269_eq
end InitECandidate.Proofs.BackendStages
