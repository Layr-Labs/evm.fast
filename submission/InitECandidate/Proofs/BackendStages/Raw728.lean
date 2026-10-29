import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function728
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody728_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def rawBody728_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody728_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody728_3 : StackLang.HolProg 64 :=
.seq rawBody728_1 rawBody728_2

def rawBody728_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody728_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def rawBody728_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def rawBody728_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def rawBody728_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def rawBody728_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def rawBody728_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def rawBody728_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody728_17 : StackLang.HolProg 64 :=
.seq rawBody728_15 rawBody728_16

def rawBody728_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3258#64)

def rawBody728_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_21 : StackLang.HolProg 64 :=
.seq rawBody728_19 rawBody728_20

def rawBody728_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody728_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody728_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 3

def rawBody728_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody728_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody728_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody728_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody728_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_32 : StackLang.HolProg 64 :=
.seq rawBody728_30 rawBody728_31

def rawBody728_33 : StackLang.HolProg 64 :=
.seq rawBody728_29 rawBody728_32

def rawBody728_34 : StackLang.HolProg 64 :=
.seq rawBody728_28 rawBody728_33

def rawBody728_35 : StackLang.HolProg 64 :=
.seq rawBody728_27 rawBody728_34

def rawBody728_36 : StackLang.HolProg 64 :=
.seq rawBody728_26 rawBody728_35

def rawBody728_37 : StackLang.HolProg 64 :=
.seq rawBody728_25 rawBody728_36

def rawBody728_38 : StackLang.HolProg 64 :=
.seq rawBody728_24 rawBody728_37

def rawBody728_39 : StackLang.HolProg 64 :=
.seq rawBody728_23 rawBody728_38

def rawBody728_40 : StackLang.HolProg 64 :=
.seq rawBody728_22 rawBody728_39

def rawBody728_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody728_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody728_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody728_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody728_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody728_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody728_50 : StackLang.HolProg 64 :=
.seq rawBody728_48 rawBody728_49

def rawBody728_51 : StackLang.HolProg 64 :=
.seq rawBody728_47 rawBody728_50

def rawBody728_52 : StackLang.HolProg 64 :=
.seq rawBody728_46 rawBody728_51

def rawBody728_53 : StackLang.HolProg 64 :=
.seq rawBody728_45 rawBody728_52

def rawBody728_54 : StackLang.HolProg 64 :=
.seq rawBody728_44 rawBody728_53

def rawBody728_55 : StackLang.HolProg 64 :=
.seq rawBody728_43 rawBody728_54

def rawBody728_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def rawBody728_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody728_58 : StackLang.HolProg 64 :=
.seq rawBody728_56 rawBody728_57

def rawBody728_59 : StackLang.HolProg 64 :=
.call (some (rawBody728_55, 0, 728, 2)) (Sum.inl 717) (some (rawBody728_58, 728, 3))

def rawBody728_60 : StackLang.HolProg 64 :=
.seq rawBody728_42 rawBody728_59

def rawBody728_61 : StackLang.HolProg 64 :=
.seq rawBody728_41 rawBody728_60

def rawBody728_62 : StackLang.HolProg 64 :=
.seq rawBody728_40 rawBody728_61

def rawBody728_63 : StackLang.HolProg 64 :=
.seq rawBody728_21 rawBody728_62

def rawBody728_64 : StackLang.HolProg 64 :=
.seq rawBody728_18 rawBody728_63

def rawBody728_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody728_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody728_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def rawBody728_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def rawBody728_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def rawBody728_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody728_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody728_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody728_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody728_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody728_75 : StackLang.HolProg 64 :=
.seq rawBody728_73 rawBody728_74

def rawBody728_76 : StackLang.HolProg 64 :=
.seq rawBody728_72 rawBody728_75

def rawBody728_77 : StackLang.HolProg 64 :=
.seq rawBody728_71 rawBody728_76

def rawBody728_78 : StackLang.HolProg 64 :=
.seq rawBody728_70 rawBody728_77

def rawBody728_79 : StackLang.HolProg 64 :=
.seq rawBody728_69 rawBody728_78

def rawBody728_80 : StackLang.HolProg 64 :=
.seq rawBody728_68 rawBody728_79

def rawBody728_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3259#64)

def rawBody728_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_84 : StackLang.HolProg 64 :=
.seq rawBody728_82 rawBody728_83

def rawBody728_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody728_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody728_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 5

def rawBody728_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody728_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody728_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody728_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody728_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_95 : StackLang.HolProg 64 :=
.seq rawBody728_93 rawBody728_94

def rawBody728_96 : StackLang.HolProg 64 :=
.seq rawBody728_92 rawBody728_95

def rawBody728_97 : StackLang.HolProg 64 :=
.seq rawBody728_91 rawBody728_96

def rawBody728_98 : StackLang.HolProg 64 :=
.seq rawBody728_90 rawBody728_97

def rawBody728_99 : StackLang.HolProg 64 :=
.seq rawBody728_89 rawBody728_98

def rawBody728_100 : StackLang.HolProg 64 :=
.seq rawBody728_88 rawBody728_99

def rawBody728_101 : StackLang.HolProg 64 :=
.seq rawBody728_87 rawBody728_100

def rawBody728_102 : StackLang.HolProg 64 :=
.seq rawBody728_86 rawBody728_101

def rawBody728_103 : StackLang.HolProg 64 :=
.seq rawBody728_85 rawBody728_102

def rawBody728_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody728_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody728_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody728_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody728_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody728_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody728_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody728_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody728_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody728_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody728_117 : StackLang.HolProg 64 :=
.seq rawBody728_115 rawBody728_116

def rawBody728_118 : StackLang.HolProg 64 :=
.seq rawBody728_114 rawBody728_117

def rawBody728_119 : StackLang.HolProg 64 :=
.seq rawBody728_113 rawBody728_118

def rawBody728_120 : StackLang.HolProg 64 :=
.seq rawBody728_112 rawBody728_119

def rawBody728_121 : StackLang.HolProg 64 :=
.seq rawBody728_111 rawBody728_120

def rawBody728_122 : StackLang.HolProg 64 :=
.seq rawBody728_110 rawBody728_121

def rawBody728_123 : StackLang.HolProg 64 :=
.seq rawBody728_109 rawBody728_122

def rawBody728_124 : StackLang.HolProg 64 :=
.seq rawBody728_108 rawBody728_123

def rawBody728_125 : StackLang.HolProg 64 :=
.seq rawBody728_107 rawBody728_124

def rawBody728_126 : StackLang.HolProg 64 :=
.seq rawBody728_106 rawBody728_125

def rawBody728_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 7

def rawBody728_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def rawBody728_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody728_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 4

def rawBody728_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody728_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody728_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody728_134 : StackLang.HolProg 64 :=
.seq rawBody728_132 rawBody728_133

def rawBody728_135 : StackLang.HolProg 64 :=
.seq rawBody728_131 rawBody728_134

def rawBody728_136 : StackLang.HolProg 64 :=
.seq rawBody728_130 rawBody728_135

def rawBody728_137 : StackLang.HolProg 64 :=
.seq rawBody728_129 rawBody728_136

def rawBody728_138 : StackLang.HolProg 64 :=
.seq rawBody728_128 rawBody728_137

def rawBody728_139 : StackLang.HolProg 64 :=
.seq rawBody728_127 rawBody728_138

def rawBody728_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody728_141 : StackLang.HolProg 64 :=
.seq rawBody728_139 rawBody728_140

def rawBody728_142 : StackLang.HolProg 64 :=
.call (some (rawBody728_126, 0, 728, 4)) (Sum.inl 78) (some (rawBody728_141, 728, 5))

def rawBody728_143 : StackLang.HolProg 64 :=
.seq rawBody728_105 rawBody728_142

def rawBody728_144 : StackLang.HolProg 64 :=
.seq rawBody728_104 rawBody728_143

def rawBody728_145 : StackLang.HolProg 64 :=
.seq rawBody728_103 rawBody728_144

def rawBody728_146 : StackLang.HolProg 64 :=
.seq rawBody728_84 rawBody728_145

def rawBody728_147 : StackLang.HolProg 64 :=
.seq rawBody728_81 rawBody728_146

def rawBody728_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody728_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody728_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody728_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3260#64)

def rawBody728_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_155 : StackLang.HolProg 64 :=
.seq rawBody728_153 rawBody728_154

def rawBody728_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody728_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody728_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody728_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 728 7

def rawBody728_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody728_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody728_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody728_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody728_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_166 : StackLang.HolProg 64 :=
.seq rawBody728_164 rawBody728_165

def rawBody728_167 : StackLang.HolProg 64 :=
.seq rawBody728_163 rawBody728_166

def rawBody728_168 : StackLang.HolProg 64 :=
.seq rawBody728_162 rawBody728_167

def rawBody728_169 : StackLang.HolProg 64 :=
.seq rawBody728_161 rawBody728_168

def rawBody728_170 : StackLang.HolProg 64 :=
.seq rawBody728_160 rawBody728_169

def rawBody728_171 : StackLang.HolProg 64 :=
.seq rawBody728_159 rawBody728_170

def rawBody728_172 : StackLang.HolProg 64 :=
.seq rawBody728_158 rawBody728_171

def rawBody728_173 : StackLang.HolProg 64 :=
.seq rawBody728_157 rawBody728_172

def rawBody728_174 : StackLang.HolProg 64 :=
.seq rawBody728_156 rawBody728_173

def rawBody728_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody728_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody728_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody728_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody728_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody728_182 : StackLang.HolProg 64 :=
.seq rawBody728_180 rawBody728_181

def rawBody728_183 : StackLang.HolProg 64 :=
.seq rawBody728_179 rawBody728_182

def rawBody728_184 : StackLang.HolProg 64 :=
.seq rawBody728_178 rawBody728_183

def rawBody728_185 : StackLang.HolProg 64 :=
.seq rawBody728_177 rawBody728_184

def rawBody728_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody728_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody728_188 : StackLang.HolProg 64 :=
.seq rawBody728_186 rawBody728_187

def rawBody728_189 : StackLang.HolProg 64 :=
.call (some (rawBody728_185, 0, 728, 6)) (Sum.inl 726) (some (rawBody728_188, 728, 7))

def rawBody728_190 : StackLang.HolProg 64 :=
.seq rawBody728_176 rawBody728_189

def rawBody728_191 : StackLang.HolProg 64 :=
.seq rawBody728_175 rawBody728_190

def rawBody728_192 : StackLang.HolProg 64 :=
.seq rawBody728_174 rawBody728_191

def rawBody728_193 : StackLang.HolProg 64 :=
.seq rawBody728_155 rawBody728_192

def rawBody728_194 : StackLang.HolProg 64 :=
.seq rawBody728_152 rawBody728_193

def rawBody728_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody728_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody728_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody728_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def rawBody728_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody728_200 : StackLang.HolProg 64 :=
.seq rawBody728_198 rawBody728_199

def rawBody728_201 : StackLang.HolProg 64 :=
.seq rawBody728_197 rawBody728_200

def rawBody728_202 : StackLang.HolProg 64 :=
.seq rawBody728_196 rawBody728_201

def rawBody728_203 : StackLang.HolProg 64 :=
.seq rawBody728_195 rawBody728_202

def rawBody728_204 : StackLang.HolProg 64 :=
.seq rawBody728_194 rawBody728_203

def rawBody728_205 : StackLang.HolProg 64 :=
.seq rawBody728_151 rawBody728_204

def rawBody728_206 : StackLang.HolProg 64 :=
.seq rawBody728_150 rawBody728_205

def rawBody728_207 : StackLang.HolProg 64 :=
.seq rawBody728_149 rawBody728_206

def rawBody728_208 : StackLang.HolProg 64 :=
.seq rawBody728_148 rawBody728_207

def rawBody728_209 : StackLang.HolProg 64 :=
.seq rawBody728_147 rawBody728_208

def rawBody728_210 : StackLang.HolProg 64 :=
.seq rawBody728_80 rawBody728_209

def rawBody728_211 : StackLang.HolProg 64 :=
.seq rawBody728_67 rawBody728_210

def rawBody728_212 : StackLang.HolProg 64 :=
.seq rawBody728_66 rawBody728_211

def rawBody728_213 : StackLang.HolProg 64 :=
.seq rawBody728_65 rawBody728_212

def rawBody728_214 : StackLang.HolProg 64 :=
.seq rawBody728_64 rawBody728_213

def rawBody728_215 : StackLang.HolProg 64 :=
.seq rawBody728_17 rawBody728_214

def rawBody728_216 : StackLang.HolProg 64 :=
.seq rawBody728_14 rawBody728_215

def rawBody728_217 : StackLang.HolProg 64 :=
.seq rawBody728_13 rawBody728_216

def rawBody728_218 : StackLang.HolProg 64 :=
.seq rawBody728_12 rawBody728_217

def rawBody728_219 : StackLang.HolProg 64 :=
.seq rawBody728_11 rawBody728_218

def rawBody728_220 : StackLang.HolProg 64 :=
.seq rawBody728_10 rawBody728_219

def rawBody728_221 : StackLang.HolProg 64 :=
.seq rawBody728_9 rawBody728_220

def rawBody728_222 : StackLang.HolProg 64 :=
.seq rawBody728_8 rawBody728_221

def rawBody728_223 : StackLang.HolProg 64 :=
.seq rawBody728_7 rawBody728_222

def rawBody728_224 : StackLang.HolProg 64 :=
.seq rawBody728_6 rawBody728_223

def rawBody728_225 : StackLang.HolProg 64 :=
.seq rawBody728_5 rawBody728_224

def rawBody728_226 : StackLang.HolProg 64 :=
.seq rawBody728_4 rawBody728_225

def rawBody728_227 : StackLang.HolProg 64 :=
.seq rawBody728_3 rawBody728_226

def rawBody728_228 : StackLang.HolProg 64 :=
.seq rawBody728_0 rawBody728_227

def raw728 : StackLang.HolProg 64 := rawBody728_228
theorem raw728_eq : StackRawCall.compTop RawInfo.rawInfo (function728 (.list [])).1 = raw728 := by
  kernel_rfl
#print axioms raw728_eq
end InitECandidate.Proofs.BackendStages
