import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function366
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody366_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody366_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody366_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 208#64))

def rawBody366_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 216#64))

def rawBody366_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody366_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody366_7 : StackLang.HolProg 64 :=
.seq rawBody366_5 rawBody366_6

def rawBody366_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1061#64)

def rawBody366_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody366_11 : StackLang.HolProg 64 :=
.seq rawBody366_9 rawBody366_10

def rawBody366_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody366_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody366_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody366_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 3

def rawBody366_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody366_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody366_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody366_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody366_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody366_22 : StackLang.HolProg 64 :=
.seq rawBody366_20 rawBody366_21

def rawBody366_23 : StackLang.HolProg 64 :=
.seq rawBody366_19 rawBody366_22

def rawBody366_24 : StackLang.HolProg 64 :=
.seq rawBody366_18 rawBody366_23

def rawBody366_25 : StackLang.HolProg 64 :=
.seq rawBody366_17 rawBody366_24

def rawBody366_26 : StackLang.HolProg 64 :=
.seq rawBody366_16 rawBody366_25

def rawBody366_27 : StackLang.HolProg 64 :=
.seq rawBody366_15 rawBody366_26

def rawBody366_28 : StackLang.HolProg 64 :=
.seq rawBody366_14 rawBody366_27

def rawBody366_29 : StackLang.HolProg 64 :=
.seq rawBody366_13 rawBody366_28

def rawBody366_30 : StackLang.HolProg 64 :=
.seq rawBody366_12 rawBody366_29

def rawBody366_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody366_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody366_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody366_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody366_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody366_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody366_39 : StackLang.HolProg 64 :=
.seq rawBody366_37 rawBody366_38

def rawBody366_40 : StackLang.HolProg 64 :=
.seq rawBody366_36 rawBody366_39

def rawBody366_41 : StackLang.HolProg 64 :=
.seq rawBody366_35 rawBody366_40

def rawBody366_42 : StackLang.HolProg 64 :=
.seq rawBody366_34 rawBody366_41

def rawBody366_43 : StackLang.HolProg 64 :=
.seq rawBody366_33 rawBody366_42

def rawBody366_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody366_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody366_46 : StackLang.HolProg 64 :=
.seq rawBody366_44 rawBody366_45

def rawBody366_47 : StackLang.HolProg 64 :=
.call (some (rawBody366_43, 0, 366, 2)) (Sum.inl 360) (some (rawBody366_46, 366, 3))

def rawBody366_48 : StackLang.HolProg 64 :=
.seq rawBody366_32 rawBody366_47

def rawBody366_49 : StackLang.HolProg 64 :=
.seq rawBody366_31 rawBody366_48

def rawBody366_50 : StackLang.HolProg 64 :=
.seq rawBody366_30 rawBody366_49

def rawBody366_51 : StackLang.HolProg 64 :=
.seq rawBody366_11 rawBody366_50

def rawBody366_52 : StackLang.HolProg 64 :=
.seq rawBody366_8 rawBody366_51

def rawBody366_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody366_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def rawBody366_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 280#64))

def rawBody366_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody366_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody366_60 : StackLang.HolProg 64 :=
.seq rawBody366_58 rawBody366_59

def rawBody366_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1062#64)

def rawBody366_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody366_64 : StackLang.HolProg 64 :=
.seq rawBody366_62 rawBody366_63

def rawBody366_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody366_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody366_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody366_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 366 5

def rawBody366_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody366_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody366_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody366_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody366_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody366_75 : StackLang.HolProg 64 :=
.seq rawBody366_73 rawBody366_74

def rawBody366_76 : StackLang.HolProg 64 :=
.seq rawBody366_72 rawBody366_75

def rawBody366_77 : StackLang.HolProg 64 :=
.seq rawBody366_71 rawBody366_76

def rawBody366_78 : StackLang.HolProg 64 :=
.seq rawBody366_70 rawBody366_77

def rawBody366_79 : StackLang.HolProg 64 :=
.seq rawBody366_69 rawBody366_78

def rawBody366_80 : StackLang.HolProg 64 :=
.seq rawBody366_68 rawBody366_79

def rawBody366_81 : StackLang.HolProg 64 :=
.seq rawBody366_67 rawBody366_80

def rawBody366_82 : StackLang.HolProg 64 :=
.seq rawBody366_66 rawBody366_81

def rawBody366_83 : StackLang.HolProg 64 :=
.seq rawBody366_65 rawBody366_82

def rawBody366_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody366_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody366_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody366_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody366_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody366_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody366_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody366_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody366_94 : StackLang.HolProg 64 :=
.seq rawBody366_92 rawBody366_93

def rawBody366_95 : StackLang.HolProg 64 :=
.seq rawBody366_91 rawBody366_94

def rawBody366_96 : StackLang.HolProg 64 :=
.seq rawBody366_90 rawBody366_95

def rawBody366_97 : StackLang.HolProg 64 :=
.seq rawBody366_89 rawBody366_96

def rawBody366_98 : StackLang.HolProg 64 :=
.seq rawBody366_88 rawBody366_97

def rawBody366_99 : StackLang.HolProg 64 :=
.seq rawBody366_87 rawBody366_98

def rawBody366_100 : StackLang.HolProg 64 :=
.seq rawBody366_86 rawBody366_99

def rawBody366_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody366_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def rawBody366_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody366_104 : StackLang.HolProg 64 :=
.seq rawBody366_102 rawBody366_103

def rawBody366_105 : StackLang.HolProg 64 :=
.seq rawBody366_101 rawBody366_104

def rawBody366_106 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody366_107 : StackLang.HolProg 64 :=
.seq rawBody366_105 rawBody366_106

def rawBody366_108 : StackLang.HolProg 64 :=
.call (some (rawBody366_100, 0, 366, 4)) (Sum.inl 364) (some (rawBody366_107, 366, 5))

def rawBody366_109 : StackLang.HolProg 64 :=
.seq rawBody366_85 rawBody366_108

def rawBody366_110 : StackLang.HolProg 64 :=
.seq rawBody366_84 rawBody366_109

def rawBody366_111 : StackLang.HolProg 64 :=
.seq rawBody366_83 rawBody366_110

def rawBody366_112 : StackLang.HolProg 64 :=
.seq rawBody366_64 rawBody366_111

def rawBody366_113 : StackLang.HolProg 64 :=
.seq rawBody366_61 rawBody366_112

def rawBody366_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody366_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 264#64))

def rawBody366_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def rawBody366_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody366_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody366_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody366_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 200#64))

def rawBody366_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody366_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 655#64)))

def rawBody366_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody366_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody366_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody366_131 : StackLang.HolProg 64 :=
.seq rawBody366_129 rawBody366_130

def rawBody366_132 : StackLang.HolProg 64 :=
.seq rawBody366_128 rawBody366_131

def rawBody366_133 : StackLang.HolProg 64 :=
.seq rawBody366_127 rawBody366_132

def rawBody366_134 : StackLang.HolProg 64 :=
.seq rawBody366_126 rawBody366_133

def rawBody366_135 : StackLang.HolProg 64 :=
.seq rawBody366_125 rawBody366_134

def rawBody366_136 : StackLang.HolProg 64 :=
.seq rawBody366_124 rawBody366_135

def rawBody366_137 : StackLang.HolProg 64 :=
.seq rawBody366_123 rawBody366_136

def rawBody366_138 : StackLang.HolProg 64 :=
.seq rawBody366_122 rawBody366_137

def rawBody366_139 : StackLang.HolProg 64 :=
.seq rawBody366_121 rawBody366_138

def rawBody366_140 : StackLang.HolProg 64 :=
.seq rawBody366_120 rawBody366_139

def rawBody366_141 : StackLang.HolProg 64 :=
.seq rawBody366_119 rawBody366_140

def rawBody366_142 : StackLang.HolProg 64 :=
.seq rawBody366_118 rawBody366_141

def rawBody366_143 : StackLang.HolProg 64 :=
.seq rawBody366_117 rawBody366_142

def rawBody366_144 : StackLang.HolProg 64 :=
.seq rawBody366_116 rawBody366_143

def rawBody366_145 : StackLang.HolProg 64 :=
.seq rawBody366_115 rawBody366_144

def rawBody366_146 : StackLang.HolProg 64 :=
.seq rawBody366_114 rawBody366_145

def rawBody366_147 : StackLang.HolProg 64 :=
.seq rawBody366_113 rawBody366_146

def rawBody366_148 : StackLang.HolProg 64 :=
.seq rawBody366_60 rawBody366_147

def rawBody366_149 : StackLang.HolProg 64 :=
.seq rawBody366_57 rawBody366_148

def rawBody366_150 : StackLang.HolProg 64 :=
.seq rawBody366_56 rawBody366_149

def rawBody366_151 : StackLang.HolProg 64 :=
.seq rawBody366_55 rawBody366_150

def rawBody366_152 : StackLang.HolProg 64 :=
.seq rawBody366_54 rawBody366_151

def rawBody366_153 : StackLang.HolProg 64 :=
.seq rawBody366_53 rawBody366_152

def rawBody366_154 : StackLang.HolProg 64 :=
.seq rawBody366_52 rawBody366_153

def rawBody366_155 : StackLang.HolProg 64 :=
.seq rawBody366_7 rawBody366_154

def rawBody366_156 : StackLang.HolProg 64 :=
.seq rawBody366_4 rawBody366_155

def rawBody366_157 : StackLang.HolProg 64 :=
.seq rawBody366_3 rawBody366_156

def rawBody366_158 : StackLang.HolProg 64 :=
.seq rawBody366_2 rawBody366_157

def rawBody366_159 : StackLang.HolProg 64 :=
.seq rawBody366_1 rawBody366_158

def rawBody366_160 : StackLang.HolProg 64 :=
.seq rawBody366_0 rawBody366_159

def raw366 : StackLang.HolProg 64 := rawBody366_160
theorem raw366_eq : StackRawCall.compTop RawInfo.rawInfo (function366 (.list [])).1 = raw366 := by
  kernel_rfl
#print axioms raw366_eq
end InitECandidate.Proofs.BackendStages
