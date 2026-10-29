import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function702
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody702_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody702_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody702_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody702_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody702_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody702_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def rawBody702_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6000#64)

def rawBody702_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody702_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody702_10 : StackLang.HolProg 64 :=
.seq rawBody702_8 rawBody702_9

def rawBody702_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3139#64)

def rawBody702_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_14 : StackLang.HolProg 64 :=
.seq rawBody702_12 rawBody702_13

def rawBody702_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 3

def rawBody702_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_25 : StackLang.HolProg 64 :=
.seq rawBody702_23 rawBody702_24

def rawBody702_26 : StackLang.HolProg 64 :=
.seq rawBody702_22 rawBody702_25

def rawBody702_27 : StackLang.HolProg 64 :=
.seq rawBody702_21 rawBody702_26

def rawBody702_28 : StackLang.HolProg 64 :=
.seq rawBody702_20 rawBody702_27

def rawBody702_29 : StackLang.HolProg 64 :=
.seq rawBody702_19 rawBody702_28

def rawBody702_30 : StackLang.HolProg 64 :=
.seq rawBody702_18 rawBody702_29

def rawBody702_31 : StackLang.HolProg 64 :=
.seq rawBody702_17 rawBody702_30

def rawBody702_32 : StackLang.HolProg 64 :=
.seq rawBody702_16 rawBody702_31

def rawBody702_33 : StackLang.HolProg 64 :=
.seq rawBody702_15 rawBody702_32

def rawBody702_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_41 : StackLang.HolProg 64 :=
.seq rawBody702_39 rawBody702_40

def rawBody702_42 : StackLang.HolProg 64 :=
.seq rawBody702_38 rawBody702_41

def rawBody702_43 : StackLang.HolProg 64 :=
.seq rawBody702_37 rawBody702_42

def rawBody702_44 : StackLang.HolProg 64 :=
.seq rawBody702_36 rawBody702_43

def rawBody702_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_47 : StackLang.HolProg 64 :=
.seq rawBody702_45 rawBody702_46

def rawBody702_48 : StackLang.HolProg 64 :=
.call (some (rawBody702_44, 0, 702, 2)) (Sum.inl 470) (some (rawBody702_47, 702, 3))

def rawBody702_49 : StackLang.HolProg 64 :=
.seq rawBody702_35 rawBody702_48

def rawBody702_50 : StackLang.HolProg 64 :=
.seq rawBody702_34 rawBody702_49

def rawBody702_51 : StackLang.HolProg 64 :=
.seq rawBody702_33 rawBody702_50

def rawBody702_52 : StackLang.HolProg 64 :=
.seq rawBody702_14 rawBody702_51

def rawBody702_53 : StackLang.HolProg 64 :=
.seq rawBody702_11 rawBody702_52

def rawBody702_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody702_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3140#64)

def rawBody702_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_60 : StackLang.HolProg 64 :=
.seq rawBody702_58 rawBody702_59

def rawBody702_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 5

def rawBody702_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_71 : StackLang.HolProg 64 :=
.seq rawBody702_69 rawBody702_70

def rawBody702_72 : StackLang.HolProg 64 :=
.seq rawBody702_68 rawBody702_71

def rawBody702_73 : StackLang.HolProg 64 :=
.seq rawBody702_67 rawBody702_72

def rawBody702_74 : StackLang.HolProg 64 :=
.seq rawBody702_66 rawBody702_73

def rawBody702_75 : StackLang.HolProg 64 :=
.seq rawBody702_65 rawBody702_74

def rawBody702_76 : StackLang.HolProg 64 :=
.seq rawBody702_64 rawBody702_75

def rawBody702_77 : StackLang.HolProg 64 :=
.seq rawBody702_63 rawBody702_76

def rawBody702_78 : StackLang.HolProg 64 :=
.seq rawBody702_62 rawBody702_77

def rawBody702_79 : StackLang.HolProg 64 :=
.seq rawBody702_61 rawBody702_78

def rawBody702_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody702_87 : StackLang.HolProg 64 :=
.seq rawBody702_85 rawBody702_86

def rawBody702_88 : StackLang.HolProg 64 :=
.seq rawBody702_84 rawBody702_87

def rawBody702_89 : StackLang.HolProg 64 :=
.seq rawBody702_83 rawBody702_88

def rawBody702_90 : StackLang.HolProg 64 :=
.seq rawBody702_82 rawBody702_89

def rawBody702_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_93 : StackLang.HolProg 64 :=
.seq rawBody702_91 rawBody702_92

def rawBody702_94 : StackLang.HolProg 64 :=
.call (some (rawBody702_90, 0, 702, 4)) (Sum.inl 68) (some (rawBody702_93, 702, 5))

def rawBody702_95 : StackLang.HolProg 64 :=
.seq rawBody702_81 rawBody702_94

def rawBody702_96 : StackLang.HolProg 64 :=
.seq rawBody702_80 rawBody702_95

def rawBody702_97 : StackLang.HolProg 64 :=
.seq rawBody702_79 rawBody702_96

def rawBody702_98 : StackLang.HolProg 64 :=
.seq rawBody702_60 rawBody702_97

def rawBody702_99 : StackLang.HolProg 64 :=
.seq rawBody702_57 rawBody702_98

def rawBody702_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody702_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3141#64)

def rawBody702_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_105 : StackLang.HolProg 64 :=
.seq rawBody702_103 rawBody702_104

def rawBody702_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 7

def rawBody702_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_116 : StackLang.HolProg 64 :=
.seq rawBody702_114 rawBody702_115

def rawBody702_117 : StackLang.HolProg 64 :=
.seq rawBody702_113 rawBody702_116

def rawBody702_118 : StackLang.HolProg 64 :=
.seq rawBody702_112 rawBody702_117

def rawBody702_119 : StackLang.HolProg 64 :=
.seq rawBody702_111 rawBody702_118

def rawBody702_120 : StackLang.HolProg 64 :=
.seq rawBody702_110 rawBody702_119

def rawBody702_121 : StackLang.HolProg 64 :=
.seq rawBody702_109 rawBody702_120

def rawBody702_122 : StackLang.HolProg 64 :=
.seq rawBody702_108 rawBody702_121

def rawBody702_123 : StackLang.HolProg 64 :=
.seq rawBody702_107 rawBody702_122

def rawBody702_124 : StackLang.HolProg 64 :=
.seq rawBody702_106 rawBody702_123

def rawBody702_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody702_132 : StackLang.HolProg 64 :=
.seq rawBody702_130 rawBody702_131

def rawBody702_133 : StackLang.HolProg 64 :=
.seq rawBody702_129 rawBody702_132

def rawBody702_134 : StackLang.HolProg 64 :=
.seq rawBody702_128 rawBody702_133

def rawBody702_135 : StackLang.HolProg 64 :=
.seq rawBody702_127 rawBody702_134

def rawBody702_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_138 : StackLang.HolProg 64 :=
.seq rawBody702_136 rawBody702_137

def rawBody702_139 : StackLang.HolProg 64 :=
.call (some (rawBody702_135, 0, 702, 6)) (Sum.inl 69) (some (rawBody702_138, 702, 7))

def rawBody702_140 : StackLang.HolProg 64 :=
.seq rawBody702_126 rawBody702_139

def rawBody702_141 : StackLang.HolProg 64 :=
.seq rawBody702_125 rawBody702_140

def rawBody702_142 : StackLang.HolProg 64 :=
.seq rawBody702_124 rawBody702_141

def rawBody702_143 : StackLang.HolProg 64 :=
.seq rawBody702_105 rawBody702_142

def rawBody702_144 : StackLang.HolProg 64 :=
.seq rawBody702_102 rawBody702_143

def rawBody702_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def rawBody702_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody702_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3142#64)

def rawBody702_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_151 : StackLang.HolProg 64 :=
.seq rawBody702_149 rawBody702_150

def rawBody702_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 9

def rawBody702_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_162 : StackLang.HolProg 64 :=
.seq rawBody702_160 rawBody702_161

def rawBody702_163 : StackLang.HolProg 64 :=
.seq rawBody702_159 rawBody702_162

def rawBody702_164 : StackLang.HolProg 64 :=
.seq rawBody702_158 rawBody702_163

def rawBody702_165 : StackLang.HolProg 64 :=
.seq rawBody702_157 rawBody702_164

def rawBody702_166 : StackLang.HolProg 64 :=
.seq rawBody702_156 rawBody702_165

def rawBody702_167 : StackLang.HolProg 64 :=
.seq rawBody702_155 rawBody702_166

def rawBody702_168 : StackLang.HolProg 64 :=
.seq rawBody702_154 rawBody702_167

def rawBody702_169 : StackLang.HolProg 64 :=
.seq rawBody702_153 rawBody702_168

def rawBody702_170 : StackLang.HolProg 64 :=
.seq rawBody702_152 rawBody702_169

def rawBody702_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody702_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody702_179 : StackLang.HolProg 64 :=
.seq rawBody702_177 rawBody702_178

def rawBody702_180 : StackLang.HolProg 64 :=
.seq rawBody702_176 rawBody702_179

def rawBody702_181 : StackLang.HolProg 64 :=
.seq rawBody702_175 rawBody702_180

def rawBody702_182 : StackLang.HolProg 64 :=
.seq rawBody702_174 rawBody702_181

def rawBody702_183 : StackLang.HolProg 64 :=
.seq rawBody702_173 rawBody702_182

def rawBody702_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody702_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_186 : StackLang.HolProg 64 :=
.seq rawBody702_184 rawBody702_185

def rawBody702_187 : StackLang.HolProg 64 :=
.call (some (rawBody702_183, 0, 702, 8)) (Sum.inl 68) (some (rawBody702_186, 702, 9))

def rawBody702_188 : StackLang.HolProg 64 :=
.seq rawBody702_172 rawBody702_187

def rawBody702_189 : StackLang.HolProg 64 :=
.seq rawBody702_171 rawBody702_188

def rawBody702_190 : StackLang.HolProg 64 :=
.seq rawBody702_170 rawBody702_189

def rawBody702_191 : StackLang.HolProg 64 :=
.seq rawBody702_151 rawBody702_190

def rawBody702_192 : StackLang.HolProg 64 :=
.seq rawBody702_148 rawBody702_191

def rawBody702_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def rawBody702_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def rawBody702_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def rawBody702_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody702_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def rawBody702_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3143#64)

def rawBody702_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_205 : StackLang.HolProg 64 :=
.seq rawBody702_203 rawBody702_204

def rawBody702_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 11

def rawBody702_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_216 : StackLang.HolProg 64 :=
.seq rawBody702_214 rawBody702_215

def rawBody702_217 : StackLang.HolProg 64 :=
.seq rawBody702_213 rawBody702_216

def rawBody702_218 : StackLang.HolProg 64 :=
.seq rawBody702_212 rawBody702_217

def rawBody702_219 : StackLang.HolProg 64 :=
.seq rawBody702_211 rawBody702_218

def rawBody702_220 : StackLang.HolProg 64 :=
.seq rawBody702_210 rawBody702_219

def rawBody702_221 : StackLang.HolProg 64 :=
.seq rawBody702_209 rawBody702_220

def rawBody702_222 : StackLang.HolProg 64 :=
.seq rawBody702_208 rawBody702_221

def rawBody702_223 : StackLang.HolProg 64 :=
.seq rawBody702_207 rawBody702_222

def rawBody702_224 : StackLang.HolProg 64 :=
.seq rawBody702_206 rawBody702_223

def rawBody702_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody702_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody702_233 : StackLang.HolProg 64 :=
.seq rawBody702_231 rawBody702_232

def rawBody702_234 : StackLang.HolProg 64 :=
.seq rawBody702_230 rawBody702_233

def rawBody702_235 : StackLang.HolProg 64 :=
.seq rawBody702_229 rawBody702_234

def rawBody702_236 : StackLang.HolProg 64 :=
.seq rawBody702_228 rawBody702_235

def rawBody702_237 : StackLang.HolProg 64 :=
.seq rawBody702_227 rawBody702_236

def rawBody702_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody702_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody702_240 : StackLang.HolProg 64 :=
.seq rawBody702_238 rawBody702_239

def rawBody702_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_242 : StackLang.HolProg 64 :=
.seq rawBody702_240 rawBody702_241

def rawBody702_243 : StackLang.HolProg 64 :=
.call (some (rawBody702_237, 0, 702, 10)) (Sum.inl 484) (some (rawBody702_242, 702, 11))

def rawBody702_244 : StackLang.HolProg 64 :=
.seq rawBody702_226 rawBody702_243

def rawBody702_245 : StackLang.HolProg 64 :=
.seq rawBody702_225 rawBody702_244

def rawBody702_246 : StackLang.HolProg 64 :=
.seq rawBody702_224 rawBody702_245

def rawBody702_247 : StackLang.HolProg 64 :=
.seq rawBody702_205 rawBody702_246

def rawBody702_248 : StackLang.HolProg 64 :=
.seq rawBody702_202 rawBody702_247

def rawBody702_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody702_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody702_252 : StackLang.HolProg 64 :=
.seq rawBody702_250 rawBody702_251

def rawBody702_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3144#64)

def rawBody702_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_256 : StackLang.HolProg 64 :=
.seq rawBody702_254 rawBody702_255

def rawBody702_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 13

def rawBody702_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_267 : StackLang.HolProg 64 :=
.seq rawBody702_265 rawBody702_266

def rawBody702_268 : StackLang.HolProg 64 :=
.seq rawBody702_264 rawBody702_267

def rawBody702_269 : StackLang.HolProg 64 :=
.seq rawBody702_263 rawBody702_268

def rawBody702_270 : StackLang.HolProg 64 :=
.seq rawBody702_262 rawBody702_269

def rawBody702_271 : StackLang.HolProg 64 :=
.seq rawBody702_261 rawBody702_270

def rawBody702_272 : StackLang.HolProg 64 :=
.seq rawBody702_260 rawBody702_271

def rawBody702_273 : StackLang.HolProg 64 :=
.seq rawBody702_259 rawBody702_272

def rawBody702_274 : StackLang.HolProg 64 :=
.seq rawBody702_258 rawBody702_273

def rawBody702_275 : StackLang.HolProg 64 :=
.seq rawBody702_257 rawBody702_274

def rawBody702_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody702_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody702_284 : StackLang.HolProg 64 :=
.seq rawBody702_282 rawBody702_283

def rawBody702_285 : StackLang.HolProg 64 :=
.seq rawBody702_281 rawBody702_284

def rawBody702_286 : StackLang.HolProg 64 :=
.seq rawBody702_280 rawBody702_285

def rawBody702_287 : StackLang.HolProg 64 :=
.seq rawBody702_279 rawBody702_286

def rawBody702_288 : StackLang.HolProg 64 :=
.seq rawBody702_278 rawBody702_287

def rawBody702_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody702_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_291 : StackLang.HolProg 64 :=
.seq rawBody702_289 rawBody702_290

def rawBody702_292 : StackLang.HolProg 64 :=
.call (some (rawBody702_288, 0, 702, 12)) (Sum.inl 699) (some (rawBody702_291, 702, 13))

def rawBody702_293 : StackLang.HolProg 64 :=
.seq rawBody702_277 rawBody702_292

def rawBody702_294 : StackLang.HolProg 64 :=
.seq rawBody702_276 rawBody702_293

def rawBody702_295 : StackLang.HolProg 64 :=
.seq rawBody702_275 rawBody702_294

def rawBody702_296 : StackLang.HolProg 64 :=
.seq rawBody702_256 rawBody702_295

def rawBody702_297 : StackLang.HolProg 64 :=
.seq rawBody702_253 rawBody702_296

def rawBody702_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody702_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody702_301 : StackLang.HolProg 64 :=
.seq rawBody702_299 rawBody702_300

def rawBody702_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3145#64)

def rawBody702_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_305 : StackLang.HolProg 64 :=
.seq rawBody702_303 rawBody702_304

def rawBody702_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody702_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody702_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody702_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 15

def rawBody702_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody702_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody702_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody702_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody702_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_316 : StackLang.HolProg 64 :=
.seq rawBody702_314 rawBody702_315

def rawBody702_317 : StackLang.HolProg 64 :=
.seq rawBody702_313 rawBody702_316

def rawBody702_318 : StackLang.HolProg 64 :=
.seq rawBody702_312 rawBody702_317

def rawBody702_319 : StackLang.HolProg 64 :=
.seq rawBody702_311 rawBody702_318

def rawBody702_320 : StackLang.HolProg 64 :=
.seq rawBody702_310 rawBody702_319

def rawBody702_321 : StackLang.HolProg 64 :=
.seq rawBody702_309 rawBody702_320

def rawBody702_322 : StackLang.HolProg 64 :=
.seq rawBody702_308 rawBody702_321

def rawBody702_323 : StackLang.HolProg 64 :=
.seq rawBody702_307 rawBody702_322

def rawBody702_324 : StackLang.HolProg 64 :=
.seq rawBody702_306 rawBody702_323

def rawBody702_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody702_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody702_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody702_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody702_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody702_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody702_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody702_334 : StackLang.HolProg 64 :=
.seq rawBody702_332 rawBody702_333

def rawBody702_335 : StackLang.HolProg 64 :=
.seq rawBody702_331 rawBody702_334

def rawBody702_336 : StackLang.HolProg 64 :=
.seq rawBody702_330 rawBody702_335

def rawBody702_337 : StackLang.HolProg 64 :=
.seq rawBody702_329 rawBody702_336

def rawBody702_338 : StackLang.HolProg 64 :=
.seq rawBody702_328 rawBody702_337

def rawBody702_339 : StackLang.HolProg 64 :=
.seq rawBody702_327 rawBody702_338

def rawBody702_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody702_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody702_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody702_343 : StackLang.HolProg 64 :=
.seq rawBody702_341 rawBody702_342

def rawBody702_344 : StackLang.HolProg 64 :=
.seq rawBody702_340 rawBody702_343

def rawBody702_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_346 : StackLang.HolProg 64 :=
.seq rawBody702_344 rawBody702_345

def rawBody702_347 : StackLang.HolProg 64 :=
.call (some (rawBody702_339, 0, 702, 14)) (Sum.inl 70) (some (rawBody702_346, 702, 15))

def rawBody702_348 : StackLang.HolProg 64 :=
.seq rawBody702_326 rawBody702_347

def rawBody702_349 : StackLang.HolProg 64 :=
.seq rawBody702_325 rawBody702_348

def rawBody702_350 : StackLang.HolProg 64 :=
.seq rawBody702_324 rawBody702_349

def rawBody702_351 : StackLang.HolProg 64 :=
.seq rawBody702_305 rawBody702_350

def rawBody702_352 : StackLang.HolProg 64 :=
.seq rawBody702_302 rawBody702_351

def rawBody702_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody702_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def rawBody702_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody702_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody702_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_362 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody702_363 : StackLang.HolProg 64 :=
.seq rawBody702_361 rawBody702_362

def rawBody702_364 : StackLang.HolProg 64 :=
.seq rawBody702_360 rawBody702_363

def rawBody702_365 : StackLang.HolProg 64 :=
.seq rawBody702_359 rawBody702_364

def rawBody702_366 : StackLang.HolProg 64 :=
.seq rawBody702_358 rawBody702_365

def rawBody702_367 : StackLang.HolProg 64 :=
.seq rawBody702_357 rawBody702_366

def rawBody702_368 : StackLang.HolProg 64 :=
.seq rawBody702_356 rawBody702_367

def rawBody702_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody702_368 rawBody702_369

def rawBody702_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody702_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody702_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody702_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody702_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody702_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def rawBody702_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody702_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody702_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody702_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody702_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody702_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody702_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody702_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody702_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody702_390 : StackLang.HolProg 64 :=
.seq rawBody702_388 rawBody702_389

def rawBody702_391 : StackLang.HolProg 64 :=
.seq rawBody702_387 rawBody702_390

def rawBody702_392 : StackLang.HolProg 64 :=
.seq rawBody702_386 rawBody702_391

def rawBody702_393 : StackLang.HolProg 64 :=
.seq rawBody702_385 rawBody702_392

def rawBody702_394 : StackLang.HolProg 64 :=
.seq rawBody702_384 rawBody702_393

def rawBody702_395 : StackLang.HolProg 64 :=
.seq rawBody702_383 rawBody702_394

def rawBody702_396 : StackLang.HolProg 64 :=
.seq rawBody702_382 rawBody702_395

def rawBody702_397 : StackLang.HolProg 64 :=
.seq rawBody702_381 rawBody702_396

def rawBody702_398 : StackLang.HolProg 64 :=
.seq rawBody702_380 rawBody702_397

def rawBody702_399 : StackLang.HolProg 64 :=
.seq rawBody702_379 rawBody702_398

def rawBody702_400 : StackLang.HolProg 64 :=
.seq rawBody702_378 rawBody702_399

def rawBody702_401 : StackLang.HolProg 64 :=
.seq rawBody702_377 rawBody702_400

def rawBody702_402 : StackLang.HolProg 64 :=
.seq rawBody702_376 rawBody702_401

def rawBody702_403 : StackLang.HolProg 64 :=
.seq rawBody702_375 rawBody702_402

def rawBody702_404 : StackLang.HolProg 64 :=
.seq rawBody702_374 rawBody702_403

def rawBody702_405 : StackLang.HolProg 64 :=
.seq rawBody702_373 rawBody702_404

def rawBody702_406 : StackLang.HolProg 64 :=
.seq rawBody702_372 rawBody702_405

def rawBody702_407 : StackLang.HolProg 64 :=
.seq rawBody702_371 rawBody702_406

def rawBody702_408 : StackLang.HolProg 64 :=
.seq rawBody702_370 rawBody702_407

def rawBody702_409 : StackLang.HolProg 64 :=
.seq rawBody702_355 rawBody702_408

def rawBody702_410 : StackLang.HolProg 64 :=
.seq rawBody702_354 rawBody702_409

def rawBody702_411 : StackLang.HolProg 64 :=
.seq rawBody702_353 rawBody702_410

def rawBody702_412 : StackLang.HolProg 64 :=
.seq rawBody702_352 rawBody702_411

def rawBody702_413 : StackLang.HolProg 64 :=
.seq rawBody702_301 rawBody702_412

def rawBody702_414 : StackLang.HolProg 64 :=
.seq rawBody702_298 rawBody702_413

def rawBody702_415 : StackLang.HolProg 64 :=
.seq rawBody702_297 rawBody702_414

def rawBody702_416 : StackLang.HolProg 64 :=
.seq rawBody702_252 rawBody702_415

def rawBody702_417 : StackLang.HolProg 64 :=
.seq rawBody702_249 rawBody702_416

def rawBody702_418 : StackLang.HolProg 64 :=
.seq rawBody702_248 rawBody702_417

def rawBody702_419 : StackLang.HolProg 64 :=
.seq rawBody702_201 rawBody702_418

def rawBody702_420 : StackLang.HolProg 64 :=
.seq rawBody702_200 rawBody702_419

def rawBody702_421 : StackLang.HolProg 64 :=
.seq rawBody702_199 rawBody702_420

def rawBody702_422 : StackLang.HolProg 64 :=
.seq rawBody702_198 rawBody702_421

def rawBody702_423 : StackLang.HolProg 64 :=
.seq rawBody702_197 rawBody702_422

def rawBody702_424 : StackLang.HolProg 64 :=
.seq rawBody702_196 rawBody702_423

def rawBody702_425 : StackLang.HolProg 64 :=
.seq rawBody702_195 rawBody702_424

def rawBody702_426 : StackLang.HolProg 64 :=
.seq rawBody702_194 rawBody702_425

def rawBody702_427 : StackLang.HolProg 64 :=
.seq rawBody702_193 rawBody702_426

def rawBody702_428 : StackLang.HolProg 64 :=
.seq rawBody702_192 rawBody702_427

def rawBody702_429 : StackLang.HolProg 64 :=
.seq rawBody702_147 rawBody702_428

def rawBody702_430 : StackLang.HolProg 64 :=
.seq rawBody702_146 rawBody702_429

def rawBody702_431 : StackLang.HolProg 64 :=
.seq rawBody702_145 rawBody702_430

def rawBody702_432 : StackLang.HolProg 64 :=
.seq rawBody702_144 rawBody702_431

def rawBody702_433 : StackLang.HolProg 64 :=
.seq rawBody702_101 rawBody702_432

def rawBody702_434 : StackLang.HolProg 64 :=
.seq rawBody702_100 rawBody702_433

def rawBody702_435 : StackLang.HolProg 64 :=
.seq rawBody702_99 rawBody702_434

def rawBody702_436 : StackLang.HolProg 64 :=
.seq rawBody702_56 rawBody702_435

def rawBody702_437 : StackLang.HolProg 64 :=
.seq rawBody702_55 rawBody702_436

def rawBody702_438 : StackLang.HolProg 64 :=
.seq rawBody702_54 rawBody702_437

def rawBody702_439 : StackLang.HolProg 64 :=
.seq rawBody702_53 rawBody702_438

def rawBody702_440 : StackLang.HolProg 64 :=
.seq rawBody702_10 rawBody702_439

def rawBody702_441 : StackLang.HolProg 64 :=
.seq rawBody702_7 rawBody702_440

def rawBody702_442 : StackLang.HolProg 64 :=
.seq rawBody702_6 rawBody702_441

def rawBody702_443 : StackLang.HolProg 64 :=
.seq rawBody702_5 rawBody702_442

def rawBody702_444 : StackLang.HolProg 64 :=
.seq rawBody702_4 rawBody702_443

def rawBody702_445 : StackLang.HolProg 64 :=
.seq rawBody702_3 rawBody702_444

def rawBody702_446 : StackLang.HolProg 64 :=
.seq rawBody702_2 rawBody702_445

def rawBody702_447 : StackLang.HolProg 64 :=
.seq rawBody702_1 rawBody702_446

def rawBody702_448 : StackLang.HolProg 64 :=
.seq rawBody702_0 rawBody702_447

def raw702 : StackLang.HolProg 64 := rawBody702_448
theorem raw702_eq : StackRawCall.compTop RawInfo.rawInfo (function702 (.list [])).1 = raw702 := by
  kernel_rfl
#print axioms raw702_eq
end InitECandidate.Proofs.BackendStages
