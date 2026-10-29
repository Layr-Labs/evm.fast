import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function430
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody430_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody430_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody430_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody430_3 : StackLang.HolProg 64 :=
.seq rawBody430_1 rawBody430_2

def rawBody430_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1290#64)

def rawBody430_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_7 : StackLang.HolProg 64 :=
.seq rawBody430_5 rawBody430_6

def rawBody430_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody430_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody430_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 3

def rawBody430_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody430_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody430_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody430_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody430_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_18 : StackLang.HolProg 64 :=
.seq rawBody430_16 rawBody430_17

def rawBody430_19 : StackLang.HolProg 64 :=
.seq rawBody430_15 rawBody430_18

def rawBody430_20 : StackLang.HolProg 64 :=
.seq rawBody430_14 rawBody430_19

def rawBody430_21 : StackLang.HolProg 64 :=
.seq rawBody430_13 rawBody430_20

def rawBody430_22 : StackLang.HolProg 64 :=
.seq rawBody430_12 rawBody430_21

def rawBody430_23 : StackLang.HolProg 64 :=
.seq rawBody430_11 rawBody430_22

def rawBody430_24 : StackLang.HolProg 64 :=
.seq rawBody430_10 rawBody430_23

def rawBody430_25 : StackLang.HolProg 64 :=
.seq rawBody430_9 rawBody430_24

def rawBody430_26 : StackLang.HolProg 64 :=
.seq rawBody430_8 rawBody430_25

def rawBody430_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody430_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody430_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody430_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody430_34 : StackLang.HolProg 64 :=
.seq rawBody430_32 rawBody430_33

def rawBody430_35 : StackLang.HolProg 64 :=
.seq rawBody430_31 rawBody430_34

def rawBody430_36 : StackLang.HolProg 64 :=
.seq rawBody430_30 rawBody430_35

def rawBody430_37 : StackLang.HolProg 64 :=
.seq rawBody430_29 rawBody430_36

def rawBody430_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody430_40 : StackLang.HolProg 64 :=
.seq rawBody430_38 rawBody430_39

def rawBody430_41 : StackLang.HolProg 64 :=
.call (some (rawBody430_37, 0, 430, 2)) (Sum.inl 407) (some (rawBody430_40, 430, 3))

def rawBody430_42 : StackLang.HolProg 64 :=
.seq rawBody430_28 rawBody430_41

def rawBody430_43 : StackLang.HolProg 64 :=
.seq rawBody430_27 rawBody430_42

def rawBody430_44 : StackLang.HolProg 64 :=
.seq rawBody430_26 rawBody430_43

def rawBody430_45 : StackLang.HolProg 64 :=
.seq rawBody430_7 rawBody430_44

def rawBody430_46 : StackLang.HolProg 64 :=
.seq rawBody430_4 rawBody430_45

def rawBody430_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody430_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody430_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1291#64)

def rawBody430_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_52 : StackLang.HolProg 64 :=
.seq rawBody430_50 rawBody430_51

def rawBody430_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody430_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody430_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 5

def rawBody430_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody430_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody430_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody430_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody430_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_63 : StackLang.HolProg 64 :=
.seq rawBody430_61 rawBody430_62

def rawBody430_64 : StackLang.HolProg 64 :=
.seq rawBody430_60 rawBody430_63

def rawBody430_65 : StackLang.HolProg 64 :=
.seq rawBody430_59 rawBody430_64

def rawBody430_66 : StackLang.HolProg 64 :=
.seq rawBody430_58 rawBody430_65

def rawBody430_67 : StackLang.HolProg 64 :=
.seq rawBody430_57 rawBody430_66

def rawBody430_68 : StackLang.HolProg 64 :=
.seq rawBody430_56 rawBody430_67

def rawBody430_69 : StackLang.HolProg 64 :=
.seq rawBody430_55 rawBody430_68

def rawBody430_70 : StackLang.HolProg 64 :=
.seq rawBody430_54 rawBody430_69

def rawBody430_71 : StackLang.HolProg 64 :=
.seq rawBody430_53 rawBody430_70

def rawBody430_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody430_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody430_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody430_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody430_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody430_80 : StackLang.HolProg 64 :=
.seq rawBody430_78 rawBody430_79

def rawBody430_81 : StackLang.HolProg 64 :=
.seq rawBody430_77 rawBody430_80

def rawBody430_82 : StackLang.HolProg 64 :=
.seq rawBody430_76 rawBody430_81

def rawBody430_83 : StackLang.HolProg 64 :=
.seq rawBody430_75 rawBody430_82

def rawBody430_84 : StackLang.HolProg 64 :=
.seq rawBody430_74 rawBody430_83

def rawBody430_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody430_86 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody430_87 : StackLang.HolProg 64 :=
.seq rawBody430_85 rawBody430_86

def rawBody430_88 : StackLang.HolProg 64 :=
.call (some (rawBody430_84, 0, 430, 4)) (Sum.inl 395) (some (rawBody430_87, 430, 5))

def rawBody430_89 : StackLang.HolProg 64 :=
.seq rawBody430_73 rawBody430_88

def rawBody430_90 : StackLang.HolProg 64 :=
.seq rawBody430_72 rawBody430_89

def rawBody430_91 : StackLang.HolProg 64 :=
.seq rawBody430_71 rawBody430_90

def rawBody430_92 : StackLang.HolProg 64 :=
.seq rawBody430_52 rawBody430_91

def rawBody430_93 : StackLang.HolProg 64 :=
.seq rawBody430_49 rawBody430_92

def rawBody430_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody430_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody430_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody430_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody430_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody430_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1292#64)

def rawBody430_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_104 : StackLang.HolProg 64 :=
.seq rawBody430_102 rawBody430_103

def rawBody430_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody430_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody430_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody430_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 430 7

def rawBody430_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody430_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody430_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody430_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody430_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_115 : StackLang.HolProg 64 :=
.seq rawBody430_113 rawBody430_114

def rawBody430_116 : StackLang.HolProg 64 :=
.seq rawBody430_112 rawBody430_115

def rawBody430_117 : StackLang.HolProg 64 :=
.seq rawBody430_111 rawBody430_116

def rawBody430_118 : StackLang.HolProg 64 :=
.seq rawBody430_110 rawBody430_117

def rawBody430_119 : StackLang.HolProg 64 :=
.seq rawBody430_109 rawBody430_118

def rawBody430_120 : StackLang.HolProg 64 :=
.seq rawBody430_108 rawBody430_119

def rawBody430_121 : StackLang.HolProg 64 :=
.seq rawBody430_107 rawBody430_120

def rawBody430_122 : StackLang.HolProg 64 :=
.seq rawBody430_106 rawBody430_121

def rawBody430_123 : StackLang.HolProg 64 :=
.seq rawBody430_105 rawBody430_122

def rawBody430_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody430_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody430_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody430_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody430_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody430_131 : StackLang.HolProg 64 :=
.seq rawBody430_129 rawBody430_130

def rawBody430_132 : StackLang.HolProg 64 :=
.seq rawBody430_128 rawBody430_131

def rawBody430_133 : StackLang.HolProg 64 :=
.seq rawBody430_127 rawBody430_132

def rawBody430_134 : StackLang.HolProg 64 :=
.seq rawBody430_126 rawBody430_133

def rawBody430_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody430_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody430_137 : StackLang.HolProg 64 :=
.seq rawBody430_135 rawBody430_136

def rawBody430_138 : StackLang.HolProg 64 :=
.call (some (rawBody430_134, 0, 430, 6)) (Sum.inl 423) (some (rawBody430_137, 430, 7))

def rawBody430_139 : StackLang.HolProg 64 :=
.seq rawBody430_125 rawBody430_138

def rawBody430_140 : StackLang.HolProg 64 :=
.seq rawBody430_124 rawBody430_139

def rawBody430_141 : StackLang.HolProg 64 :=
.seq rawBody430_123 rawBody430_140

def rawBody430_142 : StackLang.HolProg 64 :=
.seq rawBody430_104 rawBody430_141

def rawBody430_143 : StackLang.HolProg 64 :=
.seq rawBody430_101 rawBody430_142

def rawBody430_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody430_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody430_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody430_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody430_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody430_149 : StackLang.HolProg 64 :=
.seq rawBody430_147 rawBody430_148

def rawBody430_150 : StackLang.HolProg 64 :=
.seq rawBody430_146 rawBody430_149

def rawBody430_151 : StackLang.HolProg 64 :=
.seq rawBody430_145 rawBody430_150

def rawBody430_152 : StackLang.HolProg 64 :=
.seq rawBody430_144 rawBody430_151

def rawBody430_153 : StackLang.HolProg 64 :=
.seq rawBody430_143 rawBody430_152

def rawBody430_154 : StackLang.HolProg 64 :=
.seq rawBody430_100 rawBody430_153

def rawBody430_155 : StackLang.HolProg 64 :=
.seq rawBody430_99 rawBody430_154

def rawBody430_156 : StackLang.HolProg 64 :=
.seq rawBody430_98 rawBody430_155

def rawBody430_157 : StackLang.HolProg 64 :=
.seq rawBody430_97 rawBody430_156

def rawBody430_158 : StackLang.HolProg 64 :=
.seq rawBody430_96 rawBody430_157

def rawBody430_159 : StackLang.HolProg 64 :=
.seq rawBody430_95 rawBody430_158

def rawBody430_160 : StackLang.HolProg 64 :=
.seq rawBody430_94 rawBody430_159

def rawBody430_161 : StackLang.HolProg 64 :=
.seq rawBody430_93 rawBody430_160

def rawBody430_162 : StackLang.HolProg 64 :=
.seq rawBody430_48 rawBody430_161

def rawBody430_163 : StackLang.HolProg 64 :=
.seq rawBody430_47 rawBody430_162

def rawBody430_164 : StackLang.HolProg 64 :=
.seq rawBody430_46 rawBody430_163

def rawBody430_165 : StackLang.HolProg 64 :=
.seq rawBody430_3 rawBody430_164

def rawBody430_166 : StackLang.HolProg 64 :=
.seq rawBody430_0 rawBody430_165

def raw430 : StackLang.HolProg 64 := rawBody430_166
theorem raw430_eq : StackRawCall.compTop RawInfo.rawInfo (function430 (.list [])).1 = raw430 := by
  kernel_rfl
#print axioms raw430_eq
end InitECandidate.Proofs.BackendStages
