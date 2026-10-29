import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function466
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody466_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody466_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody466_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody466_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody466_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody466_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody466_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 240#64)))

def rawBody466_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody466_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody466_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody466_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody466_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody466_12 : StackLang.HolProg 64 :=
.seq rawBody466_10 rawBody466_11

def rawBody466_13 : StackLang.HolProg 64 :=
.seq rawBody466_9 rawBody466_12

def rawBody466_14 : StackLang.HolProg 64 :=
.seq rawBody466_8 rawBody466_13

def rawBody466_15 : StackLang.HolProg 64 :=
.seq rawBody466_7 rawBody466_14

def rawBody466_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1490#64)

def rawBody466_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_19 : StackLang.HolProg 64 :=
.seq rawBody466_17 rawBody466_18

def rawBody466_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody466_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody466_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 3

def rawBody466_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody466_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody466_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody466_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody466_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_30 : StackLang.HolProg 64 :=
.seq rawBody466_28 rawBody466_29

def rawBody466_31 : StackLang.HolProg 64 :=
.seq rawBody466_27 rawBody466_30

def rawBody466_32 : StackLang.HolProg 64 :=
.seq rawBody466_26 rawBody466_31

def rawBody466_33 : StackLang.HolProg 64 :=
.seq rawBody466_25 rawBody466_32

def rawBody466_34 : StackLang.HolProg 64 :=
.seq rawBody466_24 rawBody466_33

def rawBody466_35 : StackLang.HolProg 64 :=
.seq rawBody466_23 rawBody466_34

def rawBody466_36 : StackLang.HolProg 64 :=
.seq rawBody466_22 rawBody466_35

def rawBody466_37 : StackLang.HolProg 64 :=
.seq rawBody466_21 rawBody466_36

def rawBody466_38 : StackLang.HolProg 64 :=
.seq rawBody466_20 rawBody466_37

def rawBody466_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody466_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody466_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody466_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody466_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody466_48 : StackLang.HolProg 64 :=
.seq rawBody466_46 rawBody466_47

def rawBody466_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody466_50 : StackLang.HolProg 64 :=
.seq rawBody466_48 rawBody466_49

def rawBody466_51 : StackLang.HolProg 64 :=
.seq rawBody466_45 rawBody466_50

def rawBody466_52 : StackLang.HolProg 64 :=
.seq rawBody466_44 rawBody466_51

def rawBody466_53 : StackLang.HolProg 64 :=
.seq rawBody466_43 rawBody466_52

def rawBody466_54 : StackLang.HolProg 64 :=
.seq rawBody466_42 rawBody466_53

def rawBody466_55 : StackLang.HolProg 64 :=
.seq rawBody466_41 rawBody466_54

def rawBody466_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody466_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody466_59 : StackLang.HolProg 64 :=
.seq rawBody466_57 rawBody466_58

def rawBody466_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody466_61 : StackLang.HolProg 64 :=
.seq rawBody466_59 rawBody466_60

def rawBody466_62 : StackLang.HolProg 64 :=
.seq rawBody466_56 rawBody466_61

def rawBody466_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody466_64 : StackLang.HolProg 64 :=
.seq rawBody466_62 rawBody466_63

def rawBody466_65 : StackLang.HolProg 64 :=
.call (some (rawBody466_55, 0, 466, 2)) (Sum.inl 88) (some (rawBody466_64, 466, 3))

def rawBody466_66 : StackLang.HolProg 64 :=
.seq rawBody466_40 rawBody466_65

def rawBody466_67 : StackLang.HolProg 64 :=
.seq rawBody466_39 rawBody466_66

def rawBody466_68 : StackLang.HolProg 64 :=
.seq rawBody466_38 rawBody466_67

def rawBody466_69 : StackLang.HolProg 64 :=
.seq rawBody466_19 rawBody466_68

def rawBody466_70 : StackLang.HolProg 64 :=
.seq rawBody466_16 rawBody466_69

def rawBody466_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody466_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody466_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody466_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1491#64)

def rawBody466_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_78 : StackLang.HolProg 64 :=
.seq rawBody466_76 rawBody466_77

def rawBody466_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody466_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody466_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 5

def rawBody466_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody466_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody466_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody466_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody466_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_89 : StackLang.HolProg 64 :=
.seq rawBody466_87 rawBody466_88

def rawBody466_90 : StackLang.HolProg 64 :=
.seq rawBody466_86 rawBody466_89

def rawBody466_91 : StackLang.HolProg 64 :=
.seq rawBody466_85 rawBody466_90

def rawBody466_92 : StackLang.HolProg 64 :=
.seq rawBody466_84 rawBody466_91

def rawBody466_93 : StackLang.HolProg 64 :=
.seq rawBody466_83 rawBody466_92

def rawBody466_94 : StackLang.HolProg 64 :=
.seq rawBody466_82 rawBody466_93

def rawBody466_95 : StackLang.HolProg 64 :=
.seq rawBody466_81 rawBody466_94

def rawBody466_96 : StackLang.HolProg 64 :=
.seq rawBody466_80 rawBody466_95

def rawBody466_97 : StackLang.HolProg 64 :=
.seq rawBody466_79 rawBody466_96

def rawBody466_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody466_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody466_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody466_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody466_106 : StackLang.HolProg 64 :=
.seq rawBody466_104 rawBody466_105

def rawBody466_107 : StackLang.HolProg 64 :=
.seq rawBody466_103 rawBody466_106

def rawBody466_108 : StackLang.HolProg 64 :=
.seq rawBody466_102 rawBody466_107

def rawBody466_109 : StackLang.HolProg 64 :=
.seq rawBody466_101 rawBody466_108

def rawBody466_110 : StackLang.HolProg 64 :=
.seq rawBody466_100 rawBody466_109

def rawBody466_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody466_113 : StackLang.HolProg 64 :=
.seq rawBody466_111 rawBody466_112

def rawBody466_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody466_115 : StackLang.HolProg 64 :=
.seq rawBody466_113 rawBody466_114

def rawBody466_116 : StackLang.HolProg 64 :=
.call (some (rawBody466_110, 0, 466, 4)) (Sum.inl 89) (some (rawBody466_115, 466, 5))

def rawBody466_117 : StackLang.HolProg 64 :=
.seq rawBody466_99 rawBody466_116

def rawBody466_118 : StackLang.HolProg 64 :=
.seq rawBody466_98 rawBody466_117

def rawBody466_119 : StackLang.HolProg 64 :=
.seq rawBody466_97 rawBody466_118

def rawBody466_120 : StackLang.HolProg 64 :=
.seq rawBody466_78 rawBody466_119

def rawBody466_121 : StackLang.HolProg 64 :=
.seq rawBody466_75 rawBody466_120

def rawBody466_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody466_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def rawBody466_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody466_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1492#64)

def rawBody466_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_129 : StackLang.HolProg 64 :=
.seq rawBody466_127 rawBody466_128

def rawBody466_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody466_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody466_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody466_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 7

def rawBody466_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody466_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody466_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody466_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody466_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_140 : StackLang.HolProg 64 :=
.seq rawBody466_138 rawBody466_139

def rawBody466_141 : StackLang.HolProg 64 :=
.seq rawBody466_137 rawBody466_140

def rawBody466_142 : StackLang.HolProg 64 :=
.seq rawBody466_136 rawBody466_141

def rawBody466_143 : StackLang.HolProg 64 :=
.seq rawBody466_135 rawBody466_142

def rawBody466_144 : StackLang.HolProg 64 :=
.seq rawBody466_134 rawBody466_143

def rawBody466_145 : StackLang.HolProg 64 :=
.seq rawBody466_133 rawBody466_144

def rawBody466_146 : StackLang.HolProg 64 :=
.seq rawBody466_132 rawBody466_145

def rawBody466_147 : StackLang.HolProg 64 :=
.seq rawBody466_131 rawBody466_146

def rawBody466_148 : StackLang.HolProg 64 :=
.seq rawBody466_130 rawBody466_147

def rawBody466_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody466_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody466_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody466_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody466_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody466_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody466_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_157 : StackLang.HolProg 64 :=
.seq rawBody466_155 rawBody466_156

def rawBody466_158 : StackLang.HolProg 64 :=
.seq rawBody466_154 rawBody466_157

def rawBody466_159 : StackLang.HolProg 64 :=
.seq rawBody466_153 rawBody466_158

def rawBody466_160 : StackLang.HolProg 64 :=
.seq rawBody466_152 rawBody466_159

def rawBody466_161 : StackLang.HolProg 64 :=
.seq rawBody466_151 rawBody466_160

def rawBody466_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody466_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody466_164 : StackLang.HolProg 64 :=
.seq rawBody466_162 rawBody466_163

def rawBody466_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody466_166 : StackLang.HolProg 64 :=
.seq rawBody466_164 rawBody466_165

def rawBody466_167 : StackLang.HolProg 64 :=
.call (some (rawBody466_161, 0, 466, 6)) (Sum.inl 89) (some (rawBody466_166, 466, 7))

def rawBody466_168 : StackLang.HolProg 64 :=
.seq rawBody466_150 rawBody466_167

def rawBody466_169 : StackLang.HolProg 64 :=
.seq rawBody466_149 rawBody466_168

def rawBody466_170 : StackLang.HolProg 64 :=
.seq rawBody466_148 rawBody466_169

def rawBody466_171 : StackLang.HolProg 64 :=
.seq rawBody466_129 rawBody466_170

def rawBody466_172 : StackLang.HolProg 64 :=
.seq rawBody466_126 rawBody466_171

def rawBody466_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody466_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody466_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody466_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody466_177 : StackLang.HolProg 64 :=
.seq rawBody466_175 rawBody466_176

def rawBody466_178 : StackLang.HolProg 64 :=
.seq rawBody466_174 rawBody466_177

def rawBody466_179 : StackLang.HolProg 64 :=
.seq rawBody466_173 rawBody466_178

def rawBody466_180 : StackLang.HolProg 64 :=
.seq rawBody466_172 rawBody466_179

def rawBody466_181 : StackLang.HolProg 64 :=
.seq rawBody466_125 rawBody466_180

def rawBody466_182 : StackLang.HolProg 64 :=
.seq rawBody466_124 rawBody466_181

def rawBody466_183 : StackLang.HolProg 64 :=
.seq rawBody466_123 rawBody466_182

def rawBody466_184 : StackLang.HolProg 64 :=
.seq rawBody466_122 rawBody466_183

def rawBody466_185 : StackLang.HolProg 64 :=
.seq rawBody466_121 rawBody466_184

def rawBody466_186 : StackLang.HolProg 64 :=
.seq rawBody466_74 rawBody466_185

def rawBody466_187 : StackLang.HolProg 64 :=
.seq rawBody466_73 rawBody466_186

def rawBody466_188 : StackLang.HolProg 64 :=
.seq rawBody466_72 rawBody466_187

def rawBody466_189 : StackLang.HolProg 64 :=
.seq rawBody466_71 rawBody466_188

def rawBody466_190 : StackLang.HolProg 64 :=
.seq rawBody466_70 rawBody466_189

def rawBody466_191 : StackLang.HolProg 64 :=
.seq rawBody466_15 rawBody466_190

def rawBody466_192 : StackLang.HolProg 64 :=
.seq rawBody466_6 rawBody466_191

def rawBody466_193 : StackLang.HolProg 64 :=
.seq rawBody466_5 rawBody466_192

def rawBody466_194 : StackLang.HolProg 64 :=
.seq rawBody466_4 rawBody466_193

def rawBody466_195 : StackLang.HolProg 64 :=
.seq rawBody466_3 rawBody466_194

def rawBody466_196 : StackLang.HolProg 64 :=
.seq rawBody466_2 rawBody466_195

def rawBody466_197 : StackLang.HolProg 64 :=
.seq rawBody466_1 rawBody466_196

def rawBody466_198 : StackLang.HolProg 64 :=
.seq rawBody466_0 rawBody466_197

def raw466 : StackLang.HolProg 64 := rawBody466_198
theorem raw466_eq : StackRawCall.compTop RawInfo.rawInfo (function466 (.list [])).1 = raw466 := by
  kernel_rfl
#print axioms raw466_eq
end InitECandidate.Proofs.BackendStages
