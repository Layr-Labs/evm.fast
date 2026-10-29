import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function332
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody332_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody332_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody332_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody332_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody332_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def rawBody332_5 : StackLang.HolProg 64 :=
.seq rawBody332_3 rawBody332_4

def rawBody332_6 : StackLang.HolProg 64 :=
.seq rawBody332_2 rawBody332_5

def rawBody332_7 : StackLang.HolProg 64 :=
.seq rawBody332_1 rawBody332_6

def rawBody332_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 940#64)

def rawBody332_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_11 : StackLang.HolProg 64 :=
.seq rawBody332_9 rawBody332_10

def rawBody332_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 3

def rawBody332_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_22 : StackLang.HolProg 64 :=
.seq rawBody332_20 rawBody332_21

def rawBody332_23 : StackLang.HolProg 64 :=
.seq rawBody332_19 rawBody332_22

def rawBody332_24 : StackLang.HolProg 64 :=
.seq rawBody332_18 rawBody332_23

def rawBody332_25 : StackLang.HolProg 64 :=
.seq rawBody332_17 rawBody332_24

def rawBody332_26 : StackLang.HolProg 64 :=
.seq rawBody332_16 rawBody332_25

def rawBody332_27 : StackLang.HolProg 64 :=
.seq rawBody332_15 rawBody332_26

def rawBody332_28 : StackLang.HolProg 64 :=
.seq rawBody332_14 rawBody332_27

def rawBody332_29 : StackLang.HolProg 64 :=
.seq rawBody332_13 rawBody332_28

def rawBody332_30 : StackLang.HolProg 64 :=
.seq rawBody332_12 rawBody332_29

def rawBody332_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody332_38 : StackLang.HolProg 64 :=
.seq rawBody332_36 rawBody332_37

def rawBody332_39 : StackLang.HolProg 64 :=
.seq rawBody332_35 rawBody332_38

def rawBody332_40 : StackLang.HolProg 64 :=
.seq rawBody332_34 rawBody332_39

def rawBody332_41 : StackLang.HolProg 64 :=
.seq rawBody332_33 rawBody332_40

def rawBody332_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_44 : StackLang.HolProg 64 :=
.seq rawBody332_42 rawBody332_43

def rawBody332_45 : StackLang.HolProg 64 :=
.call (some (rawBody332_41, 0, 332, 2)) (Sum.inl 69) (some (rawBody332_44, 332, 3))

def rawBody332_46 : StackLang.HolProg 64 :=
.seq rawBody332_32 rawBody332_45

def rawBody332_47 : StackLang.HolProg 64 :=
.seq rawBody332_31 rawBody332_46

def rawBody332_48 : StackLang.HolProg 64 :=
.seq rawBody332_30 rawBody332_47

def rawBody332_49 : StackLang.HolProg 64 :=
.seq rawBody332_11 rawBody332_48

def rawBody332_50 : StackLang.HolProg 64 :=
.seq rawBody332_8 rawBody332_49

def rawBody332_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody332_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody332_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody332_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 941#64)

def rawBody332_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_58 : StackLang.HolProg 64 :=
.seq rawBody332_56 rawBody332_57

def rawBody332_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 5

def rawBody332_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_69 : StackLang.HolProg 64 :=
.seq rawBody332_67 rawBody332_68

def rawBody332_70 : StackLang.HolProg 64 :=
.seq rawBody332_66 rawBody332_69

def rawBody332_71 : StackLang.HolProg 64 :=
.seq rawBody332_65 rawBody332_70

def rawBody332_72 : StackLang.HolProg 64 :=
.seq rawBody332_64 rawBody332_71

def rawBody332_73 : StackLang.HolProg 64 :=
.seq rawBody332_63 rawBody332_72

def rawBody332_74 : StackLang.HolProg 64 :=
.seq rawBody332_62 rawBody332_73

def rawBody332_75 : StackLang.HolProg 64 :=
.seq rawBody332_61 rawBody332_74

def rawBody332_76 : StackLang.HolProg 64 :=
.seq rawBody332_60 rawBody332_75

def rawBody332_77 : StackLang.HolProg 64 :=
.seq rawBody332_59 rawBody332_76

def rawBody332_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody332_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody332_86 : StackLang.HolProg 64 :=
.seq rawBody332_84 rawBody332_85

def rawBody332_87 : StackLang.HolProg 64 :=
.seq rawBody332_83 rawBody332_86

def rawBody332_88 : StackLang.HolProg 64 :=
.seq rawBody332_82 rawBody332_87

def rawBody332_89 : StackLang.HolProg 64 :=
.seq rawBody332_81 rawBody332_88

def rawBody332_90 : StackLang.HolProg 64 :=
.seq rawBody332_80 rawBody332_89

def rawBody332_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody332_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_93 : StackLang.HolProg 64 :=
.seq rawBody332_91 rawBody332_92

def rawBody332_94 : StackLang.HolProg 64 :=
.call (some (rawBody332_90, 0, 332, 4)) (Sum.inl 308) (some (rawBody332_93, 332, 5))

def rawBody332_95 : StackLang.HolProg 64 :=
.seq rawBody332_79 rawBody332_94

def rawBody332_96 : StackLang.HolProg 64 :=
.seq rawBody332_78 rawBody332_95

def rawBody332_97 : StackLang.HolProg 64 :=
.seq rawBody332_77 rawBody332_96

def rawBody332_98 : StackLang.HolProg 64 :=
.seq rawBody332_58 rawBody332_97

def rawBody332_99 : StackLang.HolProg 64 :=
.seq rawBody332_55 rawBody332_98

def rawBody332_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody332_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody332_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody332_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody332_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody332_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551456#64))

def rawBody332_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody332_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_112 : StackLang.HolProg 64 :=
.seq rawBody332_110 rawBody332_111

def rawBody332_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody332_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody332_115 : StackLang.HolProg 64 :=
.seq rawBody332_113 rawBody332_114

def rawBody332_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def rawBody332_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody332_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_119 : StackLang.HolProg 64 :=
.seq rawBody332_117 rawBody332_118

def rawBody332_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody332_121 : StackLang.HolProg 64 :=
.seq rawBody332_119 rawBody332_120

def rawBody332_122 : StackLang.HolProg 64 :=
.seq rawBody332_116 rawBody332_121

def rawBody332_123 : StackLang.HolProg 64 :=
.seq rawBody332_115 rawBody332_122

def rawBody332_124 : StackLang.HolProg 64 :=
.seq rawBody332_112 rawBody332_123

def rawBody332_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 942#64)

def rawBody332_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_128 : StackLang.HolProg 64 :=
.seq rawBody332_126 rawBody332_127

def rawBody332_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 7

def rawBody332_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_139 : StackLang.HolProg 64 :=
.seq rawBody332_137 rawBody332_138

def rawBody332_140 : StackLang.HolProg 64 :=
.seq rawBody332_136 rawBody332_139

def rawBody332_141 : StackLang.HolProg 64 :=
.seq rawBody332_135 rawBody332_140

def rawBody332_142 : StackLang.HolProg 64 :=
.seq rawBody332_134 rawBody332_141

def rawBody332_143 : StackLang.HolProg 64 :=
.seq rawBody332_133 rawBody332_142

def rawBody332_144 : StackLang.HolProg 64 :=
.seq rawBody332_132 rawBody332_143

def rawBody332_145 : StackLang.HolProg 64 :=
.seq rawBody332_131 rawBody332_144

def rawBody332_146 : StackLang.HolProg 64 :=
.seq rawBody332_130 rawBody332_145

def rawBody332_147 : StackLang.HolProg 64 :=
.seq rawBody332_129 rawBody332_146

def rawBody332_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody332_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody332_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody332_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody332_158 : StackLang.HolProg 64 :=
.seq rawBody332_156 rawBody332_157

def rawBody332_159 : StackLang.HolProg 64 :=
.seq rawBody332_155 rawBody332_158

def rawBody332_160 : StackLang.HolProg 64 :=
.seq rawBody332_154 rawBody332_159

def rawBody332_161 : StackLang.HolProg 64 :=
.seq rawBody332_153 rawBody332_160

def rawBody332_162 : StackLang.HolProg 64 :=
.seq rawBody332_152 rawBody332_161

def rawBody332_163 : StackLang.HolProg 64 :=
.seq rawBody332_151 rawBody332_162

def rawBody332_164 : StackLang.HolProg 64 :=
.seq rawBody332_150 rawBody332_163

def rawBody332_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def rawBody332_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody332_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody332_168 : StackLang.HolProg 64 :=
.seq rawBody332_166 rawBody332_167

def rawBody332_169 : StackLang.HolProg 64 :=
.seq rawBody332_165 rawBody332_168

def rawBody332_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_171 : StackLang.HolProg 64 :=
.seq rawBody332_169 rawBody332_170

def rawBody332_172 : StackLang.HolProg 64 :=
.call (some (rawBody332_164, 0, 332, 6)) (Sum.inl 177) (some (rawBody332_171, 332, 7))

def rawBody332_173 : StackLang.HolProg 64 :=
.seq rawBody332_149 rawBody332_172

def rawBody332_174 : StackLang.HolProg 64 :=
.seq rawBody332_148 rawBody332_173

def rawBody332_175 : StackLang.HolProg 64 :=
.seq rawBody332_147 rawBody332_174

def rawBody332_176 : StackLang.HolProg 64 :=
.seq rawBody332_128 rawBody332_175

def rawBody332_177 : StackLang.HolProg 64 :=
.seq rawBody332_125 rawBody332_176

def rawBody332_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody332_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody332_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody332_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody332_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551456#64))

def rawBody332_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody332_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody332_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody332_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody332_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def rawBody332_191 : StackLang.HolProg 64 :=
.seq rawBody332_189 rawBody332_190

def rawBody332_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody332_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody332_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 943#64)

def rawBody332_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_197 : StackLang.HolProg 64 :=
.seq rawBody332_195 rawBody332_196

def rawBody332_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 9

def rawBody332_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_208 : StackLang.HolProg 64 :=
.seq rawBody332_206 rawBody332_207

def rawBody332_209 : StackLang.HolProg 64 :=
.seq rawBody332_205 rawBody332_208

def rawBody332_210 : StackLang.HolProg 64 :=
.seq rawBody332_204 rawBody332_209

def rawBody332_211 : StackLang.HolProg 64 :=
.seq rawBody332_203 rawBody332_210

def rawBody332_212 : StackLang.HolProg 64 :=
.seq rawBody332_202 rawBody332_211

def rawBody332_213 : StackLang.HolProg 64 :=
.seq rawBody332_201 rawBody332_212

def rawBody332_214 : StackLang.HolProg 64 :=
.seq rawBody332_200 rawBody332_213

def rawBody332_215 : StackLang.HolProg 64 :=
.seq rawBody332_199 rawBody332_214

def rawBody332_216 : StackLang.HolProg 64 :=
.seq rawBody332_198 rawBody332_215

def rawBody332_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody332_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody332_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody332_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody332_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody332_229 : StackLang.HolProg 64 :=
.seq rawBody332_227 rawBody332_228

def rawBody332_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody332_231 : StackLang.HolProg 64 :=
.seq rawBody332_229 rawBody332_230

def rawBody332_232 : StackLang.HolProg 64 :=
.seq rawBody332_226 rawBody332_231

def rawBody332_233 : StackLang.HolProg 64 :=
.seq rawBody332_225 rawBody332_232

def rawBody332_234 : StackLang.HolProg 64 :=
.seq rawBody332_224 rawBody332_233

def rawBody332_235 : StackLang.HolProg 64 :=
.seq rawBody332_223 rawBody332_234

def rawBody332_236 : StackLang.HolProg 64 :=
.seq rawBody332_222 rawBody332_235

def rawBody332_237 : StackLang.HolProg 64 :=
.seq rawBody332_221 rawBody332_236

def rawBody332_238 : StackLang.HolProg 64 :=
.seq rawBody332_220 rawBody332_237

def rawBody332_239 : StackLang.HolProg 64 :=
.seq rawBody332_219 rawBody332_238

def rawBody332_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody332_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody332_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody332_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody332_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody332_246 : StackLang.HolProg 64 :=
.seq rawBody332_244 rawBody332_245

def rawBody332_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody332_248 : StackLang.HolProg 64 :=
.seq rawBody332_246 rawBody332_247

def rawBody332_249 : StackLang.HolProg 64 :=
.seq rawBody332_243 rawBody332_248

def rawBody332_250 : StackLang.HolProg 64 :=
.seq rawBody332_242 rawBody332_249

def rawBody332_251 : StackLang.HolProg 64 :=
.seq rawBody332_241 rawBody332_250

def rawBody332_252 : StackLang.HolProg 64 :=
.seq rawBody332_240 rawBody332_251

def rawBody332_253 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_254 : StackLang.HolProg 64 :=
.seq rawBody332_252 rawBody332_253

def rawBody332_255 : StackLang.HolProg 64 :=
.call (some (rawBody332_239, 0, 332, 8)) (Sum.inl 320) (some (rawBody332_254, 332, 9))

def rawBody332_256 : StackLang.HolProg 64 :=
.seq rawBody332_218 rawBody332_255

def rawBody332_257 : StackLang.HolProg 64 :=
.seq rawBody332_217 rawBody332_256

def rawBody332_258 : StackLang.HolProg 64 :=
.seq rawBody332_216 rawBody332_257

def rawBody332_259 : StackLang.HolProg 64 :=
.seq rawBody332_197 rawBody332_258

def rawBody332_260 : StackLang.HolProg 64 :=
.seq rawBody332_194 rawBody332_259

def rawBody332_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody332_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody332_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody332_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def rawBody332_267 : StackLang.HolProg 64 :=
.seq rawBody332_265 rawBody332_266

def rawBody332_268 : StackLang.HolProg 64 :=
.seq rawBody332_264 rawBody332_267

def rawBody332_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody332_270 : StackLang.HolProg 64 :=
.seq rawBody332_268 rawBody332_269

def rawBody332_271 : StackLang.HolProg 64 :=
.seq rawBody332_263 rawBody332_270

def rawBody332_272 : StackLang.HolProg 64 :=
.seq rawBody332_262 rawBody332_271

def rawBody332_273 : StackLang.HolProg 64 :=
.seq rawBody332_261 rawBody332_272

def rawBody332_274 : StackLang.HolProg 64 :=
.seq rawBody332_260 rawBody332_273

def rawBody332_275 : StackLang.HolProg 64 :=
.seq rawBody332_193 rawBody332_274

def rawBody332_276 : StackLang.HolProg 64 :=
.seq rawBody332_192 rawBody332_275

def rawBody332_277 : StackLang.HolProg 64 :=
.seq rawBody332_191 rawBody332_276

def rawBody332_278 : StackLang.HolProg 64 :=
.seq rawBody332_188 rawBody332_277

def rawBody332_279 : StackLang.HolProg 64 :=
.seq rawBody332_187 rawBody332_278

def rawBody332_280 : StackLang.HolProg 64 :=
.seq rawBody332_186 rawBody332_279

def rawBody332_281 : StackLang.HolProg 64 :=
.seq rawBody332_185 rawBody332_280

def rawBody332_282 : StackLang.HolProg 64 :=
.seq rawBody332_184 rawBody332_281

def rawBody332_283 : StackLang.HolProg 64 :=
.seq rawBody332_183 rawBody332_282

def rawBody332_284 : StackLang.HolProg 64 :=
.seq rawBody332_182 rawBody332_283

def rawBody332_285 : StackLang.HolProg 64 :=
.seq rawBody332_181 rawBody332_284

def rawBody332_286 : StackLang.HolProg 64 :=
.seq rawBody332_180 rawBody332_285

def rawBody332_287 : StackLang.HolProg 64 :=
.seq rawBody332_179 rawBody332_286

def rawBody332_288 : StackLang.HolProg 64 :=
.seq rawBody332_178 rawBody332_287

def rawBody332_289 : StackLang.HolProg 64 :=
.seq rawBody332_177 rawBody332_288

def rawBody332_290 : StackLang.HolProg 64 :=
.seq rawBody332_124 rawBody332_289

def rawBody332_291 : StackLang.HolProg 64 :=
.seq rawBody332_109 rawBody332_290

def rawBody332_292 : StackLang.HolProg 64 :=
.seq rawBody332_108 rawBody332_291

def rawBody332_293 : StackLang.HolProg 64 :=
.seq rawBody332_107 rawBody332_292

def rawBody332_294 : StackLang.HolProg 64 :=
.seq rawBody332_106 rawBody332_293

def rawBody332_295 : StackLang.HolProg 64 :=
.seq rawBody332_105 rawBody332_294

def rawBody332_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody332_298 : StackLang.HolProg 64 :=
.seq rawBody332_296 rawBody332_297

def rawBody332_299 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody332_295 rawBody332_298

def rawBody332_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody332_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody332_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody332_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody332_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody332_306 : StackLang.HolProg 64 :=
.seq rawBody332_304 rawBody332_305

def rawBody332_307 : StackLang.HolProg 64 :=
.seq rawBody332_303 rawBody332_306

def rawBody332_308 : StackLang.HolProg 64 :=
.seq rawBody332_302 rawBody332_307

def rawBody332_309 : StackLang.HolProg 64 :=
.seq rawBody332_301 rawBody332_308

def rawBody332_310 : StackLang.HolProg 64 :=
.seq rawBody332_300 rawBody332_309

def rawBody332_311 : StackLang.HolProg 64 :=
.seq rawBody332_299 rawBody332_310

def rawBody332_312 : StackLang.HolProg 64 :=
.seq rawBody332_104 rawBody332_311

def rawBody332_313 : StackLang.HolProg 64 :=
.loop rawBody332_312

def rawBody332_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 7

def rawBody332_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody332_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody332_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody332_319 : StackLang.HolProg 64 :=
.seq rawBody332_317 rawBody332_318

def rawBody332_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody332_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody332_322 : StackLang.HolProg 64 :=
.seq rawBody332_320 rawBody332_321

def rawBody332_323 : StackLang.HolProg 64 :=
.seq rawBody332_319 rawBody332_322

def rawBody332_324 : StackLang.HolProg 64 :=
.seq rawBody332_316 rawBody332_323

def rawBody332_325 : StackLang.HolProg 64 :=
.seq rawBody332_315 rawBody332_324

def rawBody332_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 944#64)

def rawBody332_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_329 : StackLang.HolProg 64 :=
.seq rawBody332_327 rawBody332_328

def rawBody332_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 11

def rawBody332_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_340 : StackLang.HolProg 64 :=
.seq rawBody332_338 rawBody332_339

def rawBody332_341 : StackLang.HolProg 64 :=
.seq rawBody332_337 rawBody332_340

def rawBody332_342 : StackLang.HolProg 64 :=
.seq rawBody332_336 rawBody332_341

def rawBody332_343 : StackLang.HolProg 64 :=
.seq rawBody332_335 rawBody332_342

def rawBody332_344 : StackLang.HolProg 64 :=
.seq rawBody332_334 rawBody332_343

def rawBody332_345 : StackLang.HolProg 64 :=
.seq rawBody332_333 rawBody332_344

def rawBody332_346 : StackLang.HolProg 64 :=
.seq rawBody332_332 rawBody332_345

def rawBody332_347 : StackLang.HolProg 64 :=
.seq rawBody332_331 rawBody332_346

def rawBody332_348 : StackLang.HolProg 64 :=
.seq rawBody332_330 rawBody332_347

def rawBody332_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody332_356 : StackLang.HolProg 64 :=
.seq rawBody332_354 rawBody332_355

def rawBody332_357 : StackLang.HolProg 64 :=
.seq rawBody332_353 rawBody332_356

def rawBody332_358 : StackLang.HolProg 64 :=
.seq rawBody332_352 rawBody332_357

def rawBody332_359 : StackLang.HolProg 64 :=
.seq rawBody332_351 rawBody332_358

def rawBody332_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody332_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_362 : StackLang.HolProg 64 :=
.seq rawBody332_360 rawBody332_361

def rawBody332_363 : StackLang.HolProg 64 :=
.call (some (rawBody332_359, 0, 332, 10)) (Sum.inl 331) (some (rawBody332_362, 332, 11))

def rawBody332_364 : StackLang.HolProg 64 :=
.seq rawBody332_350 rawBody332_363

def rawBody332_365 : StackLang.HolProg 64 :=
.seq rawBody332_349 rawBody332_364

def rawBody332_366 : StackLang.HolProg 64 :=
.seq rawBody332_348 rawBody332_365

def rawBody332_367 : StackLang.HolProg 64 :=
.seq rawBody332_329 rawBody332_366

def rawBody332_368 : StackLang.HolProg 64 :=
.seq rawBody332_326 rawBody332_367

def rawBody332_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody332_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 945#64)

def rawBody332_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_374 : StackLang.HolProg 64 :=
.seq rawBody332_372 rawBody332_373

def rawBody332_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody332_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody332_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody332_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 13

def rawBody332_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody332_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody332_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody332_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody332_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_385 : StackLang.HolProg 64 :=
.seq rawBody332_383 rawBody332_384

def rawBody332_386 : StackLang.HolProg 64 :=
.seq rawBody332_382 rawBody332_385

def rawBody332_387 : StackLang.HolProg 64 :=
.seq rawBody332_381 rawBody332_386

def rawBody332_388 : StackLang.HolProg 64 :=
.seq rawBody332_380 rawBody332_387

def rawBody332_389 : StackLang.HolProg 64 :=
.seq rawBody332_379 rawBody332_388

def rawBody332_390 : StackLang.HolProg 64 :=
.seq rawBody332_378 rawBody332_389

def rawBody332_391 : StackLang.HolProg 64 :=
.seq rawBody332_377 rawBody332_390

def rawBody332_392 : StackLang.HolProg 64 :=
.seq rawBody332_376 rawBody332_391

def rawBody332_393 : StackLang.HolProg 64 :=
.seq rawBody332_375 rawBody332_392

def rawBody332_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody332_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody332_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody332_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody332_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody332_401 : StackLang.HolProg 64 :=
.seq rawBody332_399 rawBody332_400

def rawBody332_402 : StackLang.HolProg 64 :=
.seq rawBody332_398 rawBody332_401

def rawBody332_403 : StackLang.HolProg 64 :=
.seq rawBody332_397 rawBody332_402

def rawBody332_404 : StackLang.HolProg 64 :=
.seq rawBody332_396 rawBody332_403

def rawBody332_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody332_406 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody332_407 : StackLang.HolProg 64 :=
.seq rawBody332_405 rawBody332_406

def rawBody332_408 : StackLang.HolProg 64 :=
.call (some (rawBody332_404, 0, 332, 12)) (Sum.inl 70) (some (rawBody332_407, 332, 13))

def rawBody332_409 : StackLang.HolProg 64 :=
.seq rawBody332_395 rawBody332_408

def rawBody332_410 : StackLang.HolProg 64 :=
.seq rawBody332_394 rawBody332_409

def rawBody332_411 : StackLang.HolProg 64 :=
.seq rawBody332_393 rawBody332_410

def rawBody332_412 : StackLang.HolProg 64 :=
.seq rawBody332_374 rawBody332_411

def rawBody332_413 : StackLang.HolProg 64 :=
.seq rawBody332_371 rawBody332_412

def rawBody332_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody332_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody332_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody332_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody332_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody332_419 : StackLang.HolProg 64 :=
.seq rawBody332_417 rawBody332_418

def rawBody332_420 : StackLang.HolProg 64 :=
.seq rawBody332_416 rawBody332_419

def rawBody332_421 : StackLang.HolProg 64 :=
.seq rawBody332_415 rawBody332_420

def rawBody332_422 : StackLang.HolProg 64 :=
.seq rawBody332_414 rawBody332_421

def rawBody332_423 : StackLang.HolProg 64 :=
.seq rawBody332_413 rawBody332_422

def rawBody332_424 : StackLang.HolProg 64 :=
.seq rawBody332_370 rawBody332_423

def rawBody332_425 : StackLang.HolProg 64 :=
.seq rawBody332_369 rawBody332_424

def rawBody332_426 : StackLang.HolProg 64 :=
.seq rawBody332_368 rawBody332_425

def rawBody332_427 : StackLang.HolProg 64 :=
.seq rawBody332_325 rawBody332_426

def rawBody332_428 : StackLang.HolProg 64 :=
.seq rawBody332_314 rawBody332_427

def rawBody332_429 : StackLang.HolProg 64 :=
.seq rawBody332_313 rawBody332_428

def rawBody332_430 : StackLang.HolProg 64 :=
.seq rawBody332_103 rawBody332_429

def rawBody332_431 : StackLang.HolProg 64 :=
.seq rawBody332_102 rawBody332_430

def rawBody332_432 : StackLang.HolProg 64 :=
.seq rawBody332_101 rawBody332_431

def rawBody332_433 : StackLang.HolProg 64 :=
.seq rawBody332_100 rawBody332_432

def rawBody332_434 : StackLang.HolProg 64 :=
.seq rawBody332_99 rawBody332_433

def rawBody332_435 : StackLang.HolProg 64 :=
.seq rawBody332_54 rawBody332_434

def rawBody332_436 : StackLang.HolProg 64 :=
.seq rawBody332_53 rawBody332_435

def rawBody332_437 : StackLang.HolProg 64 :=
.seq rawBody332_52 rawBody332_436

def rawBody332_438 : StackLang.HolProg 64 :=
.seq rawBody332_51 rawBody332_437

def rawBody332_439 : StackLang.HolProg 64 :=
.seq rawBody332_50 rawBody332_438

def rawBody332_440 : StackLang.HolProg 64 :=
.seq rawBody332_7 rawBody332_439

def rawBody332_441 : StackLang.HolProg 64 :=
.seq rawBody332_0 rawBody332_440

def raw332 : StackLang.HolProg 64 := rawBody332_441
theorem raw332_eq : StackRawCall.compTop RawInfo.rawInfo (function332 (.list [])).1 = raw332 := by
  kernel_rfl
#print axioms raw332_eq
end InitECandidate.Proofs.BackendStages
