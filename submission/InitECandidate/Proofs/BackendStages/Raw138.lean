import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function138
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody138_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody138_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody138_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody138_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody138_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody138_6 : StackLang.HolProg 64 :=
.seq rawBody138_4 rawBody138_5

def rawBody138_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 97#64)

def rawBody138_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_10 : StackLang.HolProg 64 :=
.seq rawBody138_8 rawBody138_9

def rawBody138_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody138_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody138_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 3

def rawBody138_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody138_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody138_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody138_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody138_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_21 : StackLang.HolProg 64 :=
.seq rawBody138_19 rawBody138_20

def rawBody138_22 : StackLang.HolProg 64 :=
.seq rawBody138_18 rawBody138_21

def rawBody138_23 : StackLang.HolProg 64 :=
.seq rawBody138_17 rawBody138_22

def rawBody138_24 : StackLang.HolProg 64 :=
.seq rawBody138_16 rawBody138_23

def rawBody138_25 : StackLang.HolProg 64 :=
.seq rawBody138_15 rawBody138_24

def rawBody138_26 : StackLang.HolProg 64 :=
.seq rawBody138_14 rawBody138_25

def rawBody138_27 : StackLang.HolProg 64 :=
.seq rawBody138_13 rawBody138_26

def rawBody138_28 : StackLang.HolProg 64 :=
.seq rawBody138_12 rawBody138_27

def rawBody138_29 : StackLang.HolProg 64 :=
.seq rawBody138_11 rawBody138_28

def rawBody138_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody138_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody138_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody138_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody138_38 : StackLang.HolProg 64 :=
.seq rawBody138_36 rawBody138_37

def rawBody138_39 : StackLang.HolProg 64 :=
.seq rawBody138_35 rawBody138_38

def rawBody138_40 : StackLang.HolProg 64 :=
.seq rawBody138_34 rawBody138_39

def rawBody138_41 : StackLang.HolProg 64 :=
.seq rawBody138_33 rawBody138_40

def rawBody138_42 : StackLang.HolProg 64 :=
.seq rawBody138_32 rawBody138_41

def rawBody138_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody138_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody138_45 : StackLang.HolProg 64 :=
.seq rawBody138_43 rawBody138_44

def rawBody138_46 : StackLang.HolProg 64 :=
.call (some (rawBody138_42, 0, 138, 2)) (Sum.inl 137) (some (rawBody138_45, 138, 3))

def rawBody138_47 : StackLang.HolProg 64 :=
.seq rawBody138_31 rawBody138_46

def rawBody138_48 : StackLang.HolProg 64 :=
.seq rawBody138_30 rawBody138_47

def rawBody138_49 : StackLang.HolProg 64 :=
.seq rawBody138_29 rawBody138_48

def rawBody138_50 : StackLang.HolProg 64 :=
.seq rawBody138_10 rawBody138_49

def rawBody138_51 : StackLang.HolProg 64 :=
.seq rawBody138_7 rawBody138_50

def rawBody138_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody138_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody138_58 : StackLang.HolProg 64 :=
.seq rawBody138_56 rawBody138_57

def rawBody138_59 : StackLang.HolProg 64 :=
.seq rawBody138_55 rawBody138_58

def rawBody138_60 : StackLang.HolProg 64 :=
.seq rawBody138_54 rawBody138_59

def rawBody138_61 : StackLang.HolProg 64 :=
.seq rawBody138_53 rawBody138_60

def rawBody138_62 : StackLang.HolProg 64 :=
.seq rawBody138_52 rawBody138_61

def rawBody138_63 : StackLang.HolProg 64 :=
.seq rawBody138_51 rawBody138_62

def rawBody138_64 : StackLang.HolProg 64 :=
.seq rawBody138_6 rawBody138_63

def rawBody138_65 : StackLang.HolProg 64 :=
.seq rawBody138_3 rawBody138_64

def rawBody138_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody138_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody138_65 rawBody138_66

def rawBody138_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody138_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody138_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody138_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody138_75 : StackLang.HolProg 64 :=
.seq rawBody138_73 rawBody138_74

def rawBody138_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 98#64)

def rawBody138_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_79 : StackLang.HolProg 64 :=
.seq rawBody138_77 rawBody138_78

def rawBody138_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody138_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody138_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 5

def rawBody138_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody138_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody138_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody138_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody138_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_90 : StackLang.HolProg 64 :=
.seq rawBody138_88 rawBody138_89

def rawBody138_91 : StackLang.HolProg 64 :=
.seq rawBody138_87 rawBody138_90

def rawBody138_92 : StackLang.HolProg 64 :=
.seq rawBody138_86 rawBody138_91

def rawBody138_93 : StackLang.HolProg 64 :=
.seq rawBody138_85 rawBody138_92

def rawBody138_94 : StackLang.HolProg 64 :=
.seq rawBody138_84 rawBody138_93

def rawBody138_95 : StackLang.HolProg 64 :=
.seq rawBody138_83 rawBody138_94

def rawBody138_96 : StackLang.HolProg 64 :=
.seq rawBody138_82 rawBody138_95

def rawBody138_97 : StackLang.HolProg 64 :=
.seq rawBody138_81 rawBody138_96

def rawBody138_98 : StackLang.HolProg 64 :=
.seq rawBody138_80 rawBody138_97

def rawBody138_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody138_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody138_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody138_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody138_107 : StackLang.HolProg 64 :=
.seq rawBody138_105 rawBody138_106

def rawBody138_108 : StackLang.HolProg 64 :=
.seq rawBody138_104 rawBody138_107

def rawBody138_109 : StackLang.HolProg 64 :=
.seq rawBody138_103 rawBody138_108

def rawBody138_110 : StackLang.HolProg 64 :=
.seq rawBody138_102 rawBody138_109

def rawBody138_111 : StackLang.HolProg 64 :=
.seq rawBody138_101 rawBody138_110

def rawBody138_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody138_113 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody138_114 : StackLang.HolProg 64 :=
.seq rawBody138_112 rawBody138_113

def rawBody138_115 : StackLang.HolProg 64 :=
.call (some (rawBody138_111, 0, 138, 4)) (Sum.inl 137) (some (rawBody138_114, 138, 5))

def rawBody138_116 : StackLang.HolProg 64 :=
.seq rawBody138_100 rawBody138_115

def rawBody138_117 : StackLang.HolProg 64 :=
.seq rawBody138_99 rawBody138_116

def rawBody138_118 : StackLang.HolProg 64 :=
.seq rawBody138_98 rawBody138_117

def rawBody138_119 : StackLang.HolProg 64 :=
.seq rawBody138_79 rawBody138_118

def rawBody138_120 : StackLang.HolProg 64 :=
.seq rawBody138_76 rawBody138_119

def rawBody138_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody138_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody138_127 : StackLang.HolProg 64 :=
.seq rawBody138_125 rawBody138_126

def rawBody138_128 : StackLang.HolProg 64 :=
.seq rawBody138_124 rawBody138_127

def rawBody138_129 : StackLang.HolProg 64 :=
.seq rawBody138_123 rawBody138_128

def rawBody138_130 : StackLang.HolProg 64 :=
.seq rawBody138_122 rawBody138_129

def rawBody138_131 : StackLang.HolProg 64 :=
.seq rawBody138_121 rawBody138_130

def rawBody138_132 : StackLang.HolProg 64 :=
.seq rawBody138_120 rawBody138_131

def rawBody138_133 : StackLang.HolProg 64 :=
.seq rawBody138_75 rawBody138_132

def rawBody138_134 : StackLang.HolProg 64 :=
.seq rawBody138_72 rawBody138_133

def rawBody138_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody138_134 rawBody138_135

def rawBody138_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody138_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody138_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 99#64)

def rawBody138_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_146 : StackLang.HolProg 64 :=
.seq rawBody138_144 rawBody138_145

def rawBody138_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody138_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody138_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody138_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 138 7

def rawBody138_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody138_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody138_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody138_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody138_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_157 : StackLang.HolProg 64 :=
.seq rawBody138_155 rawBody138_156

def rawBody138_158 : StackLang.HolProg 64 :=
.seq rawBody138_154 rawBody138_157

def rawBody138_159 : StackLang.HolProg 64 :=
.seq rawBody138_153 rawBody138_158

def rawBody138_160 : StackLang.HolProg 64 :=
.seq rawBody138_152 rawBody138_159

def rawBody138_161 : StackLang.HolProg 64 :=
.seq rawBody138_151 rawBody138_160

def rawBody138_162 : StackLang.HolProg 64 :=
.seq rawBody138_150 rawBody138_161

def rawBody138_163 : StackLang.HolProg 64 :=
.seq rawBody138_149 rawBody138_162

def rawBody138_164 : StackLang.HolProg 64 :=
.seq rawBody138_148 rawBody138_163

def rawBody138_165 : StackLang.HolProg 64 :=
.seq rawBody138_147 rawBody138_164

def rawBody138_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody138_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody138_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody138_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody138_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody138_174 : StackLang.HolProg 64 :=
.seq rawBody138_172 rawBody138_173

def rawBody138_175 : StackLang.HolProg 64 :=
.seq rawBody138_171 rawBody138_174

def rawBody138_176 : StackLang.HolProg 64 :=
.seq rawBody138_170 rawBody138_175

def rawBody138_177 : StackLang.HolProg 64 :=
.seq rawBody138_169 rawBody138_176

def rawBody138_178 : StackLang.HolProg 64 :=
.seq rawBody138_168 rawBody138_177

def rawBody138_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody138_180 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody138_181 : StackLang.HolProg 64 :=
.seq rawBody138_179 rawBody138_180

def rawBody138_182 : StackLang.HolProg 64 :=
.call (some (rawBody138_178, 0, 138, 6)) (Sum.inl 137) (some (rawBody138_181, 138, 7))

def rawBody138_183 : StackLang.HolProg 64 :=
.seq rawBody138_167 rawBody138_182

def rawBody138_184 : StackLang.HolProg 64 :=
.seq rawBody138_166 rawBody138_183

def rawBody138_185 : StackLang.HolProg 64 :=
.seq rawBody138_165 rawBody138_184

def rawBody138_186 : StackLang.HolProg 64 :=
.seq rawBody138_146 rawBody138_185

def rawBody138_187 : StackLang.HolProg 64 :=
.seq rawBody138_143 rawBody138_186

def rawBody138_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody138_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody138_194 : StackLang.HolProg 64 :=
.seq rawBody138_192 rawBody138_193

def rawBody138_195 : StackLang.HolProg 64 :=
.seq rawBody138_191 rawBody138_194

def rawBody138_196 : StackLang.HolProg 64 :=
.seq rawBody138_190 rawBody138_195

def rawBody138_197 : StackLang.HolProg 64 :=
.seq rawBody138_189 rawBody138_196

def rawBody138_198 : StackLang.HolProg 64 :=
.seq rawBody138_188 rawBody138_197

def rawBody138_199 : StackLang.HolProg 64 :=
.seq rawBody138_187 rawBody138_198

def rawBody138_200 : StackLang.HolProg 64 :=
.seq rawBody138_142 rawBody138_199

def rawBody138_201 : StackLang.HolProg 64 :=
.seq rawBody138_141 rawBody138_200

def rawBody138_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody138_203 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody138_201 rawBody138_202

def rawBody138_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody138_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody138_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody138_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody138_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 137

def rawBody138_210 : StackLang.HolProg 64 :=
.seq rawBody138_208 rawBody138_209

def rawBody138_211 : StackLang.HolProg 64 :=
.seq rawBody138_207 rawBody138_210

def rawBody138_212 : StackLang.HolProg 64 :=
.seq rawBody138_206 rawBody138_211

def rawBody138_213 : StackLang.HolProg 64 :=
.seq rawBody138_205 rawBody138_212

def rawBody138_214 : StackLang.HolProg 64 :=
.seq rawBody138_204 rawBody138_213

def rawBody138_215 : StackLang.HolProg 64 :=
.seq rawBody138_203 rawBody138_214

def rawBody138_216 : StackLang.HolProg 64 :=
.seq rawBody138_140 rawBody138_215

def rawBody138_217 : StackLang.HolProg 64 :=
.seq rawBody138_139 rawBody138_216

def rawBody138_218 : StackLang.HolProg 64 :=
.seq rawBody138_138 rawBody138_217

def rawBody138_219 : StackLang.HolProg 64 :=
.seq rawBody138_137 rawBody138_218

def rawBody138_220 : StackLang.HolProg 64 :=
.seq rawBody138_136 rawBody138_219

def rawBody138_221 : StackLang.HolProg 64 :=
.seq rawBody138_71 rawBody138_220

def rawBody138_222 : StackLang.HolProg 64 :=
.seq rawBody138_70 rawBody138_221

def rawBody138_223 : StackLang.HolProg 64 :=
.seq rawBody138_69 rawBody138_222

def rawBody138_224 : StackLang.HolProg 64 :=
.seq rawBody138_68 rawBody138_223

def rawBody138_225 : StackLang.HolProg 64 :=
.seq rawBody138_67 rawBody138_224

def rawBody138_226 : StackLang.HolProg 64 :=
.seq rawBody138_2 rawBody138_225

def rawBody138_227 : StackLang.HolProg 64 :=
.seq rawBody138_1 rawBody138_226

def rawBody138_228 : StackLang.HolProg 64 :=
.seq rawBody138_0 rawBody138_227

def raw138 : StackLang.HolProg 64 := rawBody138_228
theorem raw138_eq : StackRawCall.compTop RawInfo.rawInfo (function138 (.list [])).1 = raw138 := by
  kernel_rfl
#print axioms raw138_eq
end InitECandidate.Proofs.BackendStages
