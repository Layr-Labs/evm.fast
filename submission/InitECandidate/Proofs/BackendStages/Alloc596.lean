import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw596
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody596_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody596_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 3 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody596_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody596_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 3 3

def AllocBody596_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def AllocBody596_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody596_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody596_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody596_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody596_10 : StackLang.HolProg 64 :=
.seq AllocBody596_8 AllocBody596_9

def AllocBody596_11 : StackLang.HolProg 64 :=
.seq AllocBody596_7 AllocBody596_10

def AllocBody596_12 : StackLang.HolProg 64 :=
.seq AllocBody596_6 AllocBody596_11

def AllocBody596_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2262#64)

def AllocBody596_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_16 : StackLang.HolProg 64 :=
.seq AllocBody596_14 AllocBody596_15

def AllocBody596_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody596_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody596_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 3

def AllocBody596_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody596_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody596_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody596_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody596_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_27 : StackLang.HolProg 64 :=
.seq AllocBody596_25 AllocBody596_26

def AllocBody596_28 : StackLang.HolProg 64 :=
.seq AllocBody596_24 AllocBody596_27

def AllocBody596_29 : StackLang.HolProg 64 :=
.seq AllocBody596_23 AllocBody596_28

def AllocBody596_30 : StackLang.HolProg 64 :=
.seq AllocBody596_22 AllocBody596_29

def AllocBody596_31 : StackLang.HolProg 64 :=
.seq AllocBody596_21 AllocBody596_30

def AllocBody596_32 : StackLang.HolProg 64 :=
.seq AllocBody596_20 AllocBody596_31

def AllocBody596_33 : StackLang.HolProg 64 :=
.seq AllocBody596_19 AllocBody596_32

def AllocBody596_34 : StackLang.HolProg 64 :=
.seq AllocBody596_18 AllocBody596_33

def AllocBody596_35 : StackLang.HolProg 64 :=
.seq AllocBody596_17 AllocBody596_34

def AllocBody596_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody596_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody596_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody596_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody596_43 : StackLang.HolProg 64 :=
.seq AllocBody596_41 AllocBody596_42

def AllocBody596_44 : StackLang.HolProg 64 :=
.seq AllocBody596_40 AllocBody596_43

def AllocBody596_45 : StackLang.HolProg 64 :=
.seq AllocBody596_39 AllocBody596_44

def AllocBody596_46 : StackLang.HolProg 64 :=
.seq AllocBody596_38 AllocBody596_45

def AllocBody596_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody596_49 : StackLang.HolProg 64 :=
.seq AllocBody596_47 AllocBody596_48

def AllocBody596_50 : StackLang.HolProg 64 :=
.call (some (AllocBody596_46, 0, 596, 2)) (Sum.inl 489) (some (AllocBody596_49, 596, 3))

def AllocBody596_51 : StackLang.HolProg 64 :=
.seq AllocBody596_37 AllocBody596_50

def AllocBody596_52 : StackLang.HolProg 64 :=
.seq AllocBody596_36 AllocBody596_51

def AllocBody596_53 : StackLang.HolProg 64 :=
.seq AllocBody596_35 AllocBody596_52

def AllocBody596_54 : StackLang.HolProg 64 :=
.seq AllocBody596_16 AllocBody596_53

def AllocBody596_55 : StackLang.HolProg 64 :=
.seq AllocBody596_13 AllocBody596_54

def AllocBody596_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody596_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 104#64)

def AllocBody596_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody596_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2263#64)

def AllocBody596_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_62 : StackLang.HolProg 64 :=
.seq AllocBody596_60 AllocBody596_61

def AllocBody596_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody596_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody596_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 5

def AllocBody596_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody596_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody596_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody596_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody596_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_73 : StackLang.HolProg 64 :=
.seq AllocBody596_71 AllocBody596_72

def AllocBody596_74 : StackLang.HolProg 64 :=
.seq AllocBody596_70 AllocBody596_73

def AllocBody596_75 : StackLang.HolProg 64 :=
.seq AllocBody596_69 AllocBody596_74

def AllocBody596_76 : StackLang.HolProg 64 :=
.seq AllocBody596_68 AllocBody596_75

def AllocBody596_77 : StackLang.HolProg 64 :=
.seq AllocBody596_67 AllocBody596_76

def AllocBody596_78 : StackLang.HolProg 64 :=
.seq AllocBody596_66 AllocBody596_77

def AllocBody596_79 : StackLang.HolProg 64 :=
.seq AllocBody596_65 AllocBody596_78

def AllocBody596_80 : StackLang.HolProg 64 :=
.seq AllocBody596_64 AllocBody596_79

def AllocBody596_81 : StackLang.HolProg 64 :=
.seq AllocBody596_63 AllocBody596_80

def AllocBody596_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody596_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody596_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody596_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody596_89 : StackLang.HolProg 64 :=
.seq AllocBody596_87 AllocBody596_88

def AllocBody596_90 : StackLang.HolProg 64 :=
.seq AllocBody596_86 AllocBody596_89

def AllocBody596_91 : StackLang.HolProg 64 :=
.seq AllocBody596_85 AllocBody596_90

def AllocBody596_92 : StackLang.HolProg 64 :=
.seq AllocBody596_84 AllocBody596_91

def AllocBody596_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_94 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody596_95 : StackLang.HolProg 64 :=
.seq AllocBody596_93 AllocBody596_94

def AllocBody596_96 : StackLang.HolProg 64 :=
.call (some (AllocBody596_92, 0, 596, 4)) (Sum.inl 74) (some (AllocBody596_95, 596, 5))

def AllocBody596_97 : StackLang.HolProg 64 :=
.seq AllocBody596_83 AllocBody596_96

def AllocBody596_98 : StackLang.HolProg 64 :=
.seq AllocBody596_82 AllocBody596_97

def AllocBody596_99 : StackLang.HolProg 64 :=
.seq AllocBody596_81 AllocBody596_98

def AllocBody596_100 : StackLang.HolProg 64 :=
.seq AllocBody596_62 AllocBody596_99

def AllocBody596_101 : StackLang.HolProg 64 :=
.seq AllocBody596_59 AllocBody596_100

def AllocBody596_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody596_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody596_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 104#64)

def AllocBody596_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody596_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2264#64)

def AllocBody596_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_109 : StackLang.HolProg 64 :=
.seq AllocBody596_107 AllocBody596_108

def AllocBody596_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody596_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody596_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody596_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 596 7

def AllocBody596_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody596_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody596_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody596_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody596_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_120 : StackLang.HolProg 64 :=
.seq AllocBody596_118 AllocBody596_119

def AllocBody596_121 : StackLang.HolProg 64 :=
.seq AllocBody596_117 AllocBody596_120

def AllocBody596_122 : StackLang.HolProg 64 :=
.seq AllocBody596_116 AllocBody596_121

def AllocBody596_123 : StackLang.HolProg 64 :=
.seq AllocBody596_115 AllocBody596_122

def AllocBody596_124 : StackLang.HolProg 64 :=
.seq AllocBody596_114 AllocBody596_123

def AllocBody596_125 : StackLang.HolProg 64 :=
.seq AllocBody596_113 AllocBody596_124

def AllocBody596_126 : StackLang.HolProg 64 :=
.seq AllocBody596_112 AllocBody596_125

def AllocBody596_127 : StackLang.HolProg 64 :=
.seq AllocBody596_111 AllocBody596_126

def AllocBody596_128 : StackLang.HolProg 64 :=
.seq AllocBody596_110 AllocBody596_127

def AllocBody596_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody596_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody596_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody596_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody596_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody596_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody596_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody596_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody596_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody596_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody596_141 : StackLang.HolProg 64 :=
.seq AllocBody596_139 AllocBody596_140

def AllocBody596_142 : StackLang.HolProg 64 :=
.seq AllocBody596_138 AllocBody596_141

def AllocBody596_143 : StackLang.HolProg 64 :=
.seq AllocBody596_137 AllocBody596_142

def AllocBody596_144 : StackLang.HolProg 64 :=
.seq AllocBody596_136 AllocBody596_143

def AllocBody596_145 : StackLang.HolProg 64 :=
.seq AllocBody596_135 AllocBody596_144

def AllocBody596_146 : StackLang.HolProg 64 :=
.seq AllocBody596_134 AllocBody596_145

def AllocBody596_147 : StackLang.HolProg 64 :=
.seq AllocBody596_133 AllocBody596_146

def AllocBody596_148 : StackLang.HolProg 64 :=
.seq AllocBody596_132 AllocBody596_147

def AllocBody596_149 : StackLang.HolProg 64 :=
.seq AllocBody596_131 AllocBody596_148

def AllocBody596_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody596_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody596_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody596_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody596_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def AllocBody596_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody596_156 : StackLang.HolProg 64 :=
.seq AllocBody596_154 AllocBody596_155

def AllocBody596_157 : StackLang.HolProg 64 :=
.seq AllocBody596_153 AllocBody596_156

def AllocBody596_158 : StackLang.HolProg 64 :=
.seq AllocBody596_152 AllocBody596_157

def AllocBody596_159 : StackLang.HolProg 64 :=
.seq AllocBody596_151 AllocBody596_158

def AllocBody596_160 : StackLang.HolProg 64 :=
.seq AllocBody596_150 AllocBody596_159

def AllocBody596_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody596_162 : StackLang.HolProg 64 :=
.seq AllocBody596_160 AllocBody596_161

def AllocBody596_163 : StackLang.HolProg 64 :=
.call (some (AllocBody596_149, 0, 596, 6)) (Sum.inl 78) (some (AllocBody596_162, 596, 7))

def AllocBody596_164 : StackLang.HolProg 64 :=
.seq AllocBody596_130 AllocBody596_163

def AllocBody596_165 : StackLang.HolProg 64 :=
.seq AllocBody596_129 AllocBody596_164

def AllocBody596_166 : StackLang.HolProg 64 :=
.seq AllocBody596_128 AllocBody596_165

def AllocBody596_167 : StackLang.HolProg 64 :=
.seq AllocBody596_109 AllocBody596_166

def AllocBody596_168 : StackLang.HolProg 64 :=
.seq AllocBody596_106 AllocBody596_167

def AllocBody596_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody596_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody596_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody596_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody596_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody596_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody596_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551328#64))

def AllocBody596_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody596_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody596_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody596_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody596_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody596_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def AllocBody596_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody596_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def AllocBody596_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody596_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody596_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody596_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody596_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def AllocBody596_199 : StackLang.HolProg 64 :=
.seq AllocBody596_197 AllocBody596_198

def AllocBody596_200 : StackLang.HolProg 64 :=
.seq AllocBody596_196 AllocBody596_199

def AllocBody596_201 : StackLang.HolProg 64 :=
.seq AllocBody596_195 AllocBody596_200

def AllocBody596_202 : StackLang.HolProg 64 :=
.seq AllocBody596_194 AllocBody596_201

def AllocBody596_203 : StackLang.HolProg 64 :=
.seq AllocBody596_193 AllocBody596_202

def AllocBody596_204 : StackLang.HolProg 64 :=
.seq AllocBody596_192 AllocBody596_203

def AllocBody596_205 : StackLang.HolProg 64 :=
.seq AllocBody596_191 AllocBody596_204

def AllocBody596_206 : StackLang.HolProg 64 :=
.seq AllocBody596_190 AllocBody596_205

def AllocBody596_207 : StackLang.HolProg 64 :=
.seq AllocBody596_189 AllocBody596_206

def AllocBody596_208 : StackLang.HolProg 64 :=
.seq AllocBody596_188 AllocBody596_207

def AllocBody596_209 : StackLang.HolProg 64 :=
.seq AllocBody596_187 AllocBody596_208

def AllocBody596_210 : StackLang.HolProg 64 :=
.seq AllocBody596_186 AllocBody596_209

def AllocBody596_211 : StackLang.HolProg 64 :=
.seq AllocBody596_185 AllocBody596_210

def AllocBody596_212 : StackLang.HolProg 64 :=
.seq AllocBody596_184 AllocBody596_211

def AllocBody596_213 : StackLang.HolProg 64 :=
.seq AllocBody596_183 AllocBody596_212

def AllocBody596_214 : StackLang.HolProg 64 :=
.seq AllocBody596_182 AllocBody596_213

def AllocBody596_215 : StackLang.HolProg 64 :=
.seq AllocBody596_181 AllocBody596_214

def AllocBody596_216 : StackLang.HolProg 64 :=
.seq AllocBody596_180 AllocBody596_215

def AllocBody596_217 : StackLang.HolProg 64 :=
.seq AllocBody596_179 AllocBody596_216

def AllocBody596_218 : StackLang.HolProg 64 :=
.seq AllocBody596_178 AllocBody596_217

def AllocBody596_219 : StackLang.HolProg 64 :=
.seq AllocBody596_177 AllocBody596_218

def AllocBody596_220 : StackLang.HolProg 64 :=
.seq AllocBody596_176 AllocBody596_219

def AllocBody596_221 : StackLang.HolProg 64 :=
.seq AllocBody596_175 AllocBody596_220

def AllocBody596_222 : StackLang.HolProg 64 :=
.seq AllocBody596_174 AllocBody596_221

def AllocBody596_223 : StackLang.HolProg 64 :=
.seq AllocBody596_173 AllocBody596_222

def AllocBody596_224 : StackLang.HolProg 64 :=
.seq AllocBody596_172 AllocBody596_223

def AllocBody596_225 : StackLang.HolProg 64 :=
.seq AllocBody596_171 AllocBody596_224

def AllocBody596_226 : StackLang.HolProg 64 :=
.seq AllocBody596_170 AllocBody596_225

def AllocBody596_227 : StackLang.HolProg 64 :=
.seq AllocBody596_169 AllocBody596_226

def AllocBody596_228 : StackLang.HolProg 64 :=
.seq AllocBody596_168 AllocBody596_227

def AllocBody596_229 : StackLang.HolProg 64 :=
.seq AllocBody596_105 AllocBody596_228

def AllocBody596_230 : StackLang.HolProg 64 :=
.seq AllocBody596_104 AllocBody596_229

def AllocBody596_231 : StackLang.HolProg 64 :=
.seq AllocBody596_103 AllocBody596_230

def AllocBody596_232 : StackLang.HolProg 64 :=
.seq AllocBody596_102 AllocBody596_231

def AllocBody596_233 : StackLang.HolProg 64 :=
.seq AllocBody596_101 AllocBody596_232

def AllocBody596_234 : StackLang.HolProg 64 :=
.seq AllocBody596_58 AllocBody596_233

def AllocBody596_235 : StackLang.HolProg 64 :=
.seq AllocBody596_57 AllocBody596_234

def AllocBody596_236 : StackLang.HolProg 64 :=
.seq AllocBody596_56 AllocBody596_235

def AllocBody596_237 : StackLang.HolProg 64 :=
.seq AllocBody596_55 AllocBody596_236

def AllocBody596_238 : StackLang.HolProg 64 :=
.seq AllocBody596_12 AllocBody596_237

def AllocBody596_239 : StackLang.HolProg 64 :=
.seq AllocBody596_5 AllocBody596_238

def AllocBody596_240 : StackLang.HolProg 64 :=
.seq AllocBody596_4 AllocBody596_239

def AllocBody596_241 : StackLang.HolProg 64 :=
.seq AllocBody596_3 AllocBody596_240

def AllocBody596_242 : StackLang.HolProg 64 :=
.seq AllocBody596_2 AllocBody596_241

def AllocBody596_243 : StackLang.HolProg 64 :=
.seq AllocBody596_1 AllocBody596_242

def AllocBody596_244 : StackLang.HolProg 64 :=
.seq AllocBody596_0 AllocBody596_243

def Alloc596 : Nat × StackLang.HolProg 64 := (596, AllocBody596_244)
theorem Alloc596_eq : StackAlloc.progComp (596, raw596) = Alloc596 := by
  kernel_rfl
#print axioms Alloc596_eq
end InitECandidate.Proofs.BackendStages
