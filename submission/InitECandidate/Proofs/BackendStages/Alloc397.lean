import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw397
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody397_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody397_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody397_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody397_3 : StackLang.HolProg 64 :=
.seq AllocBody397_1 AllocBody397_2

def AllocBody397_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1176#64)

def AllocBody397_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_7 : StackLang.HolProg 64 :=
.seq AllocBody397_5 AllocBody397_6

def AllocBody397_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody397_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody397_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 3

def AllocBody397_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody397_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody397_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody397_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody397_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_18 : StackLang.HolProg 64 :=
.seq AllocBody397_16 AllocBody397_17

def AllocBody397_19 : StackLang.HolProg 64 :=
.seq AllocBody397_15 AllocBody397_18

def AllocBody397_20 : StackLang.HolProg 64 :=
.seq AllocBody397_14 AllocBody397_19

def AllocBody397_21 : StackLang.HolProg 64 :=
.seq AllocBody397_13 AllocBody397_20

def AllocBody397_22 : StackLang.HolProg 64 :=
.seq AllocBody397_12 AllocBody397_21

def AllocBody397_23 : StackLang.HolProg 64 :=
.seq AllocBody397_11 AllocBody397_22

def AllocBody397_24 : StackLang.HolProg 64 :=
.seq AllocBody397_10 AllocBody397_23

def AllocBody397_25 : StackLang.HolProg 64 :=
.seq AllocBody397_9 AllocBody397_24

def AllocBody397_26 : StackLang.HolProg 64 :=
.seq AllocBody397_8 AllocBody397_25

def AllocBody397_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody397_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody397_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody397_34 : StackLang.HolProg 64 :=
.seq AllocBody397_32 AllocBody397_33

def AllocBody397_35 : StackLang.HolProg 64 :=
.seq AllocBody397_31 AllocBody397_34

def AllocBody397_36 : StackLang.HolProg 64 :=
.seq AllocBody397_30 AllocBody397_35

def AllocBody397_37 : StackLang.HolProg 64 :=
.seq AllocBody397_29 AllocBody397_36

def AllocBody397_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody397_40 : StackLang.HolProg 64 :=
.seq AllocBody397_38 AllocBody397_39

def AllocBody397_41 : StackLang.HolProg 64 :=
.call (some (AllocBody397_37, 0, 397, 2)) (Sum.inl 69) (some (AllocBody397_40, 397, 3))

def AllocBody397_42 : StackLang.HolProg 64 :=
.seq AllocBody397_28 AllocBody397_41

def AllocBody397_43 : StackLang.HolProg 64 :=
.seq AllocBody397_27 AllocBody397_42

def AllocBody397_44 : StackLang.HolProg 64 :=
.seq AllocBody397_26 AllocBody397_43

def AllocBody397_45 : StackLang.HolProg 64 :=
.seq AllocBody397_7 AllocBody397_44

def AllocBody397_46 : StackLang.HolProg 64 :=
.seq AllocBody397_4 AllocBody397_45

def AllocBody397_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody397_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody397_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody397_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1177#64)

def AllocBody397_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_53 : StackLang.HolProg 64 :=
.seq AllocBody397_51 AllocBody397_52

def AllocBody397_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody397_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody397_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 5

def AllocBody397_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody397_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody397_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody397_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody397_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_64 : StackLang.HolProg 64 :=
.seq AllocBody397_62 AllocBody397_63

def AllocBody397_65 : StackLang.HolProg 64 :=
.seq AllocBody397_61 AllocBody397_64

def AllocBody397_66 : StackLang.HolProg 64 :=
.seq AllocBody397_60 AllocBody397_65

def AllocBody397_67 : StackLang.HolProg 64 :=
.seq AllocBody397_59 AllocBody397_66

def AllocBody397_68 : StackLang.HolProg 64 :=
.seq AllocBody397_58 AllocBody397_67

def AllocBody397_69 : StackLang.HolProg 64 :=
.seq AllocBody397_57 AllocBody397_68

def AllocBody397_70 : StackLang.HolProg 64 :=
.seq AllocBody397_56 AllocBody397_69

def AllocBody397_71 : StackLang.HolProg 64 :=
.seq AllocBody397_55 AllocBody397_70

def AllocBody397_72 : StackLang.HolProg 64 :=
.seq AllocBody397_54 AllocBody397_71

def AllocBody397_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody397_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody397_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody397_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody397_81 : StackLang.HolProg 64 :=
.seq AllocBody397_79 AllocBody397_80

def AllocBody397_82 : StackLang.HolProg 64 :=
.seq AllocBody397_78 AllocBody397_81

def AllocBody397_83 : StackLang.HolProg 64 :=
.seq AllocBody397_77 AllocBody397_82

def AllocBody397_84 : StackLang.HolProg 64 :=
.seq AllocBody397_76 AllocBody397_83

def AllocBody397_85 : StackLang.HolProg 64 :=
.seq AllocBody397_75 AllocBody397_84

def AllocBody397_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody397_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody397_88 : StackLang.HolProg 64 :=
.seq AllocBody397_86 AllocBody397_87

def AllocBody397_89 : StackLang.HolProg 64 :=
.call (some (AllocBody397_85, 0, 397, 4)) (Sum.inl 68) (some (AllocBody397_88, 397, 5))

def AllocBody397_90 : StackLang.HolProg 64 :=
.seq AllocBody397_74 AllocBody397_89

def AllocBody397_91 : StackLang.HolProg 64 :=
.seq AllocBody397_73 AllocBody397_90

def AllocBody397_92 : StackLang.HolProg 64 :=
.seq AllocBody397_72 AllocBody397_91

def AllocBody397_93 : StackLang.HolProg 64 :=
.seq AllocBody397_53 AllocBody397_92

def AllocBody397_94 : StackLang.HolProg 64 :=
.seq AllocBody397_50 AllocBody397_93

def AllocBody397_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody397_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody397_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def AllocBody397_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody397_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1178#64)

def AllocBody397_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_102 : StackLang.HolProg 64 :=
.seq AllocBody397_100 AllocBody397_101

def AllocBody397_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody397_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody397_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 7

def AllocBody397_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody397_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody397_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody397_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody397_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_113 : StackLang.HolProg 64 :=
.seq AllocBody397_111 AllocBody397_112

def AllocBody397_114 : StackLang.HolProg 64 :=
.seq AllocBody397_110 AllocBody397_113

def AllocBody397_115 : StackLang.HolProg 64 :=
.seq AllocBody397_109 AllocBody397_114

def AllocBody397_116 : StackLang.HolProg 64 :=
.seq AllocBody397_108 AllocBody397_115

def AllocBody397_117 : StackLang.HolProg 64 :=
.seq AllocBody397_107 AllocBody397_116

def AllocBody397_118 : StackLang.HolProg 64 :=
.seq AllocBody397_106 AllocBody397_117

def AllocBody397_119 : StackLang.HolProg 64 :=
.seq AllocBody397_105 AllocBody397_118

def AllocBody397_120 : StackLang.HolProg 64 :=
.seq AllocBody397_104 AllocBody397_119

def AllocBody397_121 : StackLang.HolProg 64 :=
.seq AllocBody397_103 AllocBody397_120

def AllocBody397_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody397_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody397_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody397_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody397_131 : StackLang.HolProg 64 :=
.seq AllocBody397_129 AllocBody397_130

def AllocBody397_132 : StackLang.HolProg 64 :=
.seq AllocBody397_128 AllocBody397_131

def AllocBody397_133 : StackLang.HolProg 64 :=
.seq AllocBody397_127 AllocBody397_132

def AllocBody397_134 : StackLang.HolProg 64 :=
.seq AllocBody397_126 AllocBody397_133

def AllocBody397_135 : StackLang.HolProg 64 :=
.seq AllocBody397_125 AllocBody397_134

def AllocBody397_136 : StackLang.HolProg 64 :=
.seq AllocBody397_124 AllocBody397_135

def AllocBody397_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody397_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody397_140 : StackLang.HolProg 64 :=
.seq AllocBody397_138 AllocBody397_139

def AllocBody397_141 : StackLang.HolProg 64 :=
.seq AllocBody397_137 AllocBody397_140

def AllocBody397_142 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody397_143 : StackLang.HolProg 64 :=
.seq AllocBody397_141 AllocBody397_142

def AllocBody397_144 : StackLang.HolProg 64 :=
.call (some (AllocBody397_136, 0, 397, 6)) (Sum.inl 158) (some (AllocBody397_143, 397, 7))

def AllocBody397_145 : StackLang.HolProg 64 :=
.seq AllocBody397_123 AllocBody397_144

def AllocBody397_146 : StackLang.HolProg 64 :=
.seq AllocBody397_122 AllocBody397_145

def AllocBody397_147 : StackLang.HolProg 64 :=
.seq AllocBody397_121 AllocBody397_146

def AllocBody397_148 : StackLang.HolProg 64 :=
.seq AllocBody397_102 AllocBody397_147

def AllocBody397_149 : StackLang.HolProg 64 :=
.seq AllocBody397_99 AllocBody397_148

def AllocBody397_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody397_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody397_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody397_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody397_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551448#64))

def AllocBody397_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody397_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1179#64)

def AllocBody397_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_160 : StackLang.HolProg 64 :=
.seq AllocBody397_158 AllocBody397_159

def AllocBody397_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody397_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody397_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 9

def AllocBody397_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody397_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody397_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody397_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody397_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_171 : StackLang.HolProg 64 :=
.seq AllocBody397_169 AllocBody397_170

def AllocBody397_172 : StackLang.HolProg 64 :=
.seq AllocBody397_168 AllocBody397_171

def AllocBody397_173 : StackLang.HolProg 64 :=
.seq AllocBody397_167 AllocBody397_172

def AllocBody397_174 : StackLang.HolProg 64 :=
.seq AllocBody397_166 AllocBody397_173

def AllocBody397_175 : StackLang.HolProg 64 :=
.seq AllocBody397_165 AllocBody397_174

def AllocBody397_176 : StackLang.HolProg 64 :=
.seq AllocBody397_164 AllocBody397_175

def AllocBody397_177 : StackLang.HolProg 64 :=
.seq AllocBody397_163 AllocBody397_176

def AllocBody397_178 : StackLang.HolProg 64 :=
.seq AllocBody397_162 AllocBody397_177

def AllocBody397_179 : StackLang.HolProg 64 :=
.seq AllocBody397_161 AllocBody397_178

def AllocBody397_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody397_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody397_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody397_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody397_188 : StackLang.HolProg 64 :=
.seq AllocBody397_186 AllocBody397_187

def AllocBody397_189 : StackLang.HolProg 64 :=
.seq AllocBody397_185 AllocBody397_188

def AllocBody397_190 : StackLang.HolProg 64 :=
.seq AllocBody397_184 AllocBody397_189

def AllocBody397_191 : StackLang.HolProg 64 :=
.seq AllocBody397_183 AllocBody397_190

def AllocBody397_192 : StackLang.HolProg 64 :=
.seq AllocBody397_182 AllocBody397_191

def AllocBody397_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody397_194 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody397_195 : StackLang.HolProg 64 :=
.seq AllocBody397_193 AllocBody397_194

def AllocBody397_196 : StackLang.HolProg 64 :=
.call (some (AllocBody397_192, 0, 397, 8)) (Sum.inl 307) (some (AllocBody397_195, 397, 9))

def AllocBody397_197 : StackLang.HolProg 64 :=
.seq AllocBody397_181 AllocBody397_196

def AllocBody397_198 : StackLang.HolProg 64 :=
.seq AllocBody397_180 AllocBody397_197

def AllocBody397_199 : StackLang.HolProg 64 :=
.seq AllocBody397_179 AllocBody397_198

def AllocBody397_200 : StackLang.HolProg 64 :=
.seq AllocBody397_160 AllocBody397_199

def AllocBody397_201 : StackLang.HolProg 64 :=
.seq AllocBody397_157 AllocBody397_200

def AllocBody397_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody397_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody397_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody397_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody397_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody397_207 : StackLang.HolProg 64 :=
.seq AllocBody397_205 AllocBody397_206

def AllocBody397_208 : StackLang.HolProg 64 :=
.seq AllocBody397_204 AllocBody397_207

def AllocBody397_209 : StackLang.HolProg 64 :=
.seq AllocBody397_203 AllocBody397_208

def AllocBody397_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1180#64)

def AllocBody397_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_213 : StackLang.HolProg 64 :=
.seq AllocBody397_211 AllocBody397_212

def AllocBody397_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody397_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody397_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody397_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 397 11

def AllocBody397_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody397_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody397_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody397_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody397_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_224 : StackLang.HolProg 64 :=
.seq AllocBody397_222 AllocBody397_223

def AllocBody397_225 : StackLang.HolProg 64 :=
.seq AllocBody397_221 AllocBody397_224

def AllocBody397_226 : StackLang.HolProg 64 :=
.seq AllocBody397_220 AllocBody397_225

def AllocBody397_227 : StackLang.HolProg 64 :=
.seq AllocBody397_219 AllocBody397_226

def AllocBody397_228 : StackLang.HolProg 64 :=
.seq AllocBody397_218 AllocBody397_227

def AllocBody397_229 : StackLang.HolProg 64 :=
.seq AllocBody397_217 AllocBody397_228

def AllocBody397_230 : StackLang.HolProg 64 :=
.seq AllocBody397_216 AllocBody397_229

def AllocBody397_231 : StackLang.HolProg 64 :=
.seq AllocBody397_215 AllocBody397_230

def AllocBody397_232 : StackLang.HolProg 64 :=
.seq AllocBody397_214 AllocBody397_231

def AllocBody397_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody397_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody397_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody397_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody397_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody397_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody397_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody397_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody397_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody397_243 : StackLang.HolProg 64 :=
.seq AllocBody397_241 AllocBody397_242

def AllocBody397_244 : StackLang.HolProg 64 :=
.seq AllocBody397_240 AllocBody397_243

def AllocBody397_245 : StackLang.HolProg 64 :=
.seq AllocBody397_239 AllocBody397_244

def AllocBody397_246 : StackLang.HolProg 64 :=
.seq AllocBody397_238 AllocBody397_245

def AllocBody397_247 : StackLang.HolProg 64 :=
.seq AllocBody397_237 AllocBody397_246

def AllocBody397_248 : StackLang.HolProg 64 :=
.seq AllocBody397_236 AllocBody397_247

def AllocBody397_249 : StackLang.HolProg 64 :=
.seq AllocBody397_235 AllocBody397_248

def AllocBody397_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody397_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody397_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody397_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody397_254 : StackLang.HolProg 64 :=
.seq AllocBody397_252 AllocBody397_253

def AllocBody397_255 : StackLang.HolProg 64 :=
.seq AllocBody397_251 AllocBody397_254

def AllocBody397_256 : StackLang.HolProg 64 :=
.seq AllocBody397_250 AllocBody397_255

def AllocBody397_257 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody397_258 : StackLang.HolProg 64 :=
.seq AllocBody397_256 AllocBody397_257

def AllocBody397_259 : StackLang.HolProg 64 :=
.call (some (AllocBody397_249, 0, 397, 10)) (Sum.inl 70) (some (AllocBody397_258, 397, 11))

def AllocBody397_260 : StackLang.HolProg 64 :=
.seq AllocBody397_234 AllocBody397_259

def AllocBody397_261 : StackLang.HolProg 64 :=
.seq AllocBody397_233 AllocBody397_260

def AllocBody397_262 : StackLang.HolProg 64 :=
.seq AllocBody397_232 AllocBody397_261

def AllocBody397_263 : StackLang.HolProg 64 :=
.seq AllocBody397_213 AllocBody397_262

def AllocBody397_264 : StackLang.HolProg 64 :=
.seq AllocBody397_210 AllocBody397_263

def AllocBody397_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody397_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody397_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody397_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody397_269 : StackLang.HolProg 64 :=
.seq AllocBody397_267 AllocBody397_268

def AllocBody397_270 : StackLang.HolProg 64 :=
.seq AllocBody397_266 AllocBody397_269

def AllocBody397_271 : StackLang.HolProg 64 :=
.seq AllocBody397_265 AllocBody397_270

def AllocBody397_272 : StackLang.HolProg 64 :=
.seq AllocBody397_264 AllocBody397_271

def AllocBody397_273 : StackLang.HolProg 64 :=
.seq AllocBody397_209 AllocBody397_272

def AllocBody397_274 : StackLang.HolProg 64 :=
.seq AllocBody397_202 AllocBody397_273

def AllocBody397_275 : StackLang.HolProg 64 :=
.seq AllocBody397_201 AllocBody397_274

def AllocBody397_276 : StackLang.HolProg 64 :=
.seq AllocBody397_156 AllocBody397_275

def AllocBody397_277 : StackLang.HolProg 64 :=
.seq AllocBody397_155 AllocBody397_276

def AllocBody397_278 : StackLang.HolProg 64 :=
.seq AllocBody397_154 AllocBody397_277

def AllocBody397_279 : StackLang.HolProg 64 :=
.seq AllocBody397_153 AllocBody397_278

def AllocBody397_280 : StackLang.HolProg 64 :=
.seq AllocBody397_152 AllocBody397_279

def AllocBody397_281 : StackLang.HolProg 64 :=
.seq AllocBody397_151 AllocBody397_280

def AllocBody397_282 : StackLang.HolProg 64 :=
.seq AllocBody397_150 AllocBody397_281

def AllocBody397_283 : StackLang.HolProg 64 :=
.seq AllocBody397_149 AllocBody397_282

def AllocBody397_284 : StackLang.HolProg 64 :=
.seq AllocBody397_98 AllocBody397_283

def AllocBody397_285 : StackLang.HolProg 64 :=
.seq AllocBody397_97 AllocBody397_284

def AllocBody397_286 : StackLang.HolProg 64 :=
.seq AllocBody397_96 AllocBody397_285

def AllocBody397_287 : StackLang.HolProg 64 :=
.seq AllocBody397_95 AllocBody397_286

def AllocBody397_288 : StackLang.HolProg 64 :=
.seq AllocBody397_94 AllocBody397_287

def AllocBody397_289 : StackLang.HolProg 64 :=
.seq AllocBody397_49 AllocBody397_288

def AllocBody397_290 : StackLang.HolProg 64 :=
.seq AllocBody397_48 AllocBody397_289

def AllocBody397_291 : StackLang.HolProg 64 :=
.seq AllocBody397_47 AllocBody397_290

def AllocBody397_292 : StackLang.HolProg 64 :=
.seq AllocBody397_46 AllocBody397_291

def AllocBody397_293 : StackLang.HolProg 64 :=
.seq AllocBody397_3 AllocBody397_292

def AllocBody397_294 : StackLang.HolProg 64 :=
.seq AllocBody397_0 AllocBody397_293

def Alloc397 : Nat × StackLang.HolProg 64 := (397, AllocBody397_294)
theorem Alloc397_eq : StackAlloc.progComp (397, raw397) = Alloc397 := by
  kernel_rfl
#print axioms Alloc397_eq
end InitECandidate.Proofs.BackendStages
