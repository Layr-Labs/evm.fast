import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function807
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody807_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 12

def rawBody807_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody807_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody807_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def rawBody807_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 8

def rawBody807_5 : StackLang.HolProg 64 :=
.seq rawBody807_3 rawBody807_4

def rawBody807_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3954#64)

def rawBody807_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_9 : StackLang.HolProg 64 :=
.seq rawBody807_7 rawBody807_8

def rawBody807_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody807_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody807_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 3

def rawBody807_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody807_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody807_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody807_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody807_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_20 : StackLang.HolProg 64 :=
.seq rawBody807_18 rawBody807_19

def rawBody807_21 : StackLang.HolProg 64 :=
.seq rawBody807_17 rawBody807_20

def rawBody807_22 : StackLang.HolProg 64 :=
.seq rawBody807_16 rawBody807_21

def rawBody807_23 : StackLang.HolProg 64 :=
.seq rawBody807_15 rawBody807_22

def rawBody807_24 : StackLang.HolProg 64 :=
.seq rawBody807_14 rawBody807_23

def rawBody807_25 : StackLang.HolProg 64 :=
.seq rawBody807_13 rawBody807_24

def rawBody807_26 : StackLang.HolProg 64 :=
.seq rawBody807_12 rawBody807_25

def rawBody807_27 : StackLang.HolProg 64 :=
.seq rawBody807_11 rawBody807_26

def rawBody807_28 : StackLang.HolProg 64 :=
.seq rawBody807_10 rawBody807_27

def rawBody807_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody807_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody807_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody807_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody807_36 : StackLang.HolProg 64 :=
.seq rawBody807_34 rawBody807_35

def rawBody807_37 : StackLang.HolProg 64 :=
.seq rawBody807_33 rawBody807_36

def rawBody807_38 : StackLang.HolProg 64 :=
.seq rawBody807_32 rawBody807_37

def rawBody807_39 : StackLang.HolProg 64 :=
.seq rawBody807_31 rawBody807_38

def rawBody807_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody807_42 : StackLang.HolProg 64 :=
.seq rawBody807_40 rawBody807_41

def rawBody807_43 : StackLang.HolProg 64 :=
.call (some (rawBody807_39, 0, 807, 2)) (Sum.inl 146) (some (rawBody807_42, 807, 3))

def rawBody807_44 : StackLang.HolProg 64 :=
.seq rawBody807_30 rawBody807_43

def rawBody807_45 : StackLang.HolProg 64 :=
.seq rawBody807_29 rawBody807_44

def rawBody807_46 : StackLang.HolProg 64 :=
.seq rawBody807_28 rawBody807_45

def rawBody807_47 : StackLang.HolProg 64 :=
.seq rawBody807_9 rawBody807_46

def rawBody807_48 : StackLang.HolProg 64 :=
.seq rawBody807_6 rawBody807_47

def rawBody807_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody807_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody807_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody807_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody807_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1344#64))

def rawBody807_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1352#64))

def rawBody807_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1360#64))

def rawBody807_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 1368#64))

def rawBody807_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def rawBody807_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody807_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 7

def rawBody807_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody807_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody807_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody807_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody807_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 2

def rawBody807_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody807_70 : StackLang.HolProg 64 :=
.seq rawBody807_68 rawBody807_69

def rawBody807_71 : StackLang.HolProg 64 :=
.seq rawBody807_67 rawBody807_70

def rawBody807_72 : StackLang.HolProg 64 :=
.seq rawBody807_66 rawBody807_71

def rawBody807_73 : StackLang.HolProg 64 :=
.seq rawBody807_65 rawBody807_72

def rawBody807_74 : StackLang.HolProg 64 :=
.seq rawBody807_64 rawBody807_73

def rawBody807_75 : StackLang.HolProg 64 :=
.seq rawBody807_63 rawBody807_74

def rawBody807_76 : StackLang.HolProg 64 :=
.seq rawBody807_62 rawBody807_75

def rawBody807_77 : StackLang.HolProg 64 :=
.seq rawBody807_61 rawBody807_76

def rawBody807_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3955#64)

def rawBody807_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_81 : StackLang.HolProg 64 :=
.seq rawBody807_79 rawBody807_80

def rawBody807_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody807_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody807_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 5

def rawBody807_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody807_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody807_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody807_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody807_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_92 : StackLang.HolProg 64 :=
.seq rawBody807_90 rawBody807_91

def rawBody807_93 : StackLang.HolProg 64 :=
.seq rawBody807_89 rawBody807_92

def rawBody807_94 : StackLang.HolProg 64 :=
.seq rawBody807_88 rawBody807_93

def rawBody807_95 : StackLang.HolProg 64 :=
.seq rawBody807_87 rawBody807_94

def rawBody807_96 : StackLang.HolProg 64 :=
.seq rawBody807_86 rawBody807_95

def rawBody807_97 : StackLang.HolProg 64 :=
.seq rawBody807_85 rawBody807_96

def rawBody807_98 : StackLang.HolProg 64 :=
.seq rawBody807_84 rawBody807_97

def rawBody807_99 : StackLang.HolProg 64 :=
.seq rawBody807_83 rawBody807_98

def rawBody807_100 : StackLang.HolProg 64 :=
.seq rawBody807_82 rawBody807_99

def rawBody807_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody807_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody807_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody807_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody807_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def rawBody807_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody807_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody807_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody807_112 : StackLang.HolProg 64 :=
.seq rawBody807_110 rawBody807_111

def rawBody807_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody807_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody807_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody807_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody807_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody807_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def rawBody807_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody807_120 : StackLang.HolProg 64 :=
.seq rawBody807_118 rawBody807_119

def rawBody807_121 : StackLang.HolProg 64 :=
.seq rawBody807_117 rawBody807_120

def rawBody807_122 : StackLang.HolProg 64 :=
.seq rawBody807_116 rawBody807_121

def rawBody807_123 : StackLang.HolProg 64 :=
.seq rawBody807_115 rawBody807_122

def rawBody807_124 : StackLang.HolProg 64 :=
.seq rawBody807_114 rawBody807_123

def rawBody807_125 : StackLang.HolProg 64 :=
.seq rawBody807_113 rawBody807_124

def rawBody807_126 : StackLang.HolProg 64 :=
.seq rawBody807_112 rawBody807_125

def rawBody807_127 : StackLang.HolProg 64 :=
.seq rawBody807_109 rawBody807_126

def rawBody807_128 : StackLang.HolProg 64 :=
.seq rawBody807_108 rawBody807_127

def rawBody807_129 : StackLang.HolProg 64 :=
.seq rawBody807_107 rawBody807_128

def rawBody807_130 : StackLang.HolProg 64 :=
.seq rawBody807_106 rawBody807_129

def rawBody807_131 : StackLang.HolProg 64 :=
.seq rawBody807_105 rawBody807_130

def rawBody807_132 : StackLang.HolProg 64 :=
.seq rawBody807_104 rawBody807_131

def rawBody807_133 : StackLang.HolProg 64 :=
.seq rawBody807_103 rawBody807_132

def rawBody807_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 11

def rawBody807_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody807_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def rawBody807_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody807_138 : StackLang.HolProg 64 :=
.seq rawBody807_136 rawBody807_137

def rawBody807_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def rawBody807_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody807_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody807_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody807_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody807_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 2

def rawBody807_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody807_146 : StackLang.HolProg 64 :=
.seq rawBody807_144 rawBody807_145

def rawBody807_147 : StackLang.HolProg 64 :=
.seq rawBody807_143 rawBody807_146

def rawBody807_148 : StackLang.HolProg 64 :=
.seq rawBody807_142 rawBody807_147

def rawBody807_149 : StackLang.HolProg 64 :=
.seq rawBody807_141 rawBody807_148

def rawBody807_150 : StackLang.HolProg 64 :=
.seq rawBody807_140 rawBody807_149

def rawBody807_151 : StackLang.HolProg 64 :=
.seq rawBody807_139 rawBody807_150

def rawBody807_152 : StackLang.HolProg 64 :=
.seq rawBody807_138 rawBody807_151

def rawBody807_153 : StackLang.HolProg 64 :=
.seq rawBody807_135 rawBody807_152

def rawBody807_154 : StackLang.HolProg 64 :=
.seq rawBody807_134 rawBody807_153

def rawBody807_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody807_156 : StackLang.HolProg 64 :=
.seq rawBody807_154 rawBody807_155

def rawBody807_157 : StackLang.HolProg 64 :=
.call (some (rawBody807_133, 0, 807, 4)) (Sum.inl 102) (some (rawBody807_156, 807, 5))

def rawBody807_158 : StackLang.HolProg 64 :=
.seq rawBody807_102 rawBody807_157

def rawBody807_159 : StackLang.HolProg 64 :=
.seq rawBody807_101 rawBody807_158

def rawBody807_160 : StackLang.HolProg 64 :=
.seq rawBody807_100 rawBody807_159

def rawBody807_161 : StackLang.HolProg 64 :=
.seq rawBody807_81 rawBody807_160

def rawBody807_162 : StackLang.HolProg 64 :=
.seq rawBody807_78 rawBody807_161

def rawBody807_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody807_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def rawBody807_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody807_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody807_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody807_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody807_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def rawBody807_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody807_184 : StackLang.HolProg 64 :=
.seq rawBody807_182 rawBody807_183

def rawBody807_185 : StackLang.HolProg 64 :=
.seq rawBody807_181 rawBody807_184

def rawBody807_186 : StackLang.HolProg 64 :=
.seq rawBody807_180 rawBody807_185

def rawBody807_187 : StackLang.HolProg 64 :=
.seq rawBody807_179 rawBody807_186

def rawBody807_188 : StackLang.HolProg 64 :=
.seq rawBody807_178 rawBody807_187

def rawBody807_189 : StackLang.HolProg 64 :=
.seq rawBody807_177 rawBody807_188

def rawBody807_190 : StackLang.HolProg 64 :=
.seq rawBody807_176 rawBody807_189

def rawBody807_191 : StackLang.HolProg 64 :=
.seq rawBody807_175 rawBody807_190

def rawBody807_192 : StackLang.HolProg 64 :=
.seq rawBody807_174 rawBody807_191

def rawBody807_193 : StackLang.HolProg 64 :=
.seq rawBody807_173 rawBody807_192

def rawBody807_194 : StackLang.HolProg 64 :=
.seq rawBody807_172 rawBody807_193

def rawBody807_195 : StackLang.HolProg 64 :=
.seq rawBody807_171 rawBody807_194

def rawBody807_196 : StackLang.HolProg 64 :=
.seq rawBody807_170 rawBody807_195

def rawBody807_197 : StackLang.HolProg 64 :=
.seq rawBody807_169 rawBody807_196

def rawBody807_198 : StackLang.HolProg 64 :=
.seq rawBody807_168 rawBody807_197

def rawBody807_199 : StackLang.HolProg 64 :=
.seq rawBody807_167 rawBody807_198

def rawBody807_200 : StackLang.HolProg 64 :=
.seq rawBody807_166 rawBody807_199

def rawBody807_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody807_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def rawBody807_203 : StackLang.HolProg 64 :=
.seq rawBody807_201 rawBody807_202

def rawBody807_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody807_200 rawBody807_203

def rawBody807_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody807_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 11

def rawBody807_209 : StackLang.HolProg 64 :=
.seq rawBody807_207 rawBody807_208

def rawBody807_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3956#64)

def rawBody807_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_213 : StackLang.HolProg 64 :=
.seq rawBody807_211 rawBody807_212

def rawBody807_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody807_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody807_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody807_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 807 7

def rawBody807_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody807_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody807_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody807_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody807_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_224 : StackLang.HolProg 64 :=
.seq rawBody807_222 rawBody807_223

def rawBody807_225 : StackLang.HolProg 64 :=
.seq rawBody807_221 rawBody807_224

def rawBody807_226 : StackLang.HolProg 64 :=
.seq rawBody807_220 rawBody807_225

def rawBody807_227 : StackLang.HolProg 64 :=
.seq rawBody807_219 rawBody807_226

def rawBody807_228 : StackLang.HolProg 64 :=
.seq rawBody807_218 rawBody807_227

def rawBody807_229 : StackLang.HolProg 64 :=
.seq rawBody807_217 rawBody807_228

def rawBody807_230 : StackLang.HolProg 64 :=
.seq rawBody807_216 rawBody807_229

def rawBody807_231 : StackLang.HolProg 64 :=
.seq rawBody807_215 rawBody807_230

def rawBody807_232 : StackLang.HolProg 64 :=
.seq rawBody807_214 rawBody807_231

def rawBody807_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody807_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody807_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody807_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody807_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody807_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def rawBody807_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody807_242 : StackLang.HolProg 64 :=
.seq rawBody807_240 rawBody807_241

def rawBody807_243 : StackLang.HolProg 64 :=
.seq rawBody807_239 rawBody807_242

def rawBody807_244 : StackLang.HolProg 64 :=
.seq rawBody807_238 rawBody807_243

def rawBody807_245 : StackLang.HolProg 64 :=
.seq rawBody807_237 rawBody807_244

def rawBody807_246 : StackLang.HolProg 64 :=
.seq rawBody807_236 rawBody807_245

def rawBody807_247 : StackLang.HolProg 64 :=
.seq rawBody807_235 rawBody807_246

def rawBody807_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def rawBody807_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def rawBody807_250 : StackLang.HolProg 64 :=
.seq rawBody807_248 rawBody807_249

def rawBody807_251 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody807_252 : StackLang.HolProg 64 :=
.seq rawBody807_250 rawBody807_251

def rawBody807_253 : StackLang.HolProg 64 :=
.call (some (rawBody807_247, 0, 807, 6)) (Sum.inl 117) (some (rawBody807_252, 807, 7))

def rawBody807_254 : StackLang.HolProg 64 :=
.seq rawBody807_234 rawBody807_253

def rawBody807_255 : StackLang.HolProg 64 :=
.seq rawBody807_233 rawBody807_254

def rawBody807_256 : StackLang.HolProg 64 :=
.seq rawBody807_232 rawBody807_255

def rawBody807_257 : StackLang.HolProg 64 :=
.seq rawBody807_213 rawBody807_256

def rawBody807_258 : StackLang.HolProg 64 :=
.seq rawBody807_210 rawBody807_257

def rawBody807_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody807_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody807_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody807_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody807_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody807_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody807_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody807_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 12

def rawBody807_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody807_272 : StackLang.HolProg 64 :=
.seq rawBody807_270 rawBody807_271

def rawBody807_273 : StackLang.HolProg 64 :=
.seq rawBody807_269 rawBody807_272

def rawBody807_274 : StackLang.HolProg 64 :=
.seq rawBody807_268 rawBody807_273

def rawBody807_275 : StackLang.HolProg 64 :=
.seq rawBody807_267 rawBody807_274

def rawBody807_276 : StackLang.HolProg 64 :=
.seq rawBody807_266 rawBody807_275

def rawBody807_277 : StackLang.HolProg 64 :=
.seq rawBody807_265 rawBody807_276

def rawBody807_278 : StackLang.HolProg 64 :=
.seq rawBody807_264 rawBody807_277

def rawBody807_279 : StackLang.HolProg 64 :=
.seq rawBody807_263 rawBody807_278

def rawBody807_280 : StackLang.HolProg 64 :=
.seq rawBody807_262 rawBody807_279

def rawBody807_281 : StackLang.HolProg 64 :=
.seq rawBody807_261 rawBody807_280

def rawBody807_282 : StackLang.HolProg 64 :=
.seq rawBody807_260 rawBody807_281

def rawBody807_283 : StackLang.HolProg 64 :=
.seq rawBody807_259 rawBody807_282

def rawBody807_284 : StackLang.HolProg 64 :=
.seq rawBody807_258 rawBody807_283

def rawBody807_285 : StackLang.HolProg 64 :=
.seq rawBody807_209 rawBody807_284

def rawBody807_286 : StackLang.HolProg 64 :=
.seq rawBody807_206 rawBody807_285

def rawBody807_287 : StackLang.HolProg 64 :=
.seq rawBody807_205 rawBody807_286

def rawBody807_288 : StackLang.HolProg 64 :=
.seq rawBody807_204 rawBody807_287

def rawBody807_289 : StackLang.HolProg 64 :=
.seq rawBody807_165 rawBody807_288

def rawBody807_290 : StackLang.HolProg 64 :=
.seq rawBody807_164 rawBody807_289

def rawBody807_291 : StackLang.HolProg 64 :=
.seq rawBody807_163 rawBody807_290

def rawBody807_292 : StackLang.HolProg 64 :=
.seq rawBody807_162 rawBody807_291

def rawBody807_293 : StackLang.HolProg 64 :=
.seq rawBody807_77 rawBody807_292

def rawBody807_294 : StackLang.HolProg 64 :=
.seq rawBody807_60 rawBody807_293

def rawBody807_295 : StackLang.HolProg 64 :=
.seq rawBody807_59 rawBody807_294

def rawBody807_296 : StackLang.HolProg 64 :=
.seq rawBody807_58 rawBody807_295

def rawBody807_297 : StackLang.HolProg 64 :=
.seq rawBody807_57 rawBody807_296

def rawBody807_298 : StackLang.HolProg 64 :=
.seq rawBody807_56 rawBody807_297

def rawBody807_299 : StackLang.HolProg 64 :=
.seq rawBody807_55 rawBody807_298

def rawBody807_300 : StackLang.HolProg 64 :=
.seq rawBody807_54 rawBody807_299

def rawBody807_301 : StackLang.HolProg 64 :=
.seq rawBody807_53 rawBody807_300

def rawBody807_302 : StackLang.HolProg 64 :=
.seq rawBody807_52 rawBody807_301

def rawBody807_303 : StackLang.HolProg 64 :=
.seq rawBody807_51 rawBody807_302

def rawBody807_304 : StackLang.HolProg 64 :=
.seq rawBody807_50 rawBody807_303

def rawBody807_305 : StackLang.HolProg 64 :=
.seq rawBody807_49 rawBody807_304

def rawBody807_306 : StackLang.HolProg 64 :=
.seq rawBody807_48 rawBody807_305

def rawBody807_307 : StackLang.HolProg 64 :=
.seq rawBody807_5 rawBody807_306

def rawBody807_308 : StackLang.HolProg 64 :=
.seq rawBody807_2 rawBody807_307

def rawBody807_309 : StackLang.HolProg 64 :=
.seq rawBody807_1 rawBody807_308

def rawBody807_310 : StackLang.HolProg 64 :=
.seq rawBody807_0 rawBody807_309

def raw807 : StackLang.HolProg 64 := rawBody807_310
theorem raw807_eq : StackRawCall.compTop RawInfo.rawInfo (function807 (.list [])).1 = raw807 := by
  kernel_rfl
#print axioms raw807_eq
end InitECandidate.Proofs.BackendStages
