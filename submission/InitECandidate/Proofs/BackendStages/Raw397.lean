import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function397
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody397_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody397_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody397_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody397_3 : StackLang.HolProg 64 :=
.seq rawBody397_1 rawBody397_2

def rawBody397_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1176#64)

def rawBody397_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_7 : StackLang.HolProg 64 :=
.seq rawBody397_5 rawBody397_6

def rawBody397_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody397_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody397_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 3

def rawBody397_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody397_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody397_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody397_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody397_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_18 : StackLang.HolProg 64 :=
.seq rawBody397_16 rawBody397_17

def rawBody397_19 : StackLang.HolProg 64 :=
.seq rawBody397_15 rawBody397_18

def rawBody397_20 : StackLang.HolProg 64 :=
.seq rawBody397_14 rawBody397_19

def rawBody397_21 : StackLang.HolProg 64 :=
.seq rawBody397_13 rawBody397_20

def rawBody397_22 : StackLang.HolProg 64 :=
.seq rawBody397_12 rawBody397_21

def rawBody397_23 : StackLang.HolProg 64 :=
.seq rawBody397_11 rawBody397_22

def rawBody397_24 : StackLang.HolProg 64 :=
.seq rawBody397_10 rawBody397_23

def rawBody397_25 : StackLang.HolProg 64 :=
.seq rawBody397_9 rawBody397_24

def rawBody397_26 : StackLang.HolProg 64 :=
.seq rawBody397_8 rawBody397_25

def rawBody397_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody397_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody397_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody397_34 : StackLang.HolProg 64 :=
.seq rawBody397_32 rawBody397_33

def rawBody397_35 : StackLang.HolProg 64 :=
.seq rawBody397_31 rawBody397_34

def rawBody397_36 : StackLang.HolProg 64 :=
.seq rawBody397_30 rawBody397_35

def rawBody397_37 : StackLang.HolProg 64 :=
.seq rawBody397_29 rawBody397_36

def rawBody397_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody397_40 : StackLang.HolProg 64 :=
.seq rawBody397_38 rawBody397_39

def rawBody397_41 : StackLang.HolProg 64 :=
.call (some (rawBody397_37, 0, 397, 2)) (Sum.inl 69) (some (rawBody397_40, 397, 3))

def rawBody397_42 : StackLang.HolProg 64 :=
.seq rawBody397_28 rawBody397_41

def rawBody397_43 : StackLang.HolProg 64 :=
.seq rawBody397_27 rawBody397_42

def rawBody397_44 : StackLang.HolProg 64 :=
.seq rawBody397_26 rawBody397_43

def rawBody397_45 : StackLang.HolProg 64 :=
.seq rawBody397_7 rawBody397_44

def rawBody397_46 : StackLang.HolProg 64 :=
.seq rawBody397_4 rawBody397_45

def rawBody397_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody397_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody397_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody397_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1177#64)

def rawBody397_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_53 : StackLang.HolProg 64 :=
.seq rawBody397_51 rawBody397_52

def rawBody397_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody397_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody397_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 5

def rawBody397_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody397_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody397_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody397_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody397_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_64 : StackLang.HolProg 64 :=
.seq rawBody397_62 rawBody397_63

def rawBody397_65 : StackLang.HolProg 64 :=
.seq rawBody397_61 rawBody397_64

def rawBody397_66 : StackLang.HolProg 64 :=
.seq rawBody397_60 rawBody397_65

def rawBody397_67 : StackLang.HolProg 64 :=
.seq rawBody397_59 rawBody397_66

def rawBody397_68 : StackLang.HolProg 64 :=
.seq rawBody397_58 rawBody397_67

def rawBody397_69 : StackLang.HolProg 64 :=
.seq rawBody397_57 rawBody397_68

def rawBody397_70 : StackLang.HolProg 64 :=
.seq rawBody397_56 rawBody397_69

def rawBody397_71 : StackLang.HolProg 64 :=
.seq rawBody397_55 rawBody397_70

def rawBody397_72 : StackLang.HolProg 64 :=
.seq rawBody397_54 rawBody397_71

def rawBody397_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody397_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody397_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody397_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody397_81 : StackLang.HolProg 64 :=
.seq rawBody397_79 rawBody397_80

def rawBody397_82 : StackLang.HolProg 64 :=
.seq rawBody397_78 rawBody397_81

def rawBody397_83 : StackLang.HolProg 64 :=
.seq rawBody397_77 rawBody397_82

def rawBody397_84 : StackLang.HolProg 64 :=
.seq rawBody397_76 rawBody397_83

def rawBody397_85 : StackLang.HolProg 64 :=
.seq rawBody397_75 rawBody397_84

def rawBody397_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody397_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody397_88 : StackLang.HolProg 64 :=
.seq rawBody397_86 rawBody397_87

def rawBody397_89 : StackLang.HolProg 64 :=
.call (some (rawBody397_85, 0, 397, 4)) (Sum.inl 68) (some (rawBody397_88, 397, 5))

def rawBody397_90 : StackLang.HolProg 64 :=
.seq rawBody397_74 rawBody397_89

def rawBody397_91 : StackLang.HolProg 64 :=
.seq rawBody397_73 rawBody397_90

def rawBody397_92 : StackLang.HolProg 64 :=
.seq rawBody397_72 rawBody397_91

def rawBody397_93 : StackLang.HolProg 64 :=
.seq rawBody397_53 rawBody397_92

def rawBody397_94 : StackLang.HolProg 64 :=
.seq rawBody397_50 rawBody397_93

def rawBody397_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody397_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody397_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def rawBody397_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody397_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1178#64)

def rawBody397_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_102 : StackLang.HolProg 64 :=
.seq rawBody397_100 rawBody397_101

def rawBody397_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody397_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody397_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 7

def rawBody397_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody397_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody397_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody397_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody397_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_113 : StackLang.HolProg 64 :=
.seq rawBody397_111 rawBody397_112

def rawBody397_114 : StackLang.HolProg 64 :=
.seq rawBody397_110 rawBody397_113

def rawBody397_115 : StackLang.HolProg 64 :=
.seq rawBody397_109 rawBody397_114

def rawBody397_116 : StackLang.HolProg 64 :=
.seq rawBody397_108 rawBody397_115

def rawBody397_117 : StackLang.HolProg 64 :=
.seq rawBody397_107 rawBody397_116

def rawBody397_118 : StackLang.HolProg 64 :=
.seq rawBody397_106 rawBody397_117

def rawBody397_119 : StackLang.HolProg 64 :=
.seq rawBody397_105 rawBody397_118

def rawBody397_120 : StackLang.HolProg 64 :=
.seq rawBody397_104 rawBody397_119

def rawBody397_121 : StackLang.HolProg 64 :=
.seq rawBody397_103 rawBody397_120

def rawBody397_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody397_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody397_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody397_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody397_131 : StackLang.HolProg 64 :=
.seq rawBody397_129 rawBody397_130

def rawBody397_132 : StackLang.HolProg 64 :=
.seq rawBody397_128 rawBody397_131

def rawBody397_133 : StackLang.HolProg 64 :=
.seq rawBody397_127 rawBody397_132

def rawBody397_134 : StackLang.HolProg 64 :=
.seq rawBody397_126 rawBody397_133

def rawBody397_135 : StackLang.HolProg 64 :=
.seq rawBody397_125 rawBody397_134

def rawBody397_136 : StackLang.HolProg 64 :=
.seq rawBody397_124 rawBody397_135

def rawBody397_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody397_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody397_140 : StackLang.HolProg 64 :=
.seq rawBody397_138 rawBody397_139

def rawBody397_141 : StackLang.HolProg 64 :=
.seq rawBody397_137 rawBody397_140

def rawBody397_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody397_143 : StackLang.HolProg 64 :=
.seq rawBody397_141 rawBody397_142

def rawBody397_144 : StackLang.HolProg 64 :=
.call (some (rawBody397_136, 0, 397, 6)) (Sum.inl 158) (some (rawBody397_143, 397, 7))

def rawBody397_145 : StackLang.HolProg 64 :=
.seq rawBody397_123 rawBody397_144

def rawBody397_146 : StackLang.HolProg 64 :=
.seq rawBody397_122 rawBody397_145

def rawBody397_147 : StackLang.HolProg 64 :=
.seq rawBody397_121 rawBody397_146

def rawBody397_148 : StackLang.HolProg 64 :=
.seq rawBody397_102 rawBody397_147

def rawBody397_149 : StackLang.HolProg 64 :=
.seq rawBody397_99 rawBody397_148

def rawBody397_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody397_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody397_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody397_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody397_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551448#64))

def rawBody397_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody397_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1179#64)

def rawBody397_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_160 : StackLang.HolProg 64 :=
.seq rawBody397_158 rawBody397_159

def rawBody397_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody397_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody397_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 9

def rawBody397_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody397_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody397_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody397_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody397_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_171 : StackLang.HolProg 64 :=
.seq rawBody397_169 rawBody397_170

def rawBody397_172 : StackLang.HolProg 64 :=
.seq rawBody397_168 rawBody397_171

def rawBody397_173 : StackLang.HolProg 64 :=
.seq rawBody397_167 rawBody397_172

def rawBody397_174 : StackLang.HolProg 64 :=
.seq rawBody397_166 rawBody397_173

def rawBody397_175 : StackLang.HolProg 64 :=
.seq rawBody397_165 rawBody397_174

def rawBody397_176 : StackLang.HolProg 64 :=
.seq rawBody397_164 rawBody397_175

def rawBody397_177 : StackLang.HolProg 64 :=
.seq rawBody397_163 rawBody397_176

def rawBody397_178 : StackLang.HolProg 64 :=
.seq rawBody397_162 rawBody397_177

def rawBody397_179 : StackLang.HolProg 64 :=
.seq rawBody397_161 rawBody397_178

def rawBody397_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody397_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody397_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody397_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody397_188 : StackLang.HolProg 64 :=
.seq rawBody397_186 rawBody397_187

def rawBody397_189 : StackLang.HolProg 64 :=
.seq rawBody397_185 rawBody397_188

def rawBody397_190 : StackLang.HolProg 64 :=
.seq rawBody397_184 rawBody397_189

def rawBody397_191 : StackLang.HolProg 64 :=
.seq rawBody397_183 rawBody397_190

def rawBody397_192 : StackLang.HolProg 64 :=
.seq rawBody397_182 rawBody397_191

def rawBody397_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody397_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody397_195 : StackLang.HolProg 64 :=
.seq rawBody397_193 rawBody397_194

def rawBody397_196 : StackLang.HolProg 64 :=
.call (some (rawBody397_192, 0, 397, 8)) (Sum.inl 307) (some (rawBody397_195, 397, 9))

def rawBody397_197 : StackLang.HolProg 64 :=
.seq rawBody397_181 rawBody397_196

def rawBody397_198 : StackLang.HolProg 64 :=
.seq rawBody397_180 rawBody397_197

def rawBody397_199 : StackLang.HolProg 64 :=
.seq rawBody397_179 rawBody397_198

def rawBody397_200 : StackLang.HolProg 64 :=
.seq rawBody397_160 rawBody397_199

def rawBody397_201 : StackLang.HolProg 64 :=
.seq rawBody397_157 rawBody397_200

def rawBody397_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody397_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody397_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody397_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody397_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody397_207 : StackLang.HolProg 64 :=
.seq rawBody397_205 rawBody397_206

def rawBody397_208 : StackLang.HolProg 64 :=
.seq rawBody397_204 rawBody397_207

def rawBody397_209 : StackLang.HolProg 64 :=
.seq rawBody397_203 rawBody397_208

def rawBody397_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1180#64)

def rawBody397_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_213 : StackLang.HolProg 64 :=
.seq rawBody397_211 rawBody397_212

def rawBody397_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody397_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody397_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody397_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 11

def rawBody397_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody397_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody397_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody397_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody397_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_224 : StackLang.HolProg 64 :=
.seq rawBody397_222 rawBody397_223

def rawBody397_225 : StackLang.HolProg 64 :=
.seq rawBody397_221 rawBody397_224

def rawBody397_226 : StackLang.HolProg 64 :=
.seq rawBody397_220 rawBody397_225

def rawBody397_227 : StackLang.HolProg 64 :=
.seq rawBody397_219 rawBody397_226

def rawBody397_228 : StackLang.HolProg 64 :=
.seq rawBody397_218 rawBody397_227

def rawBody397_229 : StackLang.HolProg 64 :=
.seq rawBody397_217 rawBody397_228

def rawBody397_230 : StackLang.HolProg 64 :=
.seq rawBody397_216 rawBody397_229

def rawBody397_231 : StackLang.HolProg 64 :=
.seq rawBody397_215 rawBody397_230

def rawBody397_232 : StackLang.HolProg 64 :=
.seq rawBody397_214 rawBody397_231

def rawBody397_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody397_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody397_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody397_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody397_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody397_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody397_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody397_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody397_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody397_243 : StackLang.HolProg 64 :=
.seq rawBody397_241 rawBody397_242

def rawBody397_244 : StackLang.HolProg 64 :=
.seq rawBody397_240 rawBody397_243

def rawBody397_245 : StackLang.HolProg 64 :=
.seq rawBody397_239 rawBody397_244

def rawBody397_246 : StackLang.HolProg 64 :=
.seq rawBody397_238 rawBody397_245

def rawBody397_247 : StackLang.HolProg 64 :=
.seq rawBody397_237 rawBody397_246

def rawBody397_248 : StackLang.HolProg 64 :=
.seq rawBody397_236 rawBody397_247

def rawBody397_249 : StackLang.HolProg 64 :=
.seq rawBody397_235 rawBody397_248

def rawBody397_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody397_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody397_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody397_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody397_254 : StackLang.HolProg 64 :=
.seq rawBody397_252 rawBody397_253

def rawBody397_255 : StackLang.HolProg 64 :=
.seq rawBody397_251 rawBody397_254

def rawBody397_256 : StackLang.HolProg 64 :=
.seq rawBody397_250 rawBody397_255

def rawBody397_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody397_258 : StackLang.HolProg 64 :=
.seq rawBody397_256 rawBody397_257

def rawBody397_259 : StackLang.HolProg 64 :=
.call (some (rawBody397_249, 0, 397, 10)) (Sum.inl 70) (some (rawBody397_258, 397, 11))

def rawBody397_260 : StackLang.HolProg 64 :=
.seq rawBody397_234 rawBody397_259

def rawBody397_261 : StackLang.HolProg 64 :=
.seq rawBody397_233 rawBody397_260

def rawBody397_262 : StackLang.HolProg 64 :=
.seq rawBody397_232 rawBody397_261

def rawBody397_263 : StackLang.HolProg 64 :=
.seq rawBody397_213 rawBody397_262

def rawBody397_264 : StackLang.HolProg 64 :=
.seq rawBody397_210 rawBody397_263

def rawBody397_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody397_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody397_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody397_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody397_269 : StackLang.HolProg 64 :=
.seq rawBody397_267 rawBody397_268

def rawBody397_270 : StackLang.HolProg 64 :=
.seq rawBody397_266 rawBody397_269

def rawBody397_271 : StackLang.HolProg 64 :=
.seq rawBody397_265 rawBody397_270

def rawBody397_272 : StackLang.HolProg 64 :=
.seq rawBody397_264 rawBody397_271

def rawBody397_273 : StackLang.HolProg 64 :=
.seq rawBody397_209 rawBody397_272

def rawBody397_274 : StackLang.HolProg 64 :=
.seq rawBody397_202 rawBody397_273

def rawBody397_275 : StackLang.HolProg 64 :=
.seq rawBody397_201 rawBody397_274

def rawBody397_276 : StackLang.HolProg 64 :=
.seq rawBody397_156 rawBody397_275

def rawBody397_277 : StackLang.HolProg 64 :=
.seq rawBody397_155 rawBody397_276

def rawBody397_278 : StackLang.HolProg 64 :=
.seq rawBody397_154 rawBody397_277

def rawBody397_279 : StackLang.HolProg 64 :=
.seq rawBody397_153 rawBody397_278

def rawBody397_280 : StackLang.HolProg 64 :=
.seq rawBody397_152 rawBody397_279

def rawBody397_281 : StackLang.HolProg 64 :=
.seq rawBody397_151 rawBody397_280

def rawBody397_282 : StackLang.HolProg 64 :=
.seq rawBody397_150 rawBody397_281

def rawBody397_283 : StackLang.HolProg 64 :=
.seq rawBody397_149 rawBody397_282

def rawBody397_284 : StackLang.HolProg 64 :=
.seq rawBody397_98 rawBody397_283

def rawBody397_285 : StackLang.HolProg 64 :=
.seq rawBody397_97 rawBody397_284

def rawBody397_286 : StackLang.HolProg 64 :=
.seq rawBody397_96 rawBody397_285

def rawBody397_287 : StackLang.HolProg 64 :=
.seq rawBody397_95 rawBody397_286

def rawBody397_288 : StackLang.HolProg 64 :=
.seq rawBody397_94 rawBody397_287

def rawBody397_289 : StackLang.HolProg 64 :=
.seq rawBody397_49 rawBody397_288

def rawBody397_290 : StackLang.HolProg 64 :=
.seq rawBody397_48 rawBody397_289

def rawBody397_291 : StackLang.HolProg 64 :=
.seq rawBody397_47 rawBody397_290

def rawBody397_292 : StackLang.HolProg 64 :=
.seq rawBody397_46 rawBody397_291

def rawBody397_293 : StackLang.HolProg 64 :=
.seq rawBody397_3 rawBody397_292

def rawBody397_294 : StackLang.HolProg 64 :=
.seq rawBody397_0 rawBody397_293

def raw397 : StackLang.HolProg 64 := rawBody397_294
theorem raw397_eq : StackRawCall.compTop RawInfo.rawInfo (function397 (.list [])).1 = raw397 := by
  kernel_rfl
#print axioms raw397_eq
end InitECandidate.Proofs.BackendStages
