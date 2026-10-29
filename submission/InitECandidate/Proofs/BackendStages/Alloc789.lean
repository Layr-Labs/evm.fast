import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw789
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody789_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody789_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody789_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody789_3 : StackLang.HolProg 64 :=
.seq AllocBody789_1 AllocBody789_2

def AllocBody789_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3659#64)

def AllocBody789_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_7 : StackLang.HolProg 64 :=
.seq AllocBody789_5 AllocBody789_6

def AllocBody789_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody789_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody789_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 3

def AllocBody789_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody789_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody789_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody789_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody789_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_18 : StackLang.HolProg 64 :=
.seq AllocBody789_16 AllocBody789_17

def AllocBody789_19 : StackLang.HolProg 64 :=
.seq AllocBody789_15 AllocBody789_18

def AllocBody789_20 : StackLang.HolProg 64 :=
.seq AllocBody789_14 AllocBody789_19

def AllocBody789_21 : StackLang.HolProg 64 :=
.seq AllocBody789_13 AllocBody789_20

def AllocBody789_22 : StackLang.HolProg 64 :=
.seq AllocBody789_12 AllocBody789_21

def AllocBody789_23 : StackLang.HolProg 64 :=
.seq AllocBody789_11 AllocBody789_22

def AllocBody789_24 : StackLang.HolProg 64 :=
.seq AllocBody789_10 AllocBody789_23

def AllocBody789_25 : StackLang.HolProg 64 :=
.seq AllocBody789_9 AllocBody789_24

def AllocBody789_26 : StackLang.HolProg 64 :=
.seq AllocBody789_8 AllocBody789_25

def AllocBody789_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody789_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody789_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody789_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody789_34 : StackLang.HolProg 64 :=
.seq AllocBody789_32 AllocBody789_33

def AllocBody789_35 : StackLang.HolProg 64 :=
.seq AllocBody789_31 AllocBody789_34

def AllocBody789_36 : StackLang.HolProg 64 :=
.seq AllocBody789_30 AllocBody789_35

def AllocBody789_37 : StackLang.HolProg 64 :=
.seq AllocBody789_29 AllocBody789_36

def AllocBody789_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody789_40 : StackLang.HolProg 64 :=
.seq AllocBody789_38 AllocBody789_39

def AllocBody789_41 : StackLang.HolProg 64 :=
.call (some (AllocBody789_37, 0, 789, 2)) (Sum.inl 69) (some (AllocBody789_40, 789, 3))

def AllocBody789_42 : StackLang.HolProg 64 :=
.seq AllocBody789_28 AllocBody789_41

def AllocBody789_43 : StackLang.HolProg 64 :=
.seq AllocBody789_27 AllocBody789_42

def AllocBody789_44 : StackLang.HolProg 64 :=
.seq AllocBody789_26 AllocBody789_43

def AllocBody789_45 : StackLang.HolProg 64 :=
.seq AllocBody789_7 AllocBody789_44

def AllocBody789_46 : StackLang.HolProg 64 :=
.seq AllocBody789_4 AllocBody789_45

def AllocBody789_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody789_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def AllocBody789_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody789_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3660#64)

def AllocBody789_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_53 : StackLang.HolProg 64 :=
.seq AllocBody789_51 AllocBody789_52

def AllocBody789_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody789_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody789_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 5

def AllocBody789_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody789_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody789_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody789_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody789_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_64 : StackLang.HolProg 64 :=
.seq AllocBody789_62 AllocBody789_63

def AllocBody789_65 : StackLang.HolProg 64 :=
.seq AllocBody789_61 AllocBody789_64

def AllocBody789_66 : StackLang.HolProg 64 :=
.seq AllocBody789_60 AllocBody789_65

def AllocBody789_67 : StackLang.HolProg 64 :=
.seq AllocBody789_59 AllocBody789_66

def AllocBody789_68 : StackLang.HolProg 64 :=
.seq AllocBody789_58 AllocBody789_67

def AllocBody789_69 : StackLang.HolProg 64 :=
.seq AllocBody789_57 AllocBody789_68

def AllocBody789_70 : StackLang.HolProg 64 :=
.seq AllocBody789_56 AllocBody789_69

def AllocBody789_71 : StackLang.HolProg 64 :=
.seq AllocBody789_55 AllocBody789_70

def AllocBody789_72 : StackLang.HolProg 64 :=
.seq AllocBody789_54 AllocBody789_71

def AllocBody789_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody789_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody789_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody789_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody789_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody789_81 : StackLang.HolProg 64 :=
.seq AllocBody789_79 AllocBody789_80

def AllocBody789_82 : StackLang.HolProg 64 :=
.seq AllocBody789_78 AllocBody789_81

def AllocBody789_83 : StackLang.HolProg 64 :=
.seq AllocBody789_77 AllocBody789_82

def AllocBody789_84 : StackLang.HolProg 64 :=
.seq AllocBody789_76 AllocBody789_83

def AllocBody789_85 : StackLang.HolProg 64 :=
.seq AllocBody789_75 AllocBody789_84

def AllocBody789_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody789_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody789_88 : StackLang.HolProg 64 :=
.seq AllocBody789_86 AllocBody789_87

def AllocBody789_89 : StackLang.HolProg 64 :=
.call (some (AllocBody789_85, 0, 789, 4)) (Sum.inl 68) (some (AllocBody789_88, 789, 5))

def AllocBody789_90 : StackLang.HolProg 64 :=
.seq AllocBody789_74 AllocBody789_89

def AllocBody789_91 : StackLang.HolProg 64 :=
.seq AllocBody789_73 AllocBody789_90

def AllocBody789_92 : StackLang.HolProg 64 :=
.seq AllocBody789_72 AllocBody789_91

def AllocBody789_93 : StackLang.HolProg 64 :=
.seq AllocBody789_53 AllocBody789_92

def AllocBody789_94 : StackLang.HolProg 64 :=
.seq AllocBody789_50 AllocBody789_93

def AllocBody789_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody789_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody789_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody789_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody789_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody789_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody789_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def AllocBody789_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def AllocBody789_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody789_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3661#64)

def AllocBody789_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_107 : StackLang.HolProg 64 :=
.seq AllocBody789_105 AllocBody789_106

def AllocBody789_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody789_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody789_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 7

def AllocBody789_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody789_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody789_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody789_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody789_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_118 : StackLang.HolProg 64 :=
.seq AllocBody789_116 AllocBody789_117

def AllocBody789_119 : StackLang.HolProg 64 :=
.seq AllocBody789_115 AllocBody789_118

def AllocBody789_120 : StackLang.HolProg 64 :=
.seq AllocBody789_114 AllocBody789_119

def AllocBody789_121 : StackLang.HolProg 64 :=
.seq AllocBody789_113 AllocBody789_120

def AllocBody789_122 : StackLang.HolProg 64 :=
.seq AllocBody789_112 AllocBody789_121

def AllocBody789_123 : StackLang.HolProg 64 :=
.seq AllocBody789_111 AllocBody789_122

def AllocBody789_124 : StackLang.HolProg 64 :=
.seq AllocBody789_110 AllocBody789_123

def AllocBody789_125 : StackLang.HolProg 64 :=
.seq AllocBody789_109 AllocBody789_124

def AllocBody789_126 : StackLang.HolProg 64 :=
.seq AllocBody789_108 AllocBody789_125

def AllocBody789_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody789_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody789_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody789_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody789_134 : StackLang.HolProg 64 :=
.seq AllocBody789_132 AllocBody789_133

def AllocBody789_135 : StackLang.HolProg 64 :=
.seq AllocBody789_131 AllocBody789_134

def AllocBody789_136 : StackLang.HolProg 64 :=
.seq AllocBody789_130 AllocBody789_135

def AllocBody789_137 : StackLang.HolProg 64 :=
.seq AllocBody789_129 AllocBody789_136

def AllocBody789_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody789_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody789_140 : StackLang.HolProg 64 :=
.seq AllocBody789_138 AllocBody789_139

def AllocBody789_141 : StackLang.HolProg 64 :=
.call (some (AllocBody789_137, 0, 789, 6)) (Sum.inl 784) (some (AllocBody789_140, 789, 7))

def AllocBody789_142 : StackLang.HolProg 64 :=
.seq AllocBody789_128 AllocBody789_141

def AllocBody789_143 : StackLang.HolProg 64 :=
.seq AllocBody789_127 AllocBody789_142

def AllocBody789_144 : StackLang.HolProg 64 :=
.seq AllocBody789_126 AllocBody789_143

def AllocBody789_145 : StackLang.HolProg 64 :=
.seq AllocBody789_107 AllocBody789_144

def AllocBody789_146 : StackLang.HolProg 64 :=
.seq AllocBody789_104 AllocBody789_145

def AllocBody789_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody789_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody789_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3662#64)

def AllocBody789_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_152 : StackLang.HolProg 64 :=
.seq AllocBody789_150 AllocBody789_151

def AllocBody789_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody789_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody789_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 9

def AllocBody789_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody789_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody789_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody789_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody789_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_163 : StackLang.HolProg 64 :=
.seq AllocBody789_161 AllocBody789_162

def AllocBody789_164 : StackLang.HolProg 64 :=
.seq AllocBody789_160 AllocBody789_163

def AllocBody789_165 : StackLang.HolProg 64 :=
.seq AllocBody789_159 AllocBody789_164

def AllocBody789_166 : StackLang.HolProg 64 :=
.seq AllocBody789_158 AllocBody789_165

def AllocBody789_167 : StackLang.HolProg 64 :=
.seq AllocBody789_157 AllocBody789_166

def AllocBody789_168 : StackLang.HolProg 64 :=
.seq AllocBody789_156 AllocBody789_167

def AllocBody789_169 : StackLang.HolProg 64 :=
.seq AllocBody789_155 AllocBody789_168

def AllocBody789_170 : StackLang.HolProg 64 :=
.seq AllocBody789_154 AllocBody789_169

def AllocBody789_171 : StackLang.HolProg 64 :=
.seq AllocBody789_153 AllocBody789_170

def AllocBody789_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody789_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody789_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody789_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody789_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody789_180 : StackLang.HolProg 64 :=
.seq AllocBody789_178 AllocBody789_179

def AllocBody789_181 : StackLang.HolProg 64 :=
.seq AllocBody789_177 AllocBody789_180

def AllocBody789_182 : StackLang.HolProg 64 :=
.seq AllocBody789_176 AllocBody789_181

def AllocBody789_183 : StackLang.HolProg 64 :=
.seq AllocBody789_175 AllocBody789_182

def AllocBody789_184 : StackLang.HolProg 64 :=
.seq AllocBody789_174 AllocBody789_183

def AllocBody789_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody789_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody789_187 : StackLang.HolProg 64 :=
.seq AllocBody789_185 AllocBody789_186

def AllocBody789_188 : StackLang.HolProg 64 :=
.call (some (AllocBody789_184, 0, 789, 8)) (Sum.inl 779) (some (AllocBody789_187, 789, 9))

def AllocBody789_189 : StackLang.HolProg 64 :=
.seq AllocBody789_173 AllocBody789_188

def AllocBody789_190 : StackLang.HolProg 64 :=
.seq AllocBody789_172 AllocBody789_189

def AllocBody789_191 : StackLang.HolProg 64 :=
.seq AllocBody789_171 AllocBody789_190

def AllocBody789_192 : StackLang.HolProg 64 :=
.seq AllocBody789_152 AllocBody789_191

def AllocBody789_193 : StackLang.HolProg 64 :=
.seq AllocBody789_149 AllocBody789_192

def AllocBody789_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody789_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody789_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody789_197 : StackLang.HolProg 64 :=
.seq AllocBody789_195 AllocBody789_196

def AllocBody789_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3663#64)

def AllocBody789_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_201 : StackLang.HolProg 64 :=
.seq AllocBody789_199 AllocBody789_200

def AllocBody789_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody789_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody789_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody789_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 11

def AllocBody789_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody789_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody789_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody789_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody789_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_212 : StackLang.HolProg 64 :=
.seq AllocBody789_210 AllocBody789_211

def AllocBody789_213 : StackLang.HolProg 64 :=
.seq AllocBody789_209 AllocBody789_212

def AllocBody789_214 : StackLang.HolProg 64 :=
.seq AllocBody789_208 AllocBody789_213

def AllocBody789_215 : StackLang.HolProg 64 :=
.seq AllocBody789_207 AllocBody789_214

def AllocBody789_216 : StackLang.HolProg 64 :=
.seq AllocBody789_206 AllocBody789_215

def AllocBody789_217 : StackLang.HolProg 64 :=
.seq AllocBody789_205 AllocBody789_216

def AllocBody789_218 : StackLang.HolProg 64 :=
.seq AllocBody789_204 AllocBody789_217

def AllocBody789_219 : StackLang.HolProg 64 :=
.seq AllocBody789_203 AllocBody789_218

def AllocBody789_220 : StackLang.HolProg 64 :=
.seq AllocBody789_202 AllocBody789_219

def AllocBody789_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody789_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody789_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody789_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody789_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody789_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody789_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody789_229 : StackLang.HolProg 64 :=
.seq AllocBody789_227 AllocBody789_228

def AllocBody789_230 : StackLang.HolProg 64 :=
.seq AllocBody789_226 AllocBody789_229

def AllocBody789_231 : StackLang.HolProg 64 :=
.seq AllocBody789_225 AllocBody789_230

def AllocBody789_232 : StackLang.HolProg 64 :=
.seq AllocBody789_224 AllocBody789_231

def AllocBody789_233 : StackLang.HolProg 64 :=
.seq AllocBody789_223 AllocBody789_232

def AllocBody789_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody789_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody789_236 : StackLang.HolProg 64 :=
.seq AllocBody789_234 AllocBody789_235

def AllocBody789_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody789_238 : StackLang.HolProg 64 :=
.seq AllocBody789_236 AllocBody789_237

def AllocBody789_239 : StackLang.HolProg 64 :=
.call (some (AllocBody789_233, 0, 789, 10)) (Sum.inl 70) (some (AllocBody789_238, 789, 11))

def AllocBody789_240 : StackLang.HolProg 64 :=
.seq AllocBody789_222 AllocBody789_239

def AllocBody789_241 : StackLang.HolProg 64 :=
.seq AllocBody789_221 AllocBody789_240

def AllocBody789_242 : StackLang.HolProg 64 :=
.seq AllocBody789_220 AllocBody789_241

def AllocBody789_243 : StackLang.HolProg 64 :=
.seq AllocBody789_201 AllocBody789_242

def AllocBody789_244 : StackLang.HolProg 64 :=
.seq AllocBody789_198 AllocBody789_243

def AllocBody789_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody789_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody789_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody789_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody789_249 : StackLang.HolProg 64 :=
.seq AllocBody789_247 AllocBody789_248

def AllocBody789_250 : StackLang.HolProg 64 :=
.seq AllocBody789_246 AllocBody789_249

def AllocBody789_251 : StackLang.HolProg 64 :=
.seq AllocBody789_245 AllocBody789_250

def AllocBody789_252 : StackLang.HolProg 64 :=
.seq AllocBody789_244 AllocBody789_251

def AllocBody789_253 : StackLang.HolProg 64 :=
.seq AllocBody789_197 AllocBody789_252

def AllocBody789_254 : StackLang.HolProg 64 :=
.seq AllocBody789_194 AllocBody789_253

def AllocBody789_255 : StackLang.HolProg 64 :=
.seq AllocBody789_193 AllocBody789_254

def AllocBody789_256 : StackLang.HolProg 64 :=
.seq AllocBody789_148 AllocBody789_255

def AllocBody789_257 : StackLang.HolProg 64 :=
.seq AllocBody789_147 AllocBody789_256

def AllocBody789_258 : StackLang.HolProg 64 :=
.seq AllocBody789_146 AllocBody789_257

def AllocBody789_259 : StackLang.HolProg 64 :=
.seq AllocBody789_103 AllocBody789_258

def AllocBody789_260 : StackLang.HolProg 64 :=
.seq AllocBody789_102 AllocBody789_259

def AllocBody789_261 : StackLang.HolProg 64 :=
.seq AllocBody789_101 AllocBody789_260

def AllocBody789_262 : StackLang.HolProg 64 :=
.seq AllocBody789_100 AllocBody789_261

def AllocBody789_263 : StackLang.HolProg 64 :=
.seq AllocBody789_99 AllocBody789_262

def AllocBody789_264 : StackLang.HolProg 64 :=
.seq AllocBody789_98 AllocBody789_263

def AllocBody789_265 : StackLang.HolProg 64 :=
.seq AllocBody789_97 AllocBody789_264

def AllocBody789_266 : StackLang.HolProg 64 :=
.seq AllocBody789_96 AllocBody789_265

def AllocBody789_267 : StackLang.HolProg 64 :=
.seq AllocBody789_95 AllocBody789_266

def AllocBody789_268 : StackLang.HolProg 64 :=
.seq AllocBody789_94 AllocBody789_267

def AllocBody789_269 : StackLang.HolProg 64 :=
.seq AllocBody789_49 AllocBody789_268

def AllocBody789_270 : StackLang.HolProg 64 :=
.seq AllocBody789_48 AllocBody789_269

def AllocBody789_271 : StackLang.HolProg 64 :=
.seq AllocBody789_47 AllocBody789_270

def AllocBody789_272 : StackLang.HolProg 64 :=
.seq AllocBody789_46 AllocBody789_271

def AllocBody789_273 : StackLang.HolProg 64 :=
.seq AllocBody789_3 AllocBody789_272

def AllocBody789_274 : StackLang.HolProg 64 :=
.seq AllocBody789_0 AllocBody789_273

def Alloc789 : Nat × StackLang.HolProg 64 := (789, AllocBody789_274)
theorem Alloc789_eq : StackAlloc.progComp (789, raw789) = Alloc789 := by
  kernel_rfl
#print axioms Alloc789_eq
end InitECandidate.Proofs.BackendStages
