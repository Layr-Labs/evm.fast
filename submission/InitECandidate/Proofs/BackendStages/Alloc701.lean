import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw701
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody701_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody701_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody701_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody701_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody701_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody701_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def AllocBody701_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 150#64)

def AllocBody701_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody701_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody701_10 : StackLang.HolProg 64 :=
.seq AllocBody701_8 AllocBody701_9

def AllocBody701_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3132#64)

def AllocBody701_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_14 : StackLang.HolProg 64 :=
.seq AllocBody701_12 AllocBody701_13

def AllocBody701_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 3

def AllocBody701_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_25 : StackLang.HolProg 64 :=
.seq AllocBody701_23 AllocBody701_24

def AllocBody701_26 : StackLang.HolProg 64 :=
.seq AllocBody701_22 AllocBody701_25

def AllocBody701_27 : StackLang.HolProg 64 :=
.seq AllocBody701_21 AllocBody701_26

def AllocBody701_28 : StackLang.HolProg 64 :=
.seq AllocBody701_20 AllocBody701_27

def AllocBody701_29 : StackLang.HolProg 64 :=
.seq AllocBody701_19 AllocBody701_28

def AllocBody701_30 : StackLang.HolProg 64 :=
.seq AllocBody701_18 AllocBody701_29

def AllocBody701_31 : StackLang.HolProg 64 :=
.seq AllocBody701_17 AllocBody701_30

def AllocBody701_32 : StackLang.HolProg 64 :=
.seq AllocBody701_16 AllocBody701_31

def AllocBody701_33 : StackLang.HolProg 64 :=
.seq AllocBody701_15 AllocBody701_32

def AllocBody701_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_41 : StackLang.HolProg 64 :=
.seq AllocBody701_39 AllocBody701_40

def AllocBody701_42 : StackLang.HolProg 64 :=
.seq AllocBody701_38 AllocBody701_41

def AllocBody701_43 : StackLang.HolProg 64 :=
.seq AllocBody701_37 AllocBody701_42

def AllocBody701_44 : StackLang.HolProg 64 :=
.seq AllocBody701_36 AllocBody701_43

def AllocBody701_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_47 : StackLang.HolProg 64 :=
.seq AllocBody701_45 AllocBody701_46

def AllocBody701_48 : StackLang.HolProg 64 :=
.call (some (AllocBody701_44, 0, 701, 2)) (Sum.inl 470) (some (AllocBody701_47, 701, 3))

def AllocBody701_49 : StackLang.HolProg 64 :=
.seq AllocBody701_35 AllocBody701_48

def AllocBody701_50 : StackLang.HolProg 64 :=
.seq AllocBody701_34 AllocBody701_49

def AllocBody701_51 : StackLang.HolProg 64 :=
.seq AllocBody701_33 AllocBody701_50

def AllocBody701_52 : StackLang.HolProg 64 :=
.seq AllocBody701_14 AllocBody701_51

def AllocBody701_53 : StackLang.HolProg 64 :=
.seq AllocBody701_11 AllocBody701_52

def AllocBody701_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody701_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3133#64)

def AllocBody701_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_60 : StackLang.HolProg 64 :=
.seq AllocBody701_58 AllocBody701_59

def AllocBody701_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 5

def AllocBody701_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_71 : StackLang.HolProg 64 :=
.seq AllocBody701_69 AllocBody701_70

def AllocBody701_72 : StackLang.HolProg 64 :=
.seq AllocBody701_68 AllocBody701_71

def AllocBody701_73 : StackLang.HolProg 64 :=
.seq AllocBody701_67 AllocBody701_72

def AllocBody701_74 : StackLang.HolProg 64 :=
.seq AllocBody701_66 AllocBody701_73

def AllocBody701_75 : StackLang.HolProg 64 :=
.seq AllocBody701_65 AllocBody701_74

def AllocBody701_76 : StackLang.HolProg 64 :=
.seq AllocBody701_64 AllocBody701_75

def AllocBody701_77 : StackLang.HolProg 64 :=
.seq AllocBody701_63 AllocBody701_76

def AllocBody701_78 : StackLang.HolProg 64 :=
.seq AllocBody701_62 AllocBody701_77

def AllocBody701_79 : StackLang.HolProg 64 :=
.seq AllocBody701_61 AllocBody701_78

def AllocBody701_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody701_87 : StackLang.HolProg 64 :=
.seq AllocBody701_85 AllocBody701_86

def AllocBody701_88 : StackLang.HolProg 64 :=
.seq AllocBody701_84 AllocBody701_87

def AllocBody701_89 : StackLang.HolProg 64 :=
.seq AllocBody701_83 AllocBody701_88

def AllocBody701_90 : StackLang.HolProg 64 :=
.seq AllocBody701_82 AllocBody701_89

def AllocBody701_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_93 : StackLang.HolProg 64 :=
.seq AllocBody701_91 AllocBody701_92

def AllocBody701_94 : StackLang.HolProg 64 :=
.call (some (AllocBody701_90, 0, 701, 4)) (Sum.inl 68) (some (AllocBody701_93, 701, 5))

def AllocBody701_95 : StackLang.HolProg 64 :=
.seq AllocBody701_81 AllocBody701_94

def AllocBody701_96 : StackLang.HolProg 64 :=
.seq AllocBody701_80 AllocBody701_95

def AllocBody701_97 : StackLang.HolProg 64 :=
.seq AllocBody701_79 AllocBody701_96

def AllocBody701_98 : StackLang.HolProg 64 :=
.seq AllocBody701_60 AllocBody701_97

def AllocBody701_99 : StackLang.HolProg 64 :=
.seq AllocBody701_57 AllocBody701_98

def AllocBody701_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody701_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3134#64)

def AllocBody701_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_105 : StackLang.HolProg 64 :=
.seq AllocBody701_103 AllocBody701_104

def AllocBody701_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 7

def AllocBody701_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_116 : StackLang.HolProg 64 :=
.seq AllocBody701_114 AllocBody701_115

def AllocBody701_117 : StackLang.HolProg 64 :=
.seq AllocBody701_113 AllocBody701_116

def AllocBody701_118 : StackLang.HolProg 64 :=
.seq AllocBody701_112 AllocBody701_117

def AllocBody701_119 : StackLang.HolProg 64 :=
.seq AllocBody701_111 AllocBody701_118

def AllocBody701_120 : StackLang.HolProg 64 :=
.seq AllocBody701_110 AllocBody701_119

def AllocBody701_121 : StackLang.HolProg 64 :=
.seq AllocBody701_109 AllocBody701_120

def AllocBody701_122 : StackLang.HolProg 64 :=
.seq AllocBody701_108 AllocBody701_121

def AllocBody701_123 : StackLang.HolProg 64 :=
.seq AllocBody701_107 AllocBody701_122

def AllocBody701_124 : StackLang.HolProg 64 :=
.seq AllocBody701_106 AllocBody701_123

def AllocBody701_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody701_132 : StackLang.HolProg 64 :=
.seq AllocBody701_130 AllocBody701_131

def AllocBody701_133 : StackLang.HolProg 64 :=
.seq AllocBody701_129 AllocBody701_132

def AllocBody701_134 : StackLang.HolProg 64 :=
.seq AllocBody701_128 AllocBody701_133

def AllocBody701_135 : StackLang.HolProg 64 :=
.seq AllocBody701_127 AllocBody701_134

def AllocBody701_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_138 : StackLang.HolProg 64 :=
.seq AllocBody701_136 AllocBody701_137

def AllocBody701_139 : StackLang.HolProg 64 :=
.call (some (AllocBody701_135, 0, 701, 6)) (Sum.inl 69) (some (AllocBody701_138, 701, 7))

def AllocBody701_140 : StackLang.HolProg 64 :=
.seq AllocBody701_126 AllocBody701_139

def AllocBody701_141 : StackLang.HolProg 64 :=
.seq AllocBody701_125 AllocBody701_140

def AllocBody701_142 : StackLang.HolProg 64 :=
.seq AllocBody701_124 AllocBody701_141

def AllocBody701_143 : StackLang.HolProg 64 :=
.seq AllocBody701_105 AllocBody701_142

def AllocBody701_144 : StackLang.HolProg 64 :=
.seq AllocBody701_102 AllocBody701_143

def AllocBody701_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def AllocBody701_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody701_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3135#64)

def AllocBody701_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_151 : StackLang.HolProg 64 :=
.seq AllocBody701_149 AllocBody701_150

def AllocBody701_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 9

def AllocBody701_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_162 : StackLang.HolProg 64 :=
.seq AllocBody701_160 AllocBody701_161

def AllocBody701_163 : StackLang.HolProg 64 :=
.seq AllocBody701_159 AllocBody701_162

def AllocBody701_164 : StackLang.HolProg 64 :=
.seq AllocBody701_158 AllocBody701_163

def AllocBody701_165 : StackLang.HolProg 64 :=
.seq AllocBody701_157 AllocBody701_164

def AllocBody701_166 : StackLang.HolProg 64 :=
.seq AllocBody701_156 AllocBody701_165

def AllocBody701_167 : StackLang.HolProg 64 :=
.seq AllocBody701_155 AllocBody701_166

def AllocBody701_168 : StackLang.HolProg 64 :=
.seq AllocBody701_154 AllocBody701_167

def AllocBody701_169 : StackLang.HolProg 64 :=
.seq AllocBody701_153 AllocBody701_168

def AllocBody701_170 : StackLang.HolProg 64 :=
.seq AllocBody701_152 AllocBody701_169

def AllocBody701_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody701_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody701_179 : StackLang.HolProg 64 :=
.seq AllocBody701_177 AllocBody701_178

def AllocBody701_180 : StackLang.HolProg 64 :=
.seq AllocBody701_176 AllocBody701_179

def AllocBody701_181 : StackLang.HolProg 64 :=
.seq AllocBody701_175 AllocBody701_180

def AllocBody701_182 : StackLang.HolProg 64 :=
.seq AllocBody701_174 AllocBody701_181

def AllocBody701_183 : StackLang.HolProg 64 :=
.seq AllocBody701_173 AllocBody701_182

def AllocBody701_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody701_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_186 : StackLang.HolProg 64 :=
.seq AllocBody701_184 AllocBody701_185

def AllocBody701_187 : StackLang.HolProg 64 :=
.call (some (AllocBody701_183, 0, 701, 8)) (Sum.inl 68) (some (AllocBody701_186, 701, 9))

def AllocBody701_188 : StackLang.HolProg 64 :=
.seq AllocBody701_172 AllocBody701_187

def AllocBody701_189 : StackLang.HolProg 64 :=
.seq AllocBody701_171 AllocBody701_188

def AllocBody701_190 : StackLang.HolProg 64 :=
.seq AllocBody701_170 AllocBody701_189

def AllocBody701_191 : StackLang.HolProg 64 :=
.seq AllocBody701_151 AllocBody701_190

def AllocBody701_192 : StackLang.HolProg 64 :=
.seq AllocBody701_148 AllocBody701_191

def AllocBody701_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 88#64))

def AllocBody701_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 96#64))

def AllocBody701_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 128#64)

def AllocBody701_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody701_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody701_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3136#64)

def AllocBody701_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_205 : StackLang.HolProg 64 :=
.seq AllocBody701_203 AllocBody701_204

def AllocBody701_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 11

def AllocBody701_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_216 : StackLang.HolProg 64 :=
.seq AllocBody701_214 AllocBody701_215

def AllocBody701_217 : StackLang.HolProg 64 :=
.seq AllocBody701_213 AllocBody701_216

def AllocBody701_218 : StackLang.HolProg 64 :=
.seq AllocBody701_212 AllocBody701_217

def AllocBody701_219 : StackLang.HolProg 64 :=
.seq AllocBody701_211 AllocBody701_218

def AllocBody701_220 : StackLang.HolProg 64 :=
.seq AllocBody701_210 AllocBody701_219

def AllocBody701_221 : StackLang.HolProg 64 :=
.seq AllocBody701_209 AllocBody701_220

def AllocBody701_222 : StackLang.HolProg 64 :=
.seq AllocBody701_208 AllocBody701_221

def AllocBody701_223 : StackLang.HolProg 64 :=
.seq AllocBody701_207 AllocBody701_222

def AllocBody701_224 : StackLang.HolProg 64 :=
.seq AllocBody701_206 AllocBody701_223

def AllocBody701_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody701_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody701_233 : StackLang.HolProg 64 :=
.seq AllocBody701_231 AllocBody701_232

def AllocBody701_234 : StackLang.HolProg 64 :=
.seq AllocBody701_230 AllocBody701_233

def AllocBody701_235 : StackLang.HolProg 64 :=
.seq AllocBody701_229 AllocBody701_234

def AllocBody701_236 : StackLang.HolProg 64 :=
.seq AllocBody701_228 AllocBody701_235

def AllocBody701_237 : StackLang.HolProg 64 :=
.seq AllocBody701_227 AllocBody701_236

def AllocBody701_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody701_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody701_240 : StackLang.HolProg 64 :=
.seq AllocBody701_238 AllocBody701_239

def AllocBody701_241 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_242 : StackLang.HolProg 64 :=
.seq AllocBody701_240 AllocBody701_241

def AllocBody701_243 : StackLang.HolProg 64 :=
.call (some (AllocBody701_237, 0, 701, 10)) (Sum.inl 484) (some (AllocBody701_242, 701, 11))

def AllocBody701_244 : StackLang.HolProg 64 :=
.seq AllocBody701_226 AllocBody701_243

def AllocBody701_245 : StackLang.HolProg 64 :=
.seq AllocBody701_225 AllocBody701_244

def AllocBody701_246 : StackLang.HolProg 64 :=
.seq AllocBody701_224 AllocBody701_245

def AllocBody701_247 : StackLang.HolProg 64 :=
.seq AllocBody701_205 AllocBody701_246

def AllocBody701_248 : StackLang.HolProg 64 :=
.seq AllocBody701_202 AllocBody701_247

def AllocBody701_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody701_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody701_252 : StackLang.HolProg 64 :=
.seq AllocBody701_250 AllocBody701_251

def AllocBody701_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3137#64)

def AllocBody701_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_256 : StackLang.HolProg 64 :=
.seq AllocBody701_254 AllocBody701_255

def AllocBody701_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 13

def AllocBody701_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_267 : StackLang.HolProg 64 :=
.seq AllocBody701_265 AllocBody701_266

def AllocBody701_268 : StackLang.HolProg 64 :=
.seq AllocBody701_264 AllocBody701_267

def AllocBody701_269 : StackLang.HolProg 64 :=
.seq AllocBody701_263 AllocBody701_268

def AllocBody701_270 : StackLang.HolProg 64 :=
.seq AllocBody701_262 AllocBody701_269

def AllocBody701_271 : StackLang.HolProg 64 :=
.seq AllocBody701_261 AllocBody701_270

def AllocBody701_272 : StackLang.HolProg 64 :=
.seq AllocBody701_260 AllocBody701_271

def AllocBody701_273 : StackLang.HolProg 64 :=
.seq AllocBody701_259 AllocBody701_272

def AllocBody701_274 : StackLang.HolProg 64 :=
.seq AllocBody701_258 AllocBody701_273

def AllocBody701_275 : StackLang.HolProg 64 :=
.seq AllocBody701_257 AllocBody701_274

def AllocBody701_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody701_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody701_284 : StackLang.HolProg 64 :=
.seq AllocBody701_282 AllocBody701_283

def AllocBody701_285 : StackLang.HolProg 64 :=
.seq AllocBody701_281 AllocBody701_284

def AllocBody701_286 : StackLang.HolProg 64 :=
.seq AllocBody701_280 AllocBody701_285

def AllocBody701_287 : StackLang.HolProg 64 :=
.seq AllocBody701_279 AllocBody701_286

def AllocBody701_288 : StackLang.HolProg 64 :=
.seq AllocBody701_278 AllocBody701_287

def AllocBody701_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody701_290 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_291 : StackLang.HolProg 64 :=
.seq AllocBody701_289 AllocBody701_290

def AllocBody701_292 : StackLang.HolProg 64 :=
.call (some (AllocBody701_288, 0, 701, 12)) (Sum.inl 698) (some (AllocBody701_291, 701, 13))

def AllocBody701_293 : StackLang.HolProg 64 :=
.seq AllocBody701_277 AllocBody701_292

def AllocBody701_294 : StackLang.HolProg 64 :=
.seq AllocBody701_276 AllocBody701_293

def AllocBody701_295 : StackLang.HolProg 64 :=
.seq AllocBody701_275 AllocBody701_294

def AllocBody701_296 : StackLang.HolProg 64 :=
.seq AllocBody701_256 AllocBody701_295

def AllocBody701_297 : StackLang.HolProg 64 :=
.seq AllocBody701_253 AllocBody701_296

def AllocBody701_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody701_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody701_301 : StackLang.HolProg 64 :=
.seq AllocBody701_299 AllocBody701_300

def AllocBody701_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3138#64)

def AllocBody701_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_305 : StackLang.HolProg 64 :=
.seq AllocBody701_303 AllocBody701_304

def AllocBody701_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody701_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody701_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody701_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 701 15

def AllocBody701_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody701_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody701_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody701_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody701_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_316 : StackLang.HolProg 64 :=
.seq AllocBody701_314 AllocBody701_315

def AllocBody701_317 : StackLang.HolProg 64 :=
.seq AllocBody701_313 AllocBody701_316

def AllocBody701_318 : StackLang.HolProg 64 :=
.seq AllocBody701_312 AllocBody701_317

def AllocBody701_319 : StackLang.HolProg 64 :=
.seq AllocBody701_311 AllocBody701_318

def AllocBody701_320 : StackLang.HolProg 64 :=
.seq AllocBody701_310 AllocBody701_319

def AllocBody701_321 : StackLang.HolProg 64 :=
.seq AllocBody701_309 AllocBody701_320

def AllocBody701_322 : StackLang.HolProg 64 :=
.seq AllocBody701_308 AllocBody701_321

def AllocBody701_323 : StackLang.HolProg 64 :=
.seq AllocBody701_307 AllocBody701_322

def AllocBody701_324 : StackLang.HolProg 64 :=
.seq AllocBody701_306 AllocBody701_323

def AllocBody701_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody701_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody701_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody701_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody701_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody701_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody701_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody701_334 : StackLang.HolProg 64 :=
.seq AllocBody701_332 AllocBody701_333

def AllocBody701_335 : StackLang.HolProg 64 :=
.seq AllocBody701_331 AllocBody701_334

def AllocBody701_336 : StackLang.HolProg 64 :=
.seq AllocBody701_330 AllocBody701_335

def AllocBody701_337 : StackLang.HolProg 64 :=
.seq AllocBody701_329 AllocBody701_336

def AllocBody701_338 : StackLang.HolProg 64 :=
.seq AllocBody701_328 AllocBody701_337

def AllocBody701_339 : StackLang.HolProg 64 :=
.seq AllocBody701_327 AllocBody701_338

def AllocBody701_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody701_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody701_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody701_343 : StackLang.HolProg 64 :=
.seq AllocBody701_341 AllocBody701_342

def AllocBody701_344 : StackLang.HolProg 64 :=
.seq AllocBody701_340 AllocBody701_343

def AllocBody701_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_346 : StackLang.HolProg 64 :=
.seq AllocBody701_344 AllocBody701_345

def AllocBody701_347 : StackLang.HolProg 64 :=
.call (some (AllocBody701_339, 0, 701, 14)) (Sum.inl 70) (some (AllocBody701_346, 701, 15))

def AllocBody701_348 : StackLang.HolProg 64 :=
.seq AllocBody701_326 AllocBody701_347

def AllocBody701_349 : StackLang.HolProg 64 :=
.seq AllocBody701_325 AllocBody701_348

def AllocBody701_350 : StackLang.HolProg 64 :=
.seq AllocBody701_324 AllocBody701_349

def AllocBody701_351 : StackLang.HolProg 64 :=
.seq AllocBody701_305 AllocBody701_350

def AllocBody701_352 : StackLang.HolProg 64 :=
.seq AllocBody701_302 AllocBody701_351

def AllocBody701_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody701_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 4#64)

def AllocBody701_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def AllocBody701_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody701_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_362 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody701_363 : StackLang.HolProg 64 :=
.seq AllocBody701_361 AllocBody701_362

def AllocBody701_364 : StackLang.HolProg 64 :=
.seq AllocBody701_360 AllocBody701_363

def AllocBody701_365 : StackLang.HolProg 64 :=
.seq AllocBody701_359 AllocBody701_364

def AllocBody701_366 : StackLang.HolProg 64 :=
.seq AllocBody701_358 AllocBody701_365

def AllocBody701_367 : StackLang.HolProg 64 :=
.seq AllocBody701_357 AllocBody701_366

def AllocBody701_368 : StackLang.HolProg 64 :=
.seq AllocBody701_356 AllocBody701_367

def AllocBody701_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_370 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody701_368 AllocBody701_369

def AllocBody701_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody701_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody701_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody701_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody701_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody701_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody701_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody701_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody701_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody701_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody701_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody701_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody701_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody701_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody701_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody701_390 : StackLang.HolProg 64 :=
.seq AllocBody701_388 AllocBody701_389

def AllocBody701_391 : StackLang.HolProg 64 :=
.seq AllocBody701_387 AllocBody701_390

def AllocBody701_392 : StackLang.HolProg 64 :=
.seq AllocBody701_386 AllocBody701_391

def AllocBody701_393 : StackLang.HolProg 64 :=
.seq AllocBody701_385 AllocBody701_392

def AllocBody701_394 : StackLang.HolProg 64 :=
.seq AllocBody701_384 AllocBody701_393

def AllocBody701_395 : StackLang.HolProg 64 :=
.seq AllocBody701_383 AllocBody701_394

def AllocBody701_396 : StackLang.HolProg 64 :=
.seq AllocBody701_382 AllocBody701_395

def AllocBody701_397 : StackLang.HolProg 64 :=
.seq AllocBody701_381 AllocBody701_396

def AllocBody701_398 : StackLang.HolProg 64 :=
.seq AllocBody701_380 AllocBody701_397

def AllocBody701_399 : StackLang.HolProg 64 :=
.seq AllocBody701_379 AllocBody701_398

def AllocBody701_400 : StackLang.HolProg 64 :=
.seq AllocBody701_378 AllocBody701_399

def AllocBody701_401 : StackLang.HolProg 64 :=
.seq AllocBody701_377 AllocBody701_400

def AllocBody701_402 : StackLang.HolProg 64 :=
.seq AllocBody701_376 AllocBody701_401

def AllocBody701_403 : StackLang.HolProg 64 :=
.seq AllocBody701_375 AllocBody701_402

def AllocBody701_404 : StackLang.HolProg 64 :=
.seq AllocBody701_374 AllocBody701_403

def AllocBody701_405 : StackLang.HolProg 64 :=
.seq AllocBody701_373 AllocBody701_404

def AllocBody701_406 : StackLang.HolProg 64 :=
.seq AllocBody701_372 AllocBody701_405

def AllocBody701_407 : StackLang.HolProg 64 :=
.seq AllocBody701_371 AllocBody701_406

def AllocBody701_408 : StackLang.HolProg 64 :=
.seq AllocBody701_370 AllocBody701_407

def AllocBody701_409 : StackLang.HolProg 64 :=
.seq AllocBody701_355 AllocBody701_408

def AllocBody701_410 : StackLang.HolProg 64 :=
.seq AllocBody701_354 AllocBody701_409

def AllocBody701_411 : StackLang.HolProg 64 :=
.seq AllocBody701_353 AllocBody701_410

def AllocBody701_412 : StackLang.HolProg 64 :=
.seq AllocBody701_352 AllocBody701_411

def AllocBody701_413 : StackLang.HolProg 64 :=
.seq AllocBody701_301 AllocBody701_412

def AllocBody701_414 : StackLang.HolProg 64 :=
.seq AllocBody701_298 AllocBody701_413

def AllocBody701_415 : StackLang.HolProg 64 :=
.seq AllocBody701_297 AllocBody701_414

def AllocBody701_416 : StackLang.HolProg 64 :=
.seq AllocBody701_252 AllocBody701_415

def AllocBody701_417 : StackLang.HolProg 64 :=
.seq AllocBody701_249 AllocBody701_416

def AllocBody701_418 : StackLang.HolProg 64 :=
.seq AllocBody701_248 AllocBody701_417

def AllocBody701_419 : StackLang.HolProg 64 :=
.seq AllocBody701_201 AllocBody701_418

def AllocBody701_420 : StackLang.HolProg 64 :=
.seq AllocBody701_200 AllocBody701_419

def AllocBody701_421 : StackLang.HolProg 64 :=
.seq AllocBody701_199 AllocBody701_420

def AllocBody701_422 : StackLang.HolProg 64 :=
.seq AllocBody701_198 AllocBody701_421

def AllocBody701_423 : StackLang.HolProg 64 :=
.seq AllocBody701_197 AllocBody701_422

def AllocBody701_424 : StackLang.HolProg 64 :=
.seq AllocBody701_196 AllocBody701_423

def AllocBody701_425 : StackLang.HolProg 64 :=
.seq AllocBody701_195 AllocBody701_424

def AllocBody701_426 : StackLang.HolProg 64 :=
.seq AllocBody701_194 AllocBody701_425

def AllocBody701_427 : StackLang.HolProg 64 :=
.seq AllocBody701_193 AllocBody701_426

def AllocBody701_428 : StackLang.HolProg 64 :=
.seq AllocBody701_192 AllocBody701_427

def AllocBody701_429 : StackLang.HolProg 64 :=
.seq AllocBody701_147 AllocBody701_428

def AllocBody701_430 : StackLang.HolProg 64 :=
.seq AllocBody701_146 AllocBody701_429

def AllocBody701_431 : StackLang.HolProg 64 :=
.seq AllocBody701_145 AllocBody701_430

def AllocBody701_432 : StackLang.HolProg 64 :=
.seq AllocBody701_144 AllocBody701_431

def AllocBody701_433 : StackLang.HolProg 64 :=
.seq AllocBody701_101 AllocBody701_432

def AllocBody701_434 : StackLang.HolProg 64 :=
.seq AllocBody701_100 AllocBody701_433

def AllocBody701_435 : StackLang.HolProg 64 :=
.seq AllocBody701_99 AllocBody701_434

def AllocBody701_436 : StackLang.HolProg 64 :=
.seq AllocBody701_56 AllocBody701_435

def AllocBody701_437 : StackLang.HolProg 64 :=
.seq AllocBody701_55 AllocBody701_436

def AllocBody701_438 : StackLang.HolProg 64 :=
.seq AllocBody701_54 AllocBody701_437

def AllocBody701_439 : StackLang.HolProg 64 :=
.seq AllocBody701_53 AllocBody701_438

def AllocBody701_440 : StackLang.HolProg 64 :=
.seq AllocBody701_10 AllocBody701_439

def AllocBody701_441 : StackLang.HolProg 64 :=
.seq AllocBody701_7 AllocBody701_440

def AllocBody701_442 : StackLang.HolProg 64 :=
.seq AllocBody701_6 AllocBody701_441

def AllocBody701_443 : StackLang.HolProg 64 :=
.seq AllocBody701_5 AllocBody701_442

def AllocBody701_444 : StackLang.HolProg 64 :=
.seq AllocBody701_4 AllocBody701_443

def AllocBody701_445 : StackLang.HolProg 64 :=
.seq AllocBody701_3 AllocBody701_444

def AllocBody701_446 : StackLang.HolProg 64 :=
.seq AllocBody701_2 AllocBody701_445

def AllocBody701_447 : StackLang.HolProg 64 :=
.seq AllocBody701_1 AllocBody701_446

def AllocBody701_448 : StackLang.HolProg 64 :=
.seq AllocBody701_0 AllocBody701_447

def Alloc701 : Nat × StackLang.HolProg 64 := (701, AllocBody701_448)
theorem Alloc701_eq : StackAlloc.progComp (701, raw701) = Alloc701 := by
  kernel_rfl
#print axioms Alloc701_eq
end InitECandidate.Proofs.BackendStages
