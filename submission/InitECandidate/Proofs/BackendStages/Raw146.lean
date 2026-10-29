import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function146
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody146_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody146_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody146_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody146_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody146_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_6 : StackLang.HolProg 64 :=
.seq rawBody146_4 rawBody146_5

def rawBody146_7 : StackLang.HolProg 64 :=
.seq rawBody146_3 rawBody146_6

def rawBody146_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody146_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_11 : StackLang.HolProg 64 :=
.seq rawBody146_9 rawBody146_10

def rawBody146_12 : StackLang.HolProg 64 :=
.seq rawBody146_8 rawBody146_11

def rawBody146_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody146_7 rawBody146_12

def rawBody146_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody146_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody146_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody146_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_21 : StackLang.HolProg 64 :=
.seq rawBody146_19 rawBody146_20

def rawBody146_22 : StackLang.HolProg 64 :=
.seq rawBody146_18 rawBody146_21

def rawBody146_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody146_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_26 : StackLang.HolProg 64 :=
.seq rawBody146_24 rawBody146_25

def rawBody146_27 : StackLang.HolProg 64 :=
.seq rawBody146_23 rawBody146_26

def rawBody146_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody146_22 rawBody146_27

def rawBody146_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody146_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody146_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody146_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody146_36 : StackLang.HolProg 64 :=
.seq rawBody146_34 rawBody146_35

def rawBody146_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 112#64)

def rawBody146_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_40 : StackLang.HolProg 64 :=
.seq rawBody146_38 rawBody146_39

def rawBody146_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody146_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody146_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 3

def rawBody146_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody146_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody146_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody146_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody146_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_51 : StackLang.HolProg 64 :=
.seq rawBody146_49 rawBody146_50

def rawBody146_52 : StackLang.HolProg 64 :=
.seq rawBody146_48 rawBody146_51

def rawBody146_53 : StackLang.HolProg 64 :=
.seq rawBody146_47 rawBody146_52

def rawBody146_54 : StackLang.HolProg 64 :=
.seq rawBody146_46 rawBody146_53

def rawBody146_55 : StackLang.HolProg 64 :=
.seq rawBody146_45 rawBody146_54

def rawBody146_56 : StackLang.HolProg 64 :=
.seq rawBody146_44 rawBody146_55

def rawBody146_57 : StackLang.HolProg 64 :=
.seq rawBody146_43 rawBody146_56

def rawBody146_58 : StackLang.HolProg 64 :=
.seq rawBody146_42 rawBody146_57

def rawBody146_59 : StackLang.HolProg 64 :=
.seq rawBody146_41 rawBody146_58

def rawBody146_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody146_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody146_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody146_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody146_68 : StackLang.HolProg 64 :=
.seq rawBody146_66 rawBody146_67

def rawBody146_69 : StackLang.HolProg 64 :=
.seq rawBody146_65 rawBody146_68

def rawBody146_70 : StackLang.HolProg 64 :=
.seq rawBody146_64 rawBody146_69

def rawBody146_71 : StackLang.HolProg 64 :=
.seq rawBody146_63 rawBody146_70

def rawBody146_72 : StackLang.HolProg 64 :=
.seq rawBody146_62 rawBody146_71

def rawBody146_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody146_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody146_75 : StackLang.HolProg 64 :=
.seq rawBody146_73 rawBody146_74

def rawBody146_76 : StackLang.HolProg 64 :=
.call (some (rawBody146_72, 0, 146, 2)) (Sum.inl 84) (some (rawBody146_75, 146, 3))

def rawBody146_77 : StackLang.HolProg 64 :=
.seq rawBody146_61 rawBody146_76

def rawBody146_78 : StackLang.HolProg 64 :=
.seq rawBody146_60 rawBody146_77

def rawBody146_79 : StackLang.HolProg 64 :=
.seq rawBody146_59 rawBody146_78

def rawBody146_80 : StackLang.HolProg 64 :=
.seq rawBody146_40 rawBody146_79

def rawBody146_81 : StackLang.HolProg 64 :=
.seq rawBody146_37 rawBody146_80

def rawBody146_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody146_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody146_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody146_87 : StackLang.HolProg 64 :=
.seq rawBody146_85 rawBody146_86

def rawBody146_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 113#64)

def rawBody146_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_91 : StackLang.HolProg 64 :=
.seq rawBody146_89 rawBody146_90

def rawBody146_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody146_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody146_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 5

def rawBody146_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody146_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody146_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody146_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody146_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_102 : StackLang.HolProg 64 :=
.seq rawBody146_100 rawBody146_101

def rawBody146_103 : StackLang.HolProg 64 :=
.seq rawBody146_99 rawBody146_102

def rawBody146_104 : StackLang.HolProg 64 :=
.seq rawBody146_98 rawBody146_103

def rawBody146_105 : StackLang.HolProg 64 :=
.seq rawBody146_97 rawBody146_104

def rawBody146_106 : StackLang.HolProg 64 :=
.seq rawBody146_96 rawBody146_105

def rawBody146_107 : StackLang.HolProg 64 :=
.seq rawBody146_95 rawBody146_106

def rawBody146_108 : StackLang.HolProg 64 :=
.seq rawBody146_94 rawBody146_107

def rawBody146_109 : StackLang.HolProg 64 :=
.seq rawBody146_93 rawBody146_108

def rawBody146_110 : StackLang.HolProg 64 :=
.seq rawBody146_92 rawBody146_109

def rawBody146_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody146_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody146_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody146_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody146_119 : StackLang.HolProg 64 :=
.seq rawBody146_117 rawBody146_118

def rawBody146_120 : StackLang.HolProg 64 :=
.seq rawBody146_116 rawBody146_119

def rawBody146_121 : StackLang.HolProg 64 :=
.seq rawBody146_115 rawBody146_120

def rawBody146_122 : StackLang.HolProg 64 :=
.seq rawBody146_114 rawBody146_121

def rawBody146_123 : StackLang.HolProg 64 :=
.seq rawBody146_113 rawBody146_122

def rawBody146_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody146_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody146_126 : StackLang.HolProg 64 :=
.seq rawBody146_124 rawBody146_125

def rawBody146_127 : StackLang.HolProg 64 :=
.call (some (rawBody146_123, 0, 146, 4)) (Sum.inl 84) (some (rawBody146_126, 146, 5))

def rawBody146_128 : StackLang.HolProg 64 :=
.seq rawBody146_112 rawBody146_127

def rawBody146_129 : StackLang.HolProg 64 :=
.seq rawBody146_111 rawBody146_128

def rawBody146_130 : StackLang.HolProg 64 :=
.seq rawBody146_110 rawBody146_129

def rawBody146_131 : StackLang.HolProg 64 :=
.seq rawBody146_91 rawBody146_130

def rawBody146_132 : StackLang.HolProg 64 :=
.seq rawBody146_88 rawBody146_131

def rawBody146_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody146_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody146_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody146_138 : StackLang.HolProg 64 :=
.seq rawBody146_136 rawBody146_137

def rawBody146_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 114#64)

def rawBody146_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_142 : StackLang.HolProg 64 :=
.seq rawBody146_140 rawBody146_141

def rawBody146_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody146_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody146_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 7

def rawBody146_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody146_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody146_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody146_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody146_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_153 : StackLang.HolProg 64 :=
.seq rawBody146_151 rawBody146_152

def rawBody146_154 : StackLang.HolProg 64 :=
.seq rawBody146_150 rawBody146_153

def rawBody146_155 : StackLang.HolProg 64 :=
.seq rawBody146_149 rawBody146_154

def rawBody146_156 : StackLang.HolProg 64 :=
.seq rawBody146_148 rawBody146_155

def rawBody146_157 : StackLang.HolProg 64 :=
.seq rawBody146_147 rawBody146_156

def rawBody146_158 : StackLang.HolProg 64 :=
.seq rawBody146_146 rawBody146_157

def rawBody146_159 : StackLang.HolProg 64 :=
.seq rawBody146_145 rawBody146_158

def rawBody146_160 : StackLang.HolProg 64 :=
.seq rawBody146_144 rawBody146_159

def rawBody146_161 : StackLang.HolProg 64 :=
.seq rawBody146_143 rawBody146_160

def rawBody146_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody146_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody146_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody146_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody146_170 : StackLang.HolProg 64 :=
.seq rawBody146_168 rawBody146_169

def rawBody146_171 : StackLang.HolProg 64 :=
.seq rawBody146_167 rawBody146_170

def rawBody146_172 : StackLang.HolProg 64 :=
.seq rawBody146_166 rawBody146_171

def rawBody146_173 : StackLang.HolProg 64 :=
.seq rawBody146_165 rawBody146_172

def rawBody146_174 : StackLang.HolProg 64 :=
.seq rawBody146_164 rawBody146_173

def rawBody146_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody146_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody146_177 : StackLang.HolProg 64 :=
.seq rawBody146_175 rawBody146_176

def rawBody146_178 : StackLang.HolProg 64 :=
.call (some (rawBody146_174, 0, 146, 6)) (Sum.inl 84) (some (rawBody146_177, 146, 7))

def rawBody146_179 : StackLang.HolProg 64 :=
.seq rawBody146_163 rawBody146_178

def rawBody146_180 : StackLang.HolProg 64 :=
.seq rawBody146_162 rawBody146_179

def rawBody146_181 : StackLang.HolProg 64 :=
.seq rawBody146_161 rawBody146_180

def rawBody146_182 : StackLang.HolProg 64 :=
.seq rawBody146_142 rawBody146_181

def rawBody146_183 : StackLang.HolProg 64 :=
.seq rawBody146_139 rawBody146_182

def rawBody146_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody146_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody146_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 115#64)

def rawBody146_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_191 : StackLang.HolProg 64 :=
.seq rawBody146_189 rawBody146_190

def rawBody146_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody146_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody146_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody146_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 146 9

def rawBody146_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody146_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody146_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody146_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody146_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_202 : StackLang.HolProg 64 :=
.seq rawBody146_200 rawBody146_201

def rawBody146_203 : StackLang.HolProg 64 :=
.seq rawBody146_199 rawBody146_202

def rawBody146_204 : StackLang.HolProg 64 :=
.seq rawBody146_198 rawBody146_203

def rawBody146_205 : StackLang.HolProg 64 :=
.seq rawBody146_197 rawBody146_204

def rawBody146_206 : StackLang.HolProg 64 :=
.seq rawBody146_196 rawBody146_205

def rawBody146_207 : StackLang.HolProg 64 :=
.seq rawBody146_195 rawBody146_206

def rawBody146_208 : StackLang.HolProg 64 :=
.seq rawBody146_194 rawBody146_207

def rawBody146_209 : StackLang.HolProg 64 :=
.seq rawBody146_193 rawBody146_208

def rawBody146_210 : StackLang.HolProg 64 :=
.seq rawBody146_192 rawBody146_209

def rawBody146_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody146_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody146_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody146_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody146_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody146_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody146_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody146_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody146_222 : StackLang.HolProg 64 :=
.seq rawBody146_220 rawBody146_221

def rawBody146_223 : StackLang.HolProg 64 :=
.seq rawBody146_219 rawBody146_222

def rawBody146_224 : StackLang.HolProg 64 :=
.seq rawBody146_218 rawBody146_223

def rawBody146_225 : StackLang.HolProg 64 :=
.seq rawBody146_217 rawBody146_224

def rawBody146_226 : StackLang.HolProg 64 :=
.seq rawBody146_216 rawBody146_225

def rawBody146_227 : StackLang.HolProg 64 :=
.seq rawBody146_215 rawBody146_226

def rawBody146_228 : StackLang.HolProg 64 :=
.seq rawBody146_214 rawBody146_227

def rawBody146_229 : StackLang.HolProg 64 :=
.seq rawBody146_213 rawBody146_228

def rawBody146_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody146_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody146_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody146_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody146_234 : StackLang.HolProg 64 :=
.seq rawBody146_232 rawBody146_233

def rawBody146_235 : StackLang.HolProg 64 :=
.seq rawBody146_231 rawBody146_234

def rawBody146_236 : StackLang.HolProg 64 :=
.seq rawBody146_230 rawBody146_235

def rawBody146_237 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody146_238 : StackLang.HolProg 64 :=
.seq rawBody146_236 rawBody146_237

def rawBody146_239 : StackLang.HolProg 64 :=
.call (some (rawBody146_229, 0, 146, 8)) (Sum.inl 84) (some (rawBody146_238, 146, 9))

def rawBody146_240 : StackLang.HolProg 64 :=
.seq rawBody146_212 rawBody146_239

def rawBody146_241 : StackLang.HolProg 64 :=
.seq rawBody146_211 rawBody146_240

def rawBody146_242 : StackLang.HolProg 64 :=
.seq rawBody146_210 rawBody146_241

def rawBody146_243 : StackLang.HolProg 64 :=
.seq rawBody146_191 rawBody146_242

def rawBody146_244 : StackLang.HolProg 64 :=
.seq rawBody146_188 rawBody146_243

def rawBody146_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody146_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody146_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody146_249 : StackLang.HolProg 64 :=
.seq rawBody146_247 rawBody146_248

def rawBody146_250 : StackLang.HolProg 64 :=
.seq rawBody146_246 rawBody146_249

def rawBody146_251 : StackLang.HolProg 64 :=
.seq rawBody146_245 rawBody146_250

def rawBody146_252 : StackLang.HolProg 64 :=
.seq rawBody146_244 rawBody146_251

def rawBody146_253 : StackLang.HolProg 64 :=
.seq rawBody146_187 rawBody146_252

def rawBody146_254 : StackLang.HolProg 64 :=
.seq rawBody146_186 rawBody146_253

def rawBody146_255 : StackLang.HolProg 64 :=
.seq rawBody146_185 rawBody146_254

def rawBody146_256 : StackLang.HolProg 64 :=
.seq rawBody146_184 rawBody146_255

def rawBody146_257 : StackLang.HolProg 64 :=
.seq rawBody146_183 rawBody146_256

def rawBody146_258 : StackLang.HolProg 64 :=
.seq rawBody146_138 rawBody146_257

def rawBody146_259 : StackLang.HolProg 64 :=
.seq rawBody146_135 rawBody146_258

def rawBody146_260 : StackLang.HolProg 64 :=
.seq rawBody146_134 rawBody146_259

def rawBody146_261 : StackLang.HolProg 64 :=
.seq rawBody146_133 rawBody146_260

def rawBody146_262 : StackLang.HolProg 64 :=
.seq rawBody146_132 rawBody146_261

def rawBody146_263 : StackLang.HolProg 64 :=
.seq rawBody146_87 rawBody146_262

def rawBody146_264 : StackLang.HolProg 64 :=
.seq rawBody146_84 rawBody146_263

def rawBody146_265 : StackLang.HolProg 64 :=
.seq rawBody146_83 rawBody146_264

def rawBody146_266 : StackLang.HolProg 64 :=
.seq rawBody146_82 rawBody146_265

def rawBody146_267 : StackLang.HolProg 64 :=
.seq rawBody146_81 rawBody146_266

def rawBody146_268 : StackLang.HolProg 64 :=
.seq rawBody146_36 rawBody146_267

def rawBody146_269 : StackLang.HolProg 64 :=
.seq rawBody146_33 rawBody146_268

def rawBody146_270 : StackLang.HolProg 64 :=
.seq rawBody146_32 rawBody146_269

def rawBody146_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) rawBody146_270 rawBody146_271

def rawBody146_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody146_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody146_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody146_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def rawBody146_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody146_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def rawBody146_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody146_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody146_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody146_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody146_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody146_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody146_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody146_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody146_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody146_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_303 : StackLang.HolProg 64 :=
.seq rawBody146_301 rawBody146_302

def rawBody146_304 : StackLang.HolProg 64 :=
.seq rawBody146_300 rawBody146_303

def rawBody146_305 : StackLang.HolProg 64 :=
.seq rawBody146_299 rawBody146_304

def rawBody146_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_308 : StackLang.HolProg 64 :=
.seq rawBody146_306 rawBody146_307

def rawBody146_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody146_305 rawBody146_308

def rawBody146_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def rawBody146_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody146_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_317 : StackLang.HolProg 64 :=
.seq rawBody146_315 rawBody146_316

def rawBody146_318 : StackLang.HolProg 64 :=
.seq rawBody146_314 rawBody146_317

def rawBody146_319 : StackLang.HolProg 64 :=
.seq rawBody146_313 rawBody146_318

def rawBody146_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_322 : StackLang.HolProg 64 :=
.seq rawBody146_320 rawBody146_321

def rawBody146_323 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody146_319 rawBody146_322

def rawBody146_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 2#64)

def rawBody146_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody146_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_331 : StackLang.HolProg 64 :=
.seq rawBody146_329 rawBody146_330

def rawBody146_332 : StackLang.HolProg 64 :=
.seq rawBody146_328 rawBody146_331

def rawBody146_333 : StackLang.HolProg 64 :=
.seq rawBody146_327 rawBody146_332

def rawBody146_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_336 : StackLang.HolProg 64 :=
.seq rawBody146_334 rawBody146_335

def rawBody146_337 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody146_333 rawBody146_336

def rawBody146_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 3#64)

def rawBody146_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody146_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_345 : StackLang.HolProg 64 :=
.seq rawBody146_343 rawBody146_344

def rawBody146_346 : StackLang.HolProg 64 :=
.seq rawBody146_342 rawBody146_345

def rawBody146_347 : StackLang.HolProg 64 :=
.seq rawBody146_341 rawBody146_346

def rawBody146_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_350 : StackLang.HolProg 64 :=
.seq rawBody146_348 rawBody146_349

def rawBody146_351 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9) rawBody146_347 rawBody146_350

def rawBody146_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody146_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody146_357 : StackLang.HolProg 64 :=
.seq rawBody146_355 rawBody146_356

def rawBody146_358 : StackLang.HolProg 64 :=
.seq rawBody146_354 rawBody146_357

def rawBody146_359 : StackLang.HolProg 64 :=
.seq rawBody146_353 rawBody146_358

def rawBody146_360 : StackLang.HolProg 64 :=
.seq rawBody146_352 rawBody146_359

def rawBody146_361 : StackLang.HolProg 64 :=
.seq rawBody146_351 rawBody146_360

def rawBody146_362 : StackLang.HolProg 64 :=
.seq rawBody146_340 rawBody146_361

def rawBody146_363 : StackLang.HolProg 64 :=
.seq rawBody146_339 rawBody146_362

def rawBody146_364 : StackLang.HolProg 64 :=
.seq rawBody146_338 rawBody146_363

def rawBody146_365 : StackLang.HolProg 64 :=
.seq rawBody146_337 rawBody146_364

def rawBody146_366 : StackLang.HolProg 64 :=
.seq rawBody146_326 rawBody146_365

def rawBody146_367 : StackLang.HolProg 64 :=
.seq rawBody146_325 rawBody146_366

def rawBody146_368 : StackLang.HolProg 64 :=
.seq rawBody146_324 rawBody146_367

def rawBody146_369 : StackLang.HolProg 64 :=
.seq rawBody146_323 rawBody146_368

def rawBody146_370 : StackLang.HolProg 64 :=
.seq rawBody146_312 rawBody146_369

def rawBody146_371 : StackLang.HolProg 64 :=
.seq rawBody146_311 rawBody146_370

def rawBody146_372 : StackLang.HolProg 64 :=
.seq rawBody146_310 rawBody146_371

def rawBody146_373 : StackLang.HolProg 64 :=
.seq rawBody146_309 rawBody146_372

def rawBody146_374 : StackLang.HolProg 64 :=
.seq rawBody146_298 rawBody146_373

def rawBody146_375 : StackLang.HolProg 64 :=
.seq rawBody146_297 rawBody146_374

def rawBody146_376 : StackLang.HolProg 64 :=
.seq rawBody146_296 rawBody146_375

def rawBody146_377 : StackLang.HolProg 64 :=
.seq rawBody146_295 rawBody146_376

def rawBody146_378 : StackLang.HolProg 64 :=
.seq rawBody146_294 rawBody146_377

def rawBody146_379 : StackLang.HolProg 64 :=
.seq rawBody146_293 rawBody146_378

def rawBody146_380 : StackLang.HolProg 64 :=
.seq rawBody146_292 rawBody146_379

def rawBody146_381 : StackLang.HolProg 64 :=
.seq rawBody146_291 rawBody146_380

def rawBody146_382 : StackLang.HolProg 64 :=
.seq rawBody146_290 rawBody146_381

def rawBody146_383 : StackLang.HolProg 64 :=
.seq rawBody146_289 rawBody146_382

def rawBody146_384 : StackLang.HolProg 64 :=
.seq rawBody146_288 rawBody146_383

def rawBody146_385 : StackLang.HolProg 64 :=
.seq rawBody146_287 rawBody146_384

def rawBody146_386 : StackLang.HolProg 64 :=
.seq rawBody146_286 rawBody146_385

def rawBody146_387 : StackLang.HolProg 64 :=
.seq rawBody146_285 rawBody146_386

def rawBody146_388 : StackLang.HolProg 64 :=
.seq rawBody146_284 rawBody146_387

def rawBody146_389 : StackLang.HolProg 64 :=
.seq rawBody146_283 rawBody146_388

def rawBody146_390 : StackLang.HolProg 64 :=
.seq rawBody146_282 rawBody146_389

def rawBody146_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody146_393 : StackLang.HolProg 64 :=
.seq rawBody146_391 rawBody146_392

def rawBody146_394 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody146_390 rawBody146_393

def rawBody146_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody146_397 : StackLang.HolProg 64 :=
.seq rawBody146_395 rawBody146_396

def rawBody146_398 : StackLang.HolProg 64 :=
.seq rawBody146_394 rawBody146_397

def rawBody146_399 : StackLang.HolProg 64 :=
.seq rawBody146_281 rawBody146_398

def rawBody146_400 : StackLang.HolProg 64 :=
.loop rawBody146_399

def rawBody146_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody146_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody146_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody146_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody146_405 : StackLang.HolProg 64 :=
.seq rawBody146_403 rawBody146_404

def rawBody146_406 : StackLang.HolProg 64 :=
.seq rawBody146_402 rawBody146_405

def rawBody146_407 : StackLang.HolProg 64 :=
.seq rawBody146_401 rawBody146_406

def rawBody146_408 : StackLang.HolProg 64 :=
.seq rawBody146_400 rawBody146_407

def rawBody146_409 : StackLang.HolProg 64 :=
.seq rawBody146_280 rawBody146_408

def rawBody146_410 : StackLang.HolProg 64 :=
.seq rawBody146_279 rawBody146_409

def rawBody146_411 : StackLang.HolProg 64 :=
.seq rawBody146_278 rawBody146_410

def rawBody146_412 : StackLang.HolProg 64 :=
.seq rawBody146_277 rawBody146_411

def rawBody146_413 : StackLang.HolProg 64 :=
.seq rawBody146_276 rawBody146_412

def rawBody146_414 : StackLang.HolProg 64 :=
.seq rawBody146_275 rawBody146_413

def rawBody146_415 : StackLang.HolProg 64 :=
.seq rawBody146_274 rawBody146_414

def rawBody146_416 : StackLang.HolProg 64 :=
.seq rawBody146_273 rawBody146_415

def rawBody146_417 : StackLang.HolProg 64 :=
.seq rawBody146_272 rawBody146_416

def rawBody146_418 : StackLang.HolProg 64 :=
.seq rawBody146_31 rawBody146_417

def rawBody146_419 : StackLang.HolProg 64 :=
.seq rawBody146_30 rawBody146_418

def rawBody146_420 : StackLang.HolProg 64 :=
.seq rawBody146_29 rawBody146_419

def rawBody146_421 : StackLang.HolProg 64 :=
.seq rawBody146_28 rawBody146_420

def rawBody146_422 : StackLang.HolProg 64 :=
.seq rawBody146_17 rawBody146_421

def rawBody146_423 : StackLang.HolProg 64 :=
.seq rawBody146_16 rawBody146_422

def rawBody146_424 : StackLang.HolProg 64 :=
.seq rawBody146_15 rawBody146_423

def rawBody146_425 : StackLang.HolProg 64 :=
.seq rawBody146_14 rawBody146_424

def rawBody146_426 : StackLang.HolProg 64 :=
.seq rawBody146_13 rawBody146_425

def rawBody146_427 : StackLang.HolProg 64 :=
.seq rawBody146_2 rawBody146_426

def rawBody146_428 : StackLang.HolProg 64 :=
.seq rawBody146_1 rawBody146_427

def rawBody146_429 : StackLang.HolProg 64 :=
.seq rawBody146_0 rawBody146_428

def raw146 : StackLang.HolProg 64 := rawBody146_429
theorem raw146_eq : StackRawCall.compTop RawInfo.rawInfo (function146 (.list [])).1 = raw146 := by
  kernel_rfl
#print axioms raw146_eq
end InitECandidate.Proofs.BackendStages
