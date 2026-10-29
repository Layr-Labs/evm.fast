import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw332
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody332_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody332_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody332_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody332_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody332_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody332_5 : StackLang.HolProg 64 :=
.seq AllocBody332_3 AllocBody332_4

def AllocBody332_6 : StackLang.HolProg 64 :=
.seq AllocBody332_2 AllocBody332_5

def AllocBody332_7 : StackLang.HolProg 64 :=
.seq AllocBody332_1 AllocBody332_6

def AllocBody332_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 940#64)

def AllocBody332_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_11 : StackLang.HolProg 64 :=
.seq AllocBody332_9 AllocBody332_10

def AllocBody332_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 3

def AllocBody332_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_22 : StackLang.HolProg 64 :=
.seq AllocBody332_20 AllocBody332_21

def AllocBody332_23 : StackLang.HolProg 64 :=
.seq AllocBody332_19 AllocBody332_22

def AllocBody332_24 : StackLang.HolProg 64 :=
.seq AllocBody332_18 AllocBody332_23

def AllocBody332_25 : StackLang.HolProg 64 :=
.seq AllocBody332_17 AllocBody332_24

def AllocBody332_26 : StackLang.HolProg 64 :=
.seq AllocBody332_16 AllocBody332_25

def AllocBody332_27 : StackLang.HolProg 64 :=
.seq AllocBody332_15 AllocBody332_26

def AllocBody332_28 : StackLang.HolProg 64 :=
.seq AllocBody332_14 AllocBody332_27

def AllocBody332_29 : StackLang.HolProg 64 :=
.seq AllocBody332_13 AllocBody332_28

def AllocBody332_30 : StackLang.HolProg 64 :=
.seq AllocBody332_12 AllocBody332_29

def AllocBody332_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody332_38 : StackLang.HolProg 64 :=
.seq AllocBody332_36 AllocBody332_37

def AllocBody332_39 : StackLang.HolProg 64 :=
.seq AllocBody332_35 AllocBody332_38

def AllocBody332_40 : StackLang.HolProg 64 :=
.seq AllocBody332_34 AllocBody332_39

def AllocBody332_41 : StackLang.HolProg 64 :=
.seq AllocBody332_33 AllocBody332_40

def AllocBody332_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_44 : StackLang.HolProg 64 :=
.seq AllocBody332_42 AllocBody332_43

def AllocBody332_45 : StackLang.HolProg 64 :=
.call (some (AllocBody332_41, 0, 332, 2)) (Sum.inl 69) (some (AllocBody332_44, 332, 3))

def AllocBody332_46 : StackLang.HolProg 64 :=
.seq AllocBody332_32 AllocBody332_45

def AllocBody332_47 : StackLang.HolProg 64 :=
.seq AllocBody332_31 AllocBody332_46

def AllocBody332_48 : StackLang.HolProg 64 :=
.seq AllocBody332_30 AllocBody332_47

def AllocBody332_49 : StackLang.HolProg 64 :=
.seq AllocBody332_11 AllocBody332_48

def AllocBody332_50 : StackLang.HolProg 64 :=
.seq AllocBody332_8 AllocBody332_49

def AllocBody332_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody332_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody332_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody332_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 941#64)

def AllocBody332_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_58 : StackLang.HolProg 64 :=
.seq AllocBody332_56 AllocBody332_57

def AllocBody332_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 5

def AllocBody332_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_69 : StackLang.HolProg 64 :=
.seq AllocBody332_67 AllocBody332_68

def AllocBody332_70 : StackLang.HolProg 64 :=
.seq AllocBody332_66 AllocBody332_69

def AllocBody332_71 : StackLang.HolProg 64 :=
.seq AllocBody332_65 AllocBody332_70

def AllocBody332_72 : StackLang.HolProg 64 :=
.seq AllocBody332_64 AllocBody332_71

def AllocBody332_73 : StackLang.HolProg 64 :=
.seq AllocBody332_63 AllocBody332_72

def AllocBody332_74 : StackLang.HolProg 64 :=
.seq AllocBody332_62 AllocBody332_73

def AllocBody332_75 : StackLang.HolProg 64 :=
.seq AllocBody332_61 AllocBody332_74

def AllocBody332_76 : StackLang.HolProg 64 :=
.seq AllocBody332_60 AllocBody332_75

def AllocBody332_77 : StackLang.HolProg 64 :=
.seq AllocBody332_59 AllocBody332_76

def AllocBody332_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody332_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody332_86 : StackLang.HolProg 64 :=
.seq AllocBody332_84 AllocBody332_85

def AllocBody332_87 : StackLang.HolProg 64 :=
.seq AllocBody332_83 AllocBody332_86

def AllocBody332_88 : StackLang.HolProg 64 :=
.seq AllocBody332_82 AllocBody332_87

def AllocBody332_89 : StackLang.HolProg 64 :=
.seq AllocBody332_81 AllocBody332_88

def AllocBody332_90 : StackLang.HolProg 64 :=
.seq AllocBody332_80 AllocBody332_89

def AllocBody332_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody332_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_93 : StackLang.HolProg 64 :=
.seq AllocBody332_91 AllocBody332_92

def AllocBody332_94 : StackLang.HolProg 64 :=
.call (some (AllocBody332_90, 0, 332, 4)) (Sum.inl 308) (some (AllocBody332_93, 332, 5))

def AllocBody332_95 : StackLang.HolProg 64 :=
.seq AllocBody332_79 AllocBody332_94

def AllocBody332_96 : StackLang.HolProg 64 :=
.seq AllocBody332_78 AllocBody332_95

def AllocBody332_97 : StackLang.HolProg 64 :=
.seq AllocBody332_77 AllocBody332_96

def AllocBody332_98 : StackLang.HolProg 64 :=
.seq AllocBody332_58 AllocBody332_97

def AllocBody332_99 : StackLang.HolProg 64 :=
.seq AllocBody332_55 AllocBody332_98

def AllocBody332_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody332_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody332_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody332_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody332_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody332_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551456#64))

def AllocBody332_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody332_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_112 : StackLang.HolProg 64 :=
.seq AllocBody332_110 AllocBody332_111

def AllocBody332_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody332_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody332_115 : StackLang.HolProg 64 :=
.seq AllocBody332_113 AllocBody332_114

def AllocBody332_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody332_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody332_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_119 : StackLang.HolProg 64 :=
.seq AllocBody332_117 AllocBody332_118

def AllocBody332_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody332_121 : StackLang.HolProg 64 :=
.seq AllocBody332_119 AllocBody332_120

def AllocBody332_122 : StackLang.HolProg 64 :=
.seq AllocBody332_116 AllocBody332_121

def AllocBody332_123 : StackLang.HolProg 64 :=
.seq AllocBody332_115 AllocBody332_122

def AllocBody332_124 : StackLang.HolProg 64 :=
.seq AllocBody332_112 AllocBody332_123

def AllocBody332_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 942#64)

def AllocBody332_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_128 : StackLang.HolProg 64 :=
.seq AllocBody332_126 AllocBody332_127

def AllocBody332_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 7

def AllocBody332_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_139 : StackLang.HolProg 64 :=
.seq AllocBody332_137 AllocBody332_138

def AllocBody332_140 : StackLang.HolProg 64 :=
.seq AllocBody332_136 AllocBody332_139

def AllocBody332_141 : StackLang.HolProg 64 :=
.seq AllocBody332_135 AllocBody332_140

def AllocBody332_142 : StackLang.HolProg 64 :=
.seq AllocBody332_134 AllocBody332_141

def AllocBody332_143 : StackLang.HolProg 64 :=
.seq AllocBody332_133 AllocBody332_142

def AllocBody332_144 : StackLang.HolProg 64 :=
.seq AllocBody332_132 AllocBody332_143

def AllocBody332_145 : StackLang.HolProg 64 :=
.seq AllocBody332_131 AllocBody332_144

def AllocBody332_146 : StackLang.HolProg 64 :=
.seq AllocBody332_130 AllocBody332_145

def AllocBody332_147 : StackLang.HolProg 64 :=
.seq AllocBody332_129 AllocBody332_146

def AllocBody332_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody332_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody332_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody332_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody332_158 : StackLang.HolProg 64 :=
.seq AllocBody332_156 AllocBody332_157

def AllocBody332_159 : StackLang.HolProg 64 :=
.seq AllocBody332_155 AllocBody332_158

def AllocBody332_160 : StackLang.HolProg 64 :=
.seq AllocBody332_154 AllocBody332_159

def AllocBody332_161 : StackLang.HolProg 64 :=
.seq AllocBody332_153 AllocBody332_160

def AllocBody332_162 : StackLang.HolProg 64 :=
.seq AllocBody332_152 AllocBody332_161

def AllocBody332_163 : StackLang.HolProg 64 :=
.seq AllocBody332_151 AllocBody332_162

def AllocBody332_164 : StackLang.HolProg 64 :=
.seq AllocBody332_150 AllocBody332_163

def AllocBody332_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody332_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody332_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody332_168 : StackLang.HolProg 64 :=
.seq AllocBody332_166 AllocBody332_167

def AllocBody332_169 : StackLang.HolProg 64 :=
.seq AllocBody332_165 AllocBody332_168

def AllocBody332_170 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_171 : StackLang.HolProg 64 :=
.seq AllocBody332_169 AllocBody332_170

def AllocBody332_172 : StackLang.HolProg 64 :=
.call (some (AllocBody332_164, 0, 332, 6)) (Sum.inl 177) (some (AllocBody332_171, 332, 7))

def AllocBody332_173 : StackLang.HolProg 64 :=
.seq AllocBody332_149 AllocBody332_172

def AllocBody332_174 : StackLang.HolProg 64 :=
.seq AllocBody332_148 AllocBody332_173

def AllocBody332_175 : StackLang.HolProg 64 :=
.seq AllocBody332_147 AllocBody332_174

def AllocBody332_176 : StackLang.HolProg 64 :=
.seq AllocBody332_128 AllocBody332_175

def AllocBody332_177 : StackLang.HolProg 64 :=
.seq AllocBody332_125 AllocBody332_176

def AllocBody332_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody332_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody332_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody332_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody332_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551456#64))

def AllocBody332_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody332_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody332_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody332_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody332_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody332_191 : StackLang.HolProg 64 :=
.seq AllocBody332_189 AllocBody332_190

def AllocBody332_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody332_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody332_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 943#64)

def AllocBody332_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_197 : StackLang.HolProg 64 :=
.seq AllocBody332_195 AllocBody332_196

def AllocBody332_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 9

def AllocBody332_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_208 : StackLang.HolProg 64 :=
.seq AllocBody332_206 AllocBody332_207

def AllocBody332_209 : StackLang.HolProg 64 :=
.seq AllocBody332_205 AllocBody332_208

def AllocBody332_210 : StackLang.HolProg 64 :=
.seq AllocBody332_204 AllocBody332_209

def AllocBody332_211 : StackLang.HolProg 64 :=
.seq AllocBody332_203 AllocBody332_210

def AllocBody332_212 : StackLang.HolProg 64 :=
.seq AllocBody332_202 AllocBody332_211

def AllocBody332_213 : StackLang.HolProg 64 :=
.seq AllocBody332_201 AllocBody332_212

def AllocBody332_214 : StackLang.HolProg 64 :=
.seq AllocBody332_200 AllocBody332_213

def AllocBody332_215 : StackLang.HolProg 64 :=
.seq AllocBody332_199 AllocBody332_214

def AllocBody332_216 : StackLang.HolProg 64 :=
.seq AllocBody332_198 AllocBody332_215

def AllocBody332_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody332_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody332_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody332_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody332_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody332_229 : StackLang.HolProg 64 :=
.seq AllocBody332_227 AllocBody332_228

def AllocBody332_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody332_231 : StackLang.HolProg 64 :=
.seq AllocBody332_229 AllocBody332_230

def AllocBody332_232 : StackLang.HolProg 64 :=
.seq AllocBody332_226 AllocBody332_231

def AllocBody332_233 : StackLang.HolProg 64 :=
.seq AllocBody332_225 AllocBody332_232

def AllocBody332_234 : StackLang.HolProg 64 :=
.seq AllocBody332_224 AllocBody332_233

def AllocBody332_235 : StackLang.HolProg 64 :=
.seq AllocBody332_223 AllocBody332_234

def AllocBody332_236 : StackLang.HolProg 64 :=
.seq AllocBody332_222 AllocBody332_235

def AllocBody332_237 : StackLang.HolProg 64 :=
.seq AllocBody332_221 AllocBody332_236

def AllocBody332_238 : StackLang.HolProg 64 :=
.seq AllocBody332_220 AllocBody332_237

def AllocBody332_239 : StackLang.HolProg 64 :=
.seq AllocBody332_219 AllocBody332_238

def AllocBody332_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody332_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody332_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody332_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody332_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody332_246 : StackLang.HolProg 64 :=
.seq AllocBody332_244 AllocBody332_245

def AllocBody332_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody332_248 : StackLang.HolProg 64 :=
.seq AllocBody332_246 AllocBody332_247

def AllocBody332_249 : StackLang.HolProg 64 :=
.seq AllocBody332_243 AllocBody332_248

def AllocBody332_250 : StackLang.HolProg 64 :=
.seq AllocBody332_242 AllocBody332_249

def AllocBody332_251 : StackLang.HolProg 64 :=
.seq AllocBody332_241 AllocBody332_250

def AllocBody332_252 : StackLang.HolProg 64 :=
.seq AllocBody332_240 AllocBody332_251

def AllocBody332_253 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_254 : StackLang.HolProg 64 :=
.seq AllocBody332_252 AllocBody332_253

def AllocBody332_255 : StackLang.HolProg 64 :=
.call (some (AllocBody332_239, 0, 332, 8)) (Sum.inl 320) (some (AllocBody332_254, 332, 9))

def AllocBody332_256 : StackLang.HolProg 64 :=
.seq AllocBody332_218 AllocBody332_255

def AllocBody332_257 : StackLang.HolProg 64 :=
.seq AllocBody332_217 AllocBody332_256

def AllocBody332_258 : StackLang.HolProg 64 :=
.seq AllocBody332_216 AllocBody332_257

def AllocBody332_259 : StackLang.HolProg 64 :=
.seq AllocBody332_197 AllocBody332_258

def AllocBody332_260 : StackLang.HolProg 64 :=
.seq AllocBody332_194 AllocBody332_259

def AllocBody332_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody332_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody332_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody332_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody332_267 : StackLang.HolProg 64 :=
.seq AllocBody332_265 AllocBody332_266

def AllocBody332_268 : StackLang.HolProg 64 :=
.seq AllocBody332_264 AllocBody332_267

def AllocBody332_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody332_270 : StackLang.HolProg 64 :=
.seq AllocBody332_268 AllocBody332_269

def AllocBody332_271 : StackLang.HolProg 64 :=
.seq AllocBody332_263 AllocBody332_270

def AllocBody332_272 : StackLang.HolProg 64 :=
.seq AllocBody332_262 AllocBody332_271

def AllocBody332_273 : StackLang.HolProg 64 :=
.seq AllocBody332_261 AllocBody332_272

def AllocBody332_274 : StackLang.HolProg 64 :=
.seq AllocBody332_260 AllocBody332_273

def AllocBody332_275 : StackLang.HolProg 64 :=
.seq AllocBody332_193 AllocBody332_274

def AllocBody332_276 : StackLang.HolProg 64 :=
.seq AllocBody332_192 AllocBody332_275

def AllocBody332_277 : StackLang.HolProg 64 :=
.seq AllocBody332_191 AllocBody332_276

def AllocBody332_278 : StackLang.HolProg 64 :=
.seq AllocBody332_188 AllocBody332_277

def AllocBody332_279 : StackLang.HolProg 64 :=
.seq AllocBody332_187 AllocBody332_278

def AllocBody332_280 : StackLang.HolProg 64 :=
.seq AllocBody332_186 AllocBody332_279

def AllocBody332_281 : StackLang.HolProg 64 :=
.seq AllocBody332_185 AllocBody332_280

def AllocBody332_282 : StackLang.HolProg 64 :=
.seq AllocBody332_184 AllocBody332_281

def AllocBody332_283 : StackLang.HolProg 64 :=
.seq AllocBody332_183 AllocBody332_282

def AllocBody332_284 : StackLang.HolProg 64 :=
.seq AllocBody332_182 AllocBody332_283

def AllocBody332_285 : StackLang.HolProg 64 :=
.seq AllocBody332_181 AllocBody332_284

def AllocBody332_286 : StackLang.HolProg 64 :=
.seq AllocBody332_180 AllocBody332_285

def AllocBody332_287 : StackLang.HolProg 64 :=
.seq AllocBody332_179 AllocBody332_286

def AllocBody332_288 : StackLang.HolProg 64 :=
.seq AllocBody332_178 AllocBody332_287

def AllocBody332_289 : StackLang.HolProg 64 :=
.seq AllocBody332_177 AllocBody332_288

def AllocBody332_290 : StackLang.HolProg 64 :=
.seq AllocBody332_124 AllocBody332_289

def AllocBody332_291 : StackLang.HolProg 64 :=
.seq AllocBody332_109 AllocBody332_290

def AllocBody332_292 : StackLang.HolProg 64 :=
.seq AllocBody332_108 AllocBody332_291

def AllocBody332_293 : StackLang.HolProg 64 :=
.seq AllocBody332_107 AllocBody332_292

def AllocBody332_294 : StackLang.HolProg 64 :=
.seq AllocBody332_106 AllocBody332_293

def AllocBody332_295 : StackLang.HolProg 64 :=
.seq AllocBody332_105 AllocBody332_294

def AllocBody332_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody332_298 : StackLang.HolProg 64 :=
.seq AllocBody332_296 AllocBody332_297

def AllocBody332_299 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody332_295 AllocBody332_298

def AllocBody332_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody332_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody332_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody332_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody332_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody332_306 : StackLang.HolProg 64 :=
.seq AllocBody332_304 AllocBody332_305

def AllocBody332_307 : StackLang.HolProg 64 :=
.seq AllocBody332_303 AllocBody332_306

def AllocBody332_308 : StackLang.HolProg 64 :=
.seq AllocBody332_302 AllocBody332_307

def AllocBody332_309 : StackLang.HolProg 64 :=
.seq AllocBody332_301 AllocBody332_308

def AllocBody332_310 : StackLang.HolProg 64 :=
.seq AllocBody332_300 AllocBody332_309

def AllocBody332_311 : StackLang.HolProg 64 :=
.seq AllocBody332_299 AllocBody332_310

def AllocBody332_312 : StackLang.HolProg 64 :=
.seq AllocBody332_104 AllocBody332_311

def AllocBody332_313 : StackLang.HolProg 64 :=
.loop AllocBody332_312

def AllocBody332_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 7

def AllocBody332_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody332_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody332_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody332_319 : StackLang.HolProg 64 :=
.seq AllocBody332_317 AllocBody332_318

def AllocBody332_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody332_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody332_322 : StackLang.HolProg 64 :=
.seq AllocBody332_320 AllocBody332_321

def AllocBody332_323 : StackLang.HolProg 64 :=
.seq AllocBody332_319 AllocBody332_322

def AllocBody332_324 : StackLang.HolProg 64 :=
.seq AllocBody332_316 AllocBody332_323

def AllocBody332_325 : StackLang.HolProg 64 :=
.seq AllocBody332_315 AllocBody332_324

def AllocBody332_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 944#64)

def AllocBody332_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_329 : StackLang.HolProg 64 :=
.seq AllocBody332_327 AllocBody332_328

def AllocBody332_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 11

def AllocBody332_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_340 : StackLang.HolProg 64 :=
.seq AllocBody332_338 AllocBody332_339

def AllocBody332_341 : StackLang.HolProg 64 :=
.seq AllocBody332_337 AllocBody332_340

def AllocBody332_342 : StackLang.HolProg 64 :=
.seq AllocBody332_336 AllocBody332_341

def AllocBody332_343 : StackLang.HolProg 64 :=
.seq AllocBody332_335 AllocBody332_342

def AllocBody332_344 : StackLang.HolProg 64 :=
.seq AllocBody332_334 AllocBody332_343

def AllocBody332_345 : StackLang.HolProg 64 :=
.seq AllocBody332_333 AllocBody332_344

def AllocBody332_346 : StackLang.HolProg 64 :=
.seq AllocBody332_332 AllocBody332_345

def AllocBody332_347 : StackLang.HolProg 64 :=
.seq AllocBody332_331 AllocBody332_346

def AllocBody332_348 : StackLang.HolProg 64 :=
.seq AllocBody332_330 AllocBody332_347

def AllocBody332_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody332_356 : StackLang.HolProg 64 :=
.seq AllocBody332_354 AllocBody332_355

def AllocBody332_357 : StackLang.HolProg 64 :=
.seq AllocBody332_353 AllocBody332_356

def AllocBody332_358 : StackLang.HolProg 64 :=
.seq AllocBody332_352 AllocBody332_357

def AllocBody332_359 : StackLang.HolProg 64 :=
.seq AllocBody332_351 AllocBody332_358

def AllocBody332_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody332_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_362 : StackLang.HolProg 64 :=
.seq AllocBody332_360 AllocBody332_361

def AllocBody332_363 : StackLang.HolProg 64 :=
.call (some (AllocBody332_359, 0, 332, 10)) (Sum.inl 331) (some (AllocBody332_362, 332, 11))

def AllocBody332_364 : StackLang.HolProg 64 :=
.seq AllocBody332_350 AllocBody332_363

def AllocBody332_365 : StackLang.HolProg 64 :=
.seq AllocBody332_349 AllocBody332_364

def AllocBody332_366 : StackLang.HolProg 64 :=
.seq AllocBody332_348 AllocBody332_365

def AllocBody332_367 : StackLang.HolProg 64 :=
.seq AllocBody332_329 AllocBody332_366

def AllocBody332_368 : StackLang.HolProg 64 :=
.seq AllocBody332_326 AllocBody332_367

def AllocBody332_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody332_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 945#64)

def AllocBody332_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_374 : StackLang.HolProg 64 :=
.seq AllocBody332_372 AllocBody332_373

def AllocBody332_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody332_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody332_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody332_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 332 13

def AllocBody332_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody332_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody332_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody332_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody332_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_385 : StackLang.HolProg 64 :=
.seq AllocBody332_383 AllocBody332_384

def AllocBody332_386 : StackLang.HolProg 64 :=
.seq AllocBody332_382 AllocBody332_385

def AllocBody332_387 : StackLang.HolProg 64 :=
.seq AllocBody332_381 AllocBody332_386

def AllocBody332_388 : StackLang.HolProg 64 :=
.seq AllocBody332_380 AllocBody332_387

def AllocBody332_389 : StackLang.HolProg 64 :=
.seq AllocBody332_379 AllocBody332_388

def AllocBody332_390 : StackLang.HolProg 64 :=
.seq AllocBody332_378 AllocBody332_389

def AllocBody332_391 : StackLang.HolProg 64 :=
.seq AllocBody332_377 AllocBody332_390

def AllocBody332_392 : StackLang.HolProg 64 :=
.seq AllocBody332_376 AllocBody332_391

def AllocBody332_393 : StackLang.HolProg 64 :=
.seq AllocBody332_375 AllocBody332_392

def AllocBody332_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody332_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody332_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody332_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody332_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody332_401 : StackLang.HolProg 64 :=
.seq AllocBody332_399 AllocBody332_400

def AllocBody332_402 : StackLang.HolProg 64 :=
.seq AllocBody332_398 AllocBody332_401

def AllocBody332_403 : StackLang.HolProg 64 :=
.seq AllocBody332_397 AllocBody332_402

def AllocBody332_404 : StackLang.HolProg 64 :=
.seq AllocBody332_396 AllocBody332_403

def AllocBody332_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody332_406 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody332_407 : StackLang.HolProg 64 :=
.seq AllocBody332_405 AllocBody332_406

def AllocBody332_408 : StackLang.HolProg 64 :=
.call (some (AllocBody332_404, 0, 332, 12)) (Sum.inl 70) (some (AllocBody332_407, 332, 13))

def AllocBody332_409 : StackLang.HolProg 64 :=
.seq AllocBody332_395 AllocBody332_408

def AllocBody332_410 : StackLang.HolProg 64 :=
.seq AllocBody332_394 AllocBody332_409

def AllocBody332_411 : StackLang.HolProg 64 :=
.seq AllocBody332_393 AllocBody332_410

def AllocBody332_412 : StackLang.HolProg 64 :=
.seq AllocBody332_374 AllocBody332_411

def AllocBody332_413 : StackLang.HolProg 64 :=
.seq AllocBody332_371 AllocBody332_412

def AllocBody332_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody332_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody332_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody332_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody332_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody332_419 : StackLang.HolProg 64 :=
.seq AllocBody332_417 AllocBody332_418

def AllocBody332_420 : StackLang.HolProg 64 :=
.seq AllocBody332_416 AllocBody332_419

def AllocBody332_421 : StackLang.HolProg 64 :=
.seq AllocBody332_415 AllocBody332_420

def AllocBody332_422 : StackLang.HolProg 64 :=
.seq AllocBody332_414 AllocBody332_421

def AllocBody332_423 : StackLang.HolProg 64 :=
.seq AllocBody332_413 AllocBody332_422

def AllocBody332_424 : StackLang.HolProg 64 :=
.seq AllocBody332_370 AllocBody332_423

def AllocBody332_425 : StackLang.HolProg 64 :=
.seq AllocBody332_369 AllocBody332_424

def AllocBody332_426 : StackLang.HolProg 64 :=
.seq AllocBody332_368 AllocBody332_425

def AllocBody332_427 : StackLang.HolProg 64 :=
.seq AllocBody332_325 AllocBody332_426

def AllocBody332_428 : StackLang.HolProg 64 :=
.seq AllocBody332_314 AllocBody332_427

def AllocBody332_429 : StackLang.HolProg 64 :=
.seq AllocBody332_313 AllocBody332_428

def AllocBody332_430 : StackLang.HolProg 64 :=
.seq AllocBody332_103 AllocBody332_429

def AllocBody332_431 : StackLang.HolProg 64 :=
.seq AllocBody332_102 AllocBody332_430

def AllocBody332_432 : StackLang.HolProg 64 :=
.seq AllocBody332_101 AllocBody332_431

def AllocBody332_433 : StackLang.HolProg 64 :=
.seq AllocBody332_100 AllocBody332_432

def AllocBody332_434 : StackLang.HolProg 64 :=
.seq AllocBody332_99 AllocBody332_433

def AllocBody332_435 : StackLang.HolProg 64 :=
.seq AllocBody332_54 AllocBody332_434

def AllocBody332_436 : StackLang.HolProg 64 :=
.seq AllocBody332_53 AllocBody332_435

def AllocBody332_437 : StackLang.HolProg 64 :=
.seq AllocBody332_52 AllocBody332_436

def AllocBody332_438 : StackLang.HolProg 64 :=
.seq AllocBody332_51 AllocBody332_437

def AllocBody332_439 : StackLang.HolProg 64 :=
.seq AllocBody332_50 AllocBody332_438

def AllocBody332_440 : StackLang.HolProg 64 :=
.seq AllocBody332_7 AllocBody332_439

def AllocBody332_441 : StackLang.HolProg 64 :=
.seq AllocBody332_0 AllocBody332_440

def Alloc332 : Nat × StackLang.HolProg 64 := (332, AllocBody332_441)
theorem Alloc332_eq : StackAlloc.progComp (332, raw332) = Alloc332 := by
  kernel_rfl
#print axioms Alloc332_eq
end InitECandidate.Proofs.BackendStages
