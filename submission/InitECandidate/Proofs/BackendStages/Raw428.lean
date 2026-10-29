import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function428
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody428_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody428_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody428_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody428_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody428_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody428_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody428_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody428_7 : StackLang.HolProg 64 :=
.seq rawBody428_5 rawBody428_6

def rawBody428_8 : StackLang.HolProg 64 :=
.seq rawBody428_4 rawBody428_7

def rawBody428_9 : StackLang.HolProg 64 :=
.seq rawBody428_3 rawBody428_8

def rawBody428_10 : StackLang.HolProg 64 :=
.seq rawBody428_2 rawBody428_9

def rawBody428_11 : StackLang.HolProg 64 :=
.seq rawBody428_1 rawBody428_10

def rawBody428_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1283#64)

def rawBody428_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_15 : StackLang.HolProg 64 :=
.seq rawBody428_13 rawBody428_14

def rawBody428_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody428_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody428_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 3

def rawBody428_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody428_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody428_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody428_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody428_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_26 : StackLang.HolProg 64 :=
.seq rawBody428_24 rawBody428_25

def rawBody428_27 : StackLang.HolProg 64 :=
.seq rawBody428_23 rawBody428_26

def rawBody428_28 : StackLang.HolProg 64 :=
.seq rawBody428_22 rawBody428_27

def rawBody428_29 : StackLang.HolProg 64 :=
.seq rawBody428_21 rawBody428_28

def rawBody428_30 : StackLang.HolProg 64 :=
.seq rawBody428_20 rawBody428_29

def rawBody428_31 : StackLang.HolProg 64 :=
.seq rawBody428_19 rawBody428_30

def rawBody428_32 : StackLang.HolProg 64 :=
.seq rawBody428_18 rawBody428_31

def rawBody428_33 : StackLang.HolProg 64 :=
.seq rawBody428_17 rawBody428_32

def rawBody428_34 : StackLang.HolProg 64 :=
.seq rawBody428_16 rawBody428_33

def rawBody428_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody428_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody428_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody428_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody428_42 : StackLang.HolProg 64 :=
.seq rawBody428_40 rawBody428_41

def rawBody428_43 : StackLang.HolProg 64 :=
.seq rawBody428_39 rawBody428_42

def rawBody428_44 : StackLang.HolProg 64 :=
.seq rawBody428_38 rawBody428_43

def rawBody428_45 : StackLang.HolProg 64 :=
.seq rawBody428_37 rawBody428_44

def rawBody428_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody428_48 : StackLang.HolProg 64 :=
.seq rawBody428_46 rawBody428_47

def rawBody428_49 : StackLang.HolProg 64 :=
.call (some (rawBody428_45, 0, 428, 2)) (Sum.inl 407) (some (rawBody428_48, 428, 3))

def rawBody428_50 : StackLang.HolProg 64 :=
.seq rawBody428_36 rawBody428_49

def rawBody428_51 : StackLang.HolProg 64 :=
.seq rawBody428_35 rawBody428_50

def rawBody428_52 : StackLang.HolProg 64 :=
.seq rawBody428_34 rawBody428_51

def rawBody428_53 : StackLang.HolProg 64 :=
.seq rawBody428_15 rawBody428_52

def rawBody428_54 : StackLang.HolProg 64 :=
.seq rawBody428_12 rawBody428_53

def rawBody428_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody428_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody428_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1284#64)

def rawBody428_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_60 : StackLang.HolProg 64 :=
.seq rawBody428_58 rawBody428_59

def rawBody428_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody428_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody428_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 5

def rawBody428_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody428_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody428_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody428_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody428_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_71 : StackLang.HolProg 64 :=
.seq rawBody428_69 rawBody428_70

def rawBody428_72 : StackLang.HolProg 64 :=
.seq rawBody428_68 rawBody428_71

def rawBody428_73 : StackLang.HolProg 64 :=
.seq rawBody428_67 rawBody428_72

def rawBody428_74 : StackLang.HolProg 64 :=
.seq rawBody428_66 rawBody428_73

def rawBody428_75 : StackLang.HolProg 64 :=
.seq rawBody428_65 rawBody428_74

def rawBody428_76 : StackLang.HolProg 64 :=
.seq rawBody428_64 rawBody428_75

def rawBody428_77 : StackLang.HolProg 64 :=
.seq rawBody428_63 rawBody428_76

def rawBody428_78 : StackLang.HolProg 64 :=
.seq rawBody428_62 rawBody428_77

def rawBody428_79 : StackLang.HolProg 64 :=
.seq rawBody428_61 rawBody428_78

def rawBody428_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody428_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody428_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody428_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody428_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody428_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody428_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody428_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody428_91 : StackLang.HolProg 64 :=
.seq rawBody428_89 rawBody428_90

def rawBody428_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody428_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody428_94 : StackLang.HolProg 64 :=
.seq rawBody428_92 rawBody428_93

def rawBody428_95 : StackLang.HolProg 64 :=
.seq rawBody428_91 rawBody428_94

def rawBody428_96 : StackLang.HolProg 64 :=
.seq rawBody428_88 rawBody428_95

def rawBody428_97 : StackLang.HolProg 64 :=
.seq rawBody428_87 rawBody428_96

def rawBody428_98 : StackLang.HolProg 64 :=
.seq rawBody428_86 rawBody428_97

def rawBody428_99 : StackLang.HolProg 64 :=
.seq rawBody428_85 rawBody428_98

def rawBody428_100 : StackLang.HolProg 64 :=
.seq rawBody428_84 rawBody428_99

def rawBody428_101 : StackLang.HolProg 64 :=
.seq rawBody428_83 rawBody428_100

def rawBody428_102 : StackLang.HolProg 64 :=
.seq rawBody428_82 rawBody428_101

def rawBody428_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody428_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody428_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody428_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody428_107 : StackLang.HolProg 64 :=
.seq rawBody428_105 rawBody428_106

def rawBody428_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 2

def rawBody428_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody428_110 : StackLang.HolProg 64 :=
.seq rawBody428_108 rawBody428_109

def rawBody428_111 : StackLang.HolProg 64 :=
.seq rawBody428_107 rawBody428_110

def rawBody428_112 : StackLang.HolProg 64 :=
.seq rawBody428_104 rawBody428_111

def rawBody428_113 : StackLang.HolProg 64 :=
.seq rawBody428_103 rawBody428_112

def rawBody428_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody428_115 : StackLang.HolProg 64 :=
.seq rawBody428_113 rawBody428_114

def rawBody428_116 : StackLang.HolProg 64 :=
.call (some (rawBody428_102, 0, 428, 4)) (Sum.inl 395) (some (rawBody428_115, 428, 5))

def rawBody428_117 : StackLang.HolProg 64 :=
.seq rawBody428_81 rawBody428_116

def rawBody428_118 : StackLang.HolProg 64 :=
.seq rawBody428_80 rawBody428_117

def rawBody428_119 : StackLang.HolProg 64 :=
.seq rawBody428_79 rawBody428_118

def rawBody428_120 : StackLang.HolProg 64 :=
.seq rawBody428_60 rawBody428_119

def rawBody428_121 : StackLang.HolProg 64 :=
.seq rawBody428_57 rawBody428_120

def rawBody428_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody428_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody428_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody428_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody428_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def rawBody428_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody428_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1285#64)

def rawBody428_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_135 : StackLang.HolProg 64 :=
.seq rawBody428_133 rawBody428_134

def rawBody428_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody428_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody428_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 7

def rawBody428_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody428_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody428_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody428_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody428_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_146 : StackLang.HolProg 64 :=
.seq rawBody428_144 rawBody428_145

def rawBody428_147 : StackLang.HolProg 64 :=
.seq rawBody428_143 rawBody428_146

def rawBody428_148 : StackLang.HolProg 64 :=
.seq rawBody428_142 rawBody428_147

def rawBody428_149 : StackLang.HolProg 64 :=
.seq rawBody428_141 rawBody428_148

def rawBody428_150 : StackLang.HolProg 64 :=
.seq rawBody428_140 rawBody428_149

def rawBody428_151 : StackLang.HolProg 64 :=
.seq rawBody428_139 rawBody428_150

def rawBody428_152 : StackLang.HolProg 64 :=
.seq rawBody428_138 rawBody428_151

def rawBody428_153 : StackLang.HolProg 64 :=
.seq rawBody428_137 rawBody428_152

def rawBody428_154 : StackLang.HolProg 64 :=
.seq rawBody428_136 rawBody428_153

def rawBody428_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody428_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody428_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody428_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody428_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody428_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody428_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody428_165 : StackLang.HolProg 64 :=
.seq rawBody428_163 rawBody428_164

def rawBody428_166 : StackLang.HolProg 64 :=
.seq rawBody428_162 rawBody428_165

def rawBody428_167 : StackLang.HolProg 64 :=
.seq rawBody428_161 rawBody428_166

def rawBody428_168 : StackLang.HolProg 64 :=
.seq rawBody428_160 rawBody428_167

def rawBody428_169 : StackLang.HolProg 64 :=
.seq rawBody428_159 rawBody428_168

def rawBody428_170 : StackLang.HolProg 64 :=
.seq rawBody428_158 rawBody428_169

def rawBody428_171 : StackLang.HolProg 64 :=
.seq rawBody428_157 rawBody428_170

def rawBody428_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 5

def rawBody428_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody428_174 : StackLang.HolProg 64 :=
.seq rawBody428_172 rawBody428_173

def rawBody428_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody428_176 : StackLang.HolProg 64 :=
.seq rawBody428_174 rawBody428_175

def rawBody428_177 : StackLang.HolProg 64 :=
.call (some (rawBody428_171, 0, 428, 6)) (Sum.inl 116) (some (rawBody428_176, 428, 7))

def rawBody428_178 : StackLang.HolProg 64 :=
.seq rawBody428_156 rawBody428_177

def rawBody428_179 : StackLang.HolProg 64 :=
.seq rawBody428_155 rawBody428_178

def rawBody428_180 : StackLang.HolProg 64 :=
.seq rawBody428_154 rawBody428_179

def rawBody428_181 : StackLang.HolProg 64 :=
.seq rawBody428_135 rawBody428_180

def rawBody428_182 : StackLang.HolProg 64 :=
.seq rawBody428_132 rawBody428_181

def rawBody428_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody428_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody428_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody428_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody428_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody428_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody428_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody428_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1286#64)

def rawBody428_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_198 : StackLang.HolProg 64 :=
.seq rawBody428_196 rawBody428_197

def rawBody428_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody428_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody428_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody428_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 428 9

def rawBody428_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody428_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody428_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody428_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody428_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_209 : StackLang.HolProg 64 :=
.seq rawBody428_207 rawBody428_208

def rawBody428_210 : StackLang.HolProg 64 :=
.seq rawBody428_206 rawBody428_209

def rawBody428_211 : StackLang.HolProg 64 :=
.seq rawBody428_205 rawBody428_210

def rawBody428_212 : StackLang.HolProg 64 :=
.seq rawBody428_204 rawBody428_211

def rawBody428_213 : StackLang.HolProg 64 :=
.seq rawBody428_203 rawBody428_212

def rawBody428_214 : StackLang.HolProg 64 :=
.seq rawBody428_202 rawBody428_213

def rawBody428_215 : StackLang.HolProg 64 :=
.seq rawBody428_201 rawBody428_214

def rawBody428_216 : StackLang.HolProg 64 :=
.seq rawBody428_200 rawBody428_215

def rawBody428_217 : StackLang.HolProg 64 :=
.seq rawBody428_199 rawBody428_216

def rawBody428_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody428_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody428_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody428_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody428_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody428_225 : StackLang.HolProg 64 :=
.seq rawBody428_223 rawBody428_224

def rawBody428_226 : StackLang.HolProg 64 :=
.seq rawBody428_222 rawBody428_225

def rawBody428_227 : StackLang.HolProg 64 :=
.seq rawBody428_221 rawBody428_226

def rawBody428_228 : StackLang.HolProg 64 :=
.seq rawBody428_220 rawBody428_227

def rawBody428_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody428_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody428_231 : StackLang.HolProg 64 :=
.seq rawBody428_229 rawBody428_230

def rawBody428_232 : StackLang.HolProg 64 :=
.call (some (rawBody428_228, 0, 428, 8)) (Sum.inl 423) (some (rawBody428_231, 428, 9))

def rawBody428_233 : StackLang.HolProg 64 :=
.seq rawBody428_219 rawBody428_232

def rawBody428_234 : StackLang.HolProg 64 :=
.seq rawBody428_218 rawBody428_233

def rawBody428_235 : StackLang.HolProg 64 :=
.seq rawBody428_217 rawBody428_234

def rawBody428_236 : StackLang.HolProg 64 :=
.seq rawBody428_198 rawBody428_235

def rawBody428_237 : StackLang.HolProg 64 :=
.seq rawBody428_195 rawBody428_236

def rawBody428_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody428_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody428_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody428_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody428_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody428_243 : StackLang.HolProg 64 :=
.seq rawBody428_241 rawBody428_242

def rawBody428_244 : StackLang.HolProg 64 :=
.seq rawBody428_240 rawBody428_243

def rawBody428_245 : StackLang.HolProg 64 :=
.seq rawBody428_239 rawBody428_244

def rawBody428_246 : StackLang.HolProg 64 :=
.seq rawBody428_238 rawBody428_245

def rawBody428_247 : StackLang.HolProg 64 :=
.seq rawBody428_237 rawBody428_246

def rawBody428_248 : StackLang.HolProg 64 :=
.seq rawBody428_194 rawBody428_247

def rawBody428_249 : StackLang.HolProg 64 :=
.seq rawBody428_193 rawBody428_248

def rawBody428_250 : StackLang.HolProg 64 :=
.seq rawBody428_192 rawBody428_249

def rawBody428_251 : StackLang.HolProg 64 :=
.seq rawBody428_191 rawBody428_250

def rawBody428_252 : StackLang.HolProg 64 :=
.seq rawBody428_190 rawBody428_251

def rawBody428_253 : StackLang.HolProg 64 :=
.seq rawBody428_189 rawBody428_252

def rawBody428_254 : StackLang.HolProg 64 :=
.seq rawBody428_188 rawBody428_253

def rawBody428_255 : StackLang.HolProg 64 :=
.seq rawBody428_187 rawBody428_254

def rawBody428_256 : StackLang.HolProg 64 :=
.seq rawBody428_186 rawBody428_255

def rawBody428_257 : StackLang.HolProg 64 :=
.seq rawBody428_185 rawBody428_256

def rawBody428_258 : StackLang.HolProg 64 :=
.seq rawBody428_184 rawBody428_257

def rawBody428_259 : StackLang.HolProg 64 :=
.seq rawBody428_183 rawBody428_258

def rawBody428_260 : StackLang.HolProg 64 :=
.seq rawBody428_182 rawBody428_259

def rawBody428_261 : StackLang.HolProg 64 :=
.seq rawBody428_131 rawBody428_260

def rawBody428_262 : StackLang.HolProg 64 :=
.seq rawBody428_130 rawBody428_261

def rawBody428_263 : StackLang.HolProg 64 :=
.seq rawBody428_129 rawBody428_262

def rawBody428_264 : StackLang.HolProg 64 :=
.seq rawBody428_128 rawBody428_263

def rawBody428_265 : StackLang.HolProg 64 :=
.seq rawBody428_127 rawBody428_264

def rawBody428_266 : StackLang.HolProg 64 :=
.seq rawBody428_126 rawBody428_265

def rawBody428_267 : StackLang.HolProg 64 :=
.seq rawBody428_125 rawBody428_266

def rawBody428_268 : StackLang.HolProg 64 :=
.seq rawBody428_124 rawBody428_267

def rawBody428_269 : StackLang.HolProg 64 :=
.seq rawBody428_123 rawBody428_268

def rawBody428_270 : StackLang.HolProg 64 :=
.seq rawBody428_122 rawBody428_269

def rawBody428_271 : StackLang.HolProg 64 :=
.seq rawBody428_121 rawBody428_270

def rawBody428_272 : StackLang.HolProg 64 :=
.seq rawBody428_56 rawBody428_271

def rawBody428_273 : StackLang.HolProg 64 :=
.seq rawBody428_55 rawBody428_272

def rawBody428_274 : StackLang.HolProg 64 :=
.seq rawBody428_54 rawBody428_273

def rawBody428_275 : StackLang.HolProg 64 :=
.seq rawBody428_11 rawBody428_274

def rawBody428_276 : StackLang.HolProg 64 :=
.seq rawBody428_0 rawBody428_275

def raw428 : StackLang.HolProg 64 := rawBody428_276
theorem raw428_eq : StackRawCall.compTop RawInfo.rawInfo (function428 (.list [])).1 = raw428 := by
  kernel_rfl
#print axioms raw428_eq
end InitECandidate.Proofs.BackendStages
