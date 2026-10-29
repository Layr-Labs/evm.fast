import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function174
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody174_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody174_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 55#64)

def rawBody174_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody174_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody174_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody174_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody174_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody174_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody174_12 : StackLang.HolProg 64 :=
.seq rawBody174_10 rawBody174_11

def rawBody174_13 : StackLang.HolProg 64 :=
.seq rawBody174_9 rawBody174_12

def rawBody174_14 : StackLang.HolProg 64 :=
.seq rawBody174_8 rawBody174_13

def rawBody174_15 : StackLang.HolProg 64 :=
.seq rawBody174_7 rawBody174_14

def rawBody174_16 : StackLang.HolProg 64 :=
.seq rawBody174_6 rawBody174_15

def rawBody174_17 : StackLang.HolProg 64 :=
.seq rawBody174_5 rawBody174_16

def rawBody174_18 : StackLang.HolProg 64 :=
.seq rawBody174_4 rawBody174_17

def rawBody174_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody174_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody174_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody174_22 : StackLang.HolProg 64 :=
.seq rawBody174_20 rawBody174_21

def rawBody174_23 : StackLang.HolProg 64 :=
.seq rawBody174_19 rawBody174_22

def rawBody174_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody174_18 rawBody174_23

def rawBody174_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody174_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody174_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody174_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody174_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody174_30 : StackLang.HolProg 64 :=
.seq rawBody174_28 rawBody174_29

def rawBody174_31 : StackLang.HolProg 64 :=
.seq rawBody174_27 rawBody174_30

def rawBody174_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 194#64)

def rawBody174_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody174_35 : StackLang.HolProg 64 :=
.seq rawBody174_33 rawBody174_34

def rawBody174_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody174_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody174_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody174_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 3

def rawBody174_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody174_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody174_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody174_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody174_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody174_46 : StackLang.HolProg 64 :=
.seq rawBody174_44 rawBody174_45

def rawBody174_47 : StackLang.HolProg 64 :=
.seq rawBody174_43 rawBody174_46

def rawBody174_48 : StackLang.HolProg 64 :=
.seq rawBody174_42 rawBody174_47

def rawBody174_49 : StackLang.HolProg 64 :=
.seq rawBody174_41 rawBody174_48

def rawBody174_50 : StackLang.HolProg 64 :=
.seq rawBody174_40 rawBody174_49

def rawBody174_51 : StackLang.HolProg 64 :=
.seq rawBody174_39 rawBody174_50

def rawBody174_52 : StackLang.HolProg 64 :=
.seq rawBody174_38 rawBody174_51

def rawBody174_53 : StackLang.HolProg 64 :=
.seq rawBody174_37 rawBody174_52

def rawBody174_54 : StackLang.HolProg 64 :=
.seq rawBody174_36 rawBody174_53

def rawBody174_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody174_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody174_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody174_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody174_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody174_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody174_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody174_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody174_65 : StackLang.HolProg 64 :=
.seq rawBody174_63 rawBody174_64

def rawBody174_66 : StackLang.HolProg 64 :=
.seq rawBody174_62 rawBody174_65

def rawBody174_67 : StackLang.HolProg 64 :=
.seq rawBody174_61 rawBody174_66

def rawBody174_68 : StackLang.HolProg 64 :=
.seq rawBody174_60 rawBody174_67

def rawBody174_69 : StackLang.HolProg 64 :=
.seq rawBody174_59 rawBody174_68

def rawBody174_70 : StackLang.HolProg 64 :=
.seq rawBody174_58 rawBody174_69

def rawBody174_71 : StackLang.HolProg 64 :=
.seq rawBody174_57 rawBody174_70

def rawBody174_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody174_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody174_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody174_75 : StackLang.HolProg 64 :=
.seq rawBody174_73 rawBody174_74

def rawBody174_76 : StackLang.HolProg 64 :=
.seq rawBody174_72 rawBody174_75

def rawBody174_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody174_78 : StackLang.HolProg 64 :=
.seq rawBody174_76 rawBody174_77

def rawBody174_79 : StackLang.HolProg 64 :=
.call (some (rawBody174_71, 0, 174, 2)) (Sum.inl 172) (some (rawBody174_78, 174, 3))

def rawBody174_80 : StackLang.HolProg 64 :=
.seq rawBody174_56 rawBody174_79

def rawBody174_81 : StackLang.HolProg 64 :=
.seq rawBody174_55 rawBody174_80

def rawBody174_82 : StackLang.HolProg 64 :=
.seq rawBody174_54 rawBody174_81

def rawBody174_83 : StackLang.HolProg 64 :=
.seq rawBody174_35 rawBody174_82

def rawBody174_84 : StackLang.HolProg 64 :=
.seq rawBody174_32 rawBody174_83

def rawBody174_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody174_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody174_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 55#64)))

def rawBody174_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody174_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody174_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody174_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 195#64)

def rawBody174_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody174_96 : StackLang.HolProg 64 :=
.seq rawBody174_94 rawBody174_95

def rawBody174_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody174_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody174_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody174_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 5

def rawBody174_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody174_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody174_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody174_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody174_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody174_107 : StackLang.HolProg 64 :=
.seq rawBody174_105 rawBody174_106

def rawBody174_108 : StackLang.HolProg 64 :=
.seq rawBody174_104 rawBody174_107

def rawBody174_109 : StackLang.HolProg 64 :=
.seq rawBody174_103 rawBody174_108

def rawBody174_110 : StackLang.HolProg 64 :=
.seq rawBody174_102 rawBody174_109

def rawBody174_111 : StackLang.HolProg 64 :=
.seq rawBody174_101 rawBody174_110

def rawBody174_112 : StackLang.HolProg 64 :=
.seq rawBody174_100 rawBody174_111

def rawBody174_113 : StackLang.HolProg 64 :=
.seq rawBody174_99 rawBody174_112

def rawBody174_114 : StackLang.HolProg 64 :=
.seq rawBody174_98 rawBody174_113

def rawBody174_115 : StackLang.HolProg 64 :=
.seq rawBody174_97 rawBody174_114

def rawBody174_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody174_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody174_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody174_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody174_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody174_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody174_124 : StackLang.HolProg 64 :=
.seq rawBody174_122 rawBody174_123

def rawBody174_125 : StackLang.HolProg 64 :=
.seq rawBody174_121 rawBody174_124

def rawBody174_126 : StackLang.HolProg 64 :=
.seq rawBody174_120 rawBody174_125

def rawBody174_127 : StackLang.HolProg 64 :=
.seq rawBody174_119 rawBody174_126

def rawBody174_128 : StackLang.HolProg 64 :=
.seq rawBody174_118 rawBody174_127

def rawBody174_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody174_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody174_131 : StackLang.HolProg 64 :=
.seq rawBody174_129 rawBody174_130

def rawBody174_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody174_133 : StackLang.HolProg 64 :=
.seq rawBody174_131 rawBody174_132

def rawBody174_134 : StackLang.HolProg 64 :=
.call (some (rawBody174_128, 0, 174, 4)) (Sum.inl 173) (some (rawBody174_133, 174, 5))

def rawBody174_135 : StackLang.HolProg 64 :=
.seq rawBody174_117 rawBody174_134

def rawBody174_136 : StackLang.HolProg 64 :=
.seq rawBody174_116 rawBody174_135

def rawBody174_137 : StackLang.HolProg 64 :=
.seq rawBody174_115 rawBody174_136

def rawBody174_138 : StackLang.HolProg 64 :=
.seq rawBody174_96 rawBody174_137

def rawBody174_139 : StackLang.HolProg 64 :=
.seq rawBody174_93 rawBody174_138

def rawBody174_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody174_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody174_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody174_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody174_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody174_146 : StackLang.HolProg 64 :=
.seq rawBody174_144 rawBody174_145

def rawBody174_147 : StackLang.HolProg 64 :=
.seq rawBody174_143 rawBody174_146

def rawBody174_148 : StackLang.HolProg 64 :=
.seq rawBody174_142 rawBody174_147

def rawBody174_149 : StackLang.HolProg 64 :=
.seq rawBody174_141 rawBody174_148

def rawBody174_150 : StackLang.HolProg 64 :=
.seq rawBody174_140 rawBody174_149

def rawBody174_151 : StackLang.HolProg 64 :=
.seq rawBody174_139 rawBody174_150

def rawBody174_152 : StackLang.HolProg 64 :=
.seq rawBody174_92 rawBody174_151

def rawBody174_153 : StackLang.HolProg 64 :=
.seq rawBody174_91 rawBody174_152

def rawBody174_154 : StackLang.HolProg 64 :=
.seq rawBody174_90 rawBody174_153

def rawBody174_155 : StackLang.HolProg 64 :=
.seq rawBody174_89 rawBody174_154

def rawBody174_156 : StackLang.HolProg 64 :=
.seq rawBody174_88 rawBody174_155

def rawBody174_157 : StackLang.HolProg 64 :=
.seq rawBody174_87 rawBody174_156

def rawBody174_158 : StackLang.HolProg 64 :=
.seq rawBody174_86 rawBody174_157

def rawBody174_159 : StackLang.HolProg 64 :=
.seq rawBody174_85 rawBody174_158

def rawBody174_160 : StackLang.HolProg 64 :=
.seq rawBody174_84 rawBody174_159

def rawBody174_161 : StackLang.HolProg 64 :=
.seq rawBody174_31 rawBody174_160

def rawBody174_162 : StackLang.HolProg 64 :=
.seq rawBody174_26 rawBody174_161

def rawBody174_163 : StackLang.HolProg 64 :=
.seq rawBody174_25 rawBody174_162

def rawBody174_164 : StackLang.HolProg 64 :=
.seq rawBody174_24 rawBody174_163

def rawBody174_165 : StackLang.HolProg 64 :=
.seq rawBody174_3 rawBody174_164

def rawBody174_166 : StackLang.HolProg 64 :=
.seq rawBody174_2 rawBody174_165

def rawBody174_167 : StackLang.HolProg 64 :=
.seq rawBody174_1 rawBody174_166

def rawBody174_168 : StackLang.HolProg 64 :=
.seq rawBody174_0 rawBody174_167

def raw174 : StackLang.HolProg 64 := rawBody174_168
theorem raw174_eq : StackRawCall.compTop RawInfo.rawInfo (function174 (.list [])).1 = raw174 := by
  kernel_rfl
#print axioms raw174_eq
end InitECandidate.Proofs.BackendStages
