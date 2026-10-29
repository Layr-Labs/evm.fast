import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw153
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody153_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody153_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody153_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody153_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def AllocBody153_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody153_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody153_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody153_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody153_10 : StackLang.HolProg 64 :=
.seq AllocBody153_8 AllocBody153_9

def AllocBody153_11 : StackLang.HolProg 64 :=
.seq AllocBody153_7 AllocBody153_10

def AllocBody153_12 : StackLang.HolProg 64 :=
.seq AllocBody153_6 AllocBody153_11

def AllocBody153_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 129#64)

def AllocBody153_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_16 : StackLang.HolProg 64 :=
.seq AllocBody153_14 AllocBody153_15

def AllocBody153_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 3

def AllocBody153_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_27 : StackLang.HolProg 64 :=
.seq AllocBody153_25 AllocBody153_26

def AllocBody153_28 : StackLang.HolProg 64 :=
.seq AllocBody153_24 AllocBody153_27

def AllocBody153_29 : StackLang.HolProg 64 :=
.seq AllocBody153_23 AllocBody153_28

def AllocBody153_30 : StackLang.HolProg 64 :=
.seq AllocBody153_22 AllocBody153_29

def AllocBody153_31 : StackLang.HolProg 64 :=
.seq AllocBody153_21 AllocBody153_30

def AllocBody153_32 : StackLang.HolProg 64 :=
.seq AllocBody153_20 AllocBody153_31

def AllocBody153_33 : StackLang.HolProg 64 :=
.seq AllocBody153_19 AllocBody153_32

def AllocBody153_34 : StackLang.HolProg 64 :=
.seq AllocBody153_18 AllocBody153_33

def AllocBody153_35 : StackLang.HolProg 64 :=
.seq AllocBody153_17 AllocBody153_34

def AllocBody153_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody153_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody153_44 : StackLang.HolProg 64 :=
.seq AllocBody153_42 AllocBody153_43

def AllocBody153_45 : StackLang.HolProg 64 :=
.seq AllocBody153_41 AllocBody153_44

def AllocBody153_46 : StackLang.HolProg 64 :=
.seq AllocBody153_40 AllocBody153_45

def AllocBody153_47 : StackLang.HolProg 64 :=
.seq AllocBody153_39 AllocBody153_46

def AllocBody153_48 : StackLang.HolProg 64 :=
.seq AllocBody153_38 AllocBody153_47

def AllocBody153_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody153_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody153_51 : StackLang.HolProg 64 :=
.seq AllocBody153_49 AllocBody153_50

def AllocBody153_52 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_53 : StackLang.HolProg 64 :=
.seq AllocBody153_51 AllocBody153_52

def AllocBody153_54 : StackLang.HolProg 64 :=
.call (some (AllocBody153_48, 0, 153, 2)) (Sum.inl 150) (some (AllocBody153_53, 153, 3))

def AllocBody153_55 : StackLang.HolProg 64 :=
.seq AllocBody153_37 AllocBody153_54

def AllocBody153_56 : StackLang.HolProg 64 :=
.seq AllocBody153_36 AllocBody153_55

def AllocBody153_57 : StackLang.HolProg 64 :=
.seq AllocBody153_35 AllocBody153_56

def AllocBody153_58 : StackLang.HolProg 64 :=
.seq AllocBody153_16 AllocBody153_57

def AllocBody153_59 : StackLang.HolProg 64 :=
.seq AllocBody153_13 AllocBody153_58

def AllocBody153_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody153_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody153_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody153_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody153_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551568#64))

def AllocBody153_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody153_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody153_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody153_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody153_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody153_76 : StackLang.HolProg 64 :=
.seq AllocBody153_74 AllocBody153_75

def AllocBody153_77 : StackLang.HolProg 64 :=
.seq AllocBody153_73 AllocBody153_76

def AllocBody153_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 130#64)

def AllocBody153_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_81 : StackLang.HolProg 64 :=
.seq AllocBody153_79 AllocBody153_80

def AllocBody153_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 5

def AllocBody153_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_92 : StackLang.HolProg 64 :=
.seq AllocBody153_90 AllocBody153_91

def AllocBody153_93 : StackLang.HolProg 64 :=
.seq AllocBody153_89 AllocBody153_92

def AllocBody153_94 : StackLang.HolProg 64 :=
.seq AllocBody153_88 AllocBody153_93

def AllocBody153_95 : StackLang.HolProg 64 :=
.seq AllocBody153_87 AllocBody153_94

def AllocBody153_96 : StackLang.HolProg 64 :=
.seq AllocBody153_86 AllocBody153_95

def AllocBody153_97 : StackLang.HolProg 64 :=
.seq AllocBody153_85 AllocBody153_96

def AllocBody153_98 : StackLang.HolProg 64 :=
.seq AllocBody153_84 AllocBody153_97

def AllocBody153_99 : StackLang.HolProg 64 :=
.seq AllocBody153_83 AllocBody153_98

def AllocBody153_100 : StackLang.HolProg 64 :=
.seq AllocBody153_82 AllocBody153_99

def AllocBody153_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody153_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody153_109 : StackLang.HolProg 64 :=
.seq AllocBody153_107 AllocBody153_108

def AllocBody153_110 : StackLang.HolProg 64 :=
.seq AllocBody153_106 AllocBody153_109

def AllocBody153_111 : StackLang.HolProg 64 :=
.seq AllocBody153_105 AllocBody153_110

def AllocBody153_112 : StackLang.HolProg 64 :=
.seq AllocBody153_104 AllocBody153_111

def AllocBody153_113 : StackLang.HolProg 64 :=
.seq AllocBody153_103 AllocBody153_112

def AllocBody153_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody153_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody153_116 : StackLang.HolProg 64 :=
.seq AllocBody153_114 AllocBody153_115

def AllocBody153_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_118 : StackLang.HolProg 64 :=
.seq AllocBody153_116 AllocBody153_117

def AllocBody153_119 : StackLang.HolProg 64 :=
.call (some (AllocBody153_113, 0, 153, 4)) (Sum.inl 151) (some (AllocBody153_118, 153, 5))

def AllocBody153_120 : StackLang.HolProg 64 :=
.seq AllocBody153_102 AllocBody153_119

def AllocBody153_121 : StackLang.HolProg 64 :=
.seq AllocBody153_101 AllocBody153_120

def AllocBody153_122 : StackLang.HolProg 64 :=
.seq AllocBody153_100 AllocBody153_121

def AllocBody153_123 : StackLang.HolProg 64 :=
.seq AllocBody153_81 AllocBody153_122

def AllocBody153_124 : StackLang.HolProg 64 :=
.seq AllocBody153_78 AllocBody153_123

def AllocBody153_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody153_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody153_130 : StackLang.HolProg 64 :=
.seq AllocBody153_128 AllocBody153_129

def AllocBody153_131 : StackLang.HolProg 64 :=
.seq AllocBody153_127 AllocBody153_130

def AllocBody153_132 : StackLang.HolProg 64 :=
.seq AllocBody153_126 AllocBody153_131

def AllocBody153_133 : StackLang.HolProg 64 :=
.seq AllocBody153_125 AllocBody153_132

def AllocBody153_134 : StackLang.HolProg 64 :=
.seq AllocBody153_124 AllocBody153_133

def AllocBody153_135 : StackLang.HolProg 64 :=
.seq AllocBody153_77 AllocBody153_134

def AllocBody153_136 : StackLang.HolProg 64 :=
.seq AllocBody153_72 AllocBody153_135

def AllocBody153_137 : StackLang.HolProg 64 :=
.seq AllocBody153_71 AllocBody153_136

def AllocBody153_138 : StackLang.HolProg 64 :=
.seq AllocBody153_70 AllocBody153_137

def AllocBody153_139 : StackLang.HolProg 64 :=
.seq AllocBody153_69 AllocBody153_138

def AllocBody153_140 : StackLang.HolProg 64 :=
.seq AllocBody153_68 AllocBody153_139

def AllocBody153_141 : StackLang.HolProg 64 :=
.seq AllocBody153_67 AllocBody153_140

def AllocBody153_142 : StackLang.HolProg 64 :=
.seq AllocBody153_66 AllocBody153_141

def AllocBody153_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody153_146 : StackLang.HolProg 64 :=
.seq AllocBody153_144 AllocBody153_145

def AllocBody153_147 : StackLang.HolProg 64 :=
.seq AllocBody153_143 AllocBody153_146

def AllocBody153_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody153_142 AllocBody153_147

def AllocBody153_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody153_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody153_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def AllocBody153_153 : StackLang.HolProg 64 :=
.seq AllocBody153_151 AllocBody153_152

def AllocBody153_154 : StackLang.HolProg 64 :=
.seq AllocBody153_150 AllocBody153_153

def AllocBody153_155 : StackLang.HolProg 64 :=
.seq AllocBody153_149 AllocBody153_154

def AllocBody153_156 : StackLang.HolProg 64 :=
.seq AllocBody153_148 AllocBody153_155

def AllocBody153_157 : StackLang.HolProg 64 :=
.seq AllocBody153_65 AllocBody153_156

def AllocBody153_158 : StackLang.HolProg 64 :=
.seq AllocBody153_64 AllocBody153_157

def AllocBody153_159 : StackLang.HolProg 64 :=
.loop AllocBody153_158

def AllocBody153_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody153_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody153_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def AllocBody153_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 128#64)

def AllocBody153_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody153_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody153_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody153_171 : StackLang.HolProg 64 :=
.seq AllocBody153_169 AllocBody153_170

def AllocBody153_172 : StackLang.HolProg 64 :=
.seq AllocBody153_168 AllocBody153_171

def AllocBody153_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 131#64)

def AllocBody153_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_176 : StackLang.HolProg 64 :=
.seq AllocBody153_174 AllocBody153_175

def AllocBody153_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 7

def AllocBody153_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_187 : StackLang.HolProg 64 :=
.seq AllocBody153_185 AllocBody153_186

def AllocBody153_188 : StackLang.HolProg 64 :=
.seq AllocBody153_184 AllocBody153_187

def AllocBody153_189 : StackLang.HolProg 64 :=
.seq AllocBody153_183 AllocBody153_188

def AllocBody153_190 : StackLang.HolProg 64 :=
.seq AllocBody153_182 AllocBody153_189

def AllocBody153_191 : StackLang.HolProg 64 :=
.seq AllocBody153_181 AllocBody153_190

def AllocBody153_192 : StackLang.HolProg 64 :=
.seq AllocBody153_180 AllocBody153_191

def AllocBody153_193 : StackLang.HolProg 64 :=
.seq AllocBody153_179 AllocBody153_192

def AllocBody153_194 : StackLang.HolProg 64 :=
.seq AllocBody153_178 AllocBody153_193

def AllocBody153_195 : StackLang.HolProg 64 :=
.seq AllocBody153_177 AllocBody153_194

def AllocBody153_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody153_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody153_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody153_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody153_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody153_207 : StackLang.HolProg 64 :=
.seq AllocBody153_205 AllocBody153_206

def AllocBody153_208 : StackLang.HolProg 64 :=
.seq AllocBody153_204 AllocBody153_207

def AllocBody153_209 : StackLang.HolProg 64 :=
.seq AllocBody153_203 AllocBody153_208

def AllocBody153_210 : StackLang.HolProg 64 :=
.seq AllocBody153_202 AllocBody153_209

def AllocBody153_211 : StackLang.HolProg 64 :=
.seq AllocBody153_201 AllocBody153_210

def AllocBody153_212 : StackLang.HolProg 64 :=
.seq AllocBody153_200 AllocBody153_211

def AllocBody153_213 : StackLang.HolProg 64 :=
.seq AllocBody153_199 AllocBody153_212

def AllocBody153_214 : StackLang.HolProg 64 :=
.seq AllocBody153_198 AllocBody153_213

def AllocBody153_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody153_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody153_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody153_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody153_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody153_220 : StackLang.HolProg 64 :=
.seq AllocBody153_218 AllocBody153_219

def AllocBody153_221 : StackLang.HolProg 64 :=
.seq AllocBody153_217 AllocBody153_220

def AllocBody153_222 : StackLang.HolProg 64 :=
.seq AllocBody153_216 AllocBody153_221

def AllocBody153_223 : StackLang.HolProg 64 :=
.seq AllocBody153_215 AllocBody153_222

def AllocBody153_224 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_225 : StackLang.HolProg 64 :=
.seq AllocBody153_223 AllocBody153_224

def AllocBody153_226 : StackLang.HolProg 64 :=
.call (some (AllocBody153_214, 0, 153, 6)) (Sum.inl 78) (some (AllocBody153_225, 153, 7))

def AllocBody153_227 : StackLang.HolProg 64 :=
.seq AllocBody153_197 AllocBody153_226

def AllocBody153_228 : StackLang.HolProg 64 :=
.seq AllocBody153_196 AllocBody153_227

def AllocBody153_229 : StackLang.HolProg 64 :=
.seq AllocBody153_195 AllocBody153_228

def AllocBody153_230 : StackLang.HolProg 64 :=
.seq AllocBody153_176 AllocBody153_229

def AllocBody153_231 : StackLang.HolProg 64 :=
.seq AllocBody153_173 AllocBody153_230

def AllocBody153_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody153_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def AllocBody153_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody153_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody153_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 132#64)

def AllocBody153_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_243 : StackLang.HolProg 64 :=
.seq AllocBody153_241 AllocBody153_242

def AllocBody153_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 9

def AllocBody153_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_254 : StackLang.HolProg 64 :=
.seq AllocBody153_252 AllocBody153_253

def AllocBody153_255 : StackLang.HolProg 64 :=
.seq AllocBody153_251 AllocBody153_254

def AllocBody153_256 : StackLang.HolProg 64 :=
.seq AllocBody153_250 AllocBody153_255

def AllocBody153_257 : StackLang.HolProg 64 :=
.seq AllocBody153_249 AllocBody153_256

def AllocBody153_258 : StackLang.HolProg 64 :=
.seq AllocBody153_248 AllocBody153_257

def AllocBody153_259 : StackLang.HolProg 64 :=
.seq AllocBody153_247 AllocBody153_258

def AllocBody153_260 : StackLang.HolProg 64 :=
.seq AllocBody153_246 AllocBody153_259

def AllocBody153_261 : StackLang.HolProg 64 :=
.seq AllocBody153_245 AllocBody153_260

def AllocBody153_262 : StackLang.HolProg 64 :=
.seq AllocBody153_244 AllocBody153_261

def AllocBody153_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody153_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody153_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody153_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody153_273 : StackLang.HolProg 64 :=
.seq AllocBody153_271 AllocBody153_272

def AllocBody153_274 : StackLang.HolProg 64 :=
.seq AllocBody153_270 AllocBody153_273

def AllocBody153_275 : StackLang.HolProg 64 :=
.seq AllocBody153_269 AllocBody153_274

def AllocBody153_276 : StackLang.HolProg 64 :=
.seq AllocBody153_268 AllocBody153_275

def AllocBody153_277 : StackLang.HolProg 64 :=
.seq AllocBody153_267 AllocBody153_276

def AllocBody153_278 : StackLang.HolProg 64 :=
.seq AllocBody153_266 AllocBody153_277

def AllocBody153_279 : StackLang.HolProg 64 :=
.seq AllocBody153_265 AllocBody153_278

def AllocBody153_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody153_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody153_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody153_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody153_284 : StackLang.HolProg 64 :=
.seq AllocBody153_282 AllocBody153_283

def AllocBody153_285 : StackLang.HolProg 64 :=
.seq AllocBody153_281 AllocBody153_284

def AllocBody153_286 : StackLang.HolProg 64 :=
.seq AllocBody153_280 AllocBody153_285

def AllocBody153_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_288 : StackLang.HolProg 64 :=
.seq AllocBody153_286 AllocBody153_287

def AllocBody153_289 : StackLang.HolProg 64 :=
.call (some (AllocBody153_279, 0, 153, 8)) (Sum.inl 77) (some (AllocBody153_288, 153, 9))

def AllocBody153_290 : StackLang.HolProg 64 :=
.seq AllocBody153_264 AllocBody153_289

def AllocBody153_291 : StackLang.HolProg 64 :=
.seq AllocBody153_263 AllocBody153_290

def AllocBody153_292 : StackLang.HolProg 64 :=
.seq AllocBody153_262 AllocBody153_291

def AllocBody153_293 : StackLang.HolProg 64 :=
.seq AllocBody153_243 AllocBody153_292

def AllocBody153_294 : StackLang.HolProg 64 :=
.seq AllocBody153_240 AllocBody153_293

def AllocBody153_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 0

def AllocBody153_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def AllocBody153_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody153_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 128#64)

def AllocBody153_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody153_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 64#64)

def AllocBody153_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 56#64)

def AllocBody153_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 128#64)

def AllocBody153_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_310 : StackLang.HolProg 64 :=
.seq AllocBody153_308 AllocBody153_309

def AllocBody153_311 : StackLang.HolProg 64 :=
.seq AllocBody153_307 AllocBody153_310

def AllocBody153_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_314 : StackLang.HolProg 64 :=
.seq AllocBody153_312 AllocBody153_313

def AllocBody153_315 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody153_311 AllocBody153_314

def AllocBody153_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551560#64))

def AllocBody153_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody153_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551608#64)))

def AllocBody153_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody153_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody153_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 133#64)

def AllocBody153_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_327 : StackLang.HolProg 64 :=
.seq AllocBody153_325 AllocBody153_326

def AllocBody153_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 11

def AllocBody153_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_338 : StackLang.HolProg 64 :=
.seq AllocBody153_336 AllocBody153_337

def AllocBody153_339 : StackLang.HolProg 64 :=
.seq AllocBody153_335 AllocBody153_338

def AllocBody153_340 : StackLang.HolProg 64 :=
.seq AllocBody153_334 AllocBody153_339

def AllocBody153_341 : StackLang.HolProg 64 :=
.seq AllocBody153_333 AllocBody153_340

def AllocBody153_342 : StackLang.HolProg 64 :=
.seq AllocBody153_332 AllocBody153_341

def AllocBody153_343 : StackLang.HolProg 64 :=
.seq AllocBody153_331 AllocBody153_342

def AllocBody153_344 : StackLang.HolProg 64 :=
.seq AllocBody153_330 AllocBody153_343

def AllocBody153_345 : StackLang.HolProg 64 :=
.seq AllocBody153_329 AllocBody153_344

def AllocBody153_346 : StackLang.HolProg 64 :=
.seq AllocBody153_328 AllocBody153_345

def AllocBody153_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_354 : StackLang.HolProg 64 :=
.seq AllocBody153_352 AllocBody153_353

def AllocBody153_355 : StackLang.HolProg 64 :=
.seq AllocBody153_351 AllocBody153_354

def AllocBody153_356 : StackLang.HolProg 64 :=
.seq AllocBody153_350 AllocBody153_355

def AllocBody153_357 : StackLang.HolProg 64 :=
.seq AllocBody153_349 AllocBody153_356

def AllocBody153_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_359 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_360 : StackLang.HolProg 64 :=
.seq AllocBody153_358 AllocBody153_359

def AllocBody153_361 : StackLang.HolProg 64 :=
.call (some (AllocBody153_357, 0, 153, 10)) (Sum.inl 89) (some (AllocBody153_360, 153, 11))

def AllocBody153_362 : StackLang.HolProg 64 :=
.seq AllocBody153_348 AllocBody153_361

def AllocBody153_363 : StackLang.HolProg 64 :=
.seq AllocBody153_347 AllocBody153_362

def AllocBody153_364 : StackLang.HolProg 64 :=
.seq AllocBody153_346 AllocBody153_363

def AllocBody153_365 : StackLang.HolProg 64 :=
.seq AllocBody153_327 AllocBody153_364

def AllocBody153_366 : StackLang.HolProg 64 :=
.seq AllocBody153_324 AllocBody153_365

def AllocBody153_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody153_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def AllocBody153_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551560#64))

def AllocBody153_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 134#64)

def AllocBody153_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_378 : StackLang.HolProg 64 :=
.seq AllocBody153_376 AllocBody153_377

def AllocBody153_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 13

def AllocBody153_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_389 : StackLang.HolProg 64 :=
.seq AllocBody153_387 AllocBody153_388

def AllocBody153_390 : StackLang.HolProg 64 :=
.seq AllocBody153_386 AllocBody153_389

def AllocBody153_391 : StackLang.HolProg 64 :=
.seq AllocBody153_385 AllocBody153_390

def AllocBody153_392 : StackLang.HolProg 64 :=
.seq AllocBody153_384 AllocBody153_391

def AllocBody153_393 : StackLang.HolProg 64 :=
.seq AllocBody153_383 AllocBody153_392

def AllocBody153_394 : StackLang.HolProg 64 :=
.seq AllocBody153_382 AllocBody153_393

def AllocBody153_395 : StackLang.HolProg 64 :=
.seq AllocBody153_381 AllocBody153_394

def AllocBody153_396 : StackLang.HolProg 64 :=
.seq AllocBody153_380 AllocBody153_395

def AllocBody153_397 : StackLang.HolProg 64 :=
.seq AllocBody153_379 AllocBody153_396

def AllocBody153_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody153_405 : StackLang.HolProg 64 :=
.seq AllocBody153_403 AllocBody153_404

def AllocBody153_406 : StackLang.HolProg 64 :=
.seq AllocBody153_402 AllocBody153_405

def AllocBody153_407 : StackLang.HolProg 64 :=
.seq AllocBody153_401 AllocBody153_406

def AllocBody153_408 : StackLang.HolProg 64 :=
.seq AllocBody153_400 AllocBody153_407

def AllocBody153_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody153_410 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_411 : StackLang.HolProg 64 :=
.seq AllocBody153_409 AllocBody153_410

def AllocBody153_412 : StackLang.HolProg 64 :=
.call (some (AllocBody153_408, 0, 153, 12)) (Sum.inl 151) (some (AllocBody153_411, 153, 13))

def AllocBody153_413 : StackLang.HolProg 64 :=
.seq AllocBody153_399 AllocBody153_412

def AllocBody153_414 : StackLang.HolProg 64 :=
.seq AllocBody153_398 AllocBody153_413

def AllocBody153_415 : StackLang.HolProg 64 :=
.seq AllocBody153_397 AllocBody153_414

def AllocBody153_416 : StackLang.HolProg 64 :=
.seq AllocBody153_378 AllocBody153_415

def AllocBody153_417 : StackLang.HolProg 64 :=
.seq AllocBody153_375 AllocBody153_416

def AllocBody153_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody153_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody153_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def AllocBody153_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551560#64))

def AllocBody153_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody153_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 135#64)

def AllocBody153_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_433 : StackLang.HolProg 64 :=
.seq AllocBody153_431 AllocBody153_432

def AllocBody153_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 15

def AllocBody153_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_444 : StackLang.HolProg 64 :=
.seq AllocBody153_442 AllocBody153_443

def AllocBody153_445 : StackLang.HolProg 64 :=
.seq AllocBody153_441 AllocBody153_444

def AllocBody153_446 : StackLang.HolProg 64 :=
.seq AllocBody153_440 AllocBody153_445

def AllocBody153_447 : StackLang.HolProg 64 :=
.seq AllocBody153_439 AllocBody153_446

def AllocBody153_448 : StackLang.HolProg 64 :=
.seq AllocBody153_438 AllocBody153_447

def AllocBody153_449 : StackLang.HolProg 64 :=
.seq AllocBody153_437 AllocBody153_448

def AllocBody153_450 : StackLang.HolProg 64 :=
.seq AllocBody153_436 AllocBody153_449

def AllocBody153_451 : StackLang.HolProg 64 :=
.seq AllocBody153_435 AllocBody153_450

def AllocBody153_452 : StackLang.HolProg 64 :=
.seq AllocBody153_434 AllocBody153_451

def AllocBody153_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody153_460 : StackLang.HolProg 64 :=
.seq AllocBody153_458 AllocBody153_459

def AllocBody153_461 : StackLang.HolProg 64 :=
.seq AllocBody153_457 AllocBody153_460

def AllocBody153_462 : StackLang.HolProg 64 :=
.seq AllocBody153_456 AllocBody153_461

def AllocBody153_463 : StackLang.HolProg 64 :=
.seq AllocBody153_455 AllocBody153_462

def AllocBody153_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody153_465 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_466 : StackLang.HolProg 64 :=
.seq AllocBody153_464 AllocBody153_465

def AllocBody153_467 : StackLang.HolProg 64 :=
.call (some (AllocBody153_463, 0, 153, 14)) (Sum.inl 151) (some (AllocBody153_466, 153, 15))

def AllocBody153_468 : StackLang.HolProg 64 :=
.seq AllocBody153_454 AllocBody153_467

def AllocBody153_469 : StackLang.HolProg 64 :=
.seq AllocBody153_453 AllocBody153_468

def AllocBody153_470 : StackLang.HolProg 64 :=
.seq AllocBody153_452 AllocBody153_469

def AllocBody153_471 : StackLang.HolProg 64 :=
.seq AllocBody153_433 AllocBody153_470

def AllocBody153_472 : StackLang.HolProg 64 :=
.seq AllocBody153_430 AllocBody153_471

def AllocBody153_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_475 : StackLang.HolProg 64 :=
.seq AllocBody153_473 AllocBody153_474

def AllocBody153_476 : StackLang.HolProg 64 :=
.seq AllocBody153_472 AllocBody153_475

def AllocBody153_477 : StackLang.HolProg 64 :=
.seq AllocBody153_429 AllocBody153_476

def AllocBody153_478 : StackLang.HolProg 64 :=
.seq AllocBody153_428 AllocBody153_477

def AllocBody153_479 : StackLang.HolProg 64 :=
.seq AllocBody153_427 AllocBody153_478

def AllocBody153_480 : StackLang.HolProg 64 :=
.seq AllocBody153_426 AllocBody153_479

def AllocBody153_481 : StackLang.HolProg 64 :=
.seq AllocBody153_425 AllocBody153_480

def AllocBody153_482 : StackLang.HolProg 64 :=
.seq AllocBody153_424 AllocBody153_481

def AllocBody153_483 : StackLang.HolProg 64 :=
.seq AllocBody153_423 AllocBody153_482

def AllocBody153_484 : StackLang.HolProg 64 :=
.seq AllocBody153_422 AllocBody153_483

def AllocBody153_485 : StackLang.HolProg 64 :=
.seq AllocBody153_421 AllocBody153_484

def AllocBody153_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody153_488 : StackLang.HolProg 64 :=
.seq AllocBody153_486 AllocBody153_487

def AllocBody153_489 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody153_485 AllocBody153_488

def AllocBody153_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody153_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody153_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody153_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551568#64))

def AllocBody153_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 136#64)

def AllocBody153_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_499 : StackLang.HolProg 64 :=
.seq AllocBody153_497 AllocBody153_498

def AllocBody153_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody153_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody153_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody153_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 153 17

def AllocBody153_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody153_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody153_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody153_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody153_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_510 : StackLang.HolProg 64 :=
.seq AllocBody153_508 AllocBody153_509

def AllocBody153_511 : StackLang.HolProg 64 :=
.seq AllocBody153_507 AllocBody153_510

def AllocBody153_512 : StackLang.HolProg 64 :=
.seq AllocBody153_506 AllocBody153_511

def AllocBody153_513 : StackLang.HolProg 64 :=
.seq AllocBody153_505 AllocBody153_512

def AllocBody153_514 : StackLang.HolProg 64 :=
.seq AllocBody153_504 AllocBody153_513

def AllocBody153_515 : StackLang.HolProg 64 :=
.seq AllocBody153_503 AllocBody153_514

def AllocBody153_516 : StackLang.HolProg 64 :=
.seq AllocBody153_502 AllocBody153_515

def AllocBody153_517 : StackLang.HolProg 64 :=
.seq AllocBody153_501 AllocBody153_516

def AllocBody153_518 : StackLang.HolProg 64 :=
.seq AllocBody153_500 AllocBody153_517

def AllocBody153_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody153_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody153_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody153_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody153_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody153_526 : StackLang.HolProg 64 :=
.seq AllocBody153_524 AllocBody153_525

def AllocBody153_527 : StackLang.HolProg 64 :=
.seq AllocBody153_523 AllocBody153_526

def AllocBody153_528 : StackLang.HolProg 64 :=
.seq AllocBody153_522 AllocBody153_527

def AllocBody153_529 : StackLang.HolProg 64 :=
.seq AllocBody153_521 AllocBody153_528

def AllocBody153_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody153_531 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody153_532 : StackLang.HolProg 64 :=
.seq AllocBody153_530 AllocBody153_531

def AllocBody153_533 : StackLang.HolProg 64 :=
.call (some (AllocBody153_529, 0, 153, 16)) (Sum.inl 152) (some (AllocBody153_532, 153, 17))

def AllocBody153_534 : StackLang.HolProg 64 :=
.seq AllocBody153_520 AllocBody153_533

def AllocBody153_535 : StackLang.HolProg 64 :=
.seq AllocBody153_519 AllocBody153_534

def AllocBody153_536 : StackLang.HolProg 64 :=
.seq AllocBody153_518 AllocBody153_535

def AllocBody153_537 : StackLang.HolProg 64 :=
.seq AllocBody153_499 AllocBody153_536

def AllocBody153_538 : StackLang.HolProg 64 :=
.seq AllocBody153_496 AllocBody153_537

def AllocBody153_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody153_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody153_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody153_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody153_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody153_544 : StackLang.HolProg 64 :=
.seq AllocBody153_542 AllocBody153_543

def AllocBody153_545 : StackLang.HolProg 64 :=
.seq AllocBody153_541 AllocBody153_544

def AllocBody153_546 : StackLang.HolProg 64 :=
.seq AllocBody153_540 AllocBody153_545

def AllocBody153_547 : StackLang.HolProg 64 :=
.seq AllocBody153_539 AllocBody153_546

def AllocBody153_548 : StackLang.HolProg 64 :=
.seq AllocBody153_538 AllocBody153_547

def AllocBody153_549 : StackLang.HolProg 64 :=
.seq AllocBody153_495 AllocBody153_548

def AllocBody153_550 : StackLang.HolProg 64 :=
.seq AllocBody153_494 AllocBody153_549

def AllocBody153_551 : StackLang.HolProg 64 :=
.seq AllocBody153_493 AllocBody153_550

def AllocBody153_552 : StackLang.HolProg 64 :=
.seq AllocBody153_492 AllocBody153_551

def AllocBody153_553 : StackLang.HolProg 64 :=
.seq AllocBody153_491 AllocBody153_552

def AllocBody153_554 : StackLang.HolProg 64 :=
.seq AllocBody153_490 AllocBody153_553

def AllocBody153_555 : StackLang.HolProg 64 :=
.seq AllocBody153_489 AllocBody153_554

def AllocBody153_556 : StackLang.HolProg 64 :=
.seq AllocBody153_420 AllocBody153_555

def AllocBody153_557 : StackLang.HolProg 64 :=
.seq AllocBody153_419 AllocBody153_556

def AllocBody153_558 : StackLang.HolProg 64 :=
.seq AllocBody153_418 AllocBody153_557

def AllocBody153_559 : StackLang.HolProg 64 :=
.seq AllocBody153_417 AllocBody153_558

def AllocBody153_560 : StackLang.HolProg 64 :=
.seq AllocBody153_374 AllocBody153_559

def AllocBody153_561 : StackLang.HolProg 64 :=
.seq AllocBody153_373 AllocBody153_560

def AllocBody153_562 : StackLang.HolProg 64 :=
.seq AllocBody153_372 AllocBody153_561

def AllocBody153_563 : StackLang.HolProg 64 :=
.seq AllocBody153_371 AllocBody153_562

def AllocBody153_564 : StackLang.HolProg 64 :=
.seq AllocBody153_370 AllocBody153_563

def AllocBody153_565 : StackLang.HolProg 64 :=
.seq AllocBody153_369 AllocBody153_564

def AllocBody153_566 : StackLang.HolProg 64 :=
.seq AllocBody153_368 AllocBody153_565

def AllocBody153_567 : StackLang.HolProg 64 :=
.seq AllocBody153_367 AllocBody153_566

def AllocBody153_568 : StackLang.HolProg 64 :=
.seq AllocBody153_366 AllocBody153_567

def AllocBody153_569 : StackLang.HolProg 64 :=
.seq AllocBody153_323 AllocBody153_568

def AllocBody153_570 : StackLang.HolProg 64 :=
.seq AllocBody153_322 AllocBody153_569

def AllocBody153_571 : StackLang.HolProg 64 :=
.seq AllocBody153_321 AllocBody153_570

def AllocBody153_572 : StackLang.HolProg 64 :=
.seq AllocBody153_320 AllocBody153_571

def AllocBody153_573 : StackLang.HolProg 64 :=
.seq AllocBody153_319 AllocBody153_572

def AllocBody153_574 : StackLang.HolProg 64 :=
.seq AllocBody153_318 AllocBody153_573

def AllocBody153_575 : StackLang.HolProg 64 :=
.seq AllocBody153_317 AllocBody153_574

def AllocBody153_576 : StackLang.HolProg 64 :=
.seq AllocBody153_316 AllocBody153_575

def AllocBody153_577 : StackLang.HolProg 64 :=
.seq AllocBody153_315 AllocBody153_576

def AllocBody153_578 : StackLang.HolProg 64 :=
.seq AllocBody153_306 AllocBody153_577

def AllocBody153_579 : StackLang.HolProg 64 :=
.seq AllocBody153_305 AllocBody153_578

def AllocBody153_580 : StackLang.HolProg 64 :=
.seq AllocBody153_304 AllocBody153_579

def AllocBody153_581 : StackLang.HolProg 64 :=
.seq AllocBody153_303 AllocBody153_580

def AllocBody153_582 : StackLang.HolProg 64 :=
.seq AllocBody153_302 AllocBody153_581

def AllocBody153_583 : StackLang.HolProg 64 :=
.seq AllocBody153_301 AllocBody153_582

def AllocBody153_584 : StackLang.HolProg 64 :=
.seq AllocBody153_300 AllocBody153_583

def AllocBody153_585 : StackLang.HolProg 64 :=
.seq AllocBody153_299 AllocBody153_584

def AllocBody153_586 : StackLang.HolProg 64 :=
.seq AllocBody153_298 AllocBody153_585

def AllocBody153_587 : StackLang.HolProg 64 :=
.seq AllocBody153_297 AllocBody153_586

def AllocBody153_588 : StackLang.HolProg 64 :=
.seq AllocBody153_296 AllocBody153_587

def AllocBody153_589 : StackLang.HolProg 64 :=
.seq AllocBody153_295 AllocBody153_588

def AllocBody153_590 : StackLang.HolProg 64 :=
.seq AllocBody153_294 AllocBody153_589

def AllocBody153_591 : StackLang.HolProg 64 :=
.seq AllocBody153_239 AllocBody153_590

def AllocBody153_592 : StackLang.HolProg 64 :=
.seq AllocBody153_238 AllocBody153_591

def AllocBody153_593 : StackLang.HolProg 64 :=
.seq AllocBody153_237 AllocBody153_592

def AllocBody153_594 : StackLang.HolProg 64 :=
.seq AllocBody153_236 AllocBody153_593

def AllocBody153_595 : StackLang.HolProg 64 :=
.seq AllocBody153_235 AllocBody153_594

def AllocBody153_596 : StackLang.HolProg 64 :=
.seq AllocBody153_234 AllocBody153_595

def AllocBody153_597 : StackLang.HolProg 64 :=
.seq AllocBody153_233 AllocBody153_596

def AllocBody153_598 : StackLang.HolProg 64 :=
.seq AllocBody153_232 AllocBody153_597

def AllocBody153_599 : StackLang.HolProg 64 :=
.seq AllocBody153_231 AllocBody153_598

def AllocBody153_600 : StackLang.HolProg 64 :=
.seq AllocBody153_172 AllocBody153_599

def AllocBody153_601 : StackLang.HolProg 64 :=
.seq AllocBody153_167 AllocBody153_600

def AllocBody153_602 : StackLang.HolProg 64 :=
.seq AllocBody153_166 AllocBody153_601

def AllocBody153_603 : StackLang.HolProg 64 :=
.seq AllocBody153_165 AllocBody153_602

def AllocBody153_604 : StackLang.HolProg 64 :=
.seq AllocBody153_164 AllocBody153_603

def AllocBody153_605 : StackLang.HolProg 64 :=
.seq AllocBody153_163 AllocBody153_604

def AllocBody153_606 : StackLang.HolProg 64 :=
.seq AllocBody153_162 AllocBody153_605

def AllocBody153_607 : StackLang.HolProg 64 :=
.seq AllocBody153_161 AllocBody153_606

def AllocBody153_608 : StackLang.HolProg 64 :=
.seq AllocBody153_160 AllocBody153_607

def AllocBody153_609 : StackLang.HolProg 64 :=
.seq AllocBody153_159 AllocBody153_608

def AllocBody153_610 : StackLang.HolProg 64 :=
.seq AllocBody153_63 AllocBody153_609

def AllocBody153_611 : StackLang.HolProg 64 :=
.seq AllocBody153_62 AllocBody153_610

def AllocBody153_612 : StackLang.HolProg 64 :=
.seq AllocBody153_61 AllocBody153_611

def AllocBody153_613 : StackLang.HolProg 64 :=
.seq AllocBody153_60 AllocBody153_612

def AllocBody153_614 : StackLang.HolProg 64 :=
.seq AllocBody153_59 AllocBody153_613

def AllocBody153_615 : StackLang.HolProg 64 :=
.seq AllocBody153_12 AllocBody153_614

def AllocBody153_616 : StackLang.HolProg 64 :=
.seq AllocBody153_5 AllocBody153_615

def AllocBody153_617 : StackLang.HolProg 64 :=
.seq AllocBody153_4 AllocBody153_616

def AllocBody153_618 : StackLang.HolProg 64 :=
.seq AllocBody153_3 AllocBody153_617

def AllocBody153_619 : StackLang.HolProg 64 :=
.seq AllocBody153_2 AllocBody153_618

def AllocBody153_620 : StackLang.HolProg 64 :=
.seq AllocBody153_1 AllocBody153_619

def AllocBody153_621 : StackLang.HolProg 64 :=
.seq AllocBody153_0 AllocBody153_620

def Alloc153 : Nat × StackLang.HolProg 64 := (153, AllocBody153_621)
theorem Alloc153_eq : StackAlloc.progComp (153, raw153) = Alloc153 := by
  kernel_rfl
#print axioms Alloc153_eq
end InitECandidate.Proofs.BackendStages
