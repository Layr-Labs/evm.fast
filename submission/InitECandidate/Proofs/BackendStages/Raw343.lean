import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function343
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody343_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody343_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody343_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody343_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody343_4 : StackLang.HolProg 64 :=
.seq rawBody343_2 rawBody343_3

def rawBody343_5 : StackLang.HolProg 64 :=
.seq rawBody343_1 rawBody343_4

def rawBody343_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 986#64)

def rawBody343_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_9 : StackLang.HolProg 64 :=
.seq rawBody343_7 rawBody343_8

def rawBody343_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody343_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody343_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 3

def rawBody343_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody343_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody343_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody343_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody343_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_20 : StackLang.HolProg 64 :=
.seq rawBody343_18 rawBody343_19

def rawBody343_21 : StackLang.HolProg 64 :=
.seq rawBody343_17 rawBody343_20

def rawBody343_22 : StackLang.HolProg 64 :=
.seq rawBody343_16 rawBody343_21

def rawBody343_23 : StackLang.HolProg 64 :=
.seq rawBody343_15 rawBody343_22

def rawBody343_24 : StackLang.HolProg 64 :=
.seq rawBody343_14 rawBody343_23

def rawBody343_25 : StackLang.HolProg 64 :=
.seq rawBody343_13 rawBody343_24

def rawBody343_26 : StackLang.HolProg 64 :=
.seq rawBody343_12 rawBody343_25

def rawBody343_27 : StackLang.HolProg 64 :=
.seq rawBody343_11 rawBody343_26

def rawBody343_28 : StackLang.HolProg 64 :=
.seq rawBody343_10 rawBody343_27

def rawBody343_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody343_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody343_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody343_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody343_36 : StackLang.HolProg 64 :=
.seq rawBody343_34 rawBody343_35

def rawBody343_37 : StackLang.HolProg 64 :=
.seq rawBody343_33 rawBody343_36

def rawBody343_38 : StackLang.HolProg 64 :=
.seq rawBody343_32 rawBody343_37

def rawBody343_39 : StackLang.HolProg 64 :=
.seq rawBody343_31 rawBody343_38

def rawBody343_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody343_42 : StackLang.HolProg 64 :=
.seq rawBody343_40 rawBody343_41

def rawBody343_43 : StackLang.HolProg 64 :=
.call (some (rawBody343_39, 0, 343, 2)) (Sum.inl 169) (some (rawBody343_42, 343, 3))

def rawBody343_44 : StackLang.HolProg 64 :=
.seq rawBody343_30 rawBody343_43

def rawBody343_45 : StackLang.HolProg 64 :=
.seq rawBody343_29 rawBody343_44

def rawBody343_46 : StackLang.HolProg 64 :=
.seq rawBody343_28 rawBody343_45

def rawBody343_47 : StackLang.HolProg 64 :=
.seq rawBody343_9 rawBody343_46

def rawBody343_48 : StackLang.HolProg 64 :=
.seq rawBody343_6 rawBody343_47

def rawBody343_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody343_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody343_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody343_54 : StackLang.HolProg 64 :=
.seq rawBody343_52 rawBody343_53

def rawBody343_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 987#64)

def rawBody343_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_58 : StackLang.HolProg 64 :=
.seq rawBody343_56 rawBody343_57

def rawBody343_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody343_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody343_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 5

def rawBody343_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody343_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody343_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody343_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody343_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_69 : StackLang.HolProg 64 :=
.seq rawBody343_67 rawBody343_68

def rawBody343_70 : StackLang.HolProg 64 :=
.seq rawBody343_66 rawBody343_69

def rawBody343_71 : StackLang.HolProg 64 :=
.seq rawBody343_65 rawBody343_70

def rawBody343_72 : StackLang.HolProg 64 :=
.seq rawBody343_64 rawBody343_71

def rawBody343_73 : StackLang.HolProg 64 :=
.seq rawBody343_63 rawBody343_72

def rawBody343_74 : StackLang.HolProg 64 :=
.seq rawBody343_62 rawBody343_73

def rawBody343_75 : StackLang.HolProg 64 :=
.seq rawBody343_61 rawBody343_74

def rawBody343_76 : StackLang.HolProg 64 :=
.seq rawBody343_60 rawBody343_75

def rawBody343_77 : StackLang.HolProg 64 :=
.seq rawBody343_59 rawBody343_76

def rawBody343_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody343_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody343_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody343_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody343_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody343_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody343_87 : StackLang.HolProg 64 :=
.seq rawBody343_85 rawBody343_86

def rawBody343_88 : StackLang.HolProg 64 :=
.seq rawBody343_84 rawBody343_87

def rawBody343_89 : StackLang.HolProg 64 :=
.seq rawBody343_83 rawBody343_88

def rawBody343_90 : StackLang.HolProg 64 :=
.seq rawBody343_82 rawBody343_89

def rawBody343_91 : StackLang.HolProg 64 :=
.seq rawBody343_81 rawBody343_90

def rawBody343_92 : StackLang.HolProg 64 :=
.seq rawBody343_80 rawBody343_91

def rawBody343_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody343_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody343_95 : StackLang.HolProg 64 :=
.seq rawBody343_93 rawBody343_94

def rawBody343_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody343_97 : StackLang.HolProg 64 :=
.seq rawBody343_95 rawBody343_96

def rawBody343_98 : StackLang.HolProg 64 :=
.call (some (rawBody343_92, 0, 343, 4)) (Sum.inl 68) (some (rawBody343_97, 343, 5))

def rawBody343_99 : StackLang.HolProg 64 :=
.seq rawBody343_79 rawBody343_98

def rawBody343_100 : StackLang.HolProg 64 :=
.seq rawBody343_78 rawBody343_99

def rawBody343_101 : StackLang.HolProg 64 :=
.seq rawBody343_77 rawBody343_100

def rawBody343_102 : StackLang.HolProg 64 :=
.seq rawBody343_58 rawBody343_101

def rawBody343_103 : StackLang.HolProg 64 :=
.seq rawBody343_55 rawBody343_102

def rawBody343_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody343_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody343_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody343_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody343_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody343_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody343_114 : StackLang.HolProg 64 :=
.seq rawBody343_112 rawBody343_113

def rawBody343_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody343_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody343_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody343_118 : StackLang.HolProg 64 :=
.seq rawBody343_116 rawBody343_117

def rawBody343_119 : StackLang.HolProg 64 :=
.seq rawBody343_115 rawBody343_118

def rawBody343_120 : StackLang.HolProg 64 :=
.seq rawBody343_114 rawBody343_119

def rawBody343_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 988#64)

def rawBody343_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_124 : StackLang.HolProg 64 :=
.seq rawBody343_122 rawBody343_123

def rawBody343_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody343_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody343_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 7

def rawBody343_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody343_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody343_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody343_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody343_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_135 : StackLang.HolProg 64 :=
.seq rawBody343_133 rawBody343_134

def rawBody343_136 : StackLang.HolProg 64 :=
.seq rawBody343_132 rawBody343_135

def rawBody343_137 : StackLang.HolProg 64 :=
.seq rawBody343_131 rawBody343_136

def rawBody343_138 : StackLang.HolProg 64 :=
.seq rawBody343_130 rawBody343_137

def rawBody343_139 : StackLang.HolProg 64 :=
.seq rawBody343_129 rawBody343_138

def rawBody343_140 : StackLang.HolProg 64 :=
.seq rawBody343_128 rawBody343_139

def rawBody343_141 : StackLang.HolProg 64 :=
.seq rawBody343_127 rawBody343_140

def rawBody343_142 : StackLang.HolProg 64 :=
.seq rawBody343_126 rawBody343_141

def rawBody343_143 : StackLang.HolProg 64 :=
.seq rawBody343_125 rawBody343_142

def rawBody343_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody343_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody343_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody343_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody343_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody343_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody343_153 : StackLang.HolProg 64 :=
.seq rawBody343_151 rawBody343_152

def rawBody343_154 : StackLang.HolProg 64 :=
.seq rawBody343_150 rawBody343_153

def rawBody343_155 : StackLang.HolProg 64 :=
.seq rawBody343_149 rawBody343_154

def rawBody343_156 : StackLang.HolProg 64 :=
.seq rawBody343_148 rawBody343_155

def rawBody343_157 : StackLang.HolProg 64 :=
.seq rawBody343_147 rawBody343_156

def rawBody343_158 : StackLang.HolProg 64 :=
.seq rawBody343_146 rawBody343_157

def rawBody343_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody343_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody343_161 : StackLang.HolProg 64 :=
.seq rawBody343_159 rawBody343_160

def rawBody343_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody343_163 : StackLang.HolProg 64 :=
.seq rawBody343_161 rawBody343_162

def rawBody343_164 : StackLang.HolProg 64 :=
.call (some (rawBody343_158, 0, 343, 6)) (Sum.inl 339) (some (rawBody343_163, 343, 7))

def rawBody343_165 : StackLang.HolProg 64 :=
.seq rawBody343_145 rawBody343_164

def rawBody343_166 : StackLang.HolProg 64 :=
.seq rawBody343_144 rawBody343_165

def rawBody343_167 : StackLang.HolProg 64 :=
.seq rawBody343_143 rawBody343_166

def rawBody343_168 : StackLang.HolProg 64 :=
.seq rawBody343_124 rawBody343_167

def rawBody343_169 : StackLang.HolProg 64 :=
.seq rawBody343_121 rawBody343_168

def rawBody343_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody343_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody343_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody343_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody343_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody343_179 : StackLang.HolProg 64 :=
.seq rawBody343_177 rawBody343_178

def rawBody343_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 989#64)

def rawBody343_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_183 : StackLang.HolProg 64 :=
.seq rawBody343_181 rawBody343_182

def rawBody343_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody343_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody343_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody343_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 9

def rawBody343_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody343_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody343_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody343_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody343_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_194 : StackLang.HolProg 64 :=
.seq rawBody343_192 rawBody343_193

def rawBody343_195 : StackLang.HolProg 64 :=
.seq rawBody343_191 rawBody343_194

def rawBody343_196 : StackLang.HolProg 64 :=
.seq rawBody343_190 rawBody343_195

def rawBody343_197 : StackLang.HolProg 64 :=
.seq rawBody343_189 rawBody343_196

def rawBody343_198 : StackLang.HolProg 64 :=
.seq rawBody343_188 rawBody343_197

def rawBody343_199 : StackLang.HolProg 64 :=
.seq rawBody343_187 rawBody343_198

def rawBody343_200 : StackLang.HolProg 64 :=
.seq rawBody343_186 rawBody343_199

def rawBody343_201 : StackLang.HolProg 64 :=
.seq rawBody343_185 rawBody343_200

def rawBody343_202 : StackLang.HolProg 64 :=
.seq rawBody343_184 rawBody343_201

def rawBody343_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody343_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody343_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody343_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody343_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody343_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody343_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody343_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody343_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody343_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody343_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody343_216 : StackLang.HolProg 64 :=
.seq rawBody343_214 rawBody343_215

def rawBody343_217 : StackLang.HolProg 64 :=
.seq rawBody343_213 rawBody343_216

def rawBody343_218 : StackLang.HolProg 64 :=
.seq rawBody343_212 rawBody343_217

def rawBody343_219 : StackLang.HolProg 64 :=
.seq rawBody343_211 rawBody343_218

def rawBody343_220 : StackLang.HolProg 64 :=
.seq rawBody343_210 rawBody343_219

def rawBody343_221 : StackLang.HolProg 64 :=
.seq rawBody343_209 rawBody343_220

def rawBody343_222 : StackLang.HolProg 64 :=
.seq rawBody343_208 rawBody343_221

def rawBody343_223 : StackLang.HolProg 64 :=
.seq rawBody343_207 rawBody343_222

def rawBody343_224 : StackLang.HolProg 64 :=
.seq rawBody343_206 rawBody343_223

def rawBody343_225 : StackLang.HolProg 64 :=
.seq rawBody343_205 rawBody343_224

def rawBody343_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody343_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody343_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody343_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody343_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody343_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody343_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody343_233 : StackLang.HolProg 64 :=
.seq rawBody343_231 rawBody343_232

def rawBody343_234 : StackLang.HolProg 64 :=
.seq rawBody343_230 rawBody343_233

def rawBody343_235 : StackLang.HolProg 64 :=
.seq rawBody343_229 rawBody343_234

def rawBody343_236 : StackLang.HolProg 64 :=
.seq rawBody343_228 rawBody343_235

def rawBody343_237 : StackLang.HolProg 64 :=
.seq rawBody343_227 rawBody343_236

def rawBody343_238 : StackLang.HolProg 64 :=
.seq rawBody343_226 rawBody343_237

def rawBody343_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody343_240 : StackLang.HolProg 64 :=
.seq rawBody343_238 rawBody343_239

def rawBody343_241 : StackLang.HolProg 64 :=
.call (some (rawBody343_225, 0, 343, 8)) (Sum.inl 77) (some (rawBody343_240, 343, 9))

def rawBody343_242 : StackLang.HolProg 64 :=
.seq rawBody343_204 rawBody343_241

def rawBody343_243 : StackLang.HolProg 64 :=
.seq rawBody343_203 rawBody343_242

def rawBody343_244 : StackLang.HolProg 64 :=
.seq rawBody343_202 rawBody343_243

def rawBody343_245 : StackLang.HolProg 64 :=
.seq rawBody343_183 rawBody343_244

def rawBody343_246 : StackLang.HolProg 64 :=
.seq rawBody343_180 rawBody343_245

def rawBody343_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody343_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody343_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody343_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody343_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def rawBody343_254 : StackLang.HolProg 64 :=
.seq rawBody343_252 rawBody343_253

def rawBody343_255 : StackLang.HolProg 64 :=
.seq rawBody343_251 rawBody343_254

def rawBody343_256 : StackLang.HolProg 64 :=
.seq rawBody343_250 rawBody343_255

def rawBody343_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody343_258 : StackLang.HolProg 64 :=
.seq rawBody343_256 rawBody343_257

def rawBody343_259 : StackLang.HolProg 64 :=
.seq rawBody343_249 rawBody343_258

def rawBody343_260 : StackLang.HolProg 64 :=
.seq rawBody343_248 rawBody343_259

def rawBody343_261 : StackLang.HolProg 64 :=
.seq rawBody343_247 rawBody343_260

def rawBody343_262 : StackLang.HolProg 64 :=
.seq rawBody343_246 rawBody343_261

def rawBody343_263 : StackLang.HolProg 64 :=
.seq rawBody343_179 rawBody343_262

def rawBody343_264 : StackLang.HolProg 64 :=
.seq rawBody343_176 rawBody343_263

def rawBody343_265 : StackLang.HolProg 64 :=
.seq rawBody343_175 rawBody343_264

def rawBody343_266 : StackLang.HolProg 64 :=
.seq rawBody343_174 rawBody343_265

def rawBody343_267 : StackLang.HolProg 64 :=
.seq rawBody343_173 rawBody343_266

def rawBody343_268 : StackLang.HolProg 64 :=
.seq rawBody343_172 rawBody343_267

def rawBody343_269 : StackLang.HolProg 64 :=
.seq rawBody343_171 rawBody343_268

def rawBody343_270 : StackLang.HolProg 64 :=
.seq rawBody343_170 rawBody343_269

def rawBody343_271 : StackLang.HolProg 64 :=
.seq rawBody343_169 rawBody343_270

def rawBody343_272 : StackLang.HolProg 64 :=
.seq rawBody343_120 rawBody343_271

def rawBody343_273 : StackLang.HolProg 64 :=
.seq rawBody343_111 rawBody343_272

def rawBody343_274 : StackLang.HolProg 64 :=
.seq rawBody343_110 rawBody343_273

def rawBody343_275 : StackLang.HolProg 64 :=
.seq rawBody343_109 rawBody343_274

def rawBody343_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody343_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody343_279 : StackLang.HolProg 64 :=
.seq rawBody343_277 rawBody343_278

def rawBody343_280 : StackLang.HolProg 64 :=
.seq rawBody343_276 rawBody343_279

def rawBody343_281 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody343_275 rawBody343_280

def rawBody343_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody343_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody343_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody343_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody343_287 : StackLang.HolProg 64 :=
.seq rawBody343_285 rawBody343_286

def rawBody343_288 : StackLang.HolProg 64 :=
.seq rawBody343_284 rawBody343_287

def rawBody343_289 : StackLang.HolProg 64 :=
.seq rawBody343_283 rawBody343_288

def rawBody343_290 : StackLang.HolProg 64 :=
.seq rawBody343_282 rawBody343_289

def rawBody343_291 : StackLang.HolProg 64 :=
.seq rawBody343_281 rawBody343_290

def rawBody343_292 : StackLang.HolProg 64 :=
.seq rawBody343_108 rawBody343_291

def rawBody343_293 : StackLang.HolProg 64 :=
.loop rawBody343_292

def rawBody343_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody343_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 6

def rawBody343_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody343_297 : StackLang.HolProg 64 :=
.seq rawBody343_295 rawBody343_296

def rawBody343_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody343_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody343_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody343_301 : StackLang.HolProg 64 :=
.seq rawBody343_299 rawBody343_300

def rawBody343_302 : StackLang.HolProg 64 :=
.seq rawBody343_298 rawBody343_301

def rawBody343_303 : StackLang.HolProg 64 :=
.seq rawBody343_297 rawBody343_302

def rawBody343_304 : StackLang.HolProg 64 :=
.seq rawBody343_294 rawBody343_303

def rawBody343_305 : StackLang.HolProg 64 :=
.seq rawBody343_293 rawBody343_304

def rawBody343_306 : StackLang.HolProg 64 :=
.seq rawBody343_107 rawBody343_305

def rawBody343_307 : StackLang.HolProg 64 :=
.seq rawBody343_106 rawBody343_306

def rawBody343_308 : StackLang.HolProg 64 :=
.seq rawBody343_105 rawBody343_307

def rawBody343_309 : StackLang.HolProg 64 :=
.seq rawBody343_104 rawBody343_308

def rawBody343_310 : StackLang.HolProg 64 :=
.seq rawBody343_103 rawBody343_309

def rawBody343_311 : StackLang.HolProg 64 :=
.seq rawBody343_54 rawBody343_310

def rawBody343_312 : StackLang.HolProg 64 :=
.seq rawBody343_51 rawBody343_311

def rawBody343_313 : StackLang.HolProg 64 :=
.seq rawBody343_50 rawBody343_312

def rawBody343_314 : StackLang.HolProg 64 :=
.seq rawBody343_49 rawBody343_313

def rawBody343_315 : StackLang.HolProg 64 :=
.seq rawBody343_48 rawBody343_314

def rawBody343_316 : StackLang.HolProg 64 :=
.seq rawBody343_5 rawBody343_315

def rawBody343_317 : StackLang.HolProg 64 :=
.seq rawBody343_0 rawBody343_316

def raw343 : StackLang.HolProg 64 := rawBody343_317
theorem raw343_eq : StackRawCall.compTop RawInfo.rawInfo (function343 (.list [])).1 = raw343 := by
  kernel_rfl
#print axioms raw343_eq
end InitECandidate.Proofs.BackendStages
