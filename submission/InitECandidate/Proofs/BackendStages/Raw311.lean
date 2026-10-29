import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function311
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody311_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody311_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody311_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody311_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody311_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody311_5 : StackLang.HolProg 64 :=
.seq rawBody311_3 rawBody311_4

def rawBody311_6 : StackLang.HolProg 64 :=
.seq rawBody311_2 rawBody311_5

def rawBody311_7 : StackLang.HolProg 64 :=
.seq rawBody311_1 rawBody311_6

def rawBody311_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 856#64)

def rawBody311_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_11 : StackLang.HolProg 64 :=
.seq rawBody311_9 rawBody311_10

def rawBody311_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody311_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody311_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 3

def rawBody311_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody311_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody311_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody311_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody311_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_22 : StackLang.HolProg 64 :=
.seq rawBody311_20 rawBody311_21

def rawBody311_23 : StackLang.HolProg 64 :=
.seq rawBody311_19 rawBody311_22

def rawBody311_24 : StackLang.HolProg 64 :=
.seq rawBody311_18 rawBody311_23

def rawBody311_25 : StackLang.HolProg 64 :=
.seq rawBody311_17 rawBody311_24

def rawBody311_26 : StackLang.HolProg 64 :=
.seq rawBody311_16 rawBody311_25

def rawBody311_27 : StackLang.HolProg 64 :=
.seq rawBody311_15 rawBody311_26

def rawBody311_28 : StackLang.HolProg 64 :=
.seq rawBody311_14 rawBody311_27

def rawBody311_29 : StackLang.HolProg 64 :=
.seq rawBody311_13 rawBody311_28

def rawBody311_30 : StackLang.HolProg 64 :=
.seq rawBody311_12 rawBody311_29

def rawBody311_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody311_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody311_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody311_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody311_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody311_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody311_41 : StackLang.HolProg 64 :=
.seq rawBody311_39 rawBody311_40

def rawBody311_42 : StackLang.HolProg 64 :=
.seq rawBody311_38 rawBody311_41

def rawBody311_43 : StackLang.HolProg 64 :=
.seq rawBody311_37 rawBody311_42

def rawBody311_44 : StackLang.HolProg 64 :=
.seq rawBody311_36 rawBody311_43

def rawBody311_45 : StackLang.HolProg 64 :=
.seq rawBody311_35 rawBody311_44

def rawBody311_46 : StackLang.HolProg 64 :=
.seq rawBody311_34 rawBody311_45

def rawBody311_47 : StackLang.HolProg 64 :=
.seq rawBody311_33 rawBody311_46

def rawBody311_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody311_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody311_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody311_51 : StackLang.HolProg 64 :=
.seq rawBody311_49 rawBody311_50

def rawBody311_52 : StackLang.HolProg 64 :=
.seq rawBody311_48 rawBody311_51

def rawBody311_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody311_54 : StackLang.HolProg 64 :=
.seq rawBody311_52 rawBody311_53

def rawBody311_55 : StackLang.HolProg 64 :=
.call (some (rawBody311_47, 0, 311, 2)) (Sum.inl 69) (some (rawBody311_54, 311, 3))

def rawBody311_56 : StackLang.HolProg 64 :=
.seq rawBody311_32 rawBody311_55

def rawBody311_57 : StackLang.HolProg 64 :=
.seq rawBody311_31 rawBody311_56

def rawBody311_58 : StackLang.HolProg 64 :=
.seq rawBody311_30 rawBody311_57

def rawBody311_59 : StackLang.HolProg 64 :=
.seq rawBody311_11 rawBody311_58

def rawBody311_60 : StackLang.HolProg 64 :=
.seq rawBody311_8 rawBody311_59

def rawBody311_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody311_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody311_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody311_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody311_65 : StackLang.HolProg 64 :=
.seq rawBody311_63 rawBody311_64

def rawBody311_66 : StackLang.HolProg 64 :=
.seq rawBody311_62 rawBody311_65

def rawBody311_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 857#64)

def rawBody311_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_70 : StackLang.HolProg 64 :=
.seq rawBody311_68 rawBody311_69

def rawBody311_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody311_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody311_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 5

def rawBody311_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody311_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody311_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody311_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody311_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_81 : StackLang.HolProg 64 :=
.seq rawBody311_79 rawBody311_80

def rawBody311_82 : StackLang.HolProg 64 :=
.seq rawBody311_78 rawBody311_81

def rawBody311_83 : StackLang.HolProg 64 :=
.seq rawBody311_77 rawBody311_82

def rawBody311_84 : StackLang.HolProg 64 :=
.seq rawBody311_76 rawBody311_83

def rawBody311_85 : StackLang.HolProg 64 :=
.seq rawBody311_75 rawBody311_84

def rawBody311_86 : StackLang.HolProg 64 :=
.seq rawBody311_74 rawBody311_85

def rawBody311_87 : StackLang.HolProg 64 :=
.seq rawBody311_73 rawBody311_86

def rawBody311_88 : StackLang.HolProg 64 :=
.seq rawBody311_72 rawBody311_87

def rawBody311_89 : StackLang.HolProg 64 :=
.seq rawBody311_71 rawBody311_88

def rawBody311_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody311_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody311_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody311_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody311_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody311_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody311_101 : StackLang.HolProg 64 :=
.seq rawBody311_99 rawBody311_100

def rawBody311_102 : StackLang.HolProg 64 :=
.seq rawBody311_98 rawBody311_101

def rawBody311_103 : StackLang.HolProg 64 :=
.seq rawBody311_97 rawBody311_102

def rawBody311_104 : StackLang.HolProg 64 :=
.seq rawBody311_96 rawBody311_103

def rawBody311_105 : StackLang.HolProg 64 :=
.seq rawBody311_95 rawBody311_104

def rawBody311_106 : StackLang.HolProg 64 :=
.seq rawBody311_94 rawBody311_105

def rawBody311_107 : StackLang.HolProg 64 :=
.seq rawBody311_93 rawBody311_106

def rawBody311_108 : StackLang.HolProg 64 :=
.seq rawBody311_92 rawBody311_107

def rawBody311_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody311_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody311_112 : StackLang.HolProg 64 :=
.seq rawBody311_110 rawBody311_111

def rawBody311_113 : StackLang.HolProg 64 :=
.seq rawBody311_109 rawBody311_112

def rawBody311_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody311_115 : StackLang.HolProg 64 :=
.seq rawBody311_113 rawBody311_114

def rawBody311_116 : StackLang.HolProg 64 :=
.call (some (rawBody311_108, 0, 311, 4)) (Sum.inl 310) (some (rawBody311_115, 311, 5))

def rawBody311_117 : StackLang.HolProg 64 :=
.seq rawBody311_91 rawBody311_116

def rawBody311_118 : StackLang.HolProg 64 :=
.seq rawBody311_90 rawBody311_117

def rawBody311_119 : StackLang.HolProg 64 :=
.seq rawBody311_89 rawBody311_118

def rawBody311_120 : StackLang.HolProg 64 :=
.seq rawBody311_70 rawBody311_119

def rawBody311_121 : StackLang.HolProg 64 :=
.seq rawBody311_67 rawBody311_120

def rawBody311_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody311_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody311_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 858#64)

def rawBody311_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_129 : StackLang.HolProg 64 :=
.seq rawBody311_127 rawBody311_128

def rawBody311_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody311_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody311_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 7

def rawBody311_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody311_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody311_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody311_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody311_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_140 : StackLang.HolProg 64 :=
.seq rawBody311_138 rawBody311_139

def rawBody311_141 : StackLang.HolProg 64 :=
.seq rawBody311_137 rawBody311_140

def rawBody311_142 : StackLang.HolProg 64 :=
.seq rawBody311_136 rawBody311_141

def rawBody311_143 : StackLang.HolProg 64 :=
.seq rawBody311_135 rawBody311_142

def rawBody311_144 : StackLang.HolProg 64 :=
.seq rawBody311_134 rawBody311_143

def rawBody311_145 : StackLang.HolProg 64 :=
.seq rawBody311_133 rawBody311_144

def rawBody311_146 : StackLang.HolProg 64 :=
.seq rawBody311_132 rawBody311_145

def rawBody311_147 : StackLang.HolProg 64 :=
.seq rawBody311_131 rawBody311_146

def rawBody311_148 : StackLang.HolProg 64 :=
.seq rawBody311_130 rawBody311_147

def rawBody311_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody311_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody311_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody311_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody311_157 : StackLang.HolProg 64 :=
.seq rawBody311_155 rawBody311_156

def rawBody311_158 : StackLang.HolProg 64 :=
.seq rawBody311_154 rawBody311_157

def rawBody311_159 : StackLang.HolProg 64 :=
.seq rawBody311_153 rawBody311_158

def rawBody311_160 : StackLang.HolProg 64 :=
.seq rawBody311_152 rawBody311_159

def rawBody311_161 : StackLang.HolProg 64 :=
.seq rawBody311_151 rawBody311_160

def rawBody311_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody311_163 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody311_164 : StackLang.HolProg 64 :=
.seq rawBody311_162 rawBody311_163

def rawBody311_165 : StackLang.HolProg 64 :=
.call (some (rawBody311_161, 0, 311, 6)) (Sum.inl 306) (some (rawBody311_164, 311, 7))

def rawBody311_166 : StackLang.HolProg 64 :=
.seq rawBody311_150 rawBody311_165

def rawBody311_167 : StackLang.HolProg 64 :=
.seq rawBody311_149 rawBody311_166

def rawBody311_168 : StackLang.HolProg 64 :=
.seq rawBody311_148 rawBody311_167

def rawBody311_169 : StackLang.HolProg 64 :=
.seq rawBody311_129 rawBody311_168

def rawBody311_170 : StackLang.HolProg 64 :=
.seq rawBody311_126 rawBody311_169

def rawBody311_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody311_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody311_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody311_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody311_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody311_176 : StackLang.HolProg 64 :=
.seq rawBody311_174 rawBody311_175

def rawBody311_177 : StackLang.HolProg 64 :=
.seq rawBody311_173 rawBody311_176

def rawBody311_178 : StackLang.HolProg 64 :=
.seq rawBody311_172 rawBody311_177

def rawBody311_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 859#64)

def rawBody311_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_182 : StackLang.HolProg 64 :=
.seq rawBody311_180 rawBody311_181

def rawBody311_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody311_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody311_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody311_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 311 9

def rawBody311_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody311_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody311_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody311_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody311_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_193 : StackLang.HolProg 64 :=
.seq rawBody311_191 rawBody311_192

def rawBody311_194 : StackLang.HolProg 64 :=
.seq rawBody311_190 rawBody311_193

def rawBody311_195 : StackLang.HolProg 64 :=
.seq rawBody311_189 rawBody311_194

def rawBody311_196 : StackLang.HolProg 64 :=
.seq rawBody311_188 rawBody311_195

def rawBody311_197 : StackLang.HolProg 64 :=
.seq rawBody311_187 rawBody311_196

def rawBody311_198 : StackLang.HolProg 64 :=
.seq rawBody311_186 rawBody311_197

def rawBody311_199 : StackLang.HolProg 64 :=
.seq rawBody311_185 rawBody311_198

def rawBody311_200 : StackLang.HolProg 64 :=
.seq rawBody311_184 rawBody311_199

def rawBody311_201 : StackLang.HolProg 64 :=
.seq rawBody311_183 rawBody311_200

def rawBody311_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody311_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody311_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody311_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody311_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody311_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody311_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody311_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody311_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody311_212 : StackLang.HolProg 64 :=
.seq rawBody311_210 rawBody311_211

def rawBody311_213 : StackLang.HolProg 64 :=
.seq rawBody311_209 rawBody311_212

def rawBody311_214 : StackLang.HolProg 64 :=
.seq rawBody311_208 rawBody311_213

def rawBody311_215 : StackLang.HolProg 64 :=
.seq rawBody311_207 rawBody311_214

def rawBody311_216 : StackLang.HolProg 64 :=
.seq rawBody311_206 rawBody311_215

def rawBody311_217 : StackLang.HolProg 64 :=
.seq rawBody311_205 rawBody311_216

def rawBody311_218 : StackLang.HolProg 64 :=
.seq rawBody311_204 rawBody311_217

def rawBody311_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody311_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody311_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody311_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody311_223 : StackLang.HolProg 64 :=
.seq rawBody311_221 rawBody311_222

def rawBody311_224 : StackLang.HolProg 64 :=
.seq rawBody311_220 rawBody311_223

def rawBody311_225 : StackLang.HolProg 64 :=
.seq rawBody311_219 rawBody311_224

def rawBody311_226 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody311_227 : StackLang.HolProg 64 :=
.seq rawBody311_225 rawBody311_226

def rawBody311_228 : StackLang.HolProg 64 :=
.call (some (rawBody311_218, 0, 311, 8)) (Sum.inl 70) (some (rawBody311_227, 311, 9))

def rawBody311_229 : StackLang.HolProg 64 :=
.seq rawBody311_203 rawBody311_228

def rawBody311_230 : StackLang.HolProg 64 :=
.seq rawBody311_202 rawBody311_229

def rawBody311_231 : StackLang.HolProg 64 :=
.seq rawBody311_201 rawBody311_230

def rawBody311_232 : StackLang.HolProg 64 :=
.seq rawBody311_182 rawBody311_231

def rawBody311_233 : StackLang.HolProg 64 :=
.seq rawBody311_179 rawBody311_232

def rawBody311_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody311_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody311_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody311_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody311_238 : StackLang.HolProg 64 :=
.seq rawBody311_236 rawBody311_237

def rawBody311_239 : StackLang.HolProg 64 :=
.seq rawBody311_235 rawBody311_238

def rawBody311_240 : StackLang.HolProg 64 :=
.seq rawBody311_234 rawBody311_239

def rawBody311_241 : StackLang.HolProg 64 :=
.seq rawBody311_233 rawBody311_240

def rawBody311_242 : StackLang.HolProg 64 :=
.seq rawBody311_178 rawBody311_241

def rawBody311_243 : StackLang.HolProg 64 :=
.seq rawBody311_171 rawBody311_242

def rawBody311_244 : StackLang.HolProg 64 :=
.seq rawBody311_170 rawBody311_243

def rawBody311_245 : StackLang.HolProg 64 :=
.seq rawBody311_125 rawBody311_244

def rawBody311_246 : StackLang.HolProg 64 :=
.seq rawBody311_124 rawBody311_245

def rawBody311_247 : StackLang.HolProg 64 :=
.seq rawBody311_123 rawBody311_246

def rawBody311_248 : StackLang.HolProg 64 :=
.seq rawBody311_122 rawBody311_247

def rawBody311_249 : StackLang.HolProg 64 :=
.seq rawBody311_121 rawBody311_248

def rawBody311_250 : StackLang.HolProg 64 :=
.seq rawBody311_66 rawBody311_249

def rawBody311_251 : StackLang.HolProg 64 :=
.seq rawBody311_61 rawBody311_250

def rawBody311_252 : StackLang.HolProg 64 :=
.seq rawBody311_60 rawBody311_251

def rawBody311_253 : StackLang.HolProg 64 :=
.seq rawBody311_7 rawBody311_252

def rawBody311_254 : StackLang.HolProg 64 :=
.seq rawBody311_0 rawBody311_253

def raw311 : StackLang.HolProg 64 := rawBody311_254
theorem raw311_eq : StackRawCall.compTop RawInfo.rawInfo (function311 (.list [])).1 = raw311 := by
  kernel_rfl
#print axioms raw311_eq
end InitECandidate.Proofs.BackendStages
