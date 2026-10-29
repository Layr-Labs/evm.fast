import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw187
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody187_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody187_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody187_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody187_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody187_4 : StackLang.HolProg 64 :=
.seq AllocBody187_2 AllocBody187_3

def AllocBody187_5 : StackLang.HolProg 64 :=
.seq AllocBody187_1 AllocBody187_4

def AllocBody187_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 213#64)

def AllocBody187_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody187_9 : StackLang.HolProg 64 :=
.seq AllocBody187_7 AllocBody187_8

def AllocBody187_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody187_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody187_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody187_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 3

def AllocBody187_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody187_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody187_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody187_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody187_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody187_20 : StackLang.HolProg 64 :=
.seq AllocBody187_18 AllocBody187_19

def AllocBody187_21 : StackLang.HolProg 64 :=
.seq AllocBody187_17 AllocBody187_20

def AllocBody187_22 : StackLang.HolProg 64 :=
.seq AllocBody187_16 AllocBody187_21

def AllocBody187_23 : StackLang.HolProg 64 :=
.seq AllocBody187_15 AllocBody187_22

def AllocBody187_24 : StackLang.HolProg 64 :=
.seq AllocBody187_14 AllocBody187_23

def AllocBody187_25 : StackLang.HolProg 64 :=
.seq AllocBody187_13 AllocBody187_24

def AllocBody187_26 : StackLang.HolProg 64 :=
.seq AllocBody187_12 AllocBody187_25

def AllocBody187_27 : StackLang.HolProg 64 :=
.seq AllocBody187_11 AllocBody187_26

def AllocBody187_28 : StackLang.HolProg 64 :=
.seq AllocBody187_10 AllocBody187_27

def AllocBody187_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody187_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody187_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody187_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody187_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody187_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody187_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody187_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody187_39 : StackLang.HolProg 64 :=
.seq AllocBody187_37 AllocBody187_38

def AllocBody187_40 : StackLang.HolProg 64 :=
.seq AllocBody187_36 AllocBody187_39

def AllocBody187_41 : StackLang.HolProg 64 :=
.seq AllocBody187_35 AllocBody187_40

def AllocBody187_42 : StackLang.HolProg 64 :=
.seq AllocBody187_34 AllocBody187_41

def AllocBody187_43 : StackLang.HolProg 64 :=
.seq AllocBody187_33 AllocBody187_42

def AllocBody187_44 : StackLang.HolProg 64 :=
.seq AllocBody187_32 AllocBody187_43

def AllocBody187_45 : StackLang.HolProg 64 :=
.seq AllocBody187_31 AllocBody187_44

def AllocBody187_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody187_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody187_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody187_49 : StackLang.HolProg 64 :=
.seq AllocBody187_47 AllocBody187_48

def AllocBody187_50 : StackLang.HolProg 64 :=
.seq AllocBody187_46 AllocBody187_49

def AllocBody187_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody187_52 : StackLang.HolProg 64 :=
.seq AllocBody187_50 AllocBody187_51

def AllocBody187_53 : StackLang.HolProg 64 :=
.call (some (AllocBody187_45, 0, 187, 2)) (Sum.inl 185) (some (AllocBody187_52, 187, 3))

def AllocBody187_54 : StackLang.HolProg 64 :=
.seq AllocBody187_30 AllocBody187_53

def AllocBody187_55 : StackLang.HolProg 64 :=
.seq AllocBody187_29 AllocBody187_54

def AllocBody187_56 : StackLang.HolProg 64 :=
.seq AllocBody187_28 AllocBody187_55

def AllocBody187_57 : StackLang.HolProg 64 :=
.seq AllocBody187_9 AllocBody187_56

def AllocBody187_58 : StackLang.HolProg 64 :=
.seq AllocBody187_6 AllocBody187_57

def AllocBody187_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody187_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody187_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody187_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody187_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody187_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody187_67 : StackLang.HolProg 64 :=
.seq AllocBody187_65 AllocBody187_66

def AllocBody187_68 : StackLang.HolProg 64 :=
.seq AllocBody187_64 AllocBody187_67

def AllocBody187_69 : StackLang.HolProg 64 :=
.seq AllocBody187_63 AllocBody187_68

def AllocBody187_70 : StackLang.HolProg 64 :=
.seq AllocBody187_62 AllocBody187_69

def AllocBody187_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody187_70 AllocBody187_71

def AllocBody187_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody187_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody187_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody187_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody187_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 32#64))

def AllocBody187_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def AllocBody187_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody187_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody187_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody187_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody187_88 : StackLang.HolProg 64 :=
.seq AllocBody187_86 AllocBody187_87

def AllocBody187_89 : StackLang.HolProg 64 :=
.seq AllocBody187_85 AllocBody187_88

def AllocBody187_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 214#64)

def AllocBody187_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody187_93 : StackLang.HolProg 64 :=
.seq AllocBody187_91 AllocBody187_92

def AllocBody187_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody187_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody187_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody187_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 187 5

def AllocBody187_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody187_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody187_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody187_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody187_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody187_104 : StackLang.HolProg 64 :=
.seq AllocBody187_102 AllocBody187_103

def AllocBody187_105 : StackLang.HolProg 64 :=
.seq AllocBody187_101 AllocBody187_104

def AllocBody187_106 : StackLang.HolProg 64 :=
.seq AllocBody187_100 AllocBody187_105

def AllocBody187_107 : StackLang.HolProg 64 :=
.seq AllocBody187_99 AllocBody187_106

def AllocBody187_108 : StackLang.HolProg 64 :=
.seq AllocBody187_98 AllocBody187_107

def AllocBody187_109 : StackLang.HolProg 64 :=
.seq AllocBody187_97 AllocBody187_108

def AllocBody187_110 : StackLang.HolProg 64 :=
.seq AllocBody187_96 AllocBody187_109

def AllocBody187_111 : StackLang.HolProg 64 :=
.seq AllocBody187_95 AllocBody187_110

def AllocBody187_112 : StackLang.HolProg 64 :=
.seq AllocBody187_94 AllocBody187_111

def AllocBody187_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody187_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody187_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody187_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody187_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody187_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody187_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody187_121 : StackLang.HolProg 64 :=
.seq AllocBody187_119 AllocBody187_120

def AllocBody187_122 : StackLang.HolProg 64 :=
.seq AllocBody187_118 AllocBody187_121

def AllocBody187_123 : StackLang.HolProg 64 :=
.seq AllocBody187_117 AllocBody187_122

def AllocBody187_124 : StackLang.HolProg 64 :=
.seq AllocBody187_116 AllocBody187_123

def AllocBody187_125 : StackLang.HolProg 64 :=
.seq AllocBody187_115 AllocBody187_124

def AllocBody187_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody187_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody187_128 : StackLang.HolProg 64 :=
.seq AllocBody187_126 AllocBody187_127

def AllocBody187_129 : StackLang.HolProg 64 :=
.call (some (AllocBody187_125, 0, 187, 4)) (Sum.inl 79) (some (AllocBody187_128, 187, 5))

def AllocBody187_130 : StackLang.HolProg 64 :=
.seq AllocBody187_114 AllocBody187_129

def AllocBody187_131 : StackLang.HolProg 64 :=
.seq AllocBody187_113 AllocBody187_130

def AllocBody187_132 : StackLang.HolProg 64 :=
.seq AllocBody187_112 AllocBody187_131

def AllocBody187_133 : StackLang.HolProg 64 :=
.seq AllocBody187_93 AllocBody187_132

def AllocBody187_134 : StackLang.HolProg 64 :=
.seq AllocBody187_90 AllocBody187_133

def AllocBody187_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody187_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody187_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody187_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody187_139 : StackLang.HolProg 64 :=
.seq AllocBody187_137 AllocBody187_138

def AllocBody187_140 : StackLang.HolProg 64 :=
.seq AllocBody187_136 AllocBody187_139

def AllocBody187_141 : StackLang.HolProg 64 :=
.seq AllocBody187_135 AllocBody187_140

def AllocBody187_142 : StackLang.HolProg 64 :=
.seq AllocBody187_134 AllocBody187_141

def AllocBody187_143 : StackLang.HolProg 64 :=
.seq AllocBody187_89 AllocBody187_142

def AllocBody187_144 : StackLang.HolProg 64 :=
.seq AllocBody187_84 AllocBody187_143

def AllocBody187_145 : StackLang.HolProg 64 :=
.seq AllocBody187_83 AllocBody187_144

def AllocBody187_146 : StackLang.HolProg 64 :=
.seq AllocBody187_82 AllocBody187_145

def AllocBody187_147 : StackLang.HolProg 64 :=
.seq AllocBody187_81 AllocBody187_146

def AllocBody187_148 : StackLang.HolProg 64 :=
.seq AllocBody187_80 AllocBody187_147

def AllocBody187_149 : StackLang.HolProg 64 :=
.seq AllocBody187_79 AllocBody187_148

def AllocBody187_150 : StackLang.HolProg 64 :=
.seq AllocBody187_78 AllocBody187_149

def AllocBody187_151 : StackLang.HolProg 64 :=
.seq AllocBody187_77 AllocBody187_150

def AllocBody187_152 : StackLang.HolProg 64 :=
.seq AllocBody187_76 AllocBody187_151

def AllocBody187_153 : StackLang.HolProg 64 :=
.seq AllocBody187_75 AllocBody187_152

def AllocBody187_154 : StackLang.HolProg 64 :=
.seq AllocBody187_74 AllocBody187_153

def AllocBody187_155 : StackLang.HolProg 64 :=
.seq AllocBody187_73 AllocBody187_154

def AllocBody187_156 : StackLang.HolProg 64 :=
.seq AllocBody187_72 AllocBody187_155

def AllocBody187_157 : StackLang.HolProg 64 :=
.seq AllocBody187_61 AllocBody187_156

def AllocBody187_158 : StackLang.HolProg 64 :=
.seq AllocBody187_60 AllocBody187_157

def AllocBody187_159 : StackLang.HolProg 64 :=
.seq AllocBody187_59 AllocBody187_158

def AllocBody187_160 : StackLang.HolProg 64 :=
.seq AllocBody187_58 AllocBody187_159

def AllocBody187_161 : StackLang.HolProg 64 :=
.seq AllocBody187_5 AllocBody187_160

def AllocBody187_162 : StackLang.HolProg 64 :=
.seq AllocBody187_0 AllocBody187_161

def Alloc187 : Nat × StackLang.HolProg 64 := (187, AllocBody187_162)
theorem Alloc187_eq : StackAlloc.progComp (187, raw187) = Alloc187 := by
  kernel_rfl
#print axioms Alloc187_eq
end InitECandidate.Proofs.BackendStages
