import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw466
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody466_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody466_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody466_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody466_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody466_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody466_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody466_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 240#64)))

def AllocBody466_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody466_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody466_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody466_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody466_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody466_12 : StackLang.HolProg 64 :=
.seq AllocBody466_10 AllocBody466_11

def AllocBody466_13 : StackLang.HolProg 64 :=
.seq AllocBody466_9 AllocBody466_12

def AllocBody466_14 : StackLang.HolProg 64 :=
.seq AllocBody466_8 AllocBody466_13

def AllocBody466_15 : StackLang.HolProg 64 :=
.seq AllocBody466_7 AllocBody466_14

def AllocBody466_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1490#64)

def AllocBody466_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_19 : StackLang.HolProg 64 :=
.seq AllocBody466_17 AllocBody466_18

def AllocBody466_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody466_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody466_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 3

def AllocBody466_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody466_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody466_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody466_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody466_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_30 : StackLang.HolProg 64 :=
.seq AllocBody466_28 AllocBody466_29

def AllocBody466_31 : StackLang.HolProg 64 :=
.seq AllocBody466_27 AllocBody466_30

def AllocBody466_32 : StackLang.HolProg 64 :=
.seq AllocBody466_26 AllocBody466_31

def AllocBody466_33 : StackLang.HolProg 64 :=
.seq AllocBody466_25 AllocBody466_32

def AllocBody466_34 : StackLang.HolProg 64 :=
.seq AllocBody466_24 AllocBody466_33

def AllocBody466_35 : StackLang.HolProg 64 :=
.seq AllocBody466_23 AllocBody466_34

def AllocBody466_36 : StackLang.HolProg 64 :=
.seq AllocBody466_22 AllocBody466_35

def AllocBody466_37 : StackLang.HolProg 64 :=
.seq AllocBody466_21 AllocBody466_36

def AllocBody466_38 : StackLang.HolProg 64 :=
.seq AllocBody466_20 AllocBody466_37

def AllocBody466_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody466_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody466_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody466_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody466_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody466_48 : StackLang.HolProg 64 :=
.seq AllocBody466_46 AllocBody466_47

def AllocBody466_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody466_50 : StackLang.HolProg 64 :=
.seq AllocBody466_48 AllocBody466_49

def AllocBody466_51 : StackLang.HolProg 64 :=
.seq AllocBody466_45 AllocBody466_50

def AllocBody466_52 : StackLang.HolProg 64 :=
.seq AllocBody466_44 AllocBody466_51

def AllocBody466_53 : StackLang.HolProg 64 :=
.seq AllocBody466_43 AllocBody466_52

def AllocBody466_54 : StackLang.HolProg 64 :=
.seq AllocBody466_42 AllocBody466_53

def AllocBody466_55 : StackLang.HolProg 64 :=
.seq AllocBody466_41 AllocBody466_54

def AllocBody466_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody466_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody466_59 : StackLang.HolProg 64 :=
.seq AllocBody466_57 AllocBody466_58

def AllocBody466_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody466_61 : StackLang.HolProg 64 :=
.seq AllocBody466_59 AllocBody466_60

def AllocBody466_62 : StackLang.HolProg 64 :=
.seq AllocBody466_56 AllocBody466_61

def AllocBody466_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody466_64 : StackLang.HolProg 64 :=
.seq AllocBody466_62 AllocBody466_63

def AllocBody466_65 : StackLang.HolProg 64 :=
.call (some (AllocBody466_55, 0, 466, 2)) (Sum.inl 88) (some (AllocBody466_64, 466, 3))

def AllocBody466_66 : StackLang.HolProg 64 :=
.seq AllocBody466_40 AllocBody466_65

def AllocBody466_67 : StackLang.HolProg 64 :=
.seq AllocBody466_39 AllocBody466_66

def AllocBody466_68 : StackLang.HolProg 64 :=
.seq AllocBody466_38 AllocBody466_67

def AllocBody466_69 : StackLang.HolProg 64 :=
.seq AllocBody466_19 AllocBody466_68

def AllocBody466_70 : StackLang.HolProg 64 :=
.seq AllocBody466_16 AllocBody466_69

def AllocBody466_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody466_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody466_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody466_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1491#64)

def AllocBody466_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_78 : StackLang.HolProg 64 :=
.seq AllocBody466_76 AllocBody466_77

def AllocBody466_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody466_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody466_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 5

def AllocBody466_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody466_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody466_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody466_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody466_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_89 : StackLang.HolProg 64 :=
.seq AllocBody466_87 AllocBody466_88

def AllocBody466_90 : StackLang.HolProg 64 :=
.seq AllocBody466_86 AllocBody466_89

def AllocBody466_91 : StackLang.HolProg 64 :=
.seq AllocBody466_85 AllocBody466_90

def AllocBody466_92 : StackLang.HolProg 64 :=
.seq AllocBody466_84 AllocBody466_91

def AllocBody466_93 : StackLang.HolProg 64 :=
.seq AllocBody466_83 AllocBody466_92

def AllocBody466_94 : StackLang.HolProg 64 :=
.seq AllocBody466_82 AllocBody466_93

def AllocBody466_95 : StackLang.HolProg 64 :=
.seq AllocBody466_81 AllocBody466_94

def AllocBody466_96 : StackLang.HolProg 64 :=
.seq AllocBody466_80 AllocBody466_95

def AllocBody466_97 : StackLang.HolProg 64 :=
.seq AllocBody466_79 AllocBody466_96

def AllocBody466_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody466_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody466_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody466_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody466_106 : StackLang.HolProg 64 :=
.seq AllocBody466_104 AllocBody466_105

def AllocBody466_107 : StackLang.HolProg 64 :=
.seq AllocBody466_103 AllocBody466_106

def AllocBody466_108 : StackLang.HolProg 64 :=
.seq AllocBody466_102 AllocBody466_107

def AllocBody466_109 : StackLang.HolProg 64 :=
.seq AllocBody466_101 AllocBody466_108

def AllocBody466_110 : StackLang.HolProg 64 :=
.seq AllocBody466_100 AllocBody466_109

def AllocBody466_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody466_113 : StackLang.HolProg 64 :=
.seq AllocBody466_111 AllocBody466_112

def AllocBody466_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody466_115 : StackLang.HolProg 64 :=
.seq AllocBody466_113 AllocBody466_114

def AllocBody466_116 : StackLang.HolProg 64 :=
.call (some (AllocBody466_110, 0, 466, 4)) (Sum.inl 89) (some (AllocBody466_115, 466, 5))

def AllocBody466_117 : StackLang.HolProg 64 :=
.seq AllocBody466_99 AllocBody466_116

def AllocBody466_118 : StackLang.HolProg 64 :=
.seq AllocBody466_98 AllocBody466_117

def AllocBody466_119 : StackLang.HolProg 64 :=
.seq AllocBody466_97 AllocBody466_118

def AllocBody466_120 : StackLang.HolProg 64 :=
.seq AllocBody466_78 AllocBody466_119

def AllocBody466_121 : StackLang.HolProg 64 :=
.seq AllocBody466_75 AllocBody466_120

def AllocBody466_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody466_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def AllocBody466_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody466_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1492#64)

def AllocBody466_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_129 : StackLang.HolProg 64 :=
.seq AllocBody466_127 AllocBody466_128

def AllocBody466_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody466_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody466_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody466_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 7

def AllocBody466_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody466_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody466_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody466_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody466_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_140 : StackLang.HolProg 64 :=
.seq AllocBody466_138 AllocBody466_139

def AllocBody466_141 : StackLang.HolProg 64 :=
.seq AllocBody466_137 AllocBody466_140

def AllocBody466_142 : StackLang.HolProg 64 :=
.seq AllocBody466_136 AllocBody466_141

def AllocBody466_143 : StackLang.HolProg 64 :=
.seq AllocBody466_135 AllocBody466_142

def AllocBody466_144 : StackLang.HolProg 64 :=
.seq AllocBody466_134 AllocBody466_143

def AllocBody466_145 : StackLang.HolProg 64 :=
.seq AllocBody466_133 AllocBody466_144

def AllocBody466_146 : StackLang.HolProg 64 :=
.seq AllocBody466_132 AllocBody466_145

def AllocBody466_147 : StackLang.HolProg 64 :=
.seq AllocBody466_131 AllocBody466_146

def AllocBody466_148 : StackLang.HolProg 64 :=
.seq AllocBody466_130 AllocBody466_147

def AllocBody466_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody466_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody466_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody466_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody466_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody466_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody466_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_157 : StackLang.HolProg 64 :=
.seq AllocBody466_155 AllocBody466_156

def AllocBody466_158 : StackLang.HolProg 64 :=
.seq AllocBody466_154 AllocBody466_157

def AllocBody466_159 : StackLang.HolProg 64 :=
.seq AllocBody466_153 AllocBody466_158

def AllocBody466_160 : StackLang.HolProg 64 :=
.seq AllocBody466_152 AllocBody466_159

def AllocBody466_161 : StackLang.HolProg 64 :=
.seq AllocBody466_151 AllocBody466_160

def AllocBody466_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody466_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody466_164 : StackLang.HolProg 64 :=
.seq AllocBody466_162 AllocBody466_163

def AllocBody466_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody466_166 : StackLang.HolProg 64 :=
.seq AllocBody466_164 AllocBody466_165

def AllocBody466_167 : StackLang.HolProg 64 :=
.call (some (AllocBody466_161, 0, 466, 6)) (Sum.inl 89) (some (AllocBody466_166, 466, 7))

def AllocBody466_168 : StackLang.HolProg 64 :=
.seq AllocBody466_150 AllocBody466_167

def AllocBody466_169 : StackLang.HolProg 64 :=
.seq AllocBody466_149 AllocBody466_168

def AllocBody466_170 : StackLang.HolProg 64 :=
.seq AllocBody466_148 AllocBody466_169

def AllocBody466_171 : StackLang.HolProg 64 :=
.seq AllocBody466_129 AllocBody466_170

def AllocBody466_172 : StackLang.HolProg 64 :=
.seq AllocBody466_126 AllocBody466_171

def AllocBody466_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody466_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody466_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody466_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody466_177 : StackLang.HolProg 64 :=
.seq AllocBody466_175 AllocBody466_176

def AllocBody466_178 : StackLang.HolProg 64 :=
.seq AllocBody466_174 AllocBody466_177

def AllocBody466_179 : StackLang.HolProg 64 :=
.seq AllocBody466_173 AllocBody466_178

def AllocBody466_180 : StackLang.HolProg 64 :=
.seq AllocBody466_172 AllocBody466_179

def AllocBody466_181 : StackLang.HolProg 64 :=
.seq AllocBody466_125 AllocBody466_180

def AllocBody466_182 : StackLang.HolProg 64 :=
.seq AllocBody466_124 AllocBody466_181

def AllocBody466_183 : StackLang.HolProg 64 :=
.seq AllocBody466_123 AllocBody466_182

def AllocBody466_184 : StackLang.HolProg 64 :=
.seq AllocBody466_122 AllocBody466_183

def AllocBody466_185 : StackLang.HolProg 64 :=
.seq AllocBody466_121 AllocBody466_184

def AllocBody466_186 : StackLang.HolProg 64 :=
.seq AllocBody466_74 AllocBody466_185

def AllocBody466_187 : StackLang.HolProg 64 :=
.seq AllocBody466_73 AllocBody466_186

def AllocBody466_188 : StackLang.HolProg 64 :=
.seq AllocBody466_72 AllocBody466_187

def AllocBody466_189 : StackLang.HolProg 64 :=
.seq AllocBody466_71 AllocBody466_188

def AllocBody466_190 : StackLang.HolProg 64 :=
.seq AllocBody466_70 AllocBody466_189

def AllocBody466_191 : StackLang.HolProg 64 :=
.seq AllocBody466_15 AllocBody466_190

def AllocBody466_192 : StackLang.HolProg 64 :=
.seq AllocBody466_6 AllocBody466_191

def AllocBody466_193 : StackLang.HolProg 64 :=
.seq AllocBody466_5 AllocBody466_192

def AllocBody466_194 : StackLang.HolProg 64 :=
.seq AllocBody466_4 AllocBody466_193

def AllocBody466_195 : StackLang.HolProg 64 :=
.seq AllocBody466_3 AllocBody466_194

def AllocBody466_196 : StackLang.HolProg 64 :=
.seq AllocBody466_2 AllocBody466_195

def AllocBody466_197 : StackLang.HolProg 64 :=
.seq AllocBody466_1 AllocBody466_196

def AllocBody466_198 : StackLang.HolProg 64 :=
.seq AllocBody466_0 AllocBody466_197

def Alloc466 : Nat × StackLang.HolProg 64 := (466, AllocBody466_198)
theorem Alloc466_eq : StackAlloc.progComp (466, raw466) = Alloc466 := by
  kernel_rfl
#print axioms Alloc466_eq
end InitECandidate.Proofs.BackendStages
