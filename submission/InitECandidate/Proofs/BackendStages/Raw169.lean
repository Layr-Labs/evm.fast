import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function169
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody169_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody169_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody169_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody169_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def rawBody169_4 : StackLang.HolProg 64 :=
.seq rawBody169_2 rawBody169_3

def rawBody169_5 : StackLang.HolProg 64 :=
.seq rawBody169_1 rawBody169_4

def rawBody169_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 187#64)

def rawBody169_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_9 : StackLang.HolProg 64 :=
.seq rawBody169_7 rawBody169_8

def rawBody169_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody169_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody169_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 3

def rawBody169_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody169_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody169_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody169_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody169_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_20 : StackLang.HolProg 64 :=
.seq rawBody169_18 rawBody169_19

def rawBody169_21 : StackLang.HolProg 64 :=
.seq rawBody169_17 rawBody169_20

def rawBody169_22 : StackLang.HolProg 64 :=
.seq rawBody169_16 rawBody169_21

def rawBody169_23 : StackLang.HolProg 64 :=
.seq rawBody169_15 rawBody169_22

def rawBody169_24 : StackLang.HolProg 64 :=
.seq rawBody169_14 rawBody169_23

def rawBody169_25 : StackLang.HolProg 64 :=
.seq rawBody169_13 rawBody169_24

def rawBody169_26 : StackLang.HolProg 64 :=
.seq rawBody169_12 rawBody169_25

def rawBody169_27 : StackLang.HolProg 64 :=
.seq rawBody169_11 rawBody169_26

def rawBody169_28 : StackLang.HolProg 64 :=
.seq rawBody169_10 rawBody169_27

def rawBody169_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody169_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody169_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody169_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody169_36 : StackLang.HolProg 64 :=
.seq rawBody169_34 rawBody169_35

def rawBody169_37 : StackLang.HolProg 64 :=
.seq rawBody169_33 rawBody169_36

def rawBody169_38 : StackLang.HolProg 64 :=
.seq rawBody169_32 rawBody169_37

def rawBody169_39 : StackLang.HolProg 64 :=
.seq rawBody169_31 rawBody169_38

def rawBody169_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody169_42 : StackLang.HolProg 64 :=
.seq rawBody169_40 rawBody169_41

def rawBody169_43 : StackLang.HolProg 64 :=
.call (some (rawBody169_39, 0, 169, 2)) (Sum.inl 167) (some (rawBody169_42, 169, 3))

def rawBody169_44 : StackLang.HolProg 64 :=
.seq rawBody169_30 rawBody169_43

def rawBody169_45 : StackLang.HolProg 64 :=
.seq rawBody169_29 rawBody169_44

def rawBody169_46 : StackLang.HolProg 64 :=
.seq rawBody169_28 rawBody169_45

def rawBody169_47 : StackLang.HolProg 64 :=
.seq rawBody169_9 rawBody169_46

def rawBody169_48 : StackLang.HolProg 64 :=
.seq rawBody169_6 rawBody169_47

def rawBody169_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody169_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody169_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 188#64)

def rawBody169_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_56 : StackLang.HolProg 64 :=
.seq rawBody169_54 rawBody169_55

def rawBody169_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody169_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody169_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 5

def rawBody169_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody169_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody169_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody169_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody169_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_67 : StackLang.HolProg 64 :=
.seq rawBody169_65 rawBody169_66

def rawBody169_68 : StackLang.HolProg 64 :=
.seq rawBody169_64 rawBody169_67

def rawBody169_69 : StackLang.HolProg 64 :=
.seq rawBody169_63 rawBody169_68

def rawBody169_70 : StackLang.HolProg 64 :=
.seq rawBody169_62 rawBody169_69

def rawBody169_71 : StackLang.HolProg 64 :=
.seq rawBody169_61 rawBody169_70

def rawBody169_72 : StackLang.HolProg 64 :=
.seq rawBody169_60 rawBody169_71

def rawBody169_73 : StackLang.HolProg 64 :=
.seq rawBody169_59 rawBody169_72

def rawBody169_74 : StackLang.HolProg 64 :=
.seq rawBody169_58 rawBody169_73

def rawBody169_75 : StackLang.HolProg 64 :=
.seq rawBody169_57 rawBody169_74

def rawBody169_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody169_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody169_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody169_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody169_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody169_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody169_85 : StackLang.HolProg 64 :=
.seq rawBody169_83 rawBody169_84

def rawBody169_86 : StackLang.HolProg 64 :=
.seq rawBody169_82 rawBody169_85

def rawBody169_87 : StackLang.HolProg 64 :=
.seq rawBody169_81 rawBody169_86

def rawBody169_88 : StackLang.HolProg 64 :=
.seq rawBody169_80 rawBody169_87

def rawBody169_89 : StackLang.HolProg 64 :=
.seq rawBody169_79 rawBody169_88

def rawBody169_90 : StackLang.HolProg 64 :=
.seq rawBody169_78 rawBody169_89

def rawBody169_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody169_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody169_93 : StackLang.HolProg 64 :=
.seq rawBody169_91 rawBody169_92

def rawBody169_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody169_95 : StackLang.HolProg 64 :=
.seq rawBody169_93 rawBody169_94

def rawBody169_96 : StackLang.HolProg 64 :=
.call (some (rawBody169_90, 0, 169, 4)) (Sum.inl 68) (some (rawBody169_95, 169, 5))

def rawBody169_97 : StackLang.HolProg 64 :=
.seq rawBody169_77 rawBody169_96

def rawBody169_98 : StackLang.HolProg 64 :=
.seq rawBody169_76 rawBody169_97

def rawBody169_99 : StackLang.HolProg 64 :=
.seq rawBody169_75 rawBody169_98

def rawBody169_100 : StackLang.HolProg 64 :=
.seq rawBody169_56 rawBody169_99

def rawBody169_101 : StackLang.HolProg 64 :=
.seq rawBody169_53 rawBody169_100

def rawBody169_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody169_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody169_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody169_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody169_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody169_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody169_113 : StackLang.HolProg 64 :=
.seq rawBody169_111 rawBody169_112

def rawBody169_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody169_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody169_116 : StackLang.HolProg 64 :=
.seq rawBody169_114 rawBody169_115

def rawBody169_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody169_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody169_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody169_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody169_121 : StackLang.HolProg 64 :=
.seq rawBody169_119 rawBody169_120

def rawBody169_122 : StackLang.HolProg 64 :=
.seq rawBody169_118 rawBody169_121

def rawBody169_123 : StackLang.HolProg 64 :=
.seq rawBody169_117 rawBody169_122

def rawBody169_124 : StackLang.HolProg 64 :=
.seq rawBody169_116 rawBody169_123

def rawBody169_125 : StackLang.HolProg 64 :=
.seq rawBody169_113 rawBody169_124

def rawBody169_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 189#64)

def rawBody169_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_129 : StackLang.HolProg 64 :=
.seq rawBody169_127 rawBody169_128

def rawBody169_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody169_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody169_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody169_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 169 7

def rawBody169_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody169_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody169_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody169_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody169_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_140 : StackLang.HolProg 64 :=
.seq rawBody169_138 rawBody169_139

def rawBody169_141 : StackLang.HolProg 64 :=
.seq rawBody169_137 rawBody169_140

def rawBody169_142 : StackLang.HolProg 64 :=
.seq rawBody169_136 rawBody169_141

def rawBody169_143 : StackLang.HolProg 64 :=
.seq rawBody169_135 rawBody169_142

def rawBody169_144 : StackLang.HolProg 64 :=
.seq rawBody169_134 rawBody169_143

def rawBody169_145 : StackLang.HolProg 64 :=
.seq rawBody169_133 rawBody169_144

def rawBody169_146 : StackLang.HolProg 64 :=
.seq rawBody169_132 rawBody169_145

def rawBody169_147 : StackLang.HolProg 64 :=
.seq rawBody169_131 rawBody169_146

def rawBody169_148 : StackLang.HolProg 64 :=
.seq rawBody169_130 rawBody169_147

def rawBody169_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody169_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody169_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody169_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody169_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody169_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def rawBody169_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody169_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody169_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody169_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody169_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody169_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody169_163 : StackLang.HolProg 64 :=
.seq rawBody169_161 rawBody169_162

def rawBody169_164 : StackLang.HolProg 64 :=
.seq rawBody169_160 rawBody169_163

def rawBody169_165 : StackLang.HolProg 64 :=
.seq rawBody169_159 rawBody169_164

def rawBody169_166 : StackLang.HolProg 64 :=
.seq rawBody169_158 rawBody169_165

def rawBody169_167 : StackLang.HolProg 64 :=
.seq rawBody169_157 rawBody169_166

def rawBody169_168 : StackLang.HolProg 64 :=
.seq rawBody169_156 rawBody169_167

def rawBody169_169 : StackLang.HolProg 64 :=
.seq rawBody169_155 rawBody169_168

def rawBody169_170 : StackLang.HolProg 64 :=
.seq rawBody169_154 rawBody169_169

def rawBody169_171 : StackLang.HolProg 64 :=
.seq rawBody169_153 rawBody169_170

def rawBody169_172 : StackLang.HolProg 64 :=
.seq rawBody169_152 rawBody169_171

def rawBody169_173 : StackLang.HolProg 64 :=
.seq rawBody169_151 rawBody169_172

def rawBody169_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def rawBody169_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def rawBody169_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody169_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 4

def rawBody169_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody169_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody169_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody169_181 : StackLang.HolProg 64 :=
.seq rawBody169_179 rawBody169_180

def rawBody169_182 : StackLang.HolProg 64 :=
.seq rawBody169_178 rawBody169_181

def rawBody169_183 : StackLang.HolProg 64 :=
.seq rawBody169_177 rawBody169_182

def rawBody169_184 : StackLang.HolProg 64 :=
.seq rawBody169_176 rawBody169_183

def rawBody169_185 : StackLang.HolProg 64 :=
.seq rawBody169_175 rawBody169_184

def rawBody169_186 : StackLang.HolProg 64 :=
.seq rawBody169_174 rawBody169_185

def rawBody169_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody169_188 : StackLang.HolProg 64 :=
.seq rawBody169_186 rawBody169_187

def rawBody169_189 : StackLang.HolProg 64 :=
.call (some (rawBody169_173, 0, 169, 6)) (Sum.inl 168) (some (rawBody169_188, 169, 7))

def rawBody169_190 : StackLang.HolProg 64 :=
.seq rawBody169_150 rawBody169_189

def rawBody169_191 : StackLang.HolProg 64 :=
.seq rawBody169_149 rawBody169_190

def rawBody169_192 : StackLang.HolProg 64 :=
.seq rawBody169_148 rawBody169_191

def rawBody169_193 : StackLang.HolProg 64 :=
.seq rawBody169_129 rawBody169_192

def rawBody169_194 : StackLang.HolProg 64 :=
.seq rawBody169_126 rawBody169_193

def rawBody169_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody169_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody169_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody169_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody169_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody169_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody169_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody169_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody169_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 7

def rawBody169_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody169_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def rawBody169_215 : StackLang.HolProg 64 :=
.seq rawBody169_213 rawBody169_214

def rawBody169_216 : StackLang.HolProg 64 :=
.seq rawBody169_212 rawBody169_215

def rawBody169_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody169_218 : StackLang.HolProg 64 :=
.seq rawBody169_216 rawBody169_217

def rawBody169_219 : StackLang.HolProg 64 :=
.seq rawBody169_211 rawBody169_218

def rawBody169_220 : StackLang.HolProg 64 :=
.seq rawBody169_210 rawBody169_219

def rawBody169_221 : StackLang.HolProg 64 :=
.seq rawBody169_209 rawBody169_220

def rawBody169_222 : StackLang.HolProg 64 :=
.seq rawBody169_208 rawBody169_221

def rawBody169_223 : StackLang.HolProg 64 :=
.seq rawBody169_207 rawBody169_222

def rawBody169_224 : StackLang.HolProg 64 :=
.seq rawBody169_206 rawBody169_223

def rawBody169_225 : StackLang.HolProg 64 :=
.seq rawBody169_205 rawBody169_224

def rawBody169_226 : StackLang.HolProg 64 :=
.seq rawBody169_204 rawBody169_225

def rawBody169_227 : StackLang.HolProg 64 :=
.seq rawBody169_203 rawBody169_226

def rawBody169_228 : StackLang.HolProg 64 :=
.seq rawBody169_202 rawBody169_227

def rawBody169_229 : StackLang.HolProg 64 :=
.seq rawBody169_201 rawBody169_228

def rawBody169_230 : StackLang.HolProg 64 :=
.seq rawBody169_200 rawBody169_229

def rawBody169_231 : StackLang.HolProg 64 :=
.seq rawBody169_199 rawBody169_230

def rawBody169_232 : StackLang.HolProg 64 :=
.seq rawBody169_198 rawBody169_231

def rawBody169_233 : StackLang.HolProg 64 :=
.seq rawBody169_197 rawBody169_232

def rawBody169_234 : StackLang.HolProg 64 :=
.seq rawBody169_196 rawBody169_233

def rawBody169_235 : StackLang.HolProg 64 :=
.seq rawBody169_195 rawBody169_234

def rawBody169_236 : StackLang.HolProg 64 :=
.seq rawBody169_194 rawBody169_235

def rawBody169_237 : StackLang.HolProg 64 :=
.seq rawBody169_125 rawBody169_236

def rawBody169_238 : StackLang.HolProg 64 :=
.seq rawBody169_110 rawBody169_237

def rawBody169_239 : StackLang.HolProg 64 :=
.seq rawBody169_109 rawBody169_238

def rawBody169_240 : StackLang.HolProg 64 :=
.seq rawBody169_108 rawBody169_239

def rawBody169_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody169_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody169_244 : StackLang.HolProg 64 :=
.seq rawBody169_242 rawBody169_243

def rawBody169_245 : StackLang.HolProg 64 :=
.seq rawBody169_241 rawBody169_244

def rawBody169_246 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody169_240 rawBody169_245

def rawBody169_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def rawBody169_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody169_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody169_251 : StackLang.HolProg 64 :=
.seq rawBody169_249 rawBody169_250

def rawBody169_252 : StackLang.HolProg 64 :=
.seq rawBody169_248 rawBody169_251

def rawBody169_253 : StackLang.HolProg 64 :=
.seq rawBody169_247 rawBody169_252

def rawBody169_254 : StackLang.HolProg 64 :=
.seq rawBody169_246 rawBody169_253

def rawBody169_255 : StackLang.HolProg 64 :=
.seq rawBody169_107 rawBody169_254

def rawBody169_256 : StackLang.HolProg 64 :=
.loop rawBody169_255

def rawBody169_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody169_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 6

def rawBody169_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody169_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody169_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody169_262 : StackLang.HolProg 64 :=
.seq rawBody169_260 rawBody169_261

def rawBody169_263 : StackLang.HolProg 64 :=
.seq rawBody169_259 rawBody169_262

def rawBody169_264 : StackLang.HolProg 64 :=
.seq rawBody169_258 rawBody169_263

def rawBody169_265 : StackLang.HolProg 64 :=
.seq rawBody169_257 rawBody169_264

def rawBody169_266 : StackLang.HolProg 64 :=
.seq rawBody169_256 rawBody169_265

def rawBody169_267 : StackLang.HolProg 64 :=
.seq rawBody169_106 rawBody169_266

def rawBody169_268 : StackLang.HolProg 64 :=
.seq rawBody169_105 rawBody169_267

def rawBody169_269 : StackLang.HolProg 64 :=
.seq rawBody169_104 rawBody169_268

def rawBody169_270 : StackLang.HolProg 64 :=
.seq rawBody169_103 rawBody169_269

def rawBody169_271 : StackLang.HolProg 64 :=
.seq rawBody169_102 rawBody169_270

def rawBody169_272 : StackLang.HolProg 64 :=
.seq rawBody169_101 rawBody169_271

def rawBody169_273 : StackLang.HolProg 64 :=
.seq rawBody169_52 rawBody169_272

def rawBody169_274 : StackLang.HolProg 64 :=
.seq rawBody169_51 rawBody169_273

def rawBody169_275 : StackLang.HolProg 64 :=
.seq rawBody169_50 rawBody169_274

def rawBody169_276 : StackLang.HolProg 64 :=
.seq rawBody169_49 rawBody169_275

def rawBody169_277 : StackLang.HolProg 64 :=
.seq rawBody169_48 rawBody169_276

def rawBody169_278 : StackLang.HolProg 64 :=
.seq rawBody169_5 rawBody169_277

def rawBody169_279 : StackLang.HolProg 64 :=
.seq rawBody169_0 rawBody169_278

def raw169 : StackLang.HolProg 64 := rawBody169_279
theorem raw169_eq : StackRawCall.compTop RawInfo.rawInfo (function169 (.list [])).1 = raw169 := by
  kernel_rfl
#print axioms raw169_eq
end InitECandidate.Proofs.BackendStages
