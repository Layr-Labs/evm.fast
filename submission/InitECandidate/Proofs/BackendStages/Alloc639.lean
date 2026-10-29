import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw639
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody639_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody639_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody639_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 7

def AllocBody639_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody639_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody639_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody639_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody639_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody639_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody639_9 : StackLang.HolProg 64 :=
.seq AllocBody639_7 AllocBody639_8

def AllocBody639_10 : StackLang.HolProg 64 :=
.seq AllocBody639_6 AllocBody639_9

def AllocBody639_11 : StackLang.HolProg 64 :=
.seq AllocBody639_5 AllocBody639_10

def AllocBody639_12 : StackLang.HolProg 64 :=
.seq AllocBody639_4 AllocBody639_11

def AllocBody639_13 : StackLang.HolProg 64 :=
.seq AllocBody639_3 AllocBody639_12

def AllocBody639_14 : StackLang.HolProg 64 :=
.seq AllocBody639_2 AllocBody639_13

def AllocBody639_15 : StackLang.HolProg 64 :=
.seq AllocBody639_1 AllocBody639_14

def AllocBody639_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2589#64)

def AllocBody639_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_19 : StackLang.HolProg 64 :=
.seq AllocBody639_17 AllocBody639_18

def AllocBody639_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody639_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody639_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 3

def AllocBody639_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody639_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody639_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody639_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody639_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_30 : StackLang.HolProg 64 :=
.seq AllocBody639_28 AllocBody639_29

def AllocBody639_31 : StackLang.HolProg 64 :=
.seq AllocBody639_27 AllocBody639_30

def AllocBody639_32 : StackLang.HolProg 64 :=
.seq AllocBody639_26 AllocBody639_31

def AllocBody639_33 : StackLang.HolProg 64 :=
.seq AllocBody639_25 AllocBody639_32

def AllocBody639_34 : StackLang.HolProg 64 :=
.seq AllocBody639_24 AllocBody639_33

def AllocBody639_35 : StackLang.HolProg 64 :=
.seq AllocBody639_23 AllocBody639_34

def AllocBody639_36 : StackLang.HolProg 64 :=
.seq AllocBody639_22 AllocBody639_35

def AllocBody639_37 : StackLang.HolProg 64 :=
.seq AllocBody639_21 AllocBody639_36

def AllocBody639_38 : StackLang.HolProg 64 :=
.seq AllocBody639_20 AllocBody639_37

def AllocBody639_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody639_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody639_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody639_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody639_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody639_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody639_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody639_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody639_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody639_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody639_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody639_53 : StackLang.HolProg 64 :=
.seq AllocBody639_51 AllocBody639_52

def AllocBody639_54 : StackLang.HolProg 64 :=
.seq AllocBody639_50 AllocBody639_53

def AllocBody639_55 : StackLang.HolProg 64 :=
.seq AllocBody639_49 AllocBody639_54

def AllocBody639_56 : StackLang.HolProg 64 :=
.seq AllocBody639_48 AllocBody639_55

def AllocBody639_57 : StackLang.HolProg 64 :=
.seq AllocBody639_47 AllocBody639_56

def AllocBody639_58 : StackLang.HolProg 64 :=
.seq AllocBody639_46 AllocBody639_57

def AllocBody639_59 : StackLang.HolProg 64 :=
.seq AllocBody639_45 AllocBody639_58

def AllocBody639_60 : StackLang.HolProg 64 :=
.seq AllocBody639_44 AllocBody639_59

def AllocBody639_61 : StackLang.HolProg 64 :=
.seq AllocBody639_43 AllocBody639_60

def AllocBody639_62 : StackLang.HolProg 64 :=
.seq AllocBody639_42 AllocBody639_61

def AllocBody639_63 : StackLang.HolProg 64 :=
.seq AllocBody639_41 AllocBody639_62

def AllocBody639_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody639_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 6

def AllocBody639_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody639_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody639_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody639_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody639_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody639_71 : StackLang.HolProg 64 :=
.seq AllocBody639_69 AllocBody639_70

def AllocBody639_72 : StackLang.HolProg 64 :=
.seq AllocBody639_68 AllocBody639_71

def AllocBody639_73 : StackLang.HolProg 64 :=
.seq AllocBody639_67 AllocBody639_72

def AllocBody639_74 : StackLang.HolProg 64 :=
.seq AllocBody639_66 AllocBody639_73

def AllocBody639_75 : StackLang.HolProg 64 :=
.seq AllocBody639_65 AllocBody639_74

def AllocBody639_76 : StackLang.HolProg 64 :=
.seq AllocBody639_64 AllocBody639_75

def AllocBody639_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody639_78 : StackLang.HolProg 64 :=
.seq AllocBody639_76 AllocBody639_77

def AllocBody639_79 : StackLang.HolProg 64 :=
.call (some (AllocBody639_63, 0, 639, 2)) (Sum.inl 126) (some (AllocBody639_78, 639, 3))

def AllocBody639_80 : StackLang.HolProg 64 :=
.seq AllocBody639_40 AllocBody639_79

def AllocBody639_81 : StackLang.HolProg 64 :=
.seq AllocBody639_39 AllocBody639_80

def AllocBody639_82 : StackLang.HolProg 64 :=
.seq AllocBody639_38 AllocBody639_81

def AllocBody639_83 : StackLang.HolProg 64 :=
.seq AllocBody639_19 AllocBody639_82

def AllocBody639_84 : StackLang.HolProg 64 :=
.seq AllocBody639_16 AllocBody639_83

def AllocBody639_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody639_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody639_90 : StackLang.HolProg 64 :=
.seq AllocBody639_88 AllocBody639_89

def AllocBody639_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody639_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody639_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody639_94 : StackLang.HolProg 64 :=
.seq AllocBody639_92 AllocBody639_93

def AllocBody639_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 8

def AllocBody639_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody639_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def AllocBody639_98 : StackLang.HolProg 64 :=
.seq AllocBody639_96 AllocBody639_97

def AllocBody639_99 : StackLang.HolProg 64 :=
.seq AllocBody639_95 AllocBody639_98

def AllocBody639_100 : StackLang.HolProg 64 :=
.seq AllocBody639_94 AllocBody639_99

def AllocBody639_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2590#64)

def AllocBody639_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_104 : StackLang.HolProg 64 :=
.seq AllocBody639_102 AllocBody639_103

def AllocBody639_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody639_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody639_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 5

def AllocBody639_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody639_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody639_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody639_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody639_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_115 : StackLang.HolProg 64 :=
.seq AllocBody639_113 AllocBody639_114

def AllocBody639_116 : StackLang.HolProg 64 :=
.seq AllocBody639_112 AllocBody639_115

def AllocBody639_117 : StackLang.HolProg 64 :=
.seq AllocBody639_111 AllocBody639_116

def AllocBody639_118 : StackLang.HolProg 64 :=
.seq AllocBody639_110 AllocBody639_117

def AllocBody639_119 : StackLang.HolProg 64 :=
.seq AllocBody639_109 AllocBody639_118

def AllocBody639_120 : StackLang.HolProg 64 :=
.seq AllocBody639_108 AllocBody639_119

def AllocBody639_121 : StackLang.HolProg 64 :=
.seq AllocBody639_107 AllocBody639_120

def AllocBody639_122 : StackLang.HolProg 64 :=
.seq AllocBody639_106 AllocBody639_121

def AllocBody639_123 : StackLang.HolProg 64 :=
.seq AllocBody639_105 AllocBody639_122

def AllocBody639_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody639_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody639_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody639_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody639_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody639_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody639_133 : StackLang.HolProg 64 :=
.seq AllocBody639_131 AllocBody639_132

def AllocBody639_134 : StackLang.HolProg 64 :=
.seq AllocBody639_130 AllocBody639_133

def AllocBody639_135 : StackLang.HolProg 64 :=
.seq AllocBody639_129 AllocBody639_134

def AllocBody639_136 : StackLang.HolProg 64 :=
.seq AllocBody639_128 AllocBody639_135

def AllocBody639_137 : StackLang.HolProg 64 :=
.seq AllocBody639_127 AllocBody639_136

def AllocBody639_138 : StackLang.HolProg 64 :=
.seq AllocBody639_126 AllocBody639_137

def AllocBody639_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody639_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 6

def AllocBody639_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody639_142 : StackLang.HolProg 64 :=
.seq AllocBody639_140 AllocBody639_141

def AllocBody639_143 : StackLang.HolProg 64 :=
.seq AllocBody639_139 AllocBody639_142

def AllocBody639_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody639_145 : StackLang.HolProg 64 :=
.seq AllocBody639_143 AllocBody639_144

def AllocBody639_146 : StackLang.HolProg 64 :=
.call (some (AllocBody639_138, 0, 639, 4)) (Sum.inl 77) (some (AllocBody639_145, 639, 5))

def AllocBody639_147 : StackLang.HolProg 64 :=
.seq AllocBody639_125 AllocBody639_146

def AllocBody639_148 : StackLang.HolProg 64 :=
.seq AllocBody639_124 AllocBody639_147

def AllocBody639_149 : StackLang.HolProg 64 :=
.seq AllocBody639_123 AllocBody639_148

def AllocBody639_150 : StackLang.HolProg 64 :=
.seq AllocBody639_104 AllocBody639_149

def AllocBody639_151 : StackLang.HolProg 64 :=
.seq AllocBody639_101 AllocBody639_150

def AllocBody639_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody639_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody639_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody639_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody639_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2591#64)

def AllocBody639_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_164 : StackLang.HolProg 64 :=
.seq AllocBody639_162 AllocBody639_163

def AllocBody639_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody639_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody639_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 7

def AllocBody639_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody639_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody639_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody639_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody639_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_175 : StackLang.HolProg 64 :=
.seq AllocBody639_173 AllocBody639_174

def AllocBody639_176 : StackLang.HolProg 64 :=
.seq AllocBody639_172 AllocBody639_175

def AllocBody639_177 : StackLang.HolProg 64 :=
.seq AllocBody639_171 AllocBody639_176

def AllocBody639_178 : StackLang.HolProg 64 :=
.seq AllocBody639_170 AllocBody639_177

def AllocBody639_179 : StackLang.HolProg 64 :=
.seq AllocBody639_169 AllocBody639_178

def AllocBody639_180 : StackLang.HolProg 64 :=
.seq AllocBody639_168 AllocBody639_179

def AllocBody639_181 : StackLang.HolProg 64 :=
.seq AllocBody639_167 AllocBody639_180

def AllocBody639_182 : StackLang.HolProg 64 :=
.seq AllocBody639_166 AllocBody639_181

def AllocBody639_183 : StackLang.HolProg 64 :=
.seq AllocBody639_165 AllocBody639_182

def AllocBody639_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody639_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody639_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody639_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody639_191 : StackLang.HolProg 64 :=
.seq AllocBody639_189 AllocBody639_190

def AllocBody639_192 : StackLang.HolProg 64 :=
.seq AllocBody639_188 AllocBody639_191

def AllocBody639_193 : StackLang.HolProg 64 :=
.seq AllocBody639_187 AllocBody639_192

def AllocBody639_194 : StackLang.HolProg 64 :=
.seq AllocBody639_186 AllocBody639_193

def AllocBody639_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 7

def AllocBody639_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody639_197 : StackLang.HolProg 64 :=
.seq AllocBody639_195 AllocBody639_196

def AllocBody639_198 : StackLang.HolProg 64 :=
.call (some (AllocBody639_194, 0, 639, 6)) (Sum.inl 78) (some (AllocBody639_197, 639, 7))

def AllocBody639_199 : StackLang.HolProg 64 :=
.seq AllocBody639_185 AllocBody639_198

def AllocBody639_200 : StackLang.HolProg 64 :=
.seq AllocBody639_184 AllocBody639_199

def AllocBody639_201 : StackLang.HolProg 64 :=
.seq AllocBody639_183 AllocBody639_200

def AllocBody639_202 : StackLang.HolProg 64 :=
.seq AllocBody639_164 AllocBody639_201

def AllocBody639_203 : StackLang.HolProg 64 :=
.seq AllocBody639_161 AllocBody639_202

def AllocBody639_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody639_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody639_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody639_209 : StackLang.HolProg 64 :=
.seq AllocBody639_207 AllocBody639_208

def AllocBody639_210 : StackLang.HolProg 64 :=
.seq AllocBody639_206 AllocBody639_209

def AllocBody639_211 : StackLang.HolProg 64 :=
.seq AllocBody639_205 AllocBody639_210

def AllocBody639_212 : StackLang.HolProg 64 :=
.seq AllocBody639_204 AllocBody639_211

def AllocBody639_213 : StackLang.HolProg 64 :=
.seq AllocBody639_203 AllocBody639_212

def AllocBody639_214 : StackLang.HolProg 64 :=
.seq AllocBody639_160 AllocBody639_213

def AllocBody639_215 : StackLang.HolProg 64 :=
.seq AllocBody639_159 AllocBody639_214

def AllocBody639_216 : StackLang.HolProg 64 :=
.seq AllocBody639_158 AllocBody639_215

def AllocBody639_217 : StackLang.HolProg 64 :=
.seq AllocBody639_157 AllocBody639_216

def AllocBody639_218 : StackLang.HolProg 64 :=
.seq AllocBody639_156 AllocBody639_217

def AllocBody639_219 : StackLang.HolProg 64 :=
.seq AllocBody639_155 AllocBody639_218

def AllocBody639_220 : StackLang.HolProg 64 :=
.seq AllocBody639_154 AllocBody639_219

def AllocBody639_221 : StackLang.HolProg 64 :=
.seq AllocBody639_153 AllocBody639_220

def AllocBody639_222 : StackLang.HolProg 64 :=
.seq AllocBody639_152 AllocBody639_221

def AllocBody639_223 : StackLang.HolProg 64 :=
.seq AllocBody639_151 AllocBody639_222

def AllocBody639_224 : StackLang.HolProg 64 :=
.seq AllocBody639_100 AllocBody639_223

def AllocBody639_225 : StackLang.HolProg 64 :=
.seq AllocBody639_91 AllocBody639_224

def AllocBody639_226 : StackLang.HolProg 64 :=
.seq AllocBody639_90 AllocBody639_225

def AllocBody639_227 : StackLang.HolProg 64 :=
.seq AllocBody639_87 AllocBody639_226

def AllocBody639_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_229 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody639_227 AllocBody639_228

def AllocBody639_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody639_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2592#64)

def AllocBody639_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_236 : StackLang.HolProg 64 :=
.seq AllocBody639_234 AllocBody639_235

def AllocBody639_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody639_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody639_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody639_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 639 9

def AllocBody639_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody639_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody639_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody639_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody639_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_247 : StackLang.HolProg 64 :=
.seq AllocBody639_245 AllocBody639_246

def AllocBody639_248 : StackLang.HolProg 64 :=
.seq AllocBody639_244 AllocBody639_247

def AllocBody639_249 : StackLang.HolProg 64 :=
.seq AllocBody639_243 AllocBody639_248

def AllocBody639_250 : StackLang.HolProg 64 :=
.seq AllocBody639_242 AllocBody639_249

def AllocBody639_251 : StackLang.HolProg 64 :=
.seq AllocBody639_241 AllocBody639_250

def AllocBody639_252 : StackLang.HolProg 64 :=
.seq AllocBody639_240 AllocBody639_251

def AllocBody639_253 : StackLang.HolProg 64 :=
.seq AllocBody639_239 AllocBody639_252

def AllocBody639_254 : StackLang.HolProg 64 :=
.seq AllocBody639_238 AllocBody639_253

def AllocBody639_255 : StackLang.HolProg 64 :=
.seq AllocBody639_237 AllocBody639_254

def AllocBody639_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody639_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody639_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody639_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody639_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody639_263 : StackLang.HolProg 64 :=
.seq AllocBody639_261 AllocBody639_262

def AllocBody639_264 : StackLang.HolProg 64 :=
.seq AllocBody639_260 AllocBody639_263

def AllocBody639_265 : StackLang.HolProg 64 :=
.seq AllocBody639_259 AllocBody639_264

def AllocBody639_266 : StackLang.HolProg 64 :=
.seq AllocBody639_258 AllocBody639_265

def AllocBody639_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody639_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody639_269 : StackLang.HolProg 64 :=
.seq AllocBody639_267 AllocBody639_268

def AllocBody639_270 : StackLang.HolProg 64 :=
.call (some (AllocBody639_266, 0, 639, 8)) (Sum.inl 638) (some (AllocBody639_269, 639, 9))

def AllocBody639_271 : StackLang.HolProg 64 :=
.seq AllocBody639_257 AllocBody639_270

def AllocBody639_272 : StackLang.HolProg 64 :=
.seq AllocBody639_256 AllocBody639_271

def AllocBody639_273 : StackLang.HolProg 64 :=
.seq AllocBody639_255 AllocBody639_272

def AllocBody639_274 : StackLang.HolProg 64 :=
.seq AllocBody639_236 AllocBody639_273

def AllocBody639_275 : StackLang.HolProg 64 :=
.seq AllocBody639_233 AllocBody639_274

def AllocBody639_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody639_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody639_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody639_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody639_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody639_281 : StackLang.HolProg 64 :=
.seq AllocBody639_279 AllocBody639_280

def AllocBody639_282 : StackLang.HolProg 64 :=
.seq AllocBody639_278 AllocBody639_281

def AllocBody639_283 : StackLang.HolProg 64 :=
.seq AllocBody639_277 AllocBody639_282

def AllocBody639_284 : StackLang.HolProg 64 :=
.seq AllocBody639_276 AllocBody639_283

def AllocBody639_285 : StackLang.HolProg 64 :=
.seq AllocBody639_275 AllocBody639_284

def AllocBody639_286 : StackLang.HolProg 64 :=
.seq AllocBody639_232 AllocBody639_285

def AllocBody639_287 : StackLang.HolProg 64 :=
.seq AllocBody639_231 AllocBody639_286

def AllocBody639_288 : StackLang.HolProg 64 :=
.seq AllocBody639_230 AllocBody639_287

def AllocBody639_289 : StackLang.HolProg 64 :=
.seq AllocBody639_229 AllocBody639_288

def AllocBody639_290 : StackLang.HolProg 64 :=
.seq AllocBody639_86 AllocBody639_289

def AllocBody639_291 : StackLang.HolProg 64 :=
.seq AllocBody639_85 AllocBody639_290

def AllocBody639_292 : StackLang.HolProg 64 :=
.seq AllocBody639_84 AllocBody639_291

def AllocBody639_293 : StackLang.HolProg 64 :=
.seq AllocBody639_15 AllocBody639_292

def AllocBody639_294 : StackLang.HolProg 64 :=
.seq AllocBody639_0 AllocBody639_293

def Alloc639 : Nat × StackLang.HolProg 64 := (639, AllocBody639_294)
theorem Alloc639_eq : StackAlloc.progComp (639, raw639) = Alloc639 := by
  kernel_rfl
#print axioms Alloc639_eq
end InitECandidate.Proofs.BackendStages
