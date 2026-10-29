import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw702
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody702_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody702_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody702_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody702_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody702_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody702_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody702_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6000#64)

def AllocBody702_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody702_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody702_10 : StackLang.HolProg 64 :=
.seq AllocBody702_8 AllocBody702_9

def AllocBody702_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3139#64)

def AllocBody702_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_14 : StackLang.HolProg 64 :=
.seq AllocBody702_12 AllocBody702_13

def AllocBody702_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 3

def AllocBody702_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_25 : StackLang.HolProg 64 :=
.seq AllocBody702_23 AllocBody702_24

def AllocBody702_26 : StackLang.HolProg 64 :=
.seq AllocBody702_22 AllocBody702_25

def AllocBody702_27 : StackLang.HolProg 64 :=
.seq AllocBody702_21 AllocBody702_26

def AllocBody702_28 : StackLang.HolProg 64 :=
.seq AllocBody702_20 AllocBody702_27

def AllocBody702_29 : StackLang.HolProg 64 :=
.seq AllocBody702_19 AllocBody702_28

def AllocBody702_30 : StackLang.HolProg 64 :=
.seq AllocBody702_18 AllocBody702_29

def AllocBody702_31 : StackLang.HolProg 64 :=
.seq AllocBody702_17 AllocBody702_30

def AllocBody702_32 : StackLang.HolProg 64 :=
.seq AllocBody702_16 AllocBody702_31

def AllocBody702_33 : StackLang.HolProg 64 :=
.seq AllocBody702_15 AllocBody702_32

def AllocBody702_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_41 : StackLang.HolProg 64 :=
.seq AllocBody702_39 AllocBody702_40

def AllocBody702_42 : StackLang.HolProg 64 :=
.seq AllocBody702_38 AllocBody702_41

def AllocBody702_43 : StackLang.HolProg 64 :=
.seq AllocBody702_37 AllocBody702_42

def AllocBody702_44 : StackLang.HolProg 64 :=
.seq AllocBody702_36 AllocBody702_43

def AllocBody702_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_47 : StackLang.HolProg 64 :=
.seq AllocBody702_45 AllocBody702_46

def AllocBody702_48 : StackLang.HolProg 64 :=
.call (some (AllocBody702_44, 0, 702, 2)) (Sum.inl 470) (some (AllocBody702_47, 702, 3))

def AllocBody702_49 : StackLang.HolProg 64 :=
.seq AllocBody702_35 AllocBody702_48

def AllocBody702_50 : StackLang.HolProg 64 :=
.seq AllocBody702_34 AllocBody702_49

def AllocBody702_51 : StackLang.HolProg 64 :=
.seq AllocBody702_33 AllocBody702_50

def AllocBody702_52 : StackLang.HolProg 64 :=
.seq AllocBody702_14 AllocBody702_51

def AllocBody702_53 : StackLang.HolProg 64 :=
.seq AllocBody702_11 AllocBody702_52

def AllocBody702_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody702_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3140#64)

def AllocBody702_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_60 : StackLang.HolProg 64 :=
.seq AllocBody702_58 AllocBody702_59

def AllocBody702_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 5

def AllocBody702_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_71 : StackLang.HolProg 64 :=
.seq AllocBody702_69 AllocBody702_70

def AllocBody702_72 : StackLang.HolProg 64 :=
.seq AllocBody702_68 AllocBody702_71

def AllocBody702_73 : StackLang.HolProg 64 :=
.seq AllocBody702_67 AllocBody702_72

def AllocBody702_74 : StackLang.HolProg 64 :=
.seq AllocBody702_66 AllocBody702_73

def AllocBody702_75 : StackLang.HolProg 64 :=
.seq AllocBody702_65 AllocBody702_74

def AllocBody702_76 : StackLang.HolProg 64 :=
.seq AllocBody702_64 AllocBody702_75

def AllocBody702_77 : StackLang.HolProg 64 :=
.seq AllocBody702_63 AllocBody702_76

def AllocBody702_78 : StackLang.HolProg 64 :=
.seq AllocBody702_62 AllocBody702_77

def AllocBody702_79 : StackLang.HolProg 64 :=
.seq AllocBody702_61 AllocBody702_78

def AllocBody702_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody702_87 : StackLang.HolProg 64 :=
.seq AllocBody702_85 AllocBody702_86

def AllocBody702_88 : StackLang.HolProg 64 :=
.seq AllocBody702_84 AllocBody702_87

def AllocBody702_89 : StackLang.HolProg 64 :=
.seq AllocBody702_83 AllocBody702_88

def AllocBody702_90 : StackLang.HolProg 64 :=
.seq AllocBody702_82 AllocBody702_89

def AllocBody702_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_93 : StackLang.HolProg 64 :=
.seq AllocBody702_91 AllocBody702_92

def AllocBody702_94 : StackLang.HolProg 64 :=
.call (some (AllocBody702_90, 0, 702, 4)) (Sum.inl 68) (some (AllocBody702_93, 702, 5))

def AllocBody702_95 : StackLang.HolProg 64 :=
.seq AllocBody702_81 AllocBody702_94

def AllocBody702_96 : StackLang.HolProg 64 :=
.seq AllocBody702_80 AllocBody702_95

def AllocBody702_97 : StackLang.HolProg 64 :=
.seq AllocBody702_79 AllocBody702_96

def AllocBody702_98 : StackLang.HolProg 64 :=
.seq AllocBody702_60 AllocBody702_97

def AllocBody702_99 : StackLang.HolProg 64 :=
.seq AllocBody702_57 AllocBody702_98

def AllocBody702_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody702_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3141#64)

def AllocBody702_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_105 : StackLang.HolProg 64 :=
.seq AllocBody702_103 AllocBody702_104

def AllocBody702_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 7

def AllocBody702_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_116 : StackLang.HolProg 64 :=
.seq AllocBody702_114 AllocBody702_115

def AllocBody702_117 : StackLang.HolProg 64 :=
.seq AllocBody702_113 AllocBody702_116

def AllocBody702_118 : StackLang.HolProg 64 :=
.seq AllocBody702_112 AllocBody702_117

def AllocBody702_119 : StackLang.HolProg 64 :=
.seq AllocBody702_111 AllocBody702_118

def AllocBody702_120 : StackLang.HolProg 64 :=
.seq AllocBody702_110 AllocBody702_119

def AllocBody702_121 : StackLang.HolProg 64 :=
.seq AllocBody702_109 AllocBody702_120

def AllocBody702_122 : StackLang.HolProg 64 :=
.seq AllocBody702_108 AllocBody702_121

def AllocBody702_123 : StackLang.HolProg 64 :=
.seq AllocBody702_107 AllocBody702_122

def AllocBody702_124 : StackLang.HolProg 64 :=
.seq AllocBody702_106 AllocBody702_123

def AllocBody702_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody702_132 : StackLang.HolProg 64 :=
.seq AllocBody702_130 AllocBody702_131

def AllocBody702_133 : StackLang.HolProg 64 :=
.seq AllocBody702_129 AllocBody702_132

def AllocBody702_134 : StackLang.HolProg 64 :=
.seq AllocBody702_128 AllocBody702_133

def AllocBody702_135 : StackLang.HolProg 64 :=
.seq AllocBody702_127 AllocBody702_134

def AllocBody702_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_138 : StackLang.HolProg 64 :=
.seq AllocBody702_136 AllocBody702_137

def AllocBody702_139 : StackLang.HolProg 64 :=
.call (some (AllocBody702_135, 0, 702, 6)) (Sum.inl 69) (some (AllocBody702_138, 702, 7))

def AllocBody702_140 : StackLang.HolProg 64 :=
.seq AllocBody702_126 AllocBody702_139

def AllocBody702_141 : StackLang.HolProg 64 :=
.seq AllocBody702_125 AllocBody702_140

def AllocBody702_142 : StackLang.HolProg 64 :=
.seq AllocBody702_124 AllocBody702_141

def AllocBody702_143 : StackLang.HolProg 64 :=
.seq AllocBody702_105 AllocBody702_142

def AllocBody702_144 : StackLang.HolProg 64 :=
.seq AllocBody702_102 AllocBody702_143

def AllocBody702_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def AllocBody702_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody702_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3142#64)

def AllocBody702_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_151 : StackLang.HolProg 64 :=
.seq AllocBody702_149 AllocBody702_150

def AllocBody702_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 9

def AllocBody702_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_162 : StackLang.HolProg 64 :=
.seq AllocBody702_160 AllocBody702_161

def AllocBody702_163 : StackLang.HolProg 64 :=
.seq AllocBody702_159 AllocBody702_162

def AllocBody702_164 : StackLang.HolProg 64 :=
.seq AllocBody702_158 AllocBody702_163

def AllocBody702_165 : StackLang.HolProg 64 :=
.seq AllocBody702_157 AllocBody702_164

def AllocBody702_166 : StackLang.HolProg 64 :=
.seq AllocBody702_156 AllocBody702_165

def AllocBody702_167 : StackLang.HolProg 64 :=
.seq AllocBody702_155 AllocBody702_166

def AllocBody702_168 : StackLang.HolProg 64 :=
.seq AllocBody702_154 AllocBody702_167

def AllocBody702_169 : StackLang.HolProg 64 :=
.seq AllocBody702_153 AllocBody702_168

def AllocBody702_170 : StackLang.HolProg 64 :=
.seq AllocBody702_152 AllocBody702_169

def AllocBody702_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody702_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody702_179 : StackLang.HolProg 64 :=
.seq AllocBody702_177 AllocBody702_178

def AllocBody702_180 : StackLang.HolProg 64 :=
.seq AllocBody702_176 AllocBody702_179

def AllocBody702_181 : StackLang.HolProg 64 :=
.seq AllocBody702_175 AllocBody702_180

def AllocBody702_182 : StackLang.HolProg 64 :=
.seq AllocBody702_174 AllocBody702_181

def AllocBody702_183 : StackLang.HolProg 64 :=
.seq AllocBody702_173 AllocBody702_182

def AllocBody702_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody702_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_186 : StackLang.HolProg 64 :=
.seq AllocBody702_184 AllocBody702_185

def AllocBody702_187 : StackLang.HolProg 64 :=
.call (some (AllocBody702_183, 0, 702, 8)) (Sum.inl 68) (some (AllocBody702_186, 702, 9))

def AllocBody702_188 : StackLang.HolProg 64 :=
.seq AllocBody702_172 AllocBody702_187

def AllocBody702_189 : StackLang.HolProg 64 :=
.seq AllocBody702_171 AllocBody702_188

def AllocBody702_190 : StackLang.HolProg 64 :=
.seq AllocBody702_170 AllocBody702_189

def AllocBody702_191 : StackLang.HolProg 64 :=
.seq AllocBody702_151 AllocBody702_190

def AllocBody702_192 : StackLang.HolProg 64 :=
.seq AllocBody702_148 AllocBody702_191

def AllocBody702_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody702_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def AllocBody702_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def AllocBody702_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody702_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody702_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3143#64)

def AllocBody702_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_205 : StackLang.HolProg 64 :=
.seq AllocBody702_203 AllocBody702_204

def AllocBody702_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 11

def AllocBody702_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_216 : StackLang.HolProg 64 :=
.seq AllocBody702_214 AllocBody702_215

def AllocBody702_217 : StackLang.HolProg 64 :=
.seq AllocBody702_213 AllocBody702_216

def AllocBody702_218 : StackLang.HolProg 64 :=
.seq AllocBody702_212 AllocBody702_217

def AllocBody702_219 : StackLang.HolProg 64 :=
.seq AllocBody702_211 AllocBody702_218

def AllocBody702_220 : StackLang.HolProg 64 :=
.seq AllocBody702_210 AllocBody702_219

def AllocBody702_221 : StackLang.HolProg 64 :=
.seq AllocBody702_209 AllocBody702_220

def AllocBody702_222 : StackLang.HolProg 64 :=
.seq AllocBody702_208 AllocBody702_221

def AllocBody702_223 : StackLang.HolProg 64 :=
.seq AllocBody702_207 AllocBody702_222

def AllocBody702_224 : StackLang.HolProg 64 :=
.seq AllocBody702_206 AllocBody702_223

def AllocBody702_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody702_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody702_233 : StackLang.HolProg 64 :=
.seq AllocBody702_231 AllocBody702_232

def AllocBody702_234 : StackLang.HolProg 64 :=
.seq AllocBody702_230 AllocBody702_233

def AllocBody702_235 : StackLang.HolProg 64 :=
.seq AllocBody702_229 AllocBody702_234

def AllocBody702_236 : StackLang.HolProg 64 :=
.seq AllocBody702_228 AllocBody702_235

def AllocBody702_237 : StackLang.HolProg 64 :=
.seq AllocBody702_227 AllocBody702_236

def AllocBody702_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody702_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody702_240 : StackLang.HolProg 64 :=
.seq AllocBody702_238 AllocBody702_239

def AllocBody702_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_242 : StackLang.HolProg 64 :=
.seq AllocBody702_240 AllocBody702_241

def AllocBody702_243 : StackLang.HolProg 64 :=
.call (some (AllocBody702_237, 0, 702, 10)) (Sum.inl 484) (some (AllocBody702_242, 702, 11))

def AllocBody702_244 : StackLang.HolProg 64 :=
.seq AllocBody702_226 AllocBody702_243

def AllocBody702_245 : StackLang.HolProg 64 :=
.seq AllocBody702_225 AllocBody702_244

def AllocBody702_246 : StackLang.HolProg 64 :=
.seq AllocBody702_224 AllocBody702_245

def AllocBody702_247 : StackLang.HolProg 64 :=
.seq AllocBody702_205 AllocBody702_246

def AllocBody702_248 : StackLang.HolProg 64 :=
.seq AllocBody702_202 AllocBody702_247

def AllocBody702_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody702_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody702_252 : StackLang.HolProg 64 :=
.seq AllocBody702_250 AllocBody702_251

def AllocBody702_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3144#64)

def AllocBody702_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_256 : StackLang.HolProg 64 :=
.seq AllocBody702_254 AllocBody702_255

def AllocBody702_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 13

def AllocBody702_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_267 : StackLang.HolProg 64 :=
.seq AllocBody702_265 AllocBody702_266

def AllocBody702_268 : StackLang.HolProg 64 :=
.seq AllocBody702_264 AllocBody702_267

def AllocBody702_269 : StackLang.HolProg 64 :=
.seq AllocBody702_263 AllocBody702_268

def AllocBody702_270 : StackLang.HolProg 64 :=
.seq AllocBody702_262 AllocBody702_269

def AllocBody702_271 : StackLang.HolProg 64 :=
.seq AllocBody702_261 AllocBody702_270

def AllocBody702_272 : StackLang.HolProg 64 :=
.seq AllocBody702_260 AllocBody702_271

def AllocBody702_273 : StackLang.HolProg 64 :=
.seq AllocBody702_259 AllocBody702_272

def AllocBody702_274 : StackLang.HolProg 64 :=
.seq AllocBody702_258 AllocBody702_273

def AllocBody702_275 : StackLang.HolProg 64 :=
.seq AllocBody702_257 AllocBody702_274

def AllocBody702_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody702_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody702_284 : StackLang.HolProg 64 :=
.seq AllocBody702_282 AllocBody702_283

def AllocBody702_285 : StackLang.HolProg 64 :=
.seq AllocBody702_281 AllocBody702_284

def AllocBody702_286 : StackLang.HolProg 64 :=
.seq AllocBody702_280 AllocBody702_285

def AllocBody702_287 : StackLang.HolProg 64 :=
.seq AllocBody702_279 AllocBody702_286

def AllocBody702_288 : StackLang.HolProg 64 :=
.seq AllocBody702_278 AllocBody702_287

def AllocBody702_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody702_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_291 : StackLang.HolProg 64 :=
.seq AllocBody702_289 AllocBody702_290

def AllocBody702_292 : StackLang.HolProg 64 :=
.call (some (AllocBody702_288, 0, 702, 12)) (Sum.inl 699) (some (AllocBody702_291, 702, 13))

def AllocBody702_293 : StackLang.HolProg 64 :=
.seq AllocBody702_277 AllocBody702_292

def AllocBody702_294 : StackLang.HolProg 64 :=
.seq AllocBody702_276 AllocBody702_293

def AllocBody702_295 : StackLang.HolProg 64 :=
.seq AllocBody702_275 AllocBody702_294

def AllocBody702_296 : StackLang.HolProg 64 :=
.seq AllocBody702_256 AllocBody702_295

def AllocBody702_297 : StackLang.HolProg 64 :=
.seq AllocBody702_253 AllocBody702_296

def AllocBody702_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody702_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody702_301 : StackLang.HolProg 64 :=
.seq AllocBody702_299 AllocBody702_300

def AllocBody702_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3145#64)

def AllocBody702_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_305 : StackLang.HolProg 64 :=
.seq AllocBody702_303 AllocBody702_304

def AllocBody702_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody702_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody702_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody702_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 702 15

def AllocBody702_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody702_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody702_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody702_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody702_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_316 : StackLang.HolProg 64 :=
.seq AllocBody702_314 AllocBody702_315

def AllocBody702_317 : StackLang.HolProg 64 :=
.seq AllocBody702_313 AllocBody702_316

def AllocBody702_318 : StackLang.HolProg 64 :=
.seq AllocBody702_312 AllocBody702_317

def AllocBody702_319 : StackLang.HolProg 64 :=
.seq AllocBody702_311 AllocBody702_318

def AllocBody702_320 : StackLang.HolProg 64 :=
.seq AllocBody702_310 AllocBody702_319

def AllocBody702_321 : StackLang.HolProg 64 :=
.seq AllocBody702_309 AllocBody702_320

def AllocBody702_322 : StackLang.HolProg 64 :=
.seq AllocBody702_308 AllocBody702_321

def AllocBody702_323 : StackLang.HolProg 64 :=
.seq AllocBody702_307 AllocBody702_322

def AllocBody702_324 : StackLang.HolProg 64 :=
.seq AllocBody702_306 AllocBody702_323

def AllocBody702_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody702_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody702_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody702_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody702_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody702_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody702_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody702_334 : StackLang.HolProg 64 :=
.seq AllocBody702_332 AllocBody702_333

def AllocBody702_335 : StackLang.HolProg 64 :=
.seq AllocBody702_331 AllocBody702_334

def AllocBody702_336 : StackLang.HolProg 64 :=
.seq AllocBody702_330 AllocBody702_335

def AllocBody702_337 : StackLang.HolProg 64 :=
.seq AllocBody702_329 AllocBody702_336

def AllocBody702_338 : StackLang.HolProg 64 :=
.seq AllocBody702_328 AllocBody702_337

def AllocBody702_339 : StackLang.HolProg 64 :=
.seq AllocBody702_327 AllocBody702_338

def AllocBody702_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody702_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody702_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody702_343 : StackLang.HolProg 64 :=
.seq AllocBody702_341 AllocBody702_342

def AllocBody702_344 : StackLang.HolProg 64 :=
.seq AllocBody702_340 AllocBody702_343

def AllocBody702_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_346 : StackLang.HolProg 64 :=
.seq AllocBody702_344 AllocBody702_345

def AllocBody702_347 : StackLang.HolProg 64 :=
.call (some (AllocBody702_339, 0, 702, 14)) (Sum.inl 70) (some (AllocBody702_346, 702, 15))

def AllocBody702_348 : StackLang.HolProg 64 :=
.seq AllocBody702_326 AllocBody702_347

def AllocBody702_349 : StackLang.HolProg 64 :=
.seq AllocBody702_325 AllocBody702_348

def AllocBody702_350 : StackLang.HolProg 64 :=
.seq AllocBody702_324 AllocBody702_349

def AllocBody702_351 : StackLang.HolProg 64 :=
.seq AllocBody702_305 AllocBody702_350

def AllocBody702_352 : StackLang.HolProg 64 :=
.seq AllocBody702_302 AllocBody702_351

def AllocBody702_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody702_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def AllocBody702_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody702_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody702_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_362 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody702_363 : StackLang.HolProg 64 :=
.seq AllocBody702_361 AllocBody702_362

def AllocBody702_364 : StackLang.HolProg 64 :=
.seq AllocBody702_360 AllocBody702_363

def AllocBody702_365 : StackLang.HolProg 64 :=
.seq AllocBody702_359 AllocBody702_364

def AllocBody702_366 : StackLang.HolProg 64 :=
.seq AllocBody702_358 AllocBody702_365

def AllocBody702_367 : StackLang.HolProg 64 :=
.seq AllocBody702_357 AllocBody702_366

def AllocBody702_368 : StackLang.HolProg 64 :=
.seq AllocBody702_356 AllocBody702_367

def AllocBody702_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody702_368 AllocBody702_369

def AllocBody702_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody702_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody702_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody702_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody702_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody702_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody702_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody702_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody702_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody702_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody702_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody702_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody702_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody702_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody702_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody702_390 : StackLang.HolProg 64 :=
.seq AllocBody702_388 AllocBody702_389

def AllocBody702_391 : StackLang.HolProg 64 :=
.seq AllocBody702_387 AllocBody702_390

def AllocBody702_392 : StackLang.HolProg 64 :=
.seq AllocBody702_386 AllocBody702_391

def AllocBody702_393 : StackLang.HolProg 64 :=
.seq AllocBody702_385 AllocBody702_392

def AllocBody702_394 : StackLang.HolProg 64 :=
.seq AllocBody702_384 AllocBody702_393

def AllocBody702_395 : StackLang.HolProg 64 :=
.seq AllocBody702_383 AllocBody702_394

def AllocBody702_396 : StackLang.HolProg 64 :=
.seq AllocBody702_382 AllocBody702_395

def AllocBody702_397 : StackLang.HolProg 64 :=
.seq AllocBody702_381 AllocBody702_396

def AllocBody702_398 : StackLang.HolProg 64 :=
.seq AllocBody702_380 AllocBody702_397

def AllocBody702_399 : StackLang.HolProg 64 :=
.seq AllocBody702_379 AllocBody702_398

def AllocBody702_400 : StackLang.HolProg 64 :=
.seq AllocBody702_378 AllocBody702_399

def AllocBody702_401 : StackLang.HolProg 64 :=
.seq AllocBody702_377 AllocBody702_400

def AllocBody702_402 : StackLang.HolProg 64 :=
.seq AllocBody702_376 AllocBody702_401

def AllocBody702_403 : StackLang.HolProg 64 :=
.seq AllocBody702_375 AllocBody702_402

def AllocBody702_404 : StackLang.HolProg 64 :=
.seq AllocBody702_374 AllocBody702_403

def AllocBody702_405 : StackLang.HolProg 64 :=
.seq AllocBody702_373 AllocBody702_404

def AllocBody702_406 : StackLang.HolProg 64 :=
.seq AllocBody702_372 AllocBody702_405

def AllocBody702_407 : StackLang.HolProg 64 :=
.seq AllocBody702_371 AllocBody702_406

def AllocBody702_408 : StackLang.HolProg 64 :=
.seq AllocBody702_370 AllocBody702_407

def AllocBody702_409 : StackLang.HolProg 64 :=
.seq AllocBody702_355 AllocBody702_408

def AllocBody702_410 : StackLang.HolProg 64 :=
.seq AllocBody702_354 AllocBody702_409

def AllocBody702_411 : StackLang.HolProg 64 :=
.seq AllocBody702_353 AllocBody702_410

def AllocBody702_412 : StackLang.HolProg 64 :=
.seq AllocBody702_352 AllocBody702_411

def AllocBody702_413 : StackLang.HolProg 64 :=
.seq AllocBody702_301 AllocBody702_412

def AllocBody702_414 : StackLang.HolProg 64 :=
.seq AllocBody702_298 AllocBody702_413

def AllocBody702_415 : StackLang.HolProg 64 :=
.seq AllocBody702_297 AllocBody702_414

def AllocBody702_416 : StackLang.HolProg 64 :=
.seq AllocBody702_252 AllocBody702_415

def AllocBody702_417 : StackLang.HolProg 64 :=
.seq AllocBody702_249 AllocBody702_416

def AllocBody702_418 : StackLang.HolProg 64 :=
.seq AllocBody702_248 AllocBody702_417

def AllocBody702_419 : StackLang.HolProg 64 :=
.seq AllocBody702_201 AllocBody702_418

def AllocBody702_420 : StackLang.HolProg 64 :=
.seq AllocBody702_200 AllocBody702_419

def AllocBody702_421 : StackLang.HolProg 64 :=
.seq AllocBody702_199 AllocBody702_420

def AllocBody702_422 : StackLang.HolProg 64 :=
.seq AllocBody702_198 AllocBody702_421

def AllocBody702_423 : StackLang.HolProg 64 :=
.seq AllocBody702_197 AllocBody702_422

def AllocBody702_424 : StackLang.HolProg 64 :=
.seq AllocBody702_196 AllocBody702_423

def AllocBody702_425 : StackLang.HolProg 64 :=
.seq AllocBody702_195 AllocBody702_424

def AllocBody702_426 : StackLang.HolProg 64 :=
.seq AllocBody702_194 AllocBody702_425

def AllocBody702_427 : StackLang.HolProg 64 :=
.seq AllocBody702_193 AllocBody702_426

def AllocBody702_428 : StackLang.HolProg 64 :=
.seq AllocBody702_192 AllocBody702_427

def AllocBody702_429 : StackLang.HolProg 64 :=
.seq AllocBody702_147 AllocBody702_428

def AllocBody702_430 : StackLang.HolProg 64 :=
.seq AllocBody702_146 AllocBody702_429

def AllocBody702_431 : StackLang.HolProg 64 :=
.seq AllocBody702_145 AllocBody702_430

def AllocBody702_432 : StackLang.HolProg 64 :=
.seq AllocBody702_144 AllocBody702_431

def AllocBody702_433 : StackLang.HolProg 64 :=
.seq AllocBody702_101 AllocBody702_432

def AllocBody702_434 : StackLang.HolProg 64 :=
.seq AllocBody702_100 AllocBody702_433

def AllocBody702_435 : StackLang.HolProg 64 :=
.seq AllocBody702_99 AllocBody702_434

def AllocBody702_436 : StackLang.HolProg 64 :=
.seq AllocBody702_56 AllocBody702_435

def AllocBody702_437 : StackLang.HolProg 64 :=
.seq AllocBody702_55 AllocBody702_436

def AllocBody702_438 : StackLang.HolProg 64 :=
.seq AllocBody702_54 AllocBody702_437

def AllocBody702_439 : StackLang.HolProg 64 :=
.seq AllocBody702_53 AllocBody702_438

def AllocBody702_440 : StackLang.HolProg 64 :=
.seq AllocBody702_10 AllocBody702_439

def AllocBody702_441 : StackLang.HolProg 64 :=
.seq AllocBody702_7 AllocBody702_440

def AllocBody702_442 : StackLang.HolProg 64 :=
.seq AllocBody702_6 AllocBody702_441

def AllocBody702_443 : StackLang.HolProg 64 :=
.seq AllocBody702_5 AllocBody702_442

def AllocBody702_444 : StackLang.HolProg 64 :=
.seq AllocBody702_4 AllocBody702_443

def AllocBody702_445 : StackLang.HolProg 64 :=
.seq AllocBody702_3 AllocBody702_444

def AllocBody702_446 : StackLang.HolProg 64 :=
.seq AllocBody702_2 AllocBody702_445

def AllocBody702_447 : StackLang.HolProg 64 :=
.seq AllocBody702_1 AllocBody702_446

def AllocBody702_448 : StackLang.HolProg 64 :=
.seq AllocBody702_0 AllocBody702_447

def Alloc702 : Nat × StackLang.HolProg 64 := (702, AllocBody702_448)
theorem Alloc702_eq : StackAlloc.progComp (702, raw702) = Alloc702 := by
  kernel_rfl
#print axioms Alloc702_eq
end InitECandidate.Proofs.BackendStages
