import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw839
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody839_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody839_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody839_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody839_3 : StackLang.HolProg 64 :=
.seq AllocBody839_1 AllocBody839_2

def AllocBody839_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 256#64)

def AllocBody839_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody839_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody839_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody839_8 : StackLang.HolProg 64 :=
.seq AllocBody839_6 AllocBody839_7

def AllocBody839_9 : StackLang.HolProg 64 :=
.seq AllocBody839_5 AllocBody839_8

def AllocBody839_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4203#64)

def AllocBody839_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_13 : StackLang.HolProg 64 :=
.seq AllocBody839_11 AllocBody839_12

def AllocBody839_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody839_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody839_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 839 3

def AllocBody839_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody839_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody839_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody839_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody839_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_24 : StackLang.HolProg 64 :=
.seq AllocBody839_22 AllocBody839_23

def AllocBody839_25 : StackLang.HolProg 64 :=
.seq AllocBody839_21 AllocBody839_24

def AllocBody839_26 : StackLang.HolProg 64 :=
.seq AllocBody839_20 AllocBody839_25

def AllocBody839_27 : StackLang.HolProg 64 :=
.seq AllocBody839_19 AllocBody839_26

def AllocBody839_28 : StackLang.HolProg 64 :=
.seq AllocBody839_18 AllocBody839_27

def AllocBody839_29 : StackLang.HolProg 64 :=
.seq AllocBody839_17 AllocBody839_28

def AllocBody839_30 : StackLang.HolProg 64 :=
.seq AllocBody839_16 AllocBody839_29

def AllocBody839_31 : StackLang.HolProg 64 :=
.seq AllocBody839_15 AllocBody839_30

def AllocBody839_32 : StackLang.HolProg 64 :=
.seq AllocBody839_14 AllocBody839_31

def AllocBody839_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody839_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody839_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody839_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody839_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody839_41 : StackLang.HolProg 64 :=
.seq AllocBody839_39 AllocBody839_40

def AllocBody839_42 : StackLang.HolProg 64 :=
.seq AllocBody839_38 AllocBody839_41

def AllocBody839_43 : StackLang.HolProg 64 :=
.seq AllocBody839_37 AllocBody839_42

def AllocBody839_44 : StackLang.HolProg 64 :=
.seq AllocBody839_36 AllocBody839_43

def AllocBody839_45 : StackLang.HolProg 64 :=
.seq AllocBody839_35 AllocBody839_44

def AllocBody839_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody839_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody839_48 : StackLang.HolProg 64 :=
.seq AllocBody839_46 AllocBody839_47

def AllocBody839_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody839_50 : StackLang.HolProg 64 :=
.seq AllocBody839_48 AllocBody839_49

def AllocBody839_51 : StackLang.HolProg 64 :=
.call (some (AllocBody839_45, 0, 839, 2)) (Sum.inl 78) (some (AllocBody839_50, 839, 3))

def AllocBody839_52 : StackLang.HolProg 64 :=
.seq AllocBody839_34 AllocBody839_51

def AllocBody839_53 : StackLang.HolProg 64 :=
.seq AllocBody839_33 AllocBody839_52

def AllocBody839_54 : StackLang.HolProg 64 :=
.seq AllocBody839_32 AllocBody839_53

def AllocBody839_55 : StackLang.HolProg 64 :=
.seq AllocBody839_13 AllocBody839_54

def AllocBody839_56 : StackLang.HolProg 64 :=
.seq AllocBody839_10 AllocBody839_55

def AllocBody839_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody839_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody839_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody839_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody839_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody839_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody839_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody839_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody839_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody839_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 20#64)

def AllocBody839_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody839_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody839_77 : StackLang.HolProg 64 :=
.seq AllocBody839_75 AllocBody839_76

def AllocBody839_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody839_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody839_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody839_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody839_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody839_83 : StackLang.HolProg 64 :=
.seq AllocBody839_81 AllocBody839_82

def AllocBody839_84 : StackLang.HolProg 64 :=
.seq AllocBody839_80 AllocBody839_83

def AllocBody839_85 : StackLang.HolProg 64 :=
.seq AllocBody839_79 AllocBody839_84

def AllocBody839_86 : StackLang.HolProg 64 :=
.seq AllocBody839_78 AllocBody839_85

def AllocBody839_87 : StackLang.HolProg 64 :=
.seq AllocBody839_77 AllocBody839_86

def AllocBody839_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4204#64)

def AllocBody839_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_91 : StackLang.HolProg 64 :=
.seq AllocBody839_89 AllocBody839_90

def AllocBody839_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody839_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody839_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 839 5

def AllocBody839_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody839_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody839_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody839_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody839_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_102 : StackLang.HolProg 64 :=
.seq AllocBody839_100 AllocBody839_101

def AllocBody839_103 : StackLang.HolProg 64 :=
.seq AllocBody839_99 AllocBody839_102

def AllocBody839_104 : StackLang.HolProg 64 :=
.seq AllocBody839_98 AllocBody839_103

def AllocBody839_105 : StackLang.HolProg 64 :=
.seq AllocBody839_97 AllocBody839_104

def AllocBody839_106 : StackLang.HolProg 64 :=
.seq AllocBody839_96 AllocBody839_105

def AllocBody839_107 : StackLang.HolProg 64 :=
.seq AllocBody839_95 AllocBody839_106

def AllocBody839_108 : StackLang.HolProg 64 :=
.seq AllocBody839_94 AllocBody839_107

def AllocBody839_109 : StackLang.HolProg 64 :=
.seq AllocBody839_93 AllocBody839_108

def AllocBody839_110 : StackLang.HolProg 64 :=
.seq AllocBody839_92 AllocBody839_109

def AllocBody839_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody839_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody839_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody839_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody839_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody839_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody839_120 : StackLang.HolProg 64 :=
.seq AllocBody839_118 AllocBody839_119

def AllocBody839_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody839_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody839_123 : StackLang.HolProg 64 :=
.seq AllocBody839_121 AllocBody839_122

def AllocBody839_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody839_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody839_126 : StackLang.HolProg 64 :=
.seq AllocBody839_124 AllocBody839_125

def AllocBody839_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody839_128 : StackLang.HolProg 64 :=
.seq AllocBody839_126 AllocBody839_127

def AllocBody839_129 : StackLang.HolProg 64 :=
.seq AllocBody839_123 AllocBody839_128

def AllocBody839_130 : StackLang.HolProg 64 :=
.seq AllocBody839_120 AllocBody839_129

def AllocBody839_131 : StackLang.HolProg 64 :=
.seq AllocBody839_117 AllocBody839_130

def AllocBody839_132 : StackLang.HolProg 64 :=
.seq AllocBody839_116 AllocBody839_131

def AllocBody839_133 : StackLang.HolProg 64 :=
.seq AllocBody839_115 AllocBody839_132

def AllocBody839_134 : StackLang.HolProg 64 :=
.seq AllocBody839_114 AllocBody839_133

def AllocBody839_135 : StackLang.HolProg 64 :=
.seq AllocBody839_113 AllocBody839_134

def AllocBody839_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody839_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody839_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody839_139 : StackLang.HolProg 64 :=
.seq AllocBody839_137 AllocBody839_138

def AllocBody839_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody839_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody839_142 : StackLang.HolProg 64 :=
.seq AllocBody839_140 AllocBody839_141

def AllocBody839_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody839_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody839_145 : StackLang.HolProg 64 :=
.seq AllocBody839_143 AllocBody839_144

def AllocBody839_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody839_147 : StackLang.HolProg 64 :=
.seq AllocBody839_145 AllocBody839_146

def AllocBody839_148 : StackLang.HolProg 64 :=
.seq AllocBody839_142 AllocBody839_147

def AllocBody839_149 : StackLang.HolProg 64 :=
.seq AllocBody839_139 AllocBody839_148

def AllocBody839_150 : StackLang.HolProg 64 :=
.seq AllocBody839_136 AllocBody839_149

def AllocBody839_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody839_152 : StackLang.HolProg 64 :=
.seq AllocBody839_150 AllocBody839_151

def AllocBody839_153 : StackLang.HolProg 64 :=
.call (some (AllocBody839_135, 0, 839, 4)) (Sum.inl 838) (some (AllocBody839_152, 839, 5))

def AllocBody839_154 : StackLang.HolProg 64 :=
.seq AllocBody839_112 AllocBody839_153

def AllocBody839_155 : StackLang.HolProg 64 :=
.seq AllocBody839_111 AllocBody839_154

def AllocBody839_156 : StackLang.HolProg 64 :=
.seq AllocBody839_110 AllocBody839_155

def AllocBody839_157 : StackLang.HolProg 64 :=
.seq AllocBody839_91 AllocBody839_156

def AllocBody839_158 : StackLang.HolProg 64 :=
.seq AllocBody839_88 AllocBody839_157

def AllocBody839_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def AllocBody839_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody839_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody839_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody839_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def AllocBody839_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody839_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody839_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody839_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody839_175 : StackLang.HolProg 64 :=
.seq AllocBody839_173 AllocBody839_174

def AllocBody839_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody839_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody839_178 : StackLang.HolProg 64 :=
.seq AllocBody839_176 AllocBody839_177

def AllocBody839_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody839_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody839_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody839_182 : StackLang.HolProg 64 :=
.seq AllocBody839_180 AllocBody839_181

def AllocBody839_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody839_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody839_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def AllocBody839_186 : StackLang.HolProg 64 :=
.seq AllocBody839_184 AllocBody839_185

def AllocBody839_187 : StackLang.HolProg 64 :=
.seq AllocBody839_183 AllocBody839_186

def AllocBody839_188 : StackLang.HolProg 64 :=
.seq AllocBody839_182 AllocBody839_187

def AllocBody839_189 : StackLang.HolProg 64 :=
.seq AllocBody839_179 AllocBody839_188

def AllocBody839_190 : StackLang.HolProg 64 :=
.seq AllocBody839_178 AllocBody839_189

def AllocBody839_191 : StackLang.HolProg 64 :=
.seq AllocBody839_175 AllocBody839_190

def AllocBody839_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4205#64)

def AllocBody839_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_195 : StackLang.HolProg 64 :=
.seq AllocBody839_193 AllocBody839_194

def AllocBody839_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody839_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody839_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody839_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 839 7

def AllocBody839_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody839_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody839_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody839_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody839_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_206 : StackLang.HolProg 64 :=
.seq AllocBody839_204 AllocBody839_205

def AllocBody839_207 : StackLang.HolProg 64 :=
.seq AllocBody839_203 AllocBody839_206

def AllocBody839_208 : StackLang.HolProg 64 :=
.seq AllocBody839_202 AllocBody839_207

def AllocBody839_209 : StackLang.HolProg 64 :=
.seq AllocBody839_201 AllocBody839_208

def AllocBody839_210 : StackLang.HolProg 64 :=
.seq AllocBody839_200 AllocBody839_209

def AllocBody839_211 : StackLang.HolProg 64 :=
.seq AllocBody839_199 AllocBody839_210

def AllocBody839_212 : StackLang.HolProg 64 :=
.seq AllocBody839_198 AllocBody839_211

def AllocBody839_213 : StackLang.HolProg 64 :=
.seq AllocBody839_197 AllocBody839_212

def AllocBody839_214 : StackLang.HolProg 64 :=
.seq AllocBody839_196 AllocBody839_213

def AllocBody839_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody839_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody839_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody839_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody839_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody839_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody839_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody839_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody839_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody839_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody839_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 3

def AllocBody839_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody839_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody839_230 : StackLang.HolProg 64 :=
.seq AllocBody839_228 AllocBody839_229

def AllocBody839_231 : StackLang.HolProg 64 :=
.seq AllocBody839_227 AllocBody839_230

def AllocBody839_232 : StackLang.HolProg 64 :=
.seq AllocBody839_226 AllocBody839_231

def AllocBody839_233 : StackLang.HolProg 64 :=
.seq AllocBody839_225 AllocBody839_232

def AllocBody839_234 : StackLang.HolProg 64 :=
.seq AllocBody839_224 AllocBody839_233

def AllocBody839_235 : StackLang.HolProg 64 :=
.seq AllocBody839_223 AllocBody839_234

def AllocBody839_236 : StackLang.HolProg 64 :=
.seq AllocBody839_222 AllocBody839_235

def AllocBody839_237 : StackLang.HolProg 64 :=
.seq AllocBody839_221 AllocBody839_236

def AllocBody839_238 : StackLang.HolProg 64 :=
.seq AllocBody839_220 AllocBody839_237

def AllocBody839_239 : StackLang.HolProg 64 :=
.seq AllocBody839_219 AllocBody839_238

def AllocBody839_240 : StackLang.HolProg 64 :=
.seq AllocBody839_218 AllocBody839_239

def AllocBody839_241 : StackLang.HolProg 64 :=
.seq AllocBody839_217 AllocBody839_240

def AllocBody839_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody839_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody839_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody839_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody839_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody839_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody839_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 3

def AllocBody839_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody839_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody839_251 : StackLang.HolProg 64 :=
.seq AllocBody839_249 AllocBody839_250

def AllocBody839_252 : StackLang.HolProg 64 :=
.seq AllocBody839_248 AllocBody839_251

def AllocBody839_253 : StackLang.HolProg 64 :=
.seq AllocBody839_247 AllocBody839_252

def AllocBody839_254 : StackLang.HolProg 64 :=
.seq AllocBody839_246 AllocBody839_253

def AllocBody839_255 : StackLang.HolProg 64 :=
.seq AllocBody839_245 AllocBody839_254

def AllocBody839_256 : StackLang.HolProg 64 :=
.seq AllocBody839_244 AllocBody839_255

def AllocBody839_257 : StackLang.HolProg 64 :=
.seq AllocBody839_243 AllocBody839_256

def AllocBody839_258 : StackLang.HolProg 64 :=
.seq AllocBody839_242 AllocBody839_257

def AllocBody839_259 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody839_260 : StackLang.HolProg 64 :=
.seq AllocBody839_258 AllocBody839_259

def AllocBody839_261 : StackLang.HolProg 64 :=
.call (some (AllocBody839_241, 0, 839, 6)) (Sum.inl 838) (some (AllocBody839_260, 839, 7))

def AllocBody839_262 : StackLang.HolProg 64 :=
.seq AllocBody839_216 AllocBody839_261

def AllocBody839_263 : StackLang.HolProg 64 :=
.seq AllocBody839_215 AllocBody839_262

def AllocBody839_264 : StackLang.HolProg 64 :=
.seq AllocBody839_214 AllocBody839_263

def AllocBody839_265 : StackLang.HolProg 64 :=
.seq AllocBody839_195 AllocBody839_264

def AllocBody839_266 : StackLang.HolProg 64 :=
.seq AllocBody839_192 AllocBody839_265

def AllocBody839_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody839_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def AllocBody839_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def AllocBody839_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 7

def AllocBody839_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 6

def AllocBody839_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 5

def AllocBody839_275 : StackLang.HolProg 64 :=
.seq AllocBody839_273 AllocBody839_274

def AllocBody839_276 : StackLang.HolProg 64 :=
.seq AllocBody839_272 AllocBody839_275

def AllocBody839_277 : StackLang.HolProg 64 :=
.seq AllocBody839_271 AllocBody839_276

def AllocBody839_278 : StackLang.HolProg 64 :=
.seq AllocBody839_270 AllocBody839_277

def AllocBody839_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody839_280 : StackLang.HolProg 64 :=
.seq AllocBody839_278 AllocBody839_279

def AllocBody839_281 : StackLang.HolProg 64 :=
.seq AllocBody839_269 AllocBody839_280

def AllocBody839_282 : StackLang.HolProg 64 :=
.seq AllocBody839_268 AllocBody839_281

def AllocBody839_283 : StackLang.HolProg 64 :=
.seq AllocBody839_267 AllocBody839_282

def AllocBody839_284 : StackLang.HolProg 64 :=
.seq AllocBody839_266 AllocBody839_283

def AllocBody839_285 : StackLang.HolProg 64 :=
.seq AllocBody839_191 AllocBody839_284

def AllocBody839_286 : StackLang.HolProg 64 :=
.seq AllocBody839_172 AllocBody839_285

def AllocBody839_287 : StackLang.HolProg 64 :=
.seq AllocBody839_171 AllocBody839_286

def AllocBody839_288 : StackLang.HolProg 64 :=
.seq AllocBody839_170 AllocBody839_287

def AllocBody839_289 : StackLang.HolProg 64 :=
.seq AllocBody839_169 AllocBody839_288

def AllocBody839_290 : StackLang.HolProg 64 :=
.seq AllocBody839_168 AllocBody839_289

def AllocBody839_291 : StackLang.HolProg 64 :=
.seq AllocBody839_167 AllocBody839_290

def AllocBody839_292 : StackLang.HolProg 64 :=
.seq AllocBody839_166 AllocBody839_291

def AllocBody839_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody839_295 : StackLang.HolProg 64 :=
.seq AllocBody839_293 AllocBody839_294

def AllocBody839_296 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody839_292 AllocBody839_295

def AllocBody839_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody839_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody839_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody839_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody839_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody839_303 : StackLang.HolProg 64 :=
.seq AllocBody839_301 AllocBody839_302

def AllocBody839_304 : StackLang.HolProg 64 :=
.seq AllocBody839_300 AllocBody839_303

def AllocBody839_305 : StackLang.HolProg 64 :=
.seq AllocBody839_299 AllocBody839_304

def AllocBody839_306 : StackLang.HolProg 64 :=
.seq AllocBody839_298 AllocBody839_305

def AllocBody839_307 : StackLang.HolProg 64 :=
.seq AllocBody839_297 AllocBody839_306

def AllocBody839_308 : StackLang.HolProg 64 :=
.seq AllocBody839_296 AllocBody839_307

def AllocBody839_309 : StackLang.HolProg 64 :=
.seq AllocBody839_165 AllocBody839_308

def AllocBody839_310 : StackLang.HolProg 64 :=
.loop AllocBody839_309

def AllocBody839_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def AllocBody839_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody839_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody839_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody839_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody839_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody839_318 : StackLang.HolProg 64 :=
.seq AllocBody839_316 AllocBody839_317

def AllocBody839_319 : StackLang.HolProg 64 :=
.seq AllocBody839_315 AllocBody839_318

def AllocBody839_320 : StackLang.HolProg 64 :=
.seq AllocBody839_314 AllocBody839_319

def AllocBody839_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody839_322 : StackLang.HolProg 64 :=
.seq AllocBody839_320 AllocBody839_321

def AllocBody839_323 : StackLang.HolProg 64 :=
.seq AllocBody839_313 AllocBody839_322

def AllocBody839_324 : StackLang.HolProg 64 :=
.seq AllocBody839_312 AllocBody839_323

def AllocBody839_325 : StackLang.HolProg 64 :=
.seq AllocBody839_311 AllocBody839_324

def AllocBody839_326 : StackLang.HolProg 64 :=
.seq AllocBody839_310 AllocBody839_325

def AllocBody839_327 : StackLang.HolProg 64 :=
.seq AllocBody839_164 AllocBody839_326

def AllocBody839_328 : StackLang.HolProg 64 :=
.seq AllocBody839_163 AllocBody839_327

def AllocBody839_329 : StackLang.HolProg 64 :=
.seq AllocBody839_162 AllocBody839_328

def AllocBody839_330 : StackLang.HolProg 64 :=
.seq AllocBody839_161 AllocBody839_329

def AllocBody839_331 : StackLang.HolProg 64 :=
.seq AllocBody839_160 AllocBody839_330

def AllocBody839_332 : StackLang.HolProg 64 :=
.seq AllocBody839_159 AllocBody839_331

def AllocBody839_333 : StackLang.HolProg 64 :=
.seq AllocBody839_158 AllocBody839_332

def AllocBody839_334 : StackLang.HolProg 64 :=
.seq AllocBody839_87 AllocBody839_333

def AllocBody839_335 : StackLang.HolProg 64 :=
.seq AllocBody839_74 AllocBody839_334

def AllocBody839_336 : StackLang.HolProg 64 :=
.seq AllocBody839_73 AllocBody839_335

def AllocBody839_337 : StackLang.HolProg 64 :=
.seq AllocBody839_72 AllocBody839_336

def AllocBody839_338 : StackLang.HolProg 64 :=
.seq AllocBody839_71 AllocBody839_337

def AllocBody839_339 : StackLang.HolProg 64 :=
.seq AllocBody839_70 AllocBody839_338

def AllocBody839_340 : StackLang.HolProg 64 :=
.seq AllocBody839_69 AllocBody839_339

def AllocBody839_341 : StackLang.HolProg 64 :=
.seq AllocBody839_68 AllocBody839_340

def AllocBody839_342 : StackLang.HolProg 64 :=
.seq AllocBody839_67 AllocBody839_341

def AllocBody839_343 : StackLang.HolProg 64 :=
.seq AllocBody839_66 AllocBody839_342

def AllocBody839_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody839_346 : StackLang.HolProg 64 :=
.seq AllocBody839_344 AllocBody839_345

def AllocBody839_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody839_343 AllocBody839_346

def AllocBody839_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody839_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody839_351 : StackLang.HolProg 64 :=
.seq AllocBody839_349 AllocBody839_350

def AllocBody839_352 : StackLang.HolProg 64 :=
.seq AllocBody839_348 AllocBody839_351

def AllocBody839_353 : StackLang.HolProg 64 :=
.seq AllocBody839_347 AllocBody839_352

def AllocBody839_354 : StackLang.HolProg 64 :=
.seq AllocBody839_65 AllocBody839_353

def AllocBody839_355 : StackLang.HolProg 64 :=
.loop AllocBody839_354

def AllocBody839_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody839_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody839_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody839_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody839_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody839_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody839_362 : StackLang.HolProg 64 :=
.seq AllocBody839_360 AllocBody839_361

def AllocBody839_363 : StackLang.HolProg 64 :=
.seq AllocBody839_359 AllocBody839_362

def AllocBody839_364 : StackLang.HolProg 64 :=
.seq AllocBody839_358 AllocBody839_363

def AllocBody839_365 : StackLang.HolProg 64 :=
.seq AllocBody839_357 AllocBody839_364

def AllocBody839_366 : StackLang.HolProg 64 :=
.seq AllocBody839_356 AllocBody839_365

def AllocBody839_367 : StackLang.HolProg 64 :=
.seq AllocBody839_355 AllocBody839_366

def AllocBody839_368 : StackLang.HolProg 64 :=
.seq AllocBody839_64 AllocBody839_367

def AllocBody839_369 : StackLang.HolProg 64 :=
.seq AllocBody839_63 AllocBody839_368

def AllocBody839_370 : StackLang.HolProg 64 :=
.seq AllocBody839_62 AllocBody839_369

def AllocBody839_371 : StackLang.HolProg 64 :=
.seq AllocBody839_61 AllocBody839_370

def AllocBody839_372 : StackLang.HolProg 64 :=
.seq AllocBody839_60 AllocBody839_371

def AllocBody839_373 : StackLang.HolProg 64 :=
.seq AllocBody839_59 AllocBody839_372

def AllocBody839_374 : StackLang.HolProg 64 :=
.seq AllocBody839_58 AllocBody839_373

def AllocBody839_375 : StackLang.HolProg 64 :=
.seq AllocBody839_57 AllocBody839_374

def AllocBody839_376 : StackLang.HolProg 64 :=
.seq AllocBody839_56 AllocBody839_375

def AllocBody839_377 : StackLang.HolProg 64 :=
.seq AllocBody839_9 AllocBody839_376

def AllocBody839_378 : StackLang.HolProg 64 :=
.seq AllocBody839_4 AllocBody839_377

def AllocBody839_379 : StackLang.HolProg 64 :=
.seq AllocBody839_3 AllocBody839_378

def AllocBody839_380 : StackLang.HolProg 64 :=
.seq AllocBody839_0 AllocBody839_379

def Alloc839 : Nat × StackLang.HolProg 64 := (839, AllocBody839_380)
theorem Alloc839_eq : StackAlloc.progComp (839, raw839) = Alloc839 := by
  kernel_rfl
#print axioms Alloc839_eq
end InitECandidate.Proofs.BackendStages
