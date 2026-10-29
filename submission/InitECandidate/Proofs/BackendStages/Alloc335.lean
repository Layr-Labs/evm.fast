import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw335
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody335_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody335_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody335_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody335_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody335_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody335_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody335_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody335_10 : StackLang.HolProg 64 :=
.seq AllocBody335_8 AllocBody335_9

def AllocBody335_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 969#64)

def AllocBody335_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody335_14 : StackLang.HolProg 64 :=
.seq AllocBody335_12 AllocBody335_13

def AllocBody335_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody335_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody335_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody335_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 335 3

def AllocBody335_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody335_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody335_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody335_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody335_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody335_25 : StackLang.HolProg 64 :=
.seq AllocBody335_23 AllocBody335_24

def AllocBody335_26 : StackLang.HolProg 64 :=
.seq AllocBody335_22 AllocBody335_25

def AllocBody335_27 : StackLang.HolProg 64 :=
.seq AllocBody335_21 AllocBody335_26

def AllocBody335_28 : StackLang.HolProg 64 :=
.seq AllocBody335_20 AllocBody335_27

def AllocBody335_29 : StackLang.HolProg 64 :=
.seq AllocBody335_19 AllocBody335_28

def AllocBody335_30 : StackLang.HolProg 64 :=
.seq AllocBody335_18 AllocBody335_29

def AllocBody335_31 : StackLang.HolProg 64 :=
.seq AllocBody335_17 AllocBody335_30

def AllocBody335_32 : StackLang.HolProg 64 :=
.seq AllocBody335_16 AllocBody335_31

def AllocBody335_33 : StackLang.HolProg 64 :=
.seq AllocBody335_15 AllocBody335_32

def AllocBody335_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody335_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody335_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody335_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody335_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody335_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody335_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody335_43 : StackLang.HolProg 64 :=
.seq AllocBody335_41 AllocBody335_42

def AllocBody335_44 : StackLang.HolProg 64 :=
.seq AllocBody335_40 AllocBody335_43

def AllocBody335_45 : StackLang.HolProg 64 :=
.seq AllocBody335_39 AllocBody335_44

def AllocBody335_46 : StackLang.HolProg 64 :=
.seq AllocBody335_38 AllocBody335_45

def AllocBody335_47 : StackLang.HolProg 64 :=
.seq AllocBody335_37 AllocBody335_46

def AllocBody335_48 : StackLang.HolProg 64 :=
.seq AllocBody335_36 AllocBody335_47

def AllocBody335_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody335_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody335_51 : StackLang.HolProg 64 :=
.seq AllocBody335_49 AllocBody335_50

def AllocBody335_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody335_53 : StackLang.HolProg 64 :=
.seq AllocBody335_51 AllocBody335_52

def AllocBody335_54 : StackLang.HolProg 64 :=
.call (some (AllocBody335_48, 0, 335, 2)) (Sum.inl 161) (some (AllocBody335_53, 335, 3))

def AllocBody335_55 : StackLang.HolProg 64 :=
.seq AllocBody335_35 AllocBody335_54

def AllocBody335_56 : StackLang.HolProg 64 :=
.seq AllocBody335_34 AllocBody335_55

def AllocBody335_57 : StackLang.HolProg 64 :=
.seq AllocBody335_33 AllocBody335_56

def AllocBody335_58 : StackLang.HolProg 64 :=
.seq AllocBody335_14 AllocBody335_57

def AllocBody335_59 : StackLang.HolProg 64 :=
.seq AllocBody335_11 AllocBody335_58

def AllocBody335_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody335_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody335_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody335_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody335_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_69 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody335_70 : StackLang.HolProg 64 :=
.seq AllocBody335_68 AllocBody335_69

def AllocBody335_71 : StackLang.HolProg 64 :=
.seq AllocBody335_67 AllocBody335_70

def AllocBody335_72 : StackLang.HolProg 64 :=
.seq AllocBody335_66 AllocBody335_71

def AllocBody335_73 : StackLang.HolProg 64 :=
.seq AllocBody335_65 AllocBody335_72

def AllocBody335_74 : StackLang.HolProg 64 :=
.seq AllocBody335_64 AllocBody335_73

def AllocBody335_75 : StackLang.HolProg 64 :=
.seq AllocBody335_63 AllocBody335_74

def AllocBody335_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody335_75 AllocBody335_76

def AllocBody335_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody335_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody335_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody335_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 11#64)

def AllocBody335_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def AllocBody335_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody335_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody335_94 : StackLang.HolProg 64 :=
.seq AllocBody335_92 AllocBody335_93

def AllocBody335_95 : StackLang.HolProg 64 :=
.seq AllocBody335_91 AllocBody335_94

def AllocBody335_96 : StackLang.HolProg 64 :=
.seq AllocBody335_90 AllocBody335_95

def AllocBody335_97 : StackLang.HolProg 64 :=
.seq AllocBody335_89 AllocBody335_96

def AllocBody335_98 : StackLang.HolProg 64 :=
.seq AllocBody335_88 AllocBody335_97

def AllocBody335_99 : StackLang.HolProg 64 :=
.seq AllocBody335_87 AllocBody335_98

def AllocBody335_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody335_99 AllocBody335_100

def AllocBody335_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_105 : StackLang.HolProg 64 :=
.seq AllocBody335_103 AllocBody335_104

def AllocBody335_106 : StackLang.HolProg 64 :=
.seq AllocBody335_102 AllocBody335_105

def AllocBody335_107 : StackLang.HolProg 64 :=
.seq AllocBody335_101 AllocBody335_106

def AllocBody335_108 : StackLang.HolProg 64 :=
.seq AllocBody335_86 AllocBody335_107

def AllocBody335_109 : StackLang.HolProg 64 :=
.seq AllocBody335_85 AllocBody335_108

def AllocBody335_110 : StackLang.HolProg 64 :=
.seq AllocBody335_84 AllocBody335_109

def AllocBody335_111 : StackLang.HolProg 64 :=
.seq AllocBody335_83 AllocBody335_110

def AllocBody335_112 : StackLang.HolProg 64 :=
.seq AllocBody335_82 AllocBody335_111

def AllocBody335_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_115 : StackLang.HolProg 64 :=
.seq AllocBody335_113 AllocBody335_114

def AllocBody335_116 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody335_112 AllocBody335_115

def AllocBody335_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody335_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 12#64)

def AllocBody335_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody335_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def AllocBody335_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_128 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody335_129 : StackLang.HolProg 64 :=
.seq AllocBody335_127 AllocBody335_128

def AllocBody335_130 : StackLang.HolProg 64 :=
.seq AllocBody335_126 AllocBody335_129

def AllocBody335_131 : StackLang.HolProg 64 :=
.seq AllocBody335_125 AllocBody335_130

def AllocBody335_132 : StackLang.HolProg 64 :=
.seq AllocBody335_124 AllocBody335_131

def AllocBody335_133 : StackLang.HolProg 64 :=
.seq AllocBody335_123 AllocBody335_132

def AllocBody335_134 : StackLang.HolProg 64 :=
.seq AllocBody335_122 AllocBody335_133

def AllocBody335_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody335_134 AllocBody335_135

def AllocBody335_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_140 : StackLang.HolProg 64 :=
.seq AllocBody335_138 AllocBody335_139

def AllocBody335_141 : StackLang.HolProg 64 :=
.seq AllocBody335_137 AllocBody335_140

def AllocBody335_142 : StackLang.HolProg 64 :=
.seq AllocBody335_136 AllocBody335_141

def AllocBody335_143 : StackLang.HolProg 64 :=
.seq AllocBody335_121 AllocBody335_142

def AllocBody335_144 : StackLang.HolProg 64 :=
.seq AllocBody335_120 AllocBody335_143

def AllocBody335_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody335_147 : StackLang.HolProg 64 :=
.seq AllocBody335_145 AllocBody335_146

def AllocBody335_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody335_144 AllocBody335_147

def AllocBody335_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody335_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody335_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody335_152 : StackLang.HolProg 64 :=
.seq AllocBody335_150 AllocBody335_151

def AllocBody335_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody335_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody335_155 : StackLang.HolProg 64 :=
.seq AllocBody335_153 AllocBody335_154

def AllocBody335_156 : StackLang.HolProg 64 :=
.seq AllocBody335_152 AllocBody335_155

def AllocBody335_157 : StackLang.HolProg 64 :=
.seq AllocBody335_149 AllocBody335_156

def AllocBody335_158 : StackLang.HolProg 64 :=
.seq AllocBody335_148 AllocBody335_157

def AllocBody335_159 : StackLang.HolProg 64 :=
.seq AllocBody335_119 AllocBody335_158

def AllocBody335_160 : StackLang.HolProg 64 :=
.seq AllocBody335_118 AllocBody335_159

def AllocBody335_161 : StackLang.HolProg 64 :=
.seq AllocBody335_117 AllocBody335_160

def AllocBody335_162 : StackLang.HolProg 64 :=
.seq AllocBody335_116 AllocBody335_161

def AllocBody335_163 : StackLang.HolProg 64 :=
.seq AllocBody335_81 AllocBody335_162

def AllocBody335_164 : StackLang.HolProg 64 :=
.seq AllocBody335_80 AllocBody335_163

def AllocBody335_165 : StackLang.HolProg 64 :=
.seq AllocBody335_79 AllocBody335_164

def AllocBody335_166 : StackLang.HolProg 64 :=
.seq AllocBody335_78 AllocBody335_165

def AllocBody335_167 : StackLang.HolProg 64 :=
.seq AllocBody335_77 AllocBody335_166

def AllocBody335_168 : StackLang.HolProg 64 :=
.seq AllocBody335_62 AllocBody335_167

def AllocBody335_169 : StackLang.HolProg 64 :=
.seq AllocBody335_61 AllocBody335_168

def AllocBody335_170 : StackLang.HolProg 64 :=
.seq AllocBody335_60 AllocBody335_169

def AllocBody335_171 : StackLang.HolProg 64 :=
.seq AllocBody335_59 AllocBody335_170

def AllocBody335_172 : StackLang.HolProg 64 :=
.seq AllocBody335_10 AllocBody335_171

def AllocBody335_173 : StackLang.HolProg 64 :=
.seq AllocBody335_7 AllocBody335_172

def AllocBody335_174 : StackLang.HolProg 64 :=
.seq AllocBody335_6 AllocBody335_173

def AllocBody335_175 : StackLang.HolProg 64 :=
.seq AllocBody335_5 AllocBody335_174

def AllocBody335_176 : StackLang.HolProg 64 :=
.seq AllocBody335_4 AllocBody335_175

def AllocBody335_177 : StackLang.HolProg 64 :=
.seq AllocBody335_3 AllocBody335_176

def AllocBody335_178 : StackLang.HolProg 64 :=
.seq AllocBody335_2 AllocBody335_177

def AllocBody335_179 : StackLang.HolProg 64 :=
.seq AllocBody335_1 AllocBody335_178

def AllocBody335_180 : StackLang.HolProg 64 :=
.seq AllocBody335_0 AllocBody335_179

def Alloc335 : Nat × StackLang.HolProg 64 := (335, AllocBody335_180)
theorem Alloc335_eq : StackAlloc.progComp (335, raw335) = Alloc335 := by
  kernel_rfl
#print axioms Alloc335_eq
end InitECandidate.Proofs.BackendStages
