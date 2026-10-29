import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function840
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody840_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody840_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody840_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def rawBody840_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody840_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody840_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody840_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody840_7 : StackLang.HolProg 64 :=
.seq rawBody840_5 rawBody840_6

def rawBody840_8 : StackLang.HolProg 64 :=
.seq rawBody840_4 rawBody840_7

def rawBody840_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4206#64)

def rawBody840_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_12 : StackLang.HolProg 64 :=
.seq rawBody840_10 rawBody840_11

def rawBody840_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody840_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody840_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 3

def rawBody840_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody840_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody840_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody840_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody840_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_23 : StackLang.HolProg 64 :=
.seq rawBody840_21 rawBody840_22

def rawBody840_24 : StackLang.HolProg 64 :=
.seq rawBody840_20 rawBody840_23

def rawBody840_25 : StackLang.HolProg 64 :=
.seq rawBody840_19 rawBody840_24

def rawBody840_26 : StackLang.HolProg 64 :=
.seq rawBody840_18 rawBody840_25

def rawBody840_27 : StackLang.HolProg 64 :=
.seq rawBody840_17 rawBody840_26

def rawBody840_28 : StackLang.HolProg 64 :=
.seq rawBody840_16 rawBody840_27

def rawBody840_29 : StackLang.HolProg 64 :=
.seq rawBody840_15 rawBody840_28

def rawBody840_30 : StackLang.HolProg 64 :=
.seq rawBody840_14 rawBody840_29

def rawBody840_31 : StackLang.HolProg 64 :=
.seq rawBody840_13 rawBody840_30

def rawBody840_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody840_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody840_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody840_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody840_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody840_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody840_41 : StackLang.HolProg 64 :=
.seq rawBody840_39 rawBody840_40

def rawBody840_42 : StackLang.HolProg 64 :=
.seq rawBody840_38 rawBody840_41

def rawBody840_43 : StackLang.HolProg 64 :=
.seq rawBody840_37 rawBody840_42

def rawBody840_44 : StackLang.HolProg 64 :=
.seq rawBody840_36 rawBody840_43

def rawBody840_45 : StackLang.HolProg 64 :=
.seq rawBody840_35 rawBody840_44

def rawBody840_46 : StackLang.HolProg 64 :=
.seq rawBody840_34 rawBody840_45

def rawBody840_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody840_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody840_49 : StackLang.HolProg 64 :=
.seq rawBody840_47 rawBody840_48

def rawBody840_50 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody840_51 : StackLang.HolProg 64 :=
.seq rawBody840_49 rawBody840_50

def rawBody840_52 : StackLang.HolProg 64 :=
.call (some (rawBody840_46, 0, 840, 2)) (Sum.inl 180) (some (rawBody840_51, 840, 3))

def rawBody840_53 : StackLang.HolProg 64 :=
.seq rawBody840_33 rawBody840_52

def rawBody840_54 : StackLang.HolProg 64 :=
.seq rawBody840_32 rawBody840_53

def rawBody840_55 : StackLang.HolProg 64 :=
.seq rawBody840_31 rawBody840_54

def rawBody840_56 : StackLang.HolProg 64 :=
.seq rawBody840_12 rawBody840_55

def rawBody840_57 : StackLang.HolProg 64 :=
.seq rawBody840_9 rawBody840_56

def rawBody840_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody840_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody840_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64)))

def rawBody840_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody840_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody840_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody840_66 : StackLang.HolProg 64 :=
.seq rawBody840_64 rawBody840_65

def rawBody840_67 : StackLang.HolProg 64 :=
.seq rawBody840_63 rawBody840_66

def rawBody840_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4207#64)

def rawBody840_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_71 : StackLang.HolProg 64 :=
.seq rawBody840_69 rawBody840_70

def rawBody840_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody840_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody840_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 5

def rawBody840_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody840_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody840_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody840_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody840_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_82 : StackLang.HolProg 64 :=
.seq rawBody840_80 rawBody840_81

def rawBody840_83 : StackLang.HolProg 64 :=
.seq rawBody840_79 rawBody840_82

def rawBody840_84 : StackLang.HolProg 64 :=
.seq rawBody840_78 rawBody840_83

def rawBody840_85 : StackLang.HolProg 64 :=
.seq rawBody840_77 rawBody840_84

def rawBody840_86 : StackLang.HolProg 64 :=
.seq rawBody840_76 rawBody840_85

def rawBody840_87 : StackLang.HolProg 64 :=
.seq rawBody840_75 rawBody840_86

def rawBody840_88 : StackLang.HolProg 64 :=
.seq rawBody840_74 rawBody840_87

def rawBody840_89 : StackLang.HolProg 64 :=
.seq rawBody840_73 rawBody840_88

def rawBody840_90 : StackLang.HolProg 64 :=
.seq rawBody840_72 rawBody840_89

def rawBody840_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody840_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody840_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody840_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody840_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody840_99 : StackLang.HolProg 64 :=
.seq rawBody840_97 rawBody840_98

def rawBody840_100 : StackLang.HolProg 64 :=
.seq rawBody840_96 rawBody840_99

def rawBody840_101 : StackLang.HolProg 64 :=
.seq rawBody840_95 rawBody840_100

def rawBody840_102 : StackLang.HolProg 64 :=
.seq rawBody840_94 rawBody840_101

def rawBody840_103 : StackLang.HolProg 64 :=
.seq rawBody840_93 rawBody840_102

def rawBody840_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody840_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody840_106 : StackLang.HolProg 64 :=
.seq rawBody840_104 rawBody840_105

def rawBody840_107 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody840_108 : StackLang.HolProg 64 :=
.seq rawBody840_106 rawBody840_107

def rawBody840_109 : StackLang.HolProg 64 :=
.call (some (rawBody840_103, 0, 840, 4)) (Sum.inl 77) (some (rawBody840_108, 840, 5))

def rawBody840_110 : StackLang.HolProg 64 :=
.seq rawBody840_92 rawBody840_109

def rawBody840_111 : StackLang.HolProg 64 :=
.seq rawBody840_91 rawBody840_110

def rawBody840_112 : StackLang.HolProg 64 :=
.seq rawBody840_90 rawBody840_111

def rawBody840_113 : StackLang.HolProg 64 :=
.seq rawBody840_71 rawBody840_112

def rawBody840_114 : StackLang.HolProg 64 :=
.seq rawBody840_68 rawBody840_113

def rawBody840_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody840_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody840_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody840_118 : StackLang.HolProg 64 :=
.seq rawBody840_116 rawBody840_117

def rawBody840_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4208#64)

def rawBody840_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_122 : StackLang.HolProg 64 :=
.seq rawBody840_120 rawBody840_121

def rawBody840_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody840_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody840_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody840_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 840 7

def rawBody840_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody840_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody840_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody840_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody840_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_133 : StackLang.HolProg 64 :=
.seq rawBody840_131 rawBody840_132

def rawBody840_134 : StackLang.HolProg 64 :=
.seq rawBody840_130 rawBody840_133

def rawBody840_135 : StackLang.HolProg 64 :=
.seq rawBody840_129 rawBody840_134

def rawBody840_136 : StackLang.HolProg 64 :=
.seq rawBody840_128 rawBody840_135

def rawBody840_137 : StackLang.HolProg 64 :=
.seq rawBody840_127 rawBody840_136

def rawBody840_138 : StackLang.HolProg 64 :=
.seq rawBody840_126 rawBody840_137

def rawBody840_139 : StackLang.HolProg 64 :=
.seq rawBody840_125 rawBody840_138

def rawBody840_140 : StackLang.HolProg 64 :=
.seq rawBody840_124 rawBody840_139

def rawBody840_141 : StackLang.HolProg 64 :=
.seq rawBody840_123 rawBody840_140

def rawBody840_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody840_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody840_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody840_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody840_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody840_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody840_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody840_151 : StackLang.HolProg 64 :=
.seq rawBody840_149 rawBody840_150

def rawBody840_152 : StackLang.HolProg 64 :=
.seq rawBody840_148 rawBody840_151

def rawBody840_153 : StackLang.HolProg 64 :=
.seq rawBody840_147 rawBody840_152

def rawBody840_154 : StackLang.HolProg 64 :=
.seq rawBody840_146 rawBody840_153

def rawBody840_155 : StackLang.HolProg 64 :=
.seq rawBody840_145 rawBody840_154

def rawBody840_156 : StackLang.HolProg 64 :=
.seq rawBody840_144 rawBody840_155

def rawBody840_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody840_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody840_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody840_160 : StackLang.HolProg 64 :=
.seq rawBody840_158 rawBody840_159

def rawBody840_161 : StackLang.HolProg 64 :=
.seq rawBody840_157 rawBody840_160

def rawBody840_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody840_163 : StackLang.HolProg 64 :=
.seq rawBody840_161 rawBody840_162

def rawBody840_164 : StackLang.HolProg 64 :=
.call (some (rawBody840_156, 0, 840, 6)) (Sum.inl 178) (some (rawBody840_163, 840, 7))

def rawBody840_165 : StackLang.HolProg 64 :=
.seq rawBody840_143 rawBody840_164

def rawBody840_166 : StackLang.HolProg 64 :=
.seq rawBody840_142 rawBody840_165

def rawBody840_167 : StackLang.HolProg 64 :=
.seq rawBody840_141 rawBody840_166

def rawBody840_168 : StackLang.HolProg 64 :=
.seq rawBody840_122 rawBody840_167

def rawBody840_169 : StackLang.HolProg 64 :=
.seq rawBody840_119 rawBody840_168

def rawBody840_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody840_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody840_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody840_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody840_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody840_176 : StackLang.HolProg 64 :=
.seq rawBody840_174 rawBody840_175

def rawBody840_177 : StackLang.HolProg 64 :=
.seq rawBody840_173 rawBody840_176

def rawBody840_178 : StackLang.HolProg 64 :=
.seq rawBody840_172 rawBody840_177

def rawBody840_179 : StackLang.HolProg 64 :=
.seq rawBody840_171 rawBody840_178

def rawBody840_180 : StackLang.HolProg 64 :=
.seq rawBody840_170 rawBody840_179

def rawBody840_181 : StackLang.HolProg 64 :=
.seq rawBody840_169 rawBody840_180

def rawBody840_182 : StackLang.HolProg 64 :=
.seq rawBody840_118 rawBody840_181

def rawBody840_183 : StackLang.HolProg 64 :=
.seq rawBody840_115 rawBody840_182

def rawBody840_184 : StackLang.HolProg 64 :=
.seq rawBody840_114 rawBody840_183

def rawBody840_185 : StackLang.HolProg 64 :=
.seq rawBody840_67 rawBody840_184

def rawBody840_186 : StackLang.HolProg 64 :=
.seq rawBody840_62 rawBody840_185

def rawBody840_187 : StackLang.HolProg 64 :=
.seq rawBody840_61 rawBody840_186

def rawBody840_188 : StackLang.HolProg 64 :=
.seq rawBody840_60 rawBody840_187

def rawBody840_189 : StackLang.HolProg 64 :=
.seq rawBody840_59 rawBody840_188

def rawBody840_190 : StackLang.HolProg 64 :=
.seq rawBody840_58 rawBody840_189

def rawBody840_191 : StackLang.HolProg 64 :=
.seq rawBody840_57 rawBody840_190

def rawBody840_192 : StackLang.HolProg 64 :=
.seq rawBody840_8 rawBody840_191

def rawBody840_193 : StackLang.HolProg 64 :=
.seq rawBody840_3 rawBody840_192

def rawBody840_194 : StackLang.HolProg 64 :=
.seq rawBody840_2 rawBody840_193

def rawBody840_195 : StackLang.HolProg 64 :=
.seq rawBody840_1 rawBody840_194

def rawBody840_196 : StackLang.HolProg 64 :=
.seq rawBody840_0 rawBody840_195

def raw840 : StackLang.HolProg 64 := rawBody840_196
theorem raw840_eq : StackRawCall.compTop RawInfo.rawInfo (function840 (.list [])).1 = raw840 := by
  kernel_rfl
#print axioms raw840_eq
end InitECandidate.Proofs.BackendStages
