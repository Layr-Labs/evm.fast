import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function789
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody789_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody789_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody789_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody789_3 : StackLang.HolProg 64 :=
.seq rawBody789_1 rawBody789_2

def rawBody789_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3659#64)

def rawBody789_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_7 : StackLang.HolProg 64 :=
.seq rawBody789_5 rawBody789_6

def rawBody789_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody789_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody789_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 3

def rawBody789_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody789_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody789_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody789_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody789_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_18 : StackLang.HolProg 64 :=
.seq rawBody789_16 rawBody789_17

def rawBody789_19 : StackLang.HolProg 64 :=
.seq rawBody789_15 rawBody789_18

def rawBody789_20 : StackLang.HolProg 64 :=
.seq rawBody789_14 rawBody789_19

def rawBody789_21 : StackLang.HolProg 64 :=
.seq rawBody789_13 rawBody789_20

def rawBody789_22 : StackLang.HolProg 64 :=
.seq rawBody789_12 rawBody789_21

def rawBody789_23 : StackLang.HolProg 64 :=
.seq rawBody789_11 rawBody789_22

def rawBody789_24 : StackLang.HolProg 64 :=
.seq rawBody789_10 rawBody789_23

def rawBody789_25 : StackLang.HolProg 64 :=
.seq rawBody789_9 rawBody789_24

def rawBody789_26 : StackLang.HolProg 64 :=
.seq rawBody789_8 rawBody789_25

def rawBody789_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody789_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody789_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody789_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody789_34 : StackLang.HolProg 64 :=
.seq rawBody789_32 rawBody789_33

def rawBody789_35 : StackLang.HolProg 64 :=
.seq rawBody789_31 rawBody789_34

def rawBody789_36 : StackLang.HolProg 64 :=
.seq rawBody789_30 rawBody789_35

def rawBody789_37 : StackLang.HolProg 64 :=
.seq rawBody789_29 rawBody789_36

def rawBody789_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody789_40 : StackLang.HolProg 64 :=
.seq rawBody789_38 rawBody789_39

def rawBody789_41 : StackLang.HolProg 64 :=
.call (some (rawBody789_37, 0, 789, 2)) (Sum.inl 69) (some (rawBody789_40, 789, 3))

def rawBody789_42 : StackLang.HolProg 64 :=
.seq rawBody789_28 rawBody789_41

def rawBody789_43 : StackLang.HolProg 64 :=
.seq rawBody789_27 rawBody789_42

def rawBody789_44 : StackLang.HolProg 64 :=
.seq rawBody789_26 rawBody789_43

def rawBody789_45 : StackLang.HolProg 64 :=
.seq rawBody789_7 rawBody789_44

def rawBody789_46 : StackLang.HolProg 64 :=
.seq rawBody789_4 rawBody789_45

def rawBody789_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody789_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def rawBody789_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody789_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3660#64)

def rawBody789_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_53 : StackLang.HolProg 64 :=
.seq rawBody789_51 rawBody789_52

def rawBody789_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody789_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody789_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 5

def rawBody789_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody789_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody789_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody789_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody789_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_64 : StackLang.HolProg 64 :=
.seq rawBody789_62 rawBody789_63

def rawBody789_65 : StackLang.HolProg 64 :=
.seq rawBody789_61 rawBody789_64

def rawBody789_66 : StackLang.HolProg 64 :=
.seq rawBody789_60 rawBody789_65

def rawBody789_67 : StackLang.HolProg 64 :=
.seq rawBody789_59 rawBody789_66

def rawBody789_68 : StackLang.HolProg 64 :=
.seq rawBody789_58 rawBody789_67

def rawBody789_69 : StackLang.HolProg 64 :=
.seq rawBody789_57 rawBody789_68

def rawBody789_70 : StackLang.HolProg 64 :=
.seq rawBody789_56 rawBody789_69

def rawBody789_71 : StackLang.HolProg 64 :=
.seq rawBody789_55 rawBody789_70

def rawBody789_72 : StackLang.HolProg 64 :=
.seq rawBody789_54 rawBody789_71

def rawBody789_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody789_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody789_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody789_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody789_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody789_81 : StackLang.HolProg 64 :=
.seq rawBody789_79 rawBody789_80

def rawBody789_82 : StackLang.HolProg 64 :=
.seq rawBody789_78 rawBody789_81

def rawBody789_83 : StackLang.HolProg 64 :=
.seq rawBody789_77 rawBody789_82

def rawBody789_84 : StackLang.HolProg 64 :=
.seq rawBody789_76 rawBody789_83

def rawBody789_85 : StackLang.HolProg 64 :=
.seq rawBody789_75 rawBody789_84

def rawBody789_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody789_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody789_88 : StackLang.HolProg 64 :=
.seq rawBody789_86 rawBody789_87

def rawBody789_89 : StackLang.HolProg 64 :=
.call (some (rawBody789_85, 0, 789, 4)) (Sum.inl 68) (some (rawBody789_88, 789, 5))

def rawBody789_90 : StackLang.HolProg 64 :=
.seq rawBody789_74 rawBody789_89

def rawBody789_91 : StackLang.HolProg 64 :=
.seq rawBody789_73 rawBody789_90

def rawBody789_92 : StackLang.HolProg 64 :=
.seq rawBody789_72 rawBody789_91

def rawBody789_93 : StackLang.HolProg 64 :=
.seq rawBody789_53 rawBody789_92

def rawBody789_94 : StackLang.HolProg 64 :=
.seq rawBody789_50 rawBody789_93

def rawBody789_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody789_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody789_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody789_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody789_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody789_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody789_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1344#64)))

def rawBody789_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 4#64)

def rawBody789_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody789_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3661#64)

def rawBody789_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_107 : StackLang.HolProg 64 :=
.seq rawBody789_105 rawBody789_106

def rawBody789_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody789_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody789_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 7

def rawBody789_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody789_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody789_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody789_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody789_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_118 : StackLang.HolProg 64 :=
.seq rawBody789_116 rawBody789_117

def rawBody789_119 : StackLang.HolProg 64 :=
.seq rawBody789_115 rawBody789_118

def rawBody789_120 : StackLang.HolProg 64 :=
.seq rawBody789_114 rawBody789_119

def rawBody789_121 : StackLang.HolProg 64 :=
.seq rawBody789_113 rawBody789_120

def rawBody789_122 : StackLang.HolProg 64 :=
.seq rawBody789_112 rawBody789_121

def rawBody789_123 : StackLang.HolProg 64 :=
.seq rawBody789_111 rawBody789_122

def rawBody789_124 : StackLang.HolProg 64 :=
.seq rawBody789_110 rawBody789_123

def rawBody789_125 : StackLang.HolProg 64 :=
.seq rawBody789_109 rawBody789_124

def rawBody789_126 : StackLang.HolProg 64 :=
.seq rawBody789_108 rawBody789_125

def rawBody789_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody789_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody789_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody789_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody789_134 : StackLang.HolProg 64 :=
.seq rawBody789_132 rawBody789_133

def rawBody789_135 : StackLang.HolProg 64 :=
.seq rawBody789_131 rawBody789_134

def rawBody789_136 : StackLang.HolProg 64 :=
.seq rawBody789_130 rawBody789_135

def rawBody789_137 : StackLang.HolProg 64 :=
.seq rawBody789_129 rawBody789_136

def rawBody789_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody789_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody789_140 : StackLang.HolProg 64 :=
.seq rawBody789_138 rawBody789_139

def rawBody789_141 : StackLang.HolProg 64 :=
.call (some (rawBody789_137, 0, 789, 6)) (Sum.inl 784) (some (rawBody789_140, 789, 7))

def rawBody789_142 : StackLang.HolProg 64 :=
.seq rawBody789_128 rawBody789_141

def rawBody789_143 : StackLang.HolProg 64 :=
.seq rawBody789_127 rawBody789_142

def rawBody789_144 : StackLang.HolProg 64 :=
.seq rawBody789_126 rawBody789_143

def rawBody789_145 : StackLang.HolProg 64 :=
.seq rawBody789_107 rawBody789_144

def rawBody789_146 : StackLang.HolProg 64 :=
.seq rawBody789_104 rawBody789_145

def rawBody789_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody789_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody789_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3662#64)

def rawBody789_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_152 : StackLang.HolProg 64 :=
.seq rawBody789_150 rawBody789_151

def rawBody789_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody789_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody789_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 9

def rawBody789_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody789_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody789_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody789_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody789_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_163 : StackLang.HolProg 64 :=
.seq rawBody789_161 rawBody789_162

def rawBody789_164 : StackLang.HolProg 64 :=
.seq rawBody789_160 rawBody789_163

def rawBody789_165 : StackLang.HolProg 64 :=
.seq rawBody789_159 rawBody789_164

def rawBody789_166 : StackLang.HolProg 64 :=
.seq rawBody789_158 rawBody789_165

def rawBody789_167 : StackLang.HolProg 64 :=
.seq rawBody789_157 rawBody789_166

def rawBody789_168 : StackLang.HolProg 64 :=
.seq rawBody789_156 rawBody789_167

def rawBody789_169 : StackLang.HolProg 64 :=
.seq rawBody789_155 rawBody789_168

def rawBody789_170 : StackLang.HolProg 64 :=
.seq rawBody789_154 rawBody789_169

def rawBody789_171 : StackLang.HolProg 64 :=
.seq rawBody789_153 rawBody789_170

def rawBody789_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody789_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody789_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody789_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody789_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody789_180 : StackLang.HolProg 64 :=
.seq rawBody789_178 rawBody789_179

def rawBody789_181 : StackLang.HolProg 64 :=
.seq rawBody789_177 rawBody789_180

def rawBody789_182 : StackLang.HolProg 64 :=
.seq rawBody789_176 rawBody789_181

def rawBody789_183 : StackLang.HolProg 64 :=
.seq rawBody789_175 rawBody789_182

def rawBody789_184 : StackLang.HolProg 64 :=
.seq rawBody789_174 rawBody789_183

def rawBody789_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody789_186 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody789_187 : StackLang.HolProg 64 :=
.seq rawBody789_185 rawBody789_186

def rawBody789_188 : StackLang.HolProg 64 :=
.call (some (rawBody789_184, 0, 789, 8)) (Sum.inl 779) (some (rawBody789_187, 789, 9))

def rawBody789_189 : StackLang.HolProg 64 :=
.seq rawBody789_173 rawBody789_188

def rawBody789_190 : StackLang.HolProg 64 :=
.seq rawBody789_172 rawBody789_189

def rawBody789_191 : StackLang.HolProg 64 :=
.seq rawBody789_171 rawBody789_190

def rawBody789_192 : StackLang.HolProg 64 :=
.seq rawBody789_152 rawBody789_191

def rawBody789_193 : StackLang.HolProg 64 :=
.seq rawBody789_149 rawBody789_192

def rawBody789_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody789_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody789_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody789_197 : StackLang.HolProg 64 :=
.seq rawBody789_195 rawBody789_196

def rawBody789_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3663#64)

def rawBody789_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_201 : StackLang.HolProg 64 :=
.seq rawBody789_199 rawBody789_200

def rawBody789_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody789_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody789_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody789_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 789 11

def rawBody789_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody789_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody789_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody789_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody789_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_212 : StackLang.HolProg 64 :=
.seq rawBody789_210 rawBody789_211

def rawBody789_213 : StackLang.HolProg 64 :=
.seq rawBody789_209 rawBody789_212

def rawBody789_214 : StackLang.HolProg 64 :=
.seq rawBody789_208 rawBody789_213

def rawBody789_215 : StackLang.HolProg 64 :=
.seq rawBody789_207 rawBody789_214

def rawBody789_216 : StackLang.HolProg 64 :=
.seq rawBody789_206 rawBody789_215

def rawBody789_217 : StackLang.HolProg 64 :=
.seq rawBody789_205 rawBody789_216

def rawBody789_218 : StackLang.HolProg 64 :=
.seq rawBody789_204 rawBody789_217

def rawBody789_219 : StackLang.HolProg 64 :=
.seq rawBody789_203 rawBody789_218

def rawBody789_220 : StackLang.HolProg 64 :=
.seq rawBody789_202 rawBody789_219

def rawBody789_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody789_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody789_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody789_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody789_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody789_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody789_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody789_229 : StackLang.HolProg 64 :=
.seq rawBody789_227 rawBody789_228

def rawBody789_230 : StackLang.HolProg 64 :=
.seq rawBody789_226 rawBody789_229

def rawBody789_231 : StackLang.HolProg 64 :=
.seq rawBody789_225 rawBody789_230

def rawBody789_232 : StackLang.HolProg 64 :=
.seq rawBody789_224 rawBody789_231

def rawBody789_233 : StackLang.HolProg 64 :=
.seq rawBody789_223 rawBody789_232

def rawBody789_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody789_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody789_236 : StackLang.HolProg 64 :=
.seq rawBody789_234 rawBody789_235

def rawBody789_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody789_238 : StackLang.HolProg 64 :=
.seq rawBody789_236 rawBody789_237

def rawBody789_239 : StackLang.HolProg 64 :=
.call (some (rawBody789_233, 0, 789, 10)) (Sum.inl 70) (some (rawBody789_238, 789, 11))

def rawBody789_240 : StackLang.HolProg 64 :=
.seq rawBody789_222 rawBody789_239

def rawBody789_241 : StackLang.HolProg 64 :=
.seq rawBody789_221 rawBody789_240

def rawBody789_242 : StackLang.HolProg 64 :=
.seq rawBody789_220 rawBody789_241

def rawBody789_243 : StackLang.HolProg 64 :=
.seq rawBody789_201 rawBody789_242

def rawBody789_244 : StackLang.HolProg 64 :=
.seq rawBody789_198 rawBody789_243

def rawBody789_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody789_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody789_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody789_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody789_249 : StackLang.HolProg 64 :=
.seq rawBody789_247 rawBody789_248

def rawBody789_250 : StackLang.HolProg 64 :=
.seq rawBody789_246 rawBody789_249

def rawBody789_251 : StackLang.HolProg 64 :=
.seq rawBody789_245 rawBody789_250

def rawBody789_252 : StackLang.HolProg 64 :=
.seq rawBody789_244 rawBody789_251

def rawBody789_253 : StackLang.HolProg 64 :=
.seq rawBody789_197 rawBody789_252

def rawBody789_254 : StackLang.HolProg 64 :=
.seq rawBody789_194 rawBody789_253

def rawBody789_255 : StackLang.HolProg 64 :=
.seq rawBody789_193 rawBody789_254

def rawBody789_256 : StackLang.HolProg 64 :=
.seq rawBody789_148 rawBody789_255

def rawBody789_257 : StackLang.HolProg 64 :=
.seq rawBody789_147 rawBody789_256

def rawBody789_258 : StackLang.HolProg 64 :=
.seq rawBody789_146 rawBody789_257

def rawBody789_259 : StackLang.HolProg 64 :=
.seq rawBody789_103 rawBody789_258

def rawBody789_260 : StackLang.HolProg 64 :=
.seq rawBody789_102 rawBody789_259

def rawBody789_261 : StackLang.HolProg 64 :=
.seq rawBody789_101 rawBody789_260

def rawBody789_262 : StackLang.HolProg 64 :=
.seq rawBody789_100 rawBody789_261

def rawBody789_263 : StackLang.HolProg 64 :=
.seq rawBody789_99 rawBody789_262

def rawBody789_264 : StackLang.HolProg 64 :=
.seq rawBody789_98 rawBody789_263

def rawBody789_265 : StackLang.HolProg 64 :=
.seq rawBody789_97 rawBody789_264

def rawBody789_266 : StackLang.HolProg 64 :=
.seq rawBody789_96 rawBody789_265

def rawBody789_267 : StackLang.HolProg 64 :=
.seq rawBody789_95 rawBody789_266

def rawBody789_268 : StackLang.HolProg 64 :=
.seq rawBody789_94 rawBody789_267

def rawBody789_269 : StackLang.HolProg 64 :=
.seq rawBody789_49 rawBody789_268

def rawBody789_270 : StackLang.HolProg 64 :=
.seq rawBody789_48 rawBody789_269

def rawBody789_271 : StackLang.HolProg 64 :=
.seq rawBody789_47 rawBody789_270

def rawBody789_272 : StackLang.HolProg 64 :=
.seq rawBody789_46 rawBody789_271

def rawBody789_273 : StackLang.HolProg 64 :=
.seq rawBody789_3 rawBody789_272

def rawBody789_274 : StackLang.HolProg 64 :=
.seq rawBody789_0 rawBody789_273

def raw789 : StackLang.HolProg 64 := rawBody789_274
theorem raw789_eq : StackRawCall.compTop RawInfo.rawInfo (function789 (.list [])).1 = raw789 := by
  kernel_rfl
#print axioms raw789_eq
end InitECandidate.Proofs.BackendStages
