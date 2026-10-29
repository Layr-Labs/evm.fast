import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function360
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody360_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody360_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody360_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody360_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody360_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody360_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody360_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody360_9 : StackLang.HolProg 64 :=
.seq rawBody360_7 rawBody360_8

def rawBody360_10 : StackLang.HolProg 64 :=
.seq rawBody360_6 rawBody360_9

def rawBody360_11 : StackLang.HolProg 64 :=
.seq rawBody360_5 rawBody360_10

def rawBody360_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 24#64)

def rawBody360_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody360_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody360_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody360_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody360_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 33#64)

def rawBody360_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody360_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody360_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody360_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def rawBody360_27 : StackLang.HolProg 64 :=
.seq rawBody360_25 rawBody360_26

def rawBody360_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody360_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody360_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 2

def rawBody360_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody360_32 : StackLang.HolProg 64 :=
.seq rawBody360_30 rawBody360_31

def rawBody360_33 : StackLang.HolProg 64 :=
.seq rawBody360_29 rawBody360_32

def rawBody360_34 : StackLang.HolProg 64 :=
.seq rawBody360_28 rawBody360_33

def rawBody360_35 : StackLang.HolProg 64 :=
.seq rawBody360_27 rawBody360_34

def rawBody360_36 : StackLang.HolProg 64 :=
.seq rawBody360_24 rawBody360_35

def rawBody360_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1033#64)

def rawBody360_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody360_40 : StackLang.HolProg 64 :=
.seq rawBody360_38 rawBody360_39

def rawBody360_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody360_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody360_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody360_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 3

def rawBody360_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody360_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody360_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody360_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody360_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody360_51 : StackLang.HolProg 64 :=
.seq rawBody360_49 rawBody360_50

def rawBody360_52 : StackLang.HolProg 64 :=
.seq rawBody360_48 rawBody360_51

def rawBody360_53 : StackLang.HolProg 64 :=
.seq rawBody360_47 rawBody360_52

def rawBody360_54 : StackLang.HolProg 64 :=
.seq rawBody360_46 rawBody360_53

def rawBody360_55 : StackLang.HolProg 64 :=
.seq rawBody360_45 rawBody360_54

def rawBody360_56 : StackLang.HolProg 64 :=
.seq rawBody360_44 rawBody360_55

def rawBody360_57 : StackLang.HolProg 64 :=
.seq rawBody360_43 rawBody360_56

def rawBody360_58 : StackLang.HolProg 64 :=
.seq rawBody360_42 rawBody360_57

def rawBody360_59 : StackLang.HolProg 64 :=
.seq rawBody360_41 rawBody360_58

def rawBody360_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody360_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody360_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody360_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody360_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody360_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody360_68 : StackLang.HolProg 64 :=
.seq rawBody360_66 rawBody360_67

def rawBody360_69 : StackLang.HolProg 64 :=
.seq rawBody360_65 rawBody360_68

def rawBody360_70 : StackLang.HolProg 64 :=
.seq rawBody360_64 rawBody360_69

def rawBody360_71 : StackLang.HolProg 64 :=
.seq rawBody360_63 rawBody360_70

def rawBody360_72 : StackLang.HolProg 64 :=
.seq rawBody360_62 rawBody360_71

def rawBody360_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody360_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody360_75 : StackLang.HolProg 64 :=
.seq rawBody360_73 rawBody360_74

def rawBody360_76 : StackLang.HolProg 64 :=
.call (some (rawBody360_72, 0, 360, 2)) (Sum.inl 180) (some (rawBody360_75, 360, 3))

def rawBody360_77 : StackLang.HolProg 64 :=
.seq rawBody360_61 rawBody360_76

def rawBody360_78 : StackLang.HolProg 64 :=
.seq rawBody360_60 rawBody360_77

def rawBody360_79 : StackLang.HolProg 64 :=
.seq rawBody360_59 rawBody360_78

def rawBody360_80 : StackLang.HolProg 64 :=
.seq rawBody360_40 rawBody360_79

def rawBody360_81 : StackLang.HolProg 64 :=
.seq rawBody360_37 rawBody360_80

def rawBody360_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody360_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 21#64)))

def rawBody360_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody360_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1034#64)

def rawBody360_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody360_90 : StackLang.HolProg 64 :=
.seq rawBody360_88 rawBody360_89

def rawBody360_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody360_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody360_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody360_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 360 5

def rawBody360_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody360_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody360_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody360_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody360_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody360_101 : StackLang.HolProg 64 :=
.seq rawBody360_99 rawBody360_100

def rawBody360_102 : StackLang.HolProg 64 :=
.seq rawBody360_98 rawBody360_101

def rawBody360_103 : StackLang.HolProg 64 :=
.seq rawBody360_97 rawBody360_102

def rawBody360_104 : StackLang.HolProg 64 :=
.seq rawBody360_96 rawBody360_103

def rawBody360_105 : StackLang.HolProg 64 :=
.seq rawBody360_95 rawBody360_104

def rawBody360_106 : StackLang.HolProg 64 :=
.seq rawBody360_94 rawBody360_105

def rawBody360_107 : StackLang.HolProg 64 :=
.seq rawBody360_93 rawBody360_106

def rawBody360_108 : StackLang.HolProg 64 :=
.seq rawBody360_92 rawBody360_107

def rawBody360_109 : StackLang.HolProg 64 :=
.seq rawBody360_91 rawBody360_108

def rawBody360_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody360_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody360_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody360_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody360_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody360_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody360_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody360_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody360_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody360_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody360_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody360_123 : StackLang.HolProg 64 :=
.seq rawBody360_121 rawBody360_122

def rawBody360_124 : StackLang.HolProg 64 :=
.seq rawBody360_120 rawBody360_123

def rawBody360_125 : StackLang.HolProg 64 :=
.seq rawBody360_119 rawBody360_124

def rawBody360_126 : StackLang.HolProg 64 :=
.seq rawBody360_118 rawBody360_125

def rawBody360_127 : StackLang.HolProg 64 :=
.seq rawBody360_117 rawBody360_126

def rawBody360_128 : StackLang.HolProg 64 :=
.seq rawBody360_116 rawBody360_127

def rawBody360_129 : StackLang.HolProg 64 :=
.seq rawBody360_115 rawBody360_128

def rawBody360_130 : StackLang.HolProg 64 :=
.seq rawBody360_114 rawBody360_129

def rawBody360_131 : StackLang.HolProg 64 :=
.seq rawBody360_113 rawBody360_130

def rawBody360_132 : StackLang.HolProg 64 :=
.seq rawBody360_112 rawBody360_131

def rawBody360_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody360_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody360_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody360_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody360_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody360_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody360_139 : StackLang.HolProg 64 :=
.seq rawBody360_137 rawBody360_138

def rawBody360_140 : StackLang.HolProg 64 :=
.seq rawBody360_136 rawBody360_139

def rawBody360_141 : StackLang.HolProg 64 :=
.seq rawBody360_135 rawBody360_140

def rawBody360_142 : StackLang.HolProg 64 :=
.seq rawBody360_134 rawBody360_141

def rawBody360_143 : StackLang.HolProg 64 :=
.seq rawBody360_133 rawBody360_142

def rawBody360_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody360_145 : StackLang.HolProg 64 :=
.seq rawBody360_143 rawBody360_144

def rawBody360_146 : StackLang.HolProg 64 :=
.call (some (rawBody360_132, 0, 360, 4)) (Sum.inl 180) (some (rawBody360_145, 360, 5))

def rawBody360_147 : StackLang.HolProg 64 :=
.seq rawBody360_111 rawBody360_146

def rawBody360_148 : StackLang.HolProg 64 :=
.seq rawBody360_110 rawBody360_147

def rawBody360_149 : StackLang.HolProg 64 :=
.seq rawBody360_109 rawBody360_148

def rawBody360_150 : StackLang.HolProg 64 :=
.seq rawBody360_90 rawBody360_149

def rawBody360_151 : StackLang.HolProg 64 :=
.seq rawBody360_87 rawBody360_150

def rawBody360_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody360_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody360_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody360_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody360_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def rawBody360_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody360_161 : StackLang.HolProg 64 :=
.seq rawBody360_159 rawBody360_160

def rawBody360_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody360_163 : StackLang.HolProg 64 :=
.seq rawBody360_161 rawBody360_162

def rawBody360_164 : StackLang.HolProg 64 :=
.seq rawBody360_158 rawBody360_163

def rawBody360_165 : StackLang.HolProg 64 :=
.seq rawBody360_157 rawBody360_164

def rawBody360_166 : StackLang.HolProg 64 :=
.seq rawBody360_156 rawBody360_165

def rawBody360_167 : StackLang.HolProg 64 :=
.seq rawBody360_155 rawBody360_166

def rawBody360_168 : StackLang.HolProg 64 :=
.seq rawBody360_154 rawBody360_167

def rawBody360_169 : StackLang.HolProg 64 :=
.seq rawBody360_153 rawBody360_168

def rawBody360_170 : StackLang.HolProg 64 :=
.seq rawBody360_152 rawBody360_169

def rawBody360_171 : StackLang.HolProg 64 :=
.seq rawBody360_151 rawBody360_170

def rawBody360_172 : StackLang.HolProg 64 :=
.seq rawBody360_86 rawBody360_171

def rawBody360_173 : StackLang.HolProg 64 :=
.seq rawBody360_85 rawBody360_172

def rawBody360_174 : StackLang.HolProg 64 :=
.seq rawBody360_84 rawBody360_173

def rawBody360_175 : StackLang.HolProg 64 :=
.seq rawBody360_83 rawBody360_174

def rawBody360_176 : StackLang.HolProg 64 :=
.seq rawBody360_82 rawBody360_175

def rawBody360_177 : StackLang.HolProg 64 :=
.seq rawBody360_81 rawBody360_176

def rawBody360_178 : StackLang.HolProg 64 :=
.seq rawBody360_36 rawBody360_177

def rawBody360_179 : StackLang.HolProg 64 :=
.seq rawBody360_23 rawBody360_178

def rawBody360_180 : StackLang.HolProg 64 :=
.seq rawBody360_22 rawBody360_179

def rawBody360_181 : StackLang.HolProg 64 :=
.seq rawBody360_21 rawBody360_180

def rawBody360_182 : StackLang.HolProg 64 :=
.seq rawBody360_20 rawBody360_181

def rawBody360_183 : StackLang.HolProg 64 :=
.seq rawBody360_19 rawBody360_182

def rawBody360_184 : StackLang.HolProg 64 :=
.seq rawBody360_18 rawBody360_183

def rawBody360_185 : StackLang.HolProg 64 :=
.seq rawBody360_17 rawBody360_184

def rawBody360_186 : StackLang.HolProg 64 :=
.seq rawBody360_16 rawBody360_185

def rawBody360_187 : StackLang.HolProg 64 :=
.seq rawBody360_15 rawBody360_186

def rawBody360_188 : StackLang.HolProg 64 :=
.seq rawBody360_14 rawBody360_187

def rawBody360_189 : StackLang.HolProg 64 :=
.seq rawBody360_13 rawBody360_188

def rawBody360_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody360_192 : StackLang.HolProg 64 :=
.seq rawBody360_190 rawBody360_191

def rawBody360_193 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) rawBody360_189 rawBody360_192

def rawBody360_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody360_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def rawBody360_197 : StackLang.HolProg 64 :=
.seq rawBody360_195 rawBody360_196

def rawBody360_198 : StackLang.HolProg 64 :=
.seq rawBody360_194 rawBody360_197

def rawBody360_199 : StackLang.HolProg 64 :=
.seq rawBody360_193 rawBody360_198

def rawBody360_200 : StackLang.HolProg 64 :=
.seq rawBody360_12 rawBody360_199

def rawBody360_201 : StackLang.HolProg 64 :=
.loop rawBody360_200

def rawBody360_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody360_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 5

def rawBody360_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody360_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody360_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody360_207 : StackLang.HolProg 64 :=
.seq rawBody360_205 rawBody360_206

def rawBody360_208 : StackLang.HolProg 64 :=
.seq rawBody360_204 rawBody360_207

def rawBody360_209 : StackLang.HolProg 64 :=
.seq rawBody360_203 rawBody360_208

def rawBody360_210 : StackLang.HolProg 64 :=
.seq rawBody360_202 rawBody360_209

def rawBody360_211 : StackLang.HolProg 64 :=
.seq rawBody360_201 rawBody360_210

def rawBody360_212 : StackLang.HolProg 64 :=
.seq rawBody360_11 rawBody360_211

def rawBody360_213 : StackLang.HolProg 64 :=
.seq rawBody360_4 rawBody360_212

def rawBody360_214 : StackLang.HolProg 64 :=
.seq rawBody360_3 rawBody360_213

def rawBody360_215 : StackLang.HolProg 64 :=
.seq rawBody360_2 rawBody360_214

def rawBody360_216 : StackLang.HolProg 64 :=
.seq rawBody360_1 rawBody360_215

def rawBody360_217 : StackLang.HolProg 64 :=
.seq rawBody360_0 rawBody360_216

def raw360 : StackLang.HolProg 64 := rawBody360_217
theorem raw360_eq : StackRawCall.compTop RawInfo.rawInfo (function360 (.list [])).1 = raw360 := by
  kernel_rfl
#print axioms raw360_eq
end InitECandidate.Proofs.BackendStages
