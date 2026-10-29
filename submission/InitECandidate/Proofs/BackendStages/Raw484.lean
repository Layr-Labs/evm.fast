import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function484
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody484_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody484_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody484_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody484_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody484_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody484_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody484_11 : StackLang.HolProg 64 :=
.seq rawBody484_9 rawBody484_10

def rawBody484_12 : StackLang.HolProg 64 :=
.seq rawBody484_8 rawBody484_11

def rawBody484_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody484_15 : StackLang.HolProg 64 :=
.seq rawBody484_13 rawBody484_14

def rawBody484_16 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody484_12 rawBody484_15

def rawBody484_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody484_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody484_20 : StackLang.HolProg 64 :=
.seq rawBody484_18 rawBody484_19

def rawBody484_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody484_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody484_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody484_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody484_25 : StackLang.HolProg 64 :=
.seq rawBody484_23 rawBody484_24

def rawBody484_26 : StackLang.HolProg 64 :=
.seq rawBody484_22 rawBody484_25

def rawBody484_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1521#64)

def rawBody484_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody484_30 : StackLang.HolProg 64 :=
.seq rawBody484_28 rawBody484_29

def rawBody484_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody484_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody484_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody484_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 3

def rawBody484_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody484_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody484_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody484_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody484_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody484_41 : StackLang.HolProg 64 :=
.seq rawBody484_39 rawBody484_40

def rawBody484_42 : StackLang.HolProg 64 :=
.seq rawBody484_38 rawBody484_41

def rawBody484_43 : StackLang.HolProg 64 :=
.seq rawBody484_37 rawBody484_42

def rawBody484_44 : StackLang.HolProg 64 :=
.seq rawBody484_36 rawBody484_43

def rawBody484_45 : StackLang.HolProg 64 :=
.seq rawBody484_35 rawBody484_44

def rawBody484_46 : StackLang.HolProg 64 :=
.seq rawBody484_34 rawBody484_45

def rawBody484_47 : StackLang.HolProg 64 :=
.seq rawBody484_33 rawBody484_46

def rawBody484_48 : StackLang.HolProg 64 :=
.seq rawBody484_32 rawBody484_47

def rawBody484_49 : StackLang.HolProg 64 :=
.seq rawBody484_31 rawBody484_48

def rawBody484_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody484_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody484_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody484_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody484_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody484_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody484_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody484_59 : StackLang.HolProg 64 :=
.seq rawBody484_57 rawBody484_58

def rawBody484_60 : StackLang.HolProg 64 :=
.seq rawBody484_56 rawBody484_59

def rawBody484_61 : StackLang.HolProg 64 :=
.seq rawBody484_55 rawBody484_60

def rawBody484_62 : StackLang.HolProg 64 :=
.seq rawBody484_54 rawBody484_61

def rawBody484_63 : StackLang.HolProg 64 :=
.seq rawBody484_53 rawBody484_62

def rawBody484_64 : StackLang.HolProg 64 :=
.seq rawBody484_52 rawBody484_63

def rawBody484_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def rawBody484_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody484_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody484_68 : StackLang.HolProg 64 :=
.seq rawBody484_66 rawBody484_67

def rawBody484_69 : StackLang.HolProg 64 :=
.seq rawBody484_65 rawBody484_68

def rawBody484_70 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody484_71 : StackLang.HolProg 64 :=
.seq rawBody484_69 rawBody484_70

def rawBody484_72 : StackLang.HolProg 64 :=
.call (some (rawBody484_64, 0, 484, 2)) (Sum.inl 77) (some (rawBody484_71, 484, 3))

def rawBody484_73 : StackLang.HolProg 64 :=
.seq rawBody484_51 rawBody484_72

def rawBody484_74 : StackLang.HolProg 64 :=
.seq rawBody484_50 rawBody484_73

def rawBody484_75 : StackLang.HolProg 64 :=
.seq rawBody484_49 rawBody484_74

def rawBody484_76 : StackLang.HolProg 64 :=
.seq rawBody484_30 rawBody484_75

def rawBody484_77 : StackLang.HolProg 64 :=
.seq rawBody484_27 rawBody484_76

def rawBody484_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_80 : StackLang.HolProg 64 :=
.seq rawBody484_78 rawBody484_79

def rawBody484_81 : StackLang.HolProg 64 :=
.seq rawBody484_77 rawBody484_80

def rawBody484_82 : StackLang.HolProg 64 :=
.seq rawBody484_26 rawBody484_81

def rawBody484_83 : StackLang.HolProg 64 :=
.seq rawBody484_21 rawBody484_82

def rawBody484_84 : StackLang.HolProg 64 :=
.seq rawBody484_20 rawBody484_83

def rawBody484_85 : StackLang.HolProg 64 :=
.seq rawBody484_17 rawBody484_84

def rawBody484_86 : StackLang.HolProg 64 :=
.seq rawBody484_16 rawBody484_85

def rawBody484_87 : StackLang.HolProg 64 :=
.seq rawBody484_7 rawBody484_86

def rawBody484_88 : StackLang.HolProg 64 :=
.seq rawBody484_6 rawBody484_87

def rawBody484_89 : StackLang.HolProg 64 :=
.seq rawBody484_5 rawBody484_88

def rawBody484_90 : StackLang.HolProg 64 :=
.seq rawBody484_4 rawBody484_89

def rawBody484_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody484_93 : StackLang.HolProg 64 :=
.seq rawBody484_91 rawBody484_92

def rawBody484_94 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody484_90 rawBody484_93

def rawBody484_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody484_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody484_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1522#64)

def rawBody484_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody484_104 : StackLang.HolProg 64 :=
.seq rawBody484_102 rawBody484_103

def rawBody484_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody484_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody484_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody484_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 484 5

def rawBody484_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody484_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody484_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody484_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody484_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody484_115 : StackLang.HolProg 64 :=
.seq rawBody484_113 rawBody484_114

def rawBody484_116 : StackLang.HolProg 64 :=
.seq rawBody484_112 rawBody484_115

def rawBody484_117 : StackLang.HolProg 64 :=
.seq rawBody484_111 rawBody484_116

def rawBody484_118 : StackLang.HolProg 64 :=
.seq rawBody484_110 rawBody484_117

def rawBody484_119 : StackLang.HolProg 64 :=
.seq rawBody484_109 rawBody484_118

def rawBody484_120 : StackLang.HolProg 64 :=
.seq rawBody484_108 rawBody484_119

def rawBody484_121 : StackLang.HolProg 64 :=
.seq rawBody484_107 rawBody484_120

def rawBody484_122 : StackLang.HolProg 64 :=
.seq rawBody484_106 rawBody484_121

def rawBody484_123 : StackLang.HolProg 64 :=
.seq rawBody484_105 rawBody484_122

def rawBody484_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody484_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody484_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody484_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody484_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody484_131 : StackLang.HolProg 64 :=
.seq rawBody484_129 rawBody484_130

def rawBody484_132 : StackLang.HolProg 64 :=
.seq rawBody484_128 rawBody484_131

def rawBody484_133 : StackLang.HolProg 64 :=
.seq rawBody484_127 rawBody484_132

def rawBody484_134 : StackLang.HolProg 64 :=
.seq rawBody484_126 rawBody484_133

def rawBody484_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody484_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody484_137 : StackLang.HolProg 64 :=
.seq rawBody484_135 rawBody484_136

def rawBody484_138 : StackLang.HolProg 64 :=
.call (some (rawBody484_134, 0, 484, 4)) (Sum.inl 78) (some (rawBody484_137, 484, 5))

def rawBody484_139 : StackLang.HolProg 64 :=
.seq rawBody484_125 rawBody484_138

def rawBody484_140 : StackLang.HolProg 64 :=
.seq rawBody484_124 rawBody484_139

def rawBody484_141 : StackLang.HolProg 64 :=
.seq rawBody484_123 rawBody484_140

def rawBody484_142 : StackLang.HolProg 64 :=
.seq rawBody484_104 rawBody484_141

def rawBody484_143 : StackLang.HolProg 64 :=
.seq rawBody484_101 rawBody484_142

def rawBody484_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody484_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody484_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody484_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody484_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody484_149 : StackLang.HolProg 64 :=
.seq rawBody484_147 rawBody484_148

def rawBody484_150 : StackLang.HolProg 64 :=
.seq rawBody484_146 rawBody484_149

def rawBody484_151 : StackLang.HolProg 64 :=
.seq rawBody484_145 rawBody484_150

def rawBody484_152 : StackLang.HolProg 64 :=
.seq rawBody484_144 rawBody484_151

def rawBody484_153 : StackLang.HolProg 64 :=
.seq rawBody484_143 rawBody484_152

def rawBody484_154 : StackLang.HolProg 64 :=
.seq rawBody484_100 rawBody484_153

def rawBody484_155 : StackLang.HolProg 64 :=
.seq rawBody484_99 rawBody484_154

def rawBody484_156 : StackLang.HolProg 64 :=
.seq rawBody484_98 rawBody484_155

def rawBody484_157 : StackLang.HolProg 64 :=
.seq rawBody484_97 rawBody484_156

def rawBody484_158 : StackLang.HolProg 64 :=
.seq rawBody484_96 rawBody484_157

def rawBody484_159 : StackLang.HolProg 64 :=
.seq rawBody484_95 rawBody484_158

def rawBody484_160 : StackLang.HolProg 64 :=
.seq rawBody484_94 rawBody484_159

def rawBody484_161 : StackLang.HolProg 64 :=
.seq rawBody484_3 rawBody484_160

def rawBody484_162 : StackLang.HolProg 64 :=
.seq rawBody484_2 rawBody484_161

def rawBody484_163 : StackLang.HolProg 64 :=
.seq rawBody484_1 rawBody484_162

def rawBody484_164 : StackLang.HolProg 64 :=
.seq rawBody484_0 rawBody484_163

def raw484 : StackLang.HolProg 64 := rawBody484_164
theorem raw484_eq : StackRawCall.compTop RawInfo.rawInfo (function484 (.list [])).1 = raw484 := by
  kernel_rfl
#print axioms raw484_eq
end InitECandidate.Proofs.BackendStages
