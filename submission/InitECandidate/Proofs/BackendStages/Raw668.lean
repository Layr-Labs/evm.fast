import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function668
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody668_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def rawBody668_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def rawBody668_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def rawBody668_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def rawBody668_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def rawBody668_5 : StackLang.HolProg 64 :=
.seq rawBody668_3 rawBody668_4

def rawBody668_6 : StackLang.HolProg 64 :=
.seq rawBody668_2 rawBody668_5

def rawBody668_7 : StackLang.HolProg 64 :=
.seq rawBody668_1 rawBody668_6

def rawBody668_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2766#64)

def rawBody668_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_11 : StackLang.HolProg 64 :=
.seq rawBody668_9 rawBody668_10

def rawBody668_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 3

def rawBody668_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_22 : StackLang.HolProg 64 :=
.seq rawBody668_20 rawBody668_21

def rawBody668_23 : StackLang.HolProg 64 :=
.seq rawBody668_19 rawBody668_22

def rawBody668_24 : StackLang.HolProg 64 :=
.seq rawBody668_18 rawBody668_23

def rawBody668_25 : StackLang.HolProg 64 :=
.seq rawBody668_17 rawBody668_24

def rawBody668_26 : StackLang.HolProg 64 :=
.seq rawBody668_16 rawBody668_25

def rawBody668_27 : StackLang.HolProg 64 :=
.seq rawBody668_15 rawBody668_26

def rawBody668_28 : StackLang.HolProg 64 :=
.seq rawBody668_14 rawBody668_27

def rawBody668_29 : StackLang.HolProg 64 :=
.seq rawBody668_13 rawBody668_28

def rawBody668_30 : StackLang.HolProg 64 :=
.seq rawBody668_12 rawBody668_29

def rawBody668_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody668_38 : StackLang.HolProg 64 :=
.seq rawBody668_36 rawBody668_37

def rawBody668_39 : StackLang.HolProg 64 :=
.seq rawBody668_35 rawBody668_38

def rawBody668_40 : StackLang.HolProg 64 :=
.seq rawBody668_34 rawBody668_39

def rawBody668_41 : StackLang.HolProg 64 :=
.seq rawBody668_33 rawBody668_40

def rawBody668_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_44 : StackLang.HolProg 64 :=
.seq rawBody668_42 rawBody668_43

def rawBody668_45 : StackLang.HolProg 64 :=
.call (some (rawBody668_41, 0, 668, 2)) (Sum.inl 69) (some (rawBody668_44, 668, 3))

def rawBody668_46 : StackLang.HolProg 64 :=
.seq rawBody668_32 rawBody668_45

def rawBody668_47 : StackLang.HolProg 64 :=
.seq rawBody668_31 rawBody668_46

def rawBody668_48 : StackLang.HolProg 64 :=
.seq rawBody668_30 rawBody668_47

def rawBody668_49 : StackLang.HolProg 64 :=
.seq rawBody668_11 rawBody668_48

def rawBody668_50 : StackLang.HolProg 64 :=
.seq rawBody668_8 rawBody668_49

def rawBody668_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 736#64)

def rawBody668_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def rawBody668_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2767#64)

def rawBody668_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_57 : StackLang.HolProg 64 :=
.seq rawBody668_55 rawBody668_56

def rawBody668_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 5

def rawBody668_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_68 : StackLang.HolProg 64 :=
.seq rawBody668_66 rawBody668_67

def rawBody668_69 : StackLang.HolProg 64 :=
.seq rawBody668_65 rawBody668_68

def rawBody668_70 : StackLang.HolProg 64 :=
.seq rawBody668_64 rawBody668_69

def rawBody668_71 : StackLang.HolProg 64 :=
.seq rawBody668_63 rawBody668_70

def rawBody668_72 : StackLang.HolProg 64 :=
.seq rawBody668_62 rawBody668_71

def rawBody668_73 : StackLang.HolProg 64 :=
.seq rawBody668_61 rawBody668_72

def rawBody668_74 : StackLang.HolProg 64 :=
.seq rawBody668_60 rawBody668_73

def rawBody668_75 : StackLang.HolProg 64 :=
.seq rawBody668_59 rawBody668_74

def rawBody668_76 : StackLang.HolProg 64 :=
.seq rawBody668_58 rawBody668_75

def rawBody668_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody668_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody668_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody668_86 : StackLang.HolProg 64 :=
.seq rawBody668_84 rawBody668_85

def rawBody668_87 : StackLang.HolProg 64 :=
.seq rawBody668_83 rawBody668_86

def rawBody668_88 : StackLang.HolProg 64 :=
.seq rawBody668_82 rawBody668_87

def rawBody668_89 : StackLang.HolProg 64 :=
.seq rawBody668_81 rawBody668_88

def rawBody668_90 : StackLang.HolProg 64 :=
.seq rawBody668_80 rawBody668_89

def rawBody668_91 : StackLang.HolProg 64 :=
.seq rawBody668_79 rawBody668_90

def rawBody668_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody668_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody668_94 : StackLang.HolProg 64 :=
.seq rawBody668_92 rawBody668_93

def rawBody668_95 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_96 : StackLang.HolProg 64 :=
.seq rawBody668_94 rawBody668_95

def rawBody668_97 : StackLang.HolProg 64 :=
.call (some (rawBody668_91, 0, 668, 4)) (Sum.inl 68) (some (rawBody668_96, 668, 5))

def rawBody668_98 : StackLang.HolProg 64 :=
.seq rawBody668_78 rawBody668_97

def rawBody668_99 : StackLang.HolProg 64 :=
.seq rawBody668_77 rawBody668_98

def rawBody668_100 : StackLang.HolProg 64 :=
.seq rawBody668_76 rawBody668_99

def rawBody668_101 : StackLang.HolProg 64 :=
.seq rawBody668_57 rawBody668_100

def rawBody668_102 : StackLang.HolProg 64 :=
.seq rawBody668_54 rawBody668_101

def rawBody668_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody668_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def rawBody668_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23#64)

def rawBody668_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody668_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody668_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody668_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody668_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody668_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 11#64)

def rawBody668_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551605#64)))

def rawBody668_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_121 : StackLang.HolProg 64 :=
.seq rawBody668_119 rawBody668_120

def rawBody668_122 : StackLang.HolProg 64 :=
.seq rawBody668_118 rawBody668_121

def rawBody668_123 : StackLang.HolProg 64 :=
.seq rawBody668_117 rawBody668_122

def rawBody668_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_126 : StackLang.HolProg 64 :=
.seq rawBody668_124 rawBody668_125

def rawBody668_127 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody668_123 rawBody668_126

def rawBody668_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 11#64)

def rawBody668_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody668_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11#64)

def rawBody668_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_135 : StackLang.HolProg 64 :=
.seq rawBody668_133 rawBody668_134

def rawBody668_136 : StackLang.HolProg 64 :=
.seq rawBody668_132 rawBody668_135

def rawBody668_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_139 : StackLang.HolProg 64 :=
.seq rawBody668_137 rawBody668_138

def rawBody668_140 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody668_136 rawBody668_139

def rawBody668_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def rawBody668_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody668_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody668_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody668_147 : StackLang.HolProg 64 :=
.seq rawBody668_145 rawBody668_146

def rawBody668_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 9

def rawBody668_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def rawBody668_150 : StackLang.HolProg 64 :=
.seq rawBody668_148 rawBody668_149

def rawBody668_151 : StackLang.HolProg 64 :=
.seq rawBody668_147 rawBody668_150

def rawBody668_152 : StackLang.HolProg 64 :=
.seq rawBody668_144 rawBody668_151

def rawBody668_153 : StackLang.HolProg 64 :=
.seq rawBody668_143 rawBody668_152

def rawBody668_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody668_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody668_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody668_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody668_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def rawBody668_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody668_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 16#64))

def rawBody668_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def rawBody668_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody668_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody668_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody668_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody668_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 2

def rawBody668_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody668_176 : StackLang.HolProg 64 :=
.seq rawBody668_174 rawBody668_175

def rawBody668_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody668_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody668_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody668_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody668_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody668_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody668_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody668_185 : StackLang.HolProg 64 :=
.seq rawBody668_183 rawBody668_184

def rawBody668_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody668_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody668_188 : StackLang.HolProg 64 :=
.seq rawBody668_186 rawBody668_187

def rawBody668_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def rawBody668_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody668_191 : StackLang.HolProg 64 :=
.seq rawBody668_189 rawBody668_190

def rawBody668_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody668_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody668_194 : StackLang.HolProg 64 :=
.seq rawBody668_192 rawBody668_193

def rawBody668_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody668_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody668_197 : StackLang.HolProg 64 :=
.seq rawBody668_195 rawBody668_196

def rawBody668_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 10

def rawBody668_199 : StackLang.HolProg 64 :=
.seq rawBody668_197 rawBody668_198

def rawBody668_200 : StackLang.HolProg 64 :=
.seq rawBody668_194 rawBody668_199

def rawBody668_201 : StackLang.HolProg 64 :=
.seq rawBody668_191 rawBody668_200

def rawBody668_202 : StackLang.HolProg 64 :=
.seq rawBody668_188 rawBody668_201

def rawBody668_203 : StackLang.HolProg 64 :=
.seq rawBody668_185 rawBody668_202

def rawBody668_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2768#64)

def rawBody668_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_207 : StackLang.HolProg 64 :=
.seq rawBody668_205 rawBody668_206

def rawBody668_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 7

def rawBody668_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_218 : StackLang.HolProg 64 :=
.seq rawBody668_216 rawBody668_217

def rawBody668_219 : StackLang.HolProg 64 :=
.seq rawBody668_215 rawBody668_218

def rawBody668_220 : StackLang.HolProg 64 :=
.seq rawBody668_214 rawBody668_219

def rawBody668_221 : StackLang.HolProg 64 :=
.seq rawBody668_213 rawBody668_220

def rawBody668_222 : StackLang.HolProg 64 :=
.seq rawBody668_212 rawBody668_221

def rawBody668_223 : StackLang.HolProg 64 :=
.seq rawBody668_211 rawBody668_222

def rawBody668_224 : StackLang.HolProg 64 :=
.seq rawBody668_210 rawBody668_223

def rawBody668_225 : StackLang.HolProg 64 :=
.seq rawBody668_209 rawBody668_224

def rawBody668_226 : StackLang.HolProg 64 :=
.seq rawBody668_208 rawBody668_225

def rawBody668_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody668_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody668_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody668_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody668_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody668_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody668_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody668_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody668_241 : StackLang.HolProg 64 :=
.seq rawBody668_239 rawBody668_240

def rawBody668_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody668_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody668_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody668_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody668_246 : StackLang.HolProg 64 :=
.seq rawBody668_244 rawBody668_245

def rawBody668_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody668_249 : StackLang.HolProg 64 :=
.seq rawBody668_247 rawBody668_248

def rawBody668_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody668_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody668_252 : StackLang.HolProg 64 :=
.seq rawBody668_250 rawBody668_251

def rawBody668_253 : StackLang.HolProg 64 :=
.seq rawBody668_249 rawBody668_252

def rawBody668_254 : StackLang.HolProg 64 :=
.seq rawBody668_246 rawBody668_253

def rawBody668_255 : StackLang.HolProg 64 :=
.seq rawBody668_243 rawBody668_254

def rawBody668_256 : StackLang.HolProg 64 :=
.seq rawBody668_242 rawBody668_255

def rawBody668_257 : StackLang.HolProg 64 :=
.seq rawBody668_241 rawBody668_256

def rawBody668_258 : StackLang.HolProg 64 :=
.seq rawBody668_238 rawBody668_257

def rawBody668_259 : StackLang.HolProg 64 :=
.seq rawBody668_237 rawBody668_258

def rawBody668_260 : StackLang.HolProg 64 :=
.seq rawBody668_236 rawBody668_259

def rawBody668_261 : StackLang.HolProg 64 :=
.seq rawBody668_235 rawBody668_260

def rawBody668_262 : StackLang.HolProg 64 :=
.seq rawBody668_234 rawBody668_261

def rawBody668_263 : StackLang.HolProg 64 :=
.seq rawBody668_233 rawBody668_262

def rawBody668_264 : StackLang.HolProg 64 :=
.seq rawBody668_232 rawBody668_263

def rawBody668_265 : StackLang.HolProg 64 :=
.seq rawBody668_231 rawBody668_264

def rawBody668_266 : StackLang.HolProg 64 :=
.seq rawBody668_230 rawBody668_265

def rawBody668_267 : StackLang.HolProg 64 :=
.seq rawBody668_229 rawBody668_266

def rawBody668_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody668_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody668_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody668_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody668_272 : StackLang.HolProg 64 :=
.seq rawBody668_270 rawBody668_271

def rawBody668_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody668_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody668_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody668_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody668_277 : StackLang.HolProg 64 :=
.seq rawBody668_275 rawBody668_276

def rawBody668_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody668_280 : StackLang.HolProg 64 :=
.seq rawBody668_278 rawBody668_279

def rawBody668_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody668_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody668_283 : StackLang.HolProg 64 :=
.seq rawBody668_281 rawBody668_282

def rawBody668_284 : StackLang.HolProg 64 :=
.seq rawBody668_280 rawBody668_283

def rawBody668_285 : StackLang.HolProg 64 :=
.seq rawBody668_277 rawBody668_284

def rawBody668_286 : StackLang.HolProg 64 :=
.seq rawBody668_274 rawBody668_285

def rawBody668_287 : StackLang.HolProg 64 :=
.seq rawBody668_273 rawBody668_286

def rawBody668_288 : StackLang.HolProg 64 :=
.seq rawBody668_272 rawBody668_287

def rawBody668_289 : StackLang.HolProg 64 :=
.seq rawBody668_269 rawBody668_288

def rawBody668_290 : StackLang.HolProg 64 :=
.seq rawBody668_268 rawBody668_289

def rawBody668_291 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_292 : StackLang.HolProg 64 :=
.seq rawBody668_290 rawBody668_291

def rawBody668_293 : StackLang.HolProg 64 :=
.call (some (rawBody668_267, 0, 668, 6)) (Sum.inl 661) (some (rawBody668_292, 668, 7))

def rawBody668_294 : StackLang.HolProg 64 :=
.seq rawBody668_228 rawBody668_293

def rawBody668_295 : StackLang.HolProg 64 :=
.seq rawBody668_227 rawBody668_294

def rawBody668_296 : StackLang.HolProg 64 :=
.seq rawBody668_226 rawBody668_295

def rawBody668_297 : StackLang.HolProg 64 :=
.seq rawBody668_207 rawBody668_296

def rawBody668_298 : StackLang.HolProg 64 :=
.seq rawBody668_204 rawBody668_297

def rawBody668_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody668_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2769#64)

def rawBody668_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_304 : StackLang.HolProg 64 :=
.seq rawBody668_302 rawBody668_303

def rawBody668_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 9

def rawBody668_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_315 : StackLang.HolProg 64 :=
.seq rawBody668_313 rawBody668_314

def rawBody668_316 : StackLang.HolProg 64 :=
.seq rawBody668_312 rawBody668_315

def rawBody668_317 : StackLang.HolProg 64 :=
.seq rawBody668_311 rawBody668_316

def rawBody668_318 : StackLang.HolProg 64 :=
.seq rawBody668_310 rawBody668_317

def rawBody668_319 : StackLang.HolProg 64 :=
.seq rawBody668_309 rawBody668_318

def rawBody668_320 : StackLang.HolProg 64 :=
.seq rawBody668_308 rawBody668_319

def rawBody668_321 : StackLang.HolProg 64 :=
.seq rawBody668_307 rawBody668_320

def rawBody668_322 : StackLang.HolProg 64 :=
.seq rawBody668_306 rawBody668_321

def rawBody668_323 : StackLang.HolProg 64 :=
.seq rawBody668_305 rawBody668_322

def rawBody668_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody668_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody668_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def rawBody668_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def rawBody668_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody668_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody668_336 : StackLang.HolProg 64 :=
.seq rawBody668_334 rawBody668_335

def rawBody668_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody668_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody668_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody668_340 : StackLang.HolProg 64 :=
.seq rawBody668_338 rawBody668_339

def rawBody668_341 : StackLang.HolProg 64 :=
.seq rawBody668_337 rawBody668_340

def rawBody668_342 : StackLang.HolProg 64 :=
.seq rawBody668_336 rawBody668_341

def rawBody668_343 : StackLang.HolProg 64 :=
.seq rawBody668_333 rawBody668_342

def rawBody668_344 : StackLang.HolProg 64 :=
.seq rawBody668_332 rawBody668_343

def rawBody668_345 : StackLang.HolProg 64 :=
.seq rawBody668_331 rawBody668_344

def rawBody668_346 : StackLang.HolProg 64 :=
.seq rawBody668_330 rawBody668_345

def rawBody668_347 : StackLang.HolProg 64 :=
.seq rawBody668_329 rawBody668_346

def rawBody668_348 : StackLang.HolProg 64 :=
.seq rawBody668_328 rawBody668_347

def rawBody668_349 : StackLang.HolProg 64 :=
.seq rawBody668_327 rawBody668_348

def rawBody668_350 : StackLang.HolProg 64 :=
.seq rawBody668_326 rawBody668_349

def rawBody668_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody668_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 10

def rawBody668_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def rawBody668_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody668_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody668_356 : StackLang.HolProg 64 :=
.seq rawBody668_354 rawBody668_355

def rawBody668_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def rawBody668_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody668_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody668_360 : StackLang.HolProg 64 :=
.seq rawBody668_358 rawBody668_359

def rawBody668_361 : StackLang.HolProg 64 :=
.seq rawBody668_357 rawBody668_360

def rawBody668_362 : StackLang.HolProg 64 :=
.seq rawBody668_356 rawBody668_361

def rawBody668_363 : StackLang.HolProg 64 :=
.seq rawBody668_353 rawBody668_362

def rawBody668_364 : StackLang.HolProg 64 :=
.seq rawBody668_352 rawBody668_363

def rawBody668_365 : StackLang.HolProg 64 :=
.seq rawBody668_351 rawBody668_364

def rawBody668_366 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_367 : StackLang.HolProg 64 :=
.seq rawBody668_365 rawBody668_366

def rawBody668_368 : StackLang.HolProg 64 :=
.call (some (rawBody668_350, 0, 668, 8)) (Sum.inl 658) (some (rawBody668_367, 668, 9))

def rawBody668_369 : StackLang.HolProg 64 :=
.seq rawBody668_325 rawBody668_368

def rawBody668_370 : StackLang.HolProg 64 :=
.seq rawBody668_324 rawBody668_369

def rawBody668_371 : StackLang.HolProg 64 :=
.seq rawBody668_323 rawBody668_370

def rawBody668_372 : StackLang.HolProg 64 :=
.seq rawBody668_304 rawBody668_371

def rawBody668_373 : StackLang.HolProg 64 :=
.seq rawBody668_301 rawBody668_372

def rawBody668_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody668_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody668_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody668_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 6

def rawBody668_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 9

def rawBody668_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 11

def rawBody668_382 : StackLang.HolProg 64 :=
.seq rawBody668_380 rawBody668_381

def rawBody668_383 : StackLang.HolProg 64 :=
.seq rawBody668_379 rawBody668_382

def rawBody668_384 : StackLang.HolProg 64 :=
.seq rawBody668_378 rawBody668_383

def rawBody668_385 : StackLang.HolProg 64 :=
.seq rawBody668_377 rawBody668_384

def rawBody668_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody668_387 : StackLang.HolProg 64 :=
.seq rawBody668_385 rawBody668_386

def rawBody668_388 : StackLang.HolProg 64 :=
.seq rawBody668_376 rawBody668_387

def rawBody668_389 : StackLang.HolProg 64 :=
.seq rawBody668_375 rawBody668_388

def rawBody668_390 : StackLang.HolProg 64 :=
.seq rawBody668_374 rawBody668_389

def rawBody668_391 : StackLang.HolProg 64 :=
.seq rawBody668_373 rawBody668_390

def rawBody668_392 : StackLang.HolProg 64 :=
.seq rawBody668_300 rawBody668_391

def rawBody668_393 : StackLang.HolProg 64 :=
.seq rawBody668_299 rawBody668_392

def rawBody668_394 : StackLang.HolProg 64 :=
.seq rawBody668_298 rawBody668_393

def rawBody668_395 : StackLang.HolProg 64 :=
.seq rawBody668_203 rawBody668_394

def rawBody668_396 : StackLang.HolProg 64 :=
.seq rawBody668_182 rawBody668_395

def rawBody668_397 : StackLang.HolProg 64 :=
.seq rawBody668_181 rawBody668_396

def rawBody668_398 : StackLang.HolProg 64 :=
.seq rawBody668_180 rawBody668_397

def rawBody668_399 : StackLang.HolProg 64 :=
.seq rawBody668_179 rawBody668_398

def rawBody668_400 : StackLang.HolProg 64 :=
.seq rawBody668_178 rawBody668_399

def rawBody668_401 : StackLang.HolProg 64 :=
.seq rawBody668_177 rawBody668_400

def rawBody668_402 : StackLang.HolProg 64 :=
.seq rawBody668_176 rawBody668_401

def rawBody668_403 : StackLang.HolProg 64 :=
.seq rawBody668_173 rawBody668_402

def rawBody668_404 : StackLang.HolProg 64 :=
.seq rawBody668_172 rawBody668_403

def rawBody668_405 : StackLang.HolProg 64 :=
.seq rawBody668_171 rawBody668_404

def rawBody668_406 : StackLang.HolProg 64 :=
.seq rawBody668_170 rawBody668_405

def rawBody668_407 : StackLang.HolProg 64 :=
.seq rawBody668_169 rawBody668_406

def rawBody668_408 : StackLang.HolProg 64 :=
.seq rawBody668_168 rawBody668_407

def rawBody668_409 : StackLang.HolProg 64 :=
.seq rawBody668_167 rawBody668_408

def rawBody668_410 : StackLang.HolProg 64 :=
.seq rawBody668_166 rawBody668_409

def rawBody668_411 : StackLang.HolProg 64 :=
.seq rawBody668_165 rawBody668_410

def rawBody668_412 : StackLang.HolProg 64 :=
.seq rawBody668_164 rawBody668_411

def rawBody668_413 : StackLang.HolProg 64 :=
.seq rawBody668_163 rawBody668_412

def rawBody668_414 : StackLang.HolProg 64 :=
.seq rawBody668_162 rawBody668_413

def rawBody668_415 : StackLang.HolProg 64 :=
.seq rawBody668_161 rawBody668_414

def rawBody668_416 : StackLang.HolProg 64 :=
.seq rawBody668_160 rawBody668_415

def rawBody668_417 : StackLang.HolProg 64 :=
.seq rawBody668_159 rawBody668_416

def rawBody668_418 : StackLang.HolProg 64 :=
.seq rawBody668_158 rawBody668_417

def rawBody668_419 : StackLang.HolProg 64 :=
.seq rawBody668_157 rawBody668_418

def rawBody668_420 : StackLang.HolProg 64 :=
.seq rawBody668_156 rawBody668_419

def rawBody668_421 : StackLang.HolProg 64 :=
.seq rawBody668_155 rawBody668_420

def rawBody668_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody668_424 : StackLang.HolProg 64 :=
.seq rawBody668_422 rawBody668_423

def rawBody668_425 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 9 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody668_421 rawBody668_424

def rawBody668_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 13

def rawBody668_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 12

def rawBody668_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody668_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody668_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody668_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 10

def rawBody668_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 9

def rawBody668_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 11

def rawBody668_435 : StackLang.HolProg 64 :=
.seq rawBody668_433 rawBody668_434

def rawBody668_436 : StackLang.HolProg 64 :=
.seq rawBody668_432 rawBody668_435

def rawBody668_437 : StackLang.HolProg 64 :=
.seq rawBody668_431 rawBody668_436

def rawBody668_438 : StackLang.HolProg 64 :=
.seq rawBody668_430 rawBody668_437

def rawBody668_439 : StackLang.HolProg 64 :=
.seq rawBody668_429 rawBody668_438

def rawBody668_440 : StackLang.HolProg 64 :=
.seq rawBody668_428 rawBody668_439

def rawBody668_441 : StackLang.HolProg 64 :=
.seq rawBody668_427 rawBody668_440

def rawBody668_442 : StackLang.HolProg 64 :=
.seq rawBody668_426 rawBody668_441

def rawBody668_443 : StackLang.HolProg 64 :=
.seq rawBody668_425 rawBody668_442

def rawBody668_444 : StackLang.HolProg 64 :=
.seq rawBody668_154 rawBody668_443

def rawBody668_445 : StackLang.HolProg 64 :=
.loop rawBody668_444

def rawBody668_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody668_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody668_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody668_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 11

def rawBody668_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 9

def rawBody668_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def rawBody668_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody668_455 : StackLang.HolProg 64 :=
.seq rawBody668_453 rawBody668_454

def rawBody668_456 : StackLang.HolProg 64 :=
.seq rawBody668_452 rawBody668_455

def rawBody668_457 : StackLang.HolProg 64 :=
.seq rawBody668_451 rawBody668_456

def rawBody668_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody668_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody668_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody668_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody668_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody668_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 11

def rawBody668_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody668_469 : StackLang.HolProg 64 :=
.seq rawBody668_467 rawBody668_468

def rawBody668_470 : StackLang.HolProg 64 :=
.seq rawBody668_466 rawBody668_469

def rawBody668_471 : StackLang.HolProg 64 :=
.seq rawBody668_465 rawBody668_470

def rawBody668_472 : StackLang.HolProg 64 :=
.seq rawBody668_464 rawBody668_471

def rawBody668_473 : StackLang.HolProg 64 :=
.seq rawBody668_463 rawBody668_472

def rawBody668_474 : StackLang.HolProg 64 :=
.seq rawBody668_462 rawBody668_473

def rawBody668_475 : StackLang.HolProg 64 :=
.seq rawBody668_461 rawBody668_474

def rawBody668_476 : StackLang.HolProg 64 :=
.seq rawBody668_460 rawBody668_475

def rawBody668_477 : StackLang.HolProg 64 :=
.seq rawBody668_459 rawBody668_476

def rawBody668_478 : StackLang.HolProg 64 :=
.seq rawBody668_458 rawBody668_477

def rawBody668_479 : StackLang.HolProg 64 :=
.seq rawBody668_457 rawBody668_478

def rawBody668_480 : StackLang.HolProg 64 :=
.seq rawBody668_450 rawBody668_479

def rawBody668_481 : StackLang.HolProg 64 :=
.seq rawBody668_449 rawBody668_480

def rawBody668_482 : StackLang.HolProg 64 :=
.seq rawBody668_448 rawBody668_481

def rawBody668_483 : StackLang.HolProg 64 :=
.seq rawBody668_447 rawBody668_482

def rawBody668_484 : StackLang.HolProg 64 :=
.seq rawBody668_446 rawBody668_483

def rawBody668_485 : StackLang.HolProg 64 :=
.seq rawBody668_445 rawBody668_484

def rawBody668_486 : StackLang.HolProg 64 :=
.seq rawBody668_153 rawBody668_485

def rawBody668_487 : StackLang.HolProg 64 :=
.seq rawBody668_142 rawBody668_486

def rawBody668_488 : StackLang.HolProg 64 :=
.seq rawBody668_141 rawBody668_487

def rawBody668_489 : StackLang.HolProg 64 :=
.seq rawBody668_140 rawBody668_488

def rawBody668_490 : StackLang.HolProg 64 :=
.seq rawBody668_131 rawBody668_489

def rawBody668_491 : StackLang.HolProg 64 :=
.seq rawBody668_130 rawBody668_490

def rawBody668_492 : StackLang.HolProg 64 :=
.seq rawBody668_129 rawBody668_491

def rawBody668_493 : StackLang.HolProg 64 :=
.seq rawBody668_128 rawBody668_492

def rawBody668_494 : StackLang.HolProg 64 :=
.seq rawBody668_127 rawBody668_493

def rawBody668_495 : StackLang.HolProg 64 :=
.seq rawBody668_116 rawBody668_494

def rawBody668_496 : StackLang.HolProg 64 :=
.seq rawBody668_115 rawBody668_495

def rawBody668_497 : StackLang.HolProg 64 :=
.seq rawBody668_114 rawBody668_496

def rawBody668_498 : StackLang.HolProg 64 :=
.seq rawBody668_113 rawBody668_497

def rawBody668_499 : StackLang.HolProg 64 :=
.seq rawBody668_112 rawBody668_498

def rawBody668_500 : StackLang.HolProg 64 :=
.seq rawBody668_111 rawBody668_499

def rawBody668_501 : StackLang.HolProg 64 :=
.seq rawBody668_110 rawBody668_500

def rawBody668_502 : StackLang.HolProg 64 :=
.seq rawBody668_109 rawBody668_501

def rawBody668_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody668_505 : StackLang.HolProg 64 :=
.seq rawBody668_503 rawBody668_504

def rawBody668_506 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody668_502 rawBody668_505

def rawBody668_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 13

def rawBody668_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 12

def rawBody668_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def rawBody668_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 10

def rawBody668_512 : StackLang.HolProg 64 :=
.seq rawBody668_510 rawBody668_511

def rawBody668_513 : StackLang.HolProg 64 :=
.seq rawBody668_509 rawBody668_512

def rawBody668_514 : StackLang.HolProg 64 :=
.seq rawBody668_508 rawBody668_513

def rawBody668_515 : StackLang.HolProg 64 :=
.seq rawBody668_507 rawBody668_514

def rawBody668_516 : StackLang.HolProg 64 :=
.seq rawBody668_506 rawBody668_515

def rawBody668_517 : StackLang.HolProg 64 :=
.seq rawBody668_108 rawBody668_516

def rawBody668_518 : StackLang.HolProg 64 :=
.seq rawBody668_107 rawBody668_517

def rawBody668_519 : StackLang.HolProg 64 :=
.loop rawBody668_518

def rawBody668_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 11

def rawBody668_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2770#64)

def rawBody668_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_525 : StackLang.HolProg 64 :=
.seq rawBody668_523 rawBody668_524

def rawBody668_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 11

def rawBody668_530 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_532 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_536 : StackLang.HolProg 64 :=
.seq rawBody668_534 rawBody668_535

def rawBody668_537 : StackLang.HolProg 64 :=
.seq rawBody668_533 rawBody668_536

def rawBody668_538 : StackLang.HolProg 64 :=
.seq rawBody668_532 rawBody668_537

def rawBody668_539 : StackLang.HolProg 64 :=
.seq rawBody668_531 rawBody668_538

def rawBody668_540 : StackLang.HolProg 64 :=
.seq rawBody668_530 rawBody668_539

def rawBody668_541 : StackLang.HolProg 64 :=
.seq rawBody668_529 rawBody668_540

def rawBody668_542 : StackLang.HolProg 64 :=
.seq rawBody668_528 rawBody668_541

def rawBody668_543 : StackLang.HolProg 64 :=
.seq rawBody668_527 rawBody668_542

def rawBody668_544 : StackLang.HolProg 64 :=
.seq rawBody668_526 rawBody668_543

def rawBody668_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody668_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody668_553 : StackLang.HolProg 64 :=
.seq rawBody668_551 rawBody668_552

def rawBody668_554 : StackLang.HolProg 64 :=
.seq rawBody668_550 rawBody668_553

def rawBody668_555 : StackLang.HolProg 64 :=
.seq rawBody668_549 rawBody668_554

def rawBody668_556 : StackLang.HolProg 64 :=
.seq rawBody668_548 rawBody668_555

def rawBody668_557 : StackLang.HolProg 64 :=
.seq rawBody668_547 rawBody668_556

def rawBody668_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def rawBody668_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody668_560 : StackLang.HolProg 64 :=
.seq rawBody668_558 rawBody668_559

def rawBody668_561 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_562 : StackLang.HolProg 64 :=
.seq rawBody668_560 rawBody668_561

def rawBody668_563 : StackLang.HolProg 64 :=
.call (some (rawBody668_557, 0, 668, 10)) (Sum.inl 667) (some (rawBody668_562, 668, 11))

def rawBody668_564 : StackLang.HolProg 64 :=
.seq rawBody668_546 rawBody668_563

def rawBody668_565 : StackLang.HolProg 64 :=
.seq rawBody668_545 rawBody668_564

def rawBody668_566 : StackLang.HolProg 64 :=
.seq rawBody668_544 rawBody668_565

def rawBody668_567 : StackLang.HolProg 64 :=
.seq rawBody668_525 rawBody668_566

def rawBody668_568 : StackLang.HolProg 64 :=
.seq rawBody668_522 rawBody668_567

def rawBody668_569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody668_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 384#64)

def rawBody668_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2771#64)

def rawBody668_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_576 : StackLang.HolProg 64 :=
.seq rawBody668_574 rawBody668_575

def rawBody668_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 13

def rawBody668_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_587 : StackLang.HolProg 64 :=
.seq rawBody668_585 rawBody668_586

def rawBody668_588 : StackLang.HolProg 64 :=
.seq rawBody668_584 rawBody668_587

def rawBody668_589 : StackLang.HolProg 64 :=
.seq rawBody668_583 rawBody668_588

def rawBody668_590 : StackLang.HolProg 64 :=
.seq rawBody668_582 rawBody668_589

def rawBody668_591 : StackLang.HolProg 64 :=
.seq rawBody668_581 rawBody668_590

def rawBody668_592 : StackLang.HolProg 64 :=
.seq rawBody668_580 rawBody668_591

def rawBody668_593 : StackLang.HolProg 64 :=
.seq rawBody668_579 rawBody668_592

def rawBody668_594 : StackLang.HolProg 64 :=
.seq rawBody668_578 rawBody668_593

def rawBody668_595 : StackLang.HolProg 64 :=
.seq rawBody668_577 rawBody668_594

def rawBody668_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_602 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 12

def rawBody668_603 : StackLang.HolProg 64 :=
.seq rawBody668_601 rawBody668_602

def rawBody668_604 : StackLang.HolProg 64 :=
.seq rawBody668_600 rawBody668_603

def rawBody668_605 : StackLang.HolProg 64 :=
.seq rawBody668_599 rawBody668_604

def rawBody668_606 : StackLang.HolProg 64 :=
.seq rawBody668_598 rawBody668_605

def rawBody668_607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 12

def rawBody668_608 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_609 : StackLang.HolProg 64 :=
.seq rawBody668_607 rawBody668_608

def rawBody668_610 : StackLang.HolProg 64 :=
.call (some (rawBody668_606, 0, 668, 12)) (Sum.inl 77) (some (rawBody668_609, 668, 13))

def rawBody668_611 : StackLang.HolProg 64 :=
.seq rawBody668_597 rawBody668_610

def rawBody668_612 : StackLang.HolProg 64 :=
.seq rawBody668_596 rawBody668_611

def rawBody668_613 : StackLang.HolProg 64 :=
.seq rawBody668_595 rawBody668_612

def rawBody668_614 : StackLang.HolProg 64 :=
.seq rawBody668_576 rawBody668_613

def rawBody668_615 : StackLang.HolProg 64 :=
.seq rawBody668_573 rawBody668_614

def rawBody668_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody668_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2772#64)

def rawBody668_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_621 : StackLang.HolProg 64 :=
.seq rawBody668_619 rawBody668_620

def rawBody668_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody668_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody668_624 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody668_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 668 15

def rawBody668_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody668_627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody668_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody668_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody668_631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_632 : StackLang.HolProg 64 :=
.seq rawBody668_630 rawBody668_631

def rawBody668_633 : StackLang.HolProg 64 :=
.seq rawBody668_629 rawBody668_632

def rawBody668_634 : StackLang.HolProg 64 :=
.seq rawBody668_628 rawBody668_633

def rawBody668_635 : StackLang.HolProg 64 :=
.seq rawBody668_627 rawBody668_634

def rawBody668_636 : StackLang.HolProg 64 :=
.seq rawBody668_626 rawBody668_635

def rawBody668_637 : StackLang.HolProg 64 :=
.seq rawBody668_625 rawBody668_636

def rawBody668_638 : StackLang.HolProg 64 :=
.seq rawBody668_624 rawBody668_637

def rawBody668_639 : StackLang.HolProg 64 :=
.seq rawBody668_623 rawBody668_638

def rawBody668_640 : StackLang.HolProg 64 :=
.seq rawBody668_622 rawBody668_639

def rawBody668_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody668_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody668_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody668_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody668_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody668_648 : StackLang.HolProg 64 :=
.seq rawBody668_646 rawBody668_647

def rawBody668_649 : StackLang.HolProg 64 :=
.seq rawBody668_645 rawBody668_648

def rawBody668_650 : StackLang.HolProg 64 :=
.seq rawBody668_644 rawBody668_649

def rawBody668_651 : StackLang.HolProg 64 :=
.seq rawBody668_643 rawBody668_650

def rawBody668_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def rawBody668_653 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody668_654 : StackLang.HolProg 64 :=
.seq rawBody668_652 rawBody668_653

def rawBody668_655 : StackLang.HolProg 64 :=
.call (some (rawBody668_651, 0, 668, 14)) (Sum.inl 70) (some (rawBody668_654, 668, 15))

def rawBody668_656 : StackLang.HolProg 64 :=
.seq rawBody668_642 rawBody668_655

def rawBody668_657 : StackLang.HolProg 64 :=
.seq rawBody668_641 rawBody668_656

def rawBody668_658 : StackLang.HolProg 64 :=
.seq rawBody668_640 rawBody668_657

def rawBody668_659 : StackLang.HolProg 64 :=
.seq rawBody668_621 rawBody668_658

def rawBody668_660 : StackLang.HolProg 64 :=
.seq rawBody668_618 rawBody668_659

def rawBody668_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody668_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody668_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody668_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def rawBody668_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody668_666 : StackLang.HolProg 64 :=
.seq rawBody668_664 rawBody668_665

def rawBody668_667 : StackLang.HolProg 64 :=
.seq rawBody668_663 rawBody668_666

def rawBody668_668 : StackLang.HolProg 64 :=
.seq rawBody668_662 rawBody668_667

def rawBody668_669 : StackLang.HolProg 64 :=
.seq rawBody668_661 rawBody668_668

def rawBody668_670 : StackLang.HolProg 64 :=
.seq rawBody668_660 rawBody668_669

def rawBody668_671 : StackLang.HolProg 64 :=
.seq rawBody668_617 rawBody668_670

def rawBody668_672 : StackLang.HolProg 64 :=
.seq rawBody668_616 rawBody668_671

def rawBody668_673 : StackLang.HolProg 64 :=
.seq rawBody668_615 rawBody668_672

def rawBody668_674 : StackLang.HolProg 64 :=
.seq rawBody668_572 rawBody668_673

def rawBody668_675 : StackLang.HolProg 64 :=
.seq rawBody668_571 rawBody668_674

def rawBody668_676 : StackLang.HolProg 64 :=
.seq rawBody668_570 rawBody668_675

def rawBody668_677 : StackLang.HolProg 64 :=
.seq rawBody668_569 rawBody668_676

def rawBody668_678 : StackLang.HolProg 64 :=
.seq rawBody668_568 rawBody668_677

def rawBody668_679 : StackLang.HolProg 64 :=
.seq rawBody668_521 rawBody668_678

def rawBody668_680 : StackLang.HolProg 64 :=
.seq rawBody668_520 rawBody668_679

def rawBody668_681 : StackLang.HolProg 64 :=
.seq rawBody668_519 rawBody668_680

def rawBody668_682 : StackLang.HolProg 64 :=
.seq rawBody668_106 rawBody668_681

def rawBody668_683 : StackLang.HolProg 64 :=
.seq rawBody668_105 rawBody668_682

def rawBody668_684 : StackLang.HolProg 64 :=
.seq rawBody668_104 rawBody668_683

def rawBody668_685 : StackLang.HolProg 64 :=
.seq rawBody668_103 rawBody668_684

def rawBody668_686 : StackLang.HolProg 64 :=
.seq rawBody668_102 rawBody668_685

def rawBody668_687 : StackLang.HolProg 64 :=
.seq rawBody668_53 rawBody668_686

def rawBody668_688 : StackLang.HolProg 64 :=
.seq rawBody668_52 rawBody668_687

def rawBody668_689 : StackLang.HolProg 64 :=
.seq rawBody668_51 rawBody668_688

def rawBody668_690 : StackLang.HolProg 64 :=
.seq rawBody668_50 rawBody668_689

def rawBody668_691 : StackLang.HolProg 64 :=
.seq rawBody668_7 rawBody668_690

def rawBody668_692 : StackLang.HolProg 64 :=
.seq rawBody668_0 rawBody668_691

def raw668 : StackLang.HolProg 64 := rawBody668_692
theorem raw668_eq : StackRawCall.compTop RawInfo.rawInfo (function668 (.list [])).1 = raw668 := by
  kernel_rfl
#print axioms raw668_eq
end InitECandidate.Proofs.BackendStages
