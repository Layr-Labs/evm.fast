import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function264
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody264_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody264_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody264_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody264_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody264_4 : StackLang.HolProg 64 :=
.seq rawBody264_2 rawBody264_3

def rawBody264_5 : StackLang.HolProg 64 :=
.seq rawBody264_1 rawBody264_4

def rawBody264_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 621#64)

def rawBody264_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_9 : StackLang.HolProg 64 :=
.seq rawBody264_7 rawBody264_8

def rawBody264_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 3

def rawBody264_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_20 : StackLang.HolProg 64 :=
.seq rawBody264_18 rawBody264_19

def rawBody264_21 : StackLang.HolProg 64 :=
.seq rawBody264_17 rawBody264_20

def rawBody264_22 : StackLang.HolProg 64 :=
.seq rawBody264_16 rawBody264_21

def rawBody264_23 : StackLang.HolProg 64 :=
.seq rawBody264_15 rawBody264_22

def rawBody264_24 : StackLang.HolProg 64 :=
.seq rawBody264_14 rawBody264_23

def rawBody264_25 : StackLang.HolProg 64 :=
.seq rawBody264_13 rawBody264_24

def rawBody264_26 : StackLang.HolProg 64 :=
.seq rawBody264_12 rawBody264_25

def rawBody264_27 : StackLang.HolProg 64 :=
.seq rawBody264_11 rawBody264_26

def rawBody264_28 : StackLang.HolProg 64 :=
.seq rawBody264_10 rawBody264_27

def rawBody264_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody264_36 : StackLang.HolProg 64 :=
.seq rawBody264_34 rawBody264_35

def rawBody264_37 : StackLang.HolProg 64 :=
.seq rawBody264_33 rawBody264_36

def rawBody264_38 : StackLang.HolProg 64 :=
.seq rawBody264_32 rawBody264_37

def rawBody264_39 : StackLang.HolProg 64 :=
.seq rawBody264_31 rawBody264_38

def rawBody264_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_42 : StackLang.HolProg 64 :=
.seq rawBody264_40 rawBody264_41

def rawBody264_43 : StackLang.HolProg 64 :=
.call (some (rawBody264_39, 0, 264, 2)) (Sum.inl 69) (some (rawBody264_42, 264, 3))

def rawBody264_44 : StackLang.HolProg 64 :=
.seq rawBody264_30 rawBody264_43

def rawBody264_45 : StackLang.HolProg 64 :=
.seq rawBody264_29 rawBody264_44

def rawBody264_46 : StackLang.HolProg 64 :=
.seq rawBody264_28 rawBody264_45

def rawBody264_47 : StackLang.HolProg 64 :=
.seq rawBody264_9 rawBody264_46

def rawBody264_48 : StackLang.HolProg 64 :=
.seq rawBody264_6 rawBody264_47

def rawBody264_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody264_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody264_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 622#64)

def rawBody264_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_55 : StackLang.HolProg 64 :=
.seq rawBody264_53 rawBody264_54

def rawBody264_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 5

def rawBody264_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_66 : StackLang.HolProg 64 :=
.seq rawBody264_64 rawBody264_65

def rawBody264_67 : StackLang.HolProg 64 :=
.seq rawBody264_63 rawBody264_66

def rawBody264_68 : StackLang.HolProg 64 :=
.seq rawBody264_62 rawBody264_67

def rawBody264_69 : StackLang.HolProg 64 :=
.seq rawBody264_61 rawBody264_68

def rawBody264_70 : StackLang.HolProg 64 :=
.seq rawBody264_60 rawBody264_69

def rawBody264_71 : StackLang.HolProg 64 :=
.seq rawBody264_59 rawBody264_70

def rawBody264_72 : StackLang.HolProg 64 :=
.seq rawBody264_58 rawBody264_71

def rawBody264_73 : StackLang.HolProg 64 :=
.seq rawBody264_57 rawBody264_72

def rawBody264_74 : StackLang.HolProg 64 :=
.seq rawBody264_56 rawBody264_73

def rawBody264_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody264_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_83 : StackLang.HolProg 64 :=
.seq rawBody264_81 rawBody264_82

def rawBody264_84 : StackLang.HolProg 64 :=
.seq rawBody264_80 rawBody264_83

def rawBody264_85 : StackLang.HolProg 64 :=
.seq rawBody264_79 rawBody264_84

def rawBody264_86 : StackLang.HolProg 64 :=
.seq rawBody264_78 rawBody264_85

def rawBody264_87 : StackLang.HolProg 64 :=
.seq rawBody264_77 rawBody264_86

def rawBody264_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_90 : StackLang.HolProg 64 :=
.seq rawBody264_88 rawBody264_89

def rawBody264_91 : StackLang.HolProg 64 :=
.call (some (rawBody264_87, 0, 264, 4)) (Sum.inl 68) (some (rawBody264_90, 264, 5))

def rawBody264_92 : StackLang.HolProg 64 :=
.seq rawBody264_76 rawBody264_91

def rawBody264_93 : StackLang.HolProg 64 :=
.seq rawBody264_75 rawBody264_92

def rawBody264_94 : StackLang.HolProg 64 :=
.seq rawBody264_74 rawBody264_93

def rawBody264_95 : StackLang.HolProg 64 :=
.seq rawBody264_55 rawBody264_94

def rawBody264_96 : StackLang.HolProg 64 :=
.seq rawBody264_52 rawBody264_95

def rawBody264_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody264_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def rawBody264_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody264_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody264_102 : StackLang.HolProg 64 :=
.seq rawBody264_100 rawBody264_101

def rawBody264_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 623#64)

def rawBody264_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_106 : StackLang.HolProg 64 :=
.seq rawBody264_104 rawBody264_105

def rawBody264_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 7

def rawBody264_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_117 : StackLang.HolProg 64 :=
.seq rawBody264_115 rawBody264_116

def rawBody264_118 : StackLang.HolProg 64 :=
.seq rawBody264_114 rawBody264_117

def rawBody264_119 : StackLang.HolProg 64 :=
.seq rawBody264_113 rawBody264_118

def rawBody264_120 : StackLang.HolProg 64 :=
.seq rawBody264_112 rawBody264_119

def rawBody264_121 : StackLang.HolProg 64 :=
.seq rawBody264_111 rawBody264_120

def rawBody264_122 : StackLang.HolProg 64 :=
.seq rawBody264_110 rawBody264_121

def rawBody264_123 : StackLang.HolProg 64 :=
.seq rawBody264_109 rawBody264_122

def rawBody264_124 : StackLang.HolProg 64 :=
.seq rawBody264_108 rawBody264_123

def rawBody264_125 : StackLang.HolProg 64 :=
.seq rawBody264_107 rawBody264_124

def rawBody264_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody264_134 : StackLang.HolProg 64 :=
.seq rawBody264_132 rawBody264_133

def rawBody264_135 : StackLang.HolProg 64 :=
.seq rawBody264_131 rawBody264_134

def rawBody264_136 : StackLang.HolProg 64 :=
.seq rawBody264_130 rawBody264_135

def rawBody264_137 : StackLang.HolProg 64 :=
.seq rawBody264_129 rawBody264_136

def rawBody264_138 : StackLang.HolProg 64 :=
.seq rawBody264_128 rawBody264_137

def rawBody264_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody264_141 : StackLang.HolProg 64 :=
.seq rawBody264_139 rawBody264_140

def rawBody264_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_143 : StackLang.HolProg 64 :=
.seq rawBody264_141 rawBody264_142

def rawBody264_144 : StackLang.HolProg 64 :=
.call (some (rawBody264_138, 0, 264, 6)) (Sum.inl 242) (some (rawBody264_143, 264, 7))

def rawBody264_145 : StackLang.HolProg 64 :=
.seq rawBody264_127 rawBody264_144

def rawBody264_146 : StackLang.HolProg 64 :=
.seq rawBody264_126 rawBody264_145

def rawBody264_147 : StackLang.HolProg 64 :=
.seq rawBody264_125 rawBody264_146

def rawBody264_148 : StackLang.HolProg 64 :=
.seq rawBody264_106 rawBody264_147

def rawBody264_149 : StackLang.HolProg 64 :=
.seq rawBody264_103 rawBody264_148

def rawBody264_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 20#64)))

def rawBody264_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody264_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 48#64)

def rawBody264_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody264_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 624#64)

def rawBody264_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_160 : StackLang.HolProg 64 :=
.seq rawBody264_158 rawBody264_159

def rawBody264_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 9

def rawBody264_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_171 : StackLang.HolProg 64 :=
.seq rawBody264_169 rawBody264_170

def rawBody264_172 : StackLang.HolProg 64 :=
.seq rawBody264_168 rawBody264_171

def rawBody264_173 : StackLang.HolProg 64 :=
.seq rawBody264_167 rawBody264_172

def rawBody264_174 : StackLang.HolProg 64 :=
.seq rawBody264_166 rawBody264_173

def rawBody264_175 : StackLang.HolProg 64 :=
.seq rawBody264_165 rawBody264_174

def rawBody264_176 : StackLang.HolProg 64 :=
.seq rawBody264_164 rawBody264_175

def rawBody264_177 : StackLang.HolProg 64 :=
.seq rawBody264_163 rawBody264_176

def rawBody264_178 : StackLang.HolProg 64 :=
.seq rawBody264_162 rawBody264_177

def rawBody264_179 : StackLang.HolProg 64 :=
.seq rawBody264_161 rawBody264_178

def rawBody264_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody264_188 : StackLang.HolProg 64 :=
.seq rawBody264_186 rawBody264_187

def rawBody264_189 : StackLang.HolProg 64 :=
.seq rawBody264_185 rawBody264_188

def rawBody264_190 : StackLang.HolProg 64 :=
.seq rawBody264_184 rawBody264_189

def rawBody264_191 : StackLang.HolProg 64 :=
.seq rawBody264_183 rawBody264_190

def rawBody264_192 : StackLang.HolProg 64 :=
.seq rawBody264_182 rawBody264_191

def rawBody264_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody264_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody264_195 : StackLang.HolProg 64 :=
.seq rawBody264_193 rawBody264_194

def rawBody264_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_197 : StackLang.HolProg 64 :=
.seq rawBody264_195 rawBody264_196

def rawBody264_198 : StackLang.HolProg 64 :=
.call (some (rawBody264_192, 0, 264, 8)) (Sum.inl 242) (some (rawBody264_197, 264, 9))

def rawBody264_199 : StackLang.HolProg 64 :=
.seq rawBody264_181 rawBody264_198

def rawBody264_200 : StackLang.HolProg 64 :=
.seq rawBody264_180 rawBody264_199

def rawBody264_201 : StackLang.HolProg 64 :=
.seq rawBody264_179 rawBody264_200

def rawBody264_202 : StackLang.HolProg 64 :=
.seq rawBody264_160 rawBody264_201

def rawBody264_203 : StackLang.HolProg 64 :=
.seq rawBody264_157 rawBody264_202

def rawBody264_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody264_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def rawBody264_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2#64)

def rawBody264_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 625#64)

def rawBody264_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_212 : StackLang.HolProg 64 :=
.seq rawBody264_210 rawBody264_211

def rawBody264_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 11

def rawBody264_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_223 : StackLang.HolProg 64 :=
.seq rawBody264_221 rawBody264_222

def rawBody264_224 : StackLang.HolProg 64 :=
.seq rawBody264_220 rawBody264_223

def rawBody264_225 : StackLang.HolProg 64 :=
.seq rawBody264_219 rawBody264_224

def rawBody264_226 : StackLang.HolProg 64 :=
.seq rawBody264_218 rawBody264_225

def rawBody264_227 : StackLang.HolProg 64 :=
.seq rawBody264_217 rawBody264_226

def rawBody264_228 : StackLang.HolProg 64 :=
.seq rawBody264_216 rawBody264_227

def rawBody264_229 : StackLang.HolProg 64 :=
.seq rawBody264_215 rawBody264_228

def rawBody264_230 : StackLang.HolProg 64 :=
.seq rawBody264_214 rawBody264_229

def rawBody264_231 : StackLang.HolProg 64 :=
.seq rawBody264_213 rawBody264_230

def rawBody264_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody264_239 : StackLang.HolProg 64 :=
.seq rawBody264_237 rawBody264_238

def rawBody264_240 : StackLang.HolProg 64 :=
.seq rawBody264_236 rawBody264_239

def rawBody264_241 : StackLang.HolProg 64 :=
.seq rawBody264_235 rawBody264_240

def rawBody264_242 : StackLang.HolProg 64 :=
.seq rawBody264_234 rawBody264_241

def rawBody264_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody264_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_245 : StackLang.HolProg 64 :=
.seq rawBody264_243 rawBody264_244

def rawBody264_246 : StackLang.HolProg 64 :=
.call (some (rawBody264_242, 0, 264, 10)) (Sum.inl 235) (some (rawBody264_245, 264, 11))

def rawBody264_247 : StackLang.HolProg 64 :=
.seq rawBody264_233 rawBody264_246

def rawBody264_248 : StackLang.HolProg 64 :=
.seq rawBody264_232 rawBody264_247

def rawBody264_249 : StackLang.HolProg 64 :=
.seq rawBody264_231 rawBody264_248

def rawBody264_250 : StackLang.HolProg 64 :=
.seq rawBody264_212 rawBody264_249

def rawBody264_251 : StackLang.HolProg 64 :=
.seq rawBody264_209 rawBody264_250

def rawBody264_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody264_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 626#64)

def rawBody264_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_257 : StackLang.HolProg 64 :=
.seq rawBody264_255 rawBody264_256

def rawBody264_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody264_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody264_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody264_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 264 13

def rawBody264_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody264_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody264_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody264_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody264_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_268 : StackLang.HolProg 64 :=
.seq rawBody264_266 rawBody264_267

def rawBody264_269 : StackLang.HolProg 64 :=
.seq rawBody264_265 rawBody264_268

def rawBody264_270 : StackLang.HolProg 64 :=
.seq rawBody264_264 rawBody264_269

def rawBody264_271 : StackLang.HolProg 64 :=
.seq rawBody264_263 rawBody264_270

def rawBody264_272 : StackLang.HolProg 64 :=
.seq rawBody264_262 rawBody264_271

def rawBody264_273 : StackLang.HolProg 64 :=
.seq rawBody264_261 rawBody264_272

def rawBody264_274 : StackLang.HolProg 64 :=
.seq rawBody264_260 rawBody264_273

def rawBody264_275 : StackLang.HolProg 64 :=
.seq rawBody264_259 rawBody264_274

def rawBody264_276 : StackLang.HolProg 64 :=
.seq rawBody264_258 rawBody264_275

def rawBody264_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody264_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody264_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody264_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody264_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody264_284 : StackLang.HolProg 64 :=
.seq rawBody264_282 rawBody264_283

def rawBody264_285 : StackLang.HolProg 64 :=
.seq rawBody264_281 rawBody264_284

def rawBody264_286 : StackLang.HolProg 64 :=
.seq rawBody264_280 rawBody264_285

def rawBody264_287 : StackLang.HolProg 64 :=
.seq rawBody264_279 rawBody264_286

def rawBody264_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody264_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody264_290 : StackLang.HolProg 64 :=
.seq rawBody264_288 rawBody264_289

def rawBody264_291 : StackLang.HolProg 64 :=
.call (some (rawBody264_287, 0, 264, 12)) (Sum.inl 70) (some (rawBody264_290, 264, 13))

def rawBody264_292 : StackLang.HolProg 64 :=
.seq rawBody264_278 rawBody264_291

def rawBody264_293 : StackLang.HolProg 64 :=
.seq rawBody264_277 rawBody264_292

def rawBody264_294 : StackLang.HolProg 64 :=
.seq rawBody264_276 rawBody264_293

def rawBody264_295 : StackLang.HolProg 64 :=
.seq rawBody264_257 rawBody264_294

def rawBody264_296 : StackLang.HolProg 64 :=
.seq rawBody264_254 rawBody264_295

def rawBody264_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody264_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody264_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody264_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody264_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody264_302 : StackLang.HolProg 64 :=
.seq rawBody264_300 rawBody264_301

def rawBody264_303 : StackLang.HolProg 64 :=
.seq rawBody264_299 rawBody264_302

def rawBody264_304 : StackLang.HolProg 64 :=
.seq rawBody264_298 rawBody264_303

def rawBody264_305 : StackLang.HolProg 64 :=
.seq rawBody264_297 rawBody264_304

def rawBody264_306 : StackLang.HolProg 64 :=
.seq rawBody264_296 rawBody264_305

def rawBody264_307 : StackLang.HolProg 64 :=
.seq rawBody264_253 rawBody264_306

def rawBody264_308 : StackLang.HolProg 64 :=
.seq rawBody264_252 rawBody264_307

def rawBody264_309 : StackLang.HolProg 64 :=
.seq rawBody264_251 rawBody264_308

def rawBody264_310 : StackLang.HolProg 64 :=
.seq rawBody264_208 rawBody264_309

def rawBody264_311 : StackLang.HolProg 64 :=
.seq rawBody264_207 rawBody264_310

def rawBody264_312 : StackLang.HolProg 64 :=
.seq rawBody264_206 rawBody264_311

def rawBody264_313 : StackLang.HolProg 64 :=
.seq rawBody264_205 rawBody264_312

def rawBody264_314 : StackLang.HolProg 64 :=
.seq rawBody264_204 rawBody264_313

def rawBody264_315 : StackLang.HolProg 64 :=
.seq rawBody264_203 rawBody264_314

def rawBody264_316 : StackLang.HolProg 64 :=
.seq rawBody264_156 rawBody264_315

def rawBody264_317 : StackLang.HolProg 64 :=
.seq rawBody264_155 rawBody264_316

def rawBody264_318 : StackLang.HolProg 64 :=
.seq rawBody264_154 rawBody264_317

def rawBody264_319 : StackLang.HolProg 64 :=
.seq rawBody264_153 rawBody264_318

def rawBody264_320 : StackLang.HolProg 64 :=
.seq rawBody264_152 rawBody264_319

def rawBody264_321 : StackLang.HolProg 64 :=
.seq rawBody264_151 rawBody264_320

def rawBody264_322 : StackLang.HolProg 64 :=
.seq rawBody264_150 rawBody264_321

def rawBody264_323 : StackLang.HolProg 64 :=
.seq rawBody264_149 rawBody264_322

def rawBody264_324 : StackLang.HolProg 64 :=
.seq rawBody264_102 rawBody264_323

def rawBody264_325 : StackLang.HolProg 64 :=
.seq rawBody264_99 rawBody264_324

def rawBody264_326 : StackLang.HolProg 64 :=
.seq rawBody264_98 rawBody264_325

def rawBody264_327 : StackLang.HolProg 64 :=
.seq rawBody264_97 rawBody264_326

def rawBody264_328 : StackLang.HolProg 64 :=
.seq rawBody264_96 rawBody264_327

def rawBody264_329 : StackLang.HolProg 64 :=
.seq rawBody264_51 rawBody264_328

def rawBody264_330 : StackLang.HolProg 64 :=
.seq rawBody264_50 rawBody264_329

def rawBody264_331 : StackLang.HolProg 64 :=
.seq rawBody264_49 rawBody264_330

def rawBody264_332 : StackLang.HolProg 64 :=
.seq rawBody264_48 rawBody264_331

def rawBody264_333 : StackLang.HolProg 64 :=
.seq rawBody264_5 rawBody264_332

def rawBody264_334 : StackLang.HolProg 64 :=
.seq rawBody264_0 rawBody264_333

def raw264 : StackLang.HolProg 64 := rawBody264_334
theorem raw264_eq : StackRawCall.compTop RawInfo.rawInfo (function264 (.list [])).1 = raw264 := by
  kernel_rfl
#print axioms raw264_eq
end InitECandidate.Proofs.BackendStages
