import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw807
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody807_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def AllocBody807_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody807_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def AllocBody807_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody807_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def AllocBody807_5 : StackLang.HolProg 64 :=
.seq AllocBody807_3 AllocBody807_4

def AllocBody807_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3954#64)

def AllocBody807_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_9 : StackLang.HolProg 64 :=
.seq AllocBody807_7 AllocBody807_8

def AllocBody807_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody807_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody807_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 3

def AllocBody807_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody807_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody807_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody807_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody807_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_20 : StackLang.HolProg 64 :=
.seq AllocBody807_18 AllocBody807_19

def AllocBody807_21 : StackLang.HolProg 64 :=
.seq AllocBody807_17 AllocBody807_20

def AllocBody807_22 : StackLang.HolProg 64 :=
.seq AllocBody807_16 AllocBody807_21

def AllocBody807_23 : StackLang.HolProg 64 :=
.seq AllocBody807_15 AllocBody807_22

def AllocBody807_24 : StackLang.HolProg 64 :=
.seq AllocBody807_14 AllocBody807_23

def AllocBody807_25 : StackLang.HolProg 64 :=
.seq AllocBody807_13 AllocBody807_24

def AllocBody807_26 : StackLang.HolProg 64 :=
.seq AllocBody807_12 AllocBody807_25

def AllocBody807_27 : StackLang.HolProg 64 :=
.seq AllocBody807_11 AllocBody807_26

def AllocBody807_28 : StackLang.HolProg 64 :=
.seq AllocBody807_10 AllocBody807_27

def AllocBody807_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody807_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody807_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody807_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody807_36 : StackLang.HolProg 64 :=
.seq AllocBody807_34 AllocBody807_35

def AllocBody807_37 : StackLang.HolProg 64 :=
.seq AllocBody807_33 AllocBody807_36

def AllocBody807_38 : StackLang.HolProg 64 :=
.seq AllocBody807_32 AllocBody807_37

def AllocBody807_39 : StackLang.HolProg 64 :=
.seq AllocBody807_31 AllocBody807_38

def AllocBody807_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody807_42 : StackLang.HolProg 64 :=
.seq AllocBody807_40 AllocBody807_41

def AllocBody807_43 : StackLang.HolProg 64 :=
.call (some (AllocBody807_39, 0, 807, 2)) (Sum.inl 146) (some (AllocBody807_42, 807, 3))

def AllocBody807_44 : StackLang.HolProg 64 :=
.seq AllocBody807_30 AllocBody807_43

def AllocBody807_45 : StackLang.HolProg 64 :=
.seq AllocBody807_29 AllocBody807_44

def AllocBody807_46 : StackLang.HolProg 64 :=
.seq AllocBody807_28 AllocBody807_45

def AllocBody807_47 : StackLang.HolProg 64 :=
.seq AllocBody807_9 AllocBody807_46

def AllocBody807_48 : StackLang.HolProg 64 :=
.seq AllocBody807_6 AllocBody807_47

def AllocBody807_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody807_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody807_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody807_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody807_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1344#64))

def AllocBody807_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1352#64))

def AllocBody807_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1360#64))

def AllocBody807_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1368#64))

def AllocBody807_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody807_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody807_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def AllocBody807_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody807_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody807_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody807_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody807_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def AllocBody807_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody807_70 : StackLang.HolProg 64 :=
.seq AllocBody807_68 AllocBody807_69

def AllocBody807_71 : StackLang.HolProg 64 :=
.seq AllocBody807_67 AllocBody807_70

def AllocBody807_72 : StackLang.HolProg 64 :=
.seq AllocBody807_66 AllocBody807_71

def AllocBody807_73 : StackLang.HolProg 64 :=
.seq AllocBody807_65 AllocBody807_72

def AllocBody807_74 : StackLang.HolProg 64 :=
.seq AllocBody807_64 AllocBody807_73

def AllocBody807_75 : StackLang.HolProg 64 :=
.seq AllocBody807_63 AllocBody807_74

def AllocBody807_76 : StackLang.HolProg 64 :=
.seq AllocBody807_62 AllocBody807_75

def AllocBody807_77 : StackLang.HolProg 64 :=
.seq AllocBody807_61 AllocBody807_76

def AllocBody807_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3955#64)

def AllocBody807_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_81 : StackLang.HolProg 64 :=
.seq AllocBody807_79 AllocBody807_80

def AllocBody807_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody807_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody807_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 5

def AllocBody807_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody807_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody807_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody807_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody807_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_92 : StackLang.HolProg 64 :=
.seq AllocBody807_90 AllocBody807_91

def AllocBody807_93 : StackLang.HolProg 64 :=
.seq AllocBody807_89 AllocBody807_92

def AllocBody807_94 : StackLang.HolProg 64 :=
.seq AllocBody807_88 AllocBody807_93

def AllocBody807_95 : StackLang.HolProg 64 :=
.seq AllocBody807_87 AllocBody807_94

def AllocBody807_96 : StackLang.HolProg 64 :=
.seq AllocBody807_86 AllocBody807_95

def AllocBody807_97 : StackLang.HolProg 64 :=
.seq AllocBody807_85 AllocBody807_96

def AllocBody807_98 : StackLang.HolProg 64 :=
.seq AllocBody807_84 AllocBody807_97

def AllocBody807_99 : StackLang.HolProg 64 :=
.seq AllocBody807_83 AllocBody807_98

def AllocBody807_100 : StackLang.HolProg 64 :=
.seq AllocBody807_82 AllocBody807_99

def AllocBody807_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody807_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody807_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody807_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody807_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def AllocBody807_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody807_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody807_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody807_112 : StackLang.HolProg 64 :=
.seq AllocBody807_110 AllocBody807_111

def AllocBody807_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody807_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody807_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody807_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody807_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody807_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def AllocBody807_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody807_120 : StackLang.HolProg 64 :=
.seq AllocBody807_118 AllocBody807_119

def AllocBody807_121 : StackLang.HolProg 64 :=
.seq AllocBody807_117 AllocBody807_120

def AllocBody807_122 : StackLang.HolProg 64 :=
.seq AllocBody807_116 AllocBody807_121

def AllocBody807_123 : StackLang.HolProg 64 :=
.seq AllocBody807_115 AllocBody807_122

def AllocBody807_124 : StackLang.HolProg 64 :=
.seq AllocBody807_114 AllocBody807_123

def AllocBody807_125 : StackLang.HolProg 64 :=
.seq AllocBody807_113 AllocBody807_124

def AllocBody807_126 : StackLang.HolProg 64 :=
.seq AllocBody807_112 AllocBody807_125

def AllocBody807_127 : StackLang.HolProg 64 :=
.seq AllocBody807_109 AllocBody807_126

def AllocBody807_128 : StackLang.HolProg 64 :=
.seq AllocBody807_108 AllocBody807_127

def AllocBody807_129 : StackLang.HolProg 64 :=
.seq AllocBody807_107 AllocBody807_128

def AllocBody807_130 : StackLang.HolProg 64 :=
.seq AllocBody807_106 AllocBody807_129

def AllocBody807_131 : StackLang.HolProg 64 :=
.seq AllocBody807_105 AllocBody807_130

def AllocBody807_132 : StackLang.HolProg 64 :=
.seq AllocBody807_104 AllocBody807_131

def AllocBody807_133 : StackLang.HolProg 64 :=
.seq AllocBody807_103 AllocBody807_132

def AllocBody807_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def AllocBody807_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody807_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody807_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody807_138 : StackLang.HolProg 64 :=
.seq AllocBody807_136 AllocBody807_137

def AllocBody807_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody807_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody807_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody807_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody807_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody807_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def AllocBody807_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody807_146 : StackLang.HolProg 64 :=
.seq AllocBody807_144 AllocBody807_145

def AllocBody807_147 : StackLang.HolProg 64 :=
.seq AllocBody807_143 AllocBody807_146

def AllocBody807_148 : StackLang.HolProg 64 :=
.seq AllocBody807_142 AllocBody807_147

def AllocBody807_149 : StackLang.HolProg 64 :=
.seq AllocBody807_141 AllocBody807_148

def AllocBody807_150 : StackLang.HolProg 64 :=
.seq AllocBody807_140 AllocBody807_149

def AllocBody807_151 : StackLang.HolProg 64 :=
.seq AllocBody807_139 AllocBody807_150

def AllocBody807_152 : StackLang.HolProg 64 :=
.seq AllocBody807_138 AllocBody807_151

def AllocBody807_153 : StackLang.HolProg 64 :=
.seq AllocBody807_135 AllocBody807_152

def AllocBody807_154 : StackLang.HolProg 64 :=
.seq AllocBody807_134 AllocBody807_153

def AllocBody807_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody807_156 : StackLang.HolProg 64 :=
.seq AllocBody807_154 AllocBody807_155

def AllocBody807_157 : StackLang.HolProg 64 :=
.call (some (AllocBody807_133, 0, 807, 4)) (Sum.inl 102) (some (AllocBody807_156, 807, 5))

def AllocBody807_158 : StackLang.HolProg 64 :=
.seq AllocBody807_102 AllocBody807_157

def AllocBody807_159 : StackLang.HolProg 64 :=
.seq AllocBody807_101 AllocBody807_158

def AllocBody807_160 : StackLang.HolProg 64 :=
.seq AllocBody807_100 AllocBody807_159

def AllocBody807_161 : StackLang.HolProg 64 :=
.seq AllocBody807_81 AllocBody807_160

def AllocBody807_162 : StackLang.HolProg 64 :=
.seq AllocBody807_78 AllocBody807_161

def AllocBody807_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody807_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody807_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody807_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody807_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody807_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody807_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody807_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody807_184 : StackLang.HolProg 64 :=
.seq AllocBody807_182 AllocBody807_183

def AllocBody807_185 : StackLang.HolProg 64 :=
.seq AllocBody807_181 AllocBody807_184

def AllocBody807_186 : StackLang.HolProg 64 :=
.seq AllocBody807_180 AllocBody807_185

def AllocBody807_187 : StackLang.HolProg 64 :=
.seq AllocBody807_179 AllocBody807_186

def AllocBody807_188 : StackLang.HolProg 64 :=
.seq AllocBody807_178 AllocBody807_187

def AllocBody807_189 : StackLang.HolProg 64 :=
.seq AllocBody807_177 AllocBody807_188

def AllocBody807_190 : StackLang.HolProg 64 :=
.seq AllocBody807_176 AllocBody807_189

def AllocBody807_191 : StackLang.HolProg 64 :=
.seq AllocBody807_175 AllocBody807_190

def AllocBody807_192 : StackLang.HolProg 64 :=
.seq AllocBody807_174 AllocBody807_191

def AllocBody807_193 : StackLang.HolProg 64 :=
.seq AllocBody807_173 AllocBody807_192

def AllocBody807_194 : StackLang.HolProg 64 :=
.seq AllocBody807_172 AllocBody807_193

def AllocBody807_195 : StackLang.HolProg 64 :=
.seq AllocBody807_171 AllocBody807_194

def AllocBody807_196 : StackLang.HolProg 64 :=
.seq AllocBody807_170 AllocBody807_195

def AllocBody807_197 : StackLang.HolProg 64 :=
.seq AllocBody807_169 AllocBody807_196

def AllocBody807_198 : StackLang.HolProg 64 :=
.seq AllocBody807_168 AllocBody807_197

def AllocBody807_199 : StackLang.HolProg 64 :=
.seq AllocBody807_167 AllocBody807_198

def AllocBody807_200 : StackLang.HolProg 64 :=
.seq AllocBody807_166 AllocBody807_199

def AllocBody807_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def AllocBody807_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody807_203 : StackLang.HolProg 64 :=
.seq AllocBody807_201 AllocBody807_202

def AllocBody807_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody807_200 AllocBody807_203

def AllocBody807_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody807_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 11

def AllocBody807_209 : StackLang.HolProg 64 :=
.seq AllocBody807_207 AllocBody807_208

def AllocBody807_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3956#64)

def AllocBody807_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_213 : StackLang.HolProg 64 :=
.seq AllocBody807_211 AllocBody807_212

def AllocBody807_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody807_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody807_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody807_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 7

def AllocBody807_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody807_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody807_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody807_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody807_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_224 : StackLang.HolProg 64 :=
.seq AllocBody807_222 AllocBody807_223

def AllocBody807_225 : StackLang.HolProg 64 :=
.seq AllocBody807_221 AllocBody807_224

def AllocBody807_226 : StackLang.HolProg 64 :=
.seq AllocBody807_220 AllocBody807_225

def AllocBody807_227 : StackLang.HolProg 64 :=
.seq AllocBody807_219 AllocBody807_226

def AllocBody807_228 : StackLang.HolProg 64 :=
.seq AllocBody807_218 AllocBody807_227

def AllocBody807_229 : StackLang.HolProg 64 :=
.seq AllocBody807_217 AllocBody807_228

def AllocBody807_230 : StackLang.HolProg 64 :=
.seq AllocBody807_216 AllocBody807_229

def AllocBody807_231 : StackLang.HolProg 64 :=
.seq AllocBody807_215 AllocBody807_230

def AllocBody807_232 : StackLang.HolProg 64 :=
.seq AllocBody807_214 AllocBody807_231

def AllocBody807_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody807_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody807_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody807_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody807_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody807_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def AllocBody807_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody807_242 : StackLang.HolProg 64 :=
.seq AllocBody807_240 AllocBody807_241

def AllocBody807_243 : StackLang.HolProg 64 :=
.seq AllocBody807_239 AllocBody807_242

def AllocBody807_244 : StackLang.HolProg 64 :=
.seq AllocBody807_238 AllocBody807_243

def AllocBody807_245 : StackLang.HolProg 64 :=
.seq AllocBody807_237 AllocBody807_244

def AllocBody807_246 : StackLang.HolProg 64 :=
.seq AllocBody807_236 AllocBody807_245

def AllocBody807_247 : StackLang.HolProg 64 :=
.seq AllocBody807_235 AllocBody807_246

def AllocBody807_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def AllocBody807_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody807_250 : StackLang.HolProg 64 :=
.seq AllocBody807_248 AllocBody807_249

def AllocBody807_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody807_252 : StackLang.HolProg 64 :=
.seq AllocBody807_250 AllocBody807_251

def AllocBody807_253 : StackLang.HolProg 64 :=
.call (some (AllocBody807_247, 0, 807, 6)) (Sum.inl 117) (some (AllocBody807_252, 807, 7))

def AllocBody807_254 : StackLang.HolProg 64 :=
.seq AllocBody807_234 AllocBody807_253

def AllocBody807_255 : StackLang.HolProg 64 :=
.seq AllocBody807_233 AllocBody807_254

def AllocBody807_256 : StackLang.HolProg 64 :=
.seq AllocBody807_232 AllocBody807_255

def AllocBody807_257 : StackLang.HolProg 64 :=
.seq AllocBody807_213 AllocBody807_256

def AllocBody807_258 : StackLang.HolProg 64 :=
.seq AllocBody807_210 AllocBody807_257

def AllocBody807_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody807_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody807_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody807_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody807_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody807_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody807_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody807_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def AllocBody807_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody807_272 : StackLang.HolProg 64 :=
.seq AllocBody807_270 AllocBody807_271

def AllocBody807_273 : StackLang.HolProg 64 :=
.seq AllocBody807_269 AllocBody807_272

def AllocBody807_274 : StackLang.HolProg 64 :=
.seq AllocBody807_268 AllocBody807_273

def AllocBody807_275 : StackLang.HolProg 64 :=
.seq AllocBody807_267 AllocBody807_274

def AllocBody807_276 : StackLang.HolProg 64 :=
.seq AllocBody807_266 AllocBody807_275

def AllocBody807_277 : StackLang.HolProg 64 :=
.seq AllocBody807_265 AllocBody807_276

def AllocBody807_278 : StackLang.HolProg 64 :=
.seq AllocBody807_264 AllocBody807_277

def AllocBody807_279 : StackLang.HolProg 64 :=
.seq AllocBody807_263 AllocBody807_278

def AllocBody807_280 : StackLang.HolProg 64 :=
.seq AllocBody807_262 AllocBody807_279

def AllocBody807_281 : StackLang.HolProg 64 :=
.seq AllocBody807_261 AllocBody807_280

def AllocBody807_282 : StackLang.HolProg 64 :=
.seq AllocBody807_260 AllocBody807_281

def AllocBody807_283 : StackLang.HolProg 64 :=
.seq AllocBody807_259 AllocBody807_282

def AllocBody807_284 : StackLang.HolProg 64 :=
.seq AllocBody807_258 AllocBody807_283

def AllocBody807_285 : StackLang.HolProg 64 :=
.seq AllocBody807_209 AllocBody807_284

def AllocBody807_286 : StackLang.HolProg 64 :=
.seq AllocBody807_206 AllocBody807_285

def AllocBody807_287 : StackLang.HolProg 64 :=
.seq AllocBody807_205 AllocBody807_286

def AllocBody807_288 : StackLang.HolProg 64 :=
.seq AllocBody807_204 AllocBody807_287

def AllocBody807_289 : StackLang.HolProg 64 :=
.seq AllocBody807_165 AllocBody807_288

def AllocBody807_290 : StackLang.HolProg 64 :=
.seq AllocBody807_164 AllocBody807_289

def AllocBody807_291 : StackLang.HolProg 64 :=
.seq AllocBody807_163 AllocBody807_290

def AllocBody807_292 : StackLang.HolProg 64 :=
.seq AllocBody807_162 AllocBody807_291

def AllocBody807_293 : StackLang.HolProg 64 :=
.seq AllocBody807_77 AllocBody807_292

def AllocBody807_294 : StackLang.HolProg 64 :=
.seq AllocBody807_60 AllocBody807_293

def AllocBody807_295 : StackLang.HolProg 64 :=
.seq AllocBody807_59 AllocBody807_294

def AllocBody807_296 : StackLang.HolProg 64 :=
.seq AllocBody807_58 AllocBody807_295

def AllocBody807_297 : StackLang.HolProg 64 :=
.seq AllocBody807_57 AllocBody807_296

def AllocBody807_298 : StackLang.HolProg 64 :=
.seq AllocBody807_56 AllocBody807_297

def AllocBody807_299 : StackLang.HolProg 64 :=
.seq AllocBody807_55 AllocBody807_298

def AllocBody807_300 : StackLang.HolProg 64 :=
.seq AllocBody807_54 AllocBody807_299

def AllocBody807_301 : StackLang.HolProg 64 :=
.seq AllocBody807_53 AllocBody807_300

def AllocBody807_302 : StackLang.HolProg 64 :=
.seq AllocBody807_52 AllocBody807_301

def AllocBody807_303 : StackLang.HolProg 64 :=
.seq AllocBody807_51 AllocBody807_302

def AllocBody807_304 : StackLang.HolProg 64 :=
.seq AllocBody807_50 AllocBody807_303

def AllocBody807_305 : StackLang.HolProg 64 :=
.seq AllocBody807_49 AllocBody807_304

def AllocBody807_306 : StackLang.HolProg 64 :=
.seq AllocBody807_48 AllocBody807_305

def AllocBody807_307 : StackLang.HolProg 64 :=
.seq AllocBody807_5 AllocBody807_306

def AllocBody807_308 : StackLang.HolProg 64 :=
.seq AllocBody807_2 AllocBody807_307

def AllocBody807_309 : StackLang.HolProg 64 :=
.seq AllocBody807_1 AllocBody807_308

def AllocBody807_310 : StackLang.HolProg 64 :=
.seq AllocBody807_0 AllocBody807_309

def Alloc807 : Nat × StackLang.HolProg 64 := (807, AllocBody807_310)
theorem Alloc807_eq : StackAlloc.progComp (807, raw807) = Alloc807 := by
  kernel_rfl
#print axioms Alloc807_eq
end InitECandidate.Proofs.BackendStages
