import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw343
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody343_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody343_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody343_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody343_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody343_4 : StackLang.HolProg 64 :=
.seq AllocBody343_2 AllocBody343_3

def AllocBody343_5 : StackLang.HolProg 64 :=
.seq AllocBody343_1 AllocBody343_4

def AllocBody343_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 986#64)

def AllocBody343_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_9 : StackLang.HolProg 64 :=
.seq AllocBody343_7 AllocBody343_8

def AllocBody343_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody343_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody343_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 3

def AllocBody343_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody343_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody343_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody343_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody343_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_20 : StackLang.HolProg 64 :=
.seq AllocBody343_18 AllocBody343_19

def AllocBody343_21 : StackLang.HolProg 64 :=
.seq AllocBody343_17 AllocBody343_20

def AllocBody343_22 : StackLang.HolProg 64 :=
.seq AllocBody343_16 AllocBody343_21

def AllocBody343_23 : StackLang.HolProg 64 :=
.seq AllocBody343_15 AllocBody343_22

def AllocBody343_24 : StackLang.HolProg 64 :=
.seq AllocBody343_14 AllocBody343_23

def AllocBody343_25 : StackLang.HolProg 64 :=
.seq AllocBody343_13 AllocBody343_24

def AllocBody343_26 : StackLang.HolProg 64 :=
.seq AllocBody343_12 AllocBody343_25

def AllocBody343_27 : StackLang.HolProg 64 :=
.seq AllocBody343_11 AllocBody343_26

def AllocBody343_28 : StackLang.HolProg 64 :=
.seq AllocBody343_10 AllocBody343_27

def AllocBody343_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody343_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody343_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody343_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody343_36 : StackLang.HolProg 64 :=
.seq AllocBody343_34 AllocBody343_35

def AllocBody343_37 : StackLang.HolProg 64 :=
.seq AllocBody343_33 AllocBody343_36

def AllocBody343_38 : StackLang.HolProg 64 :=
.seq AllocBody343_32 AllocBody343_37

def AllocBody343_39 : StackLang.HolProg 64 :=
.seq AllocBody343_31 AllocBody343_38

def AllocBody343_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody343_42 : StackLang.HolProg 64 :=
.seq AllocBody343_40 AllocBody343_41

def AllocBody343_43 : StackLang.HolProg 64 :=
.call (some (AllocBody343_39, 0, 343, 2)) (Sum.inl 169) (some (AllocBody343_42, 343, 3))

def AllocBody343_44 : StackLang.HolProg 64 :=
.seq AllocBody343_30 AllocBody343_43

def AllocBody343_45 : StackLang.HolProg 64 :=
.seq AllocBody343_29 AllocBody343_44

def AllocBody343_46 : StackLang.HolProg 64 :=
.seq AllocBody343_28 AllocBody343_45

def AllocBody343_47 : StackLang.HolProg 64 :=
.seq AllocBody343_9 AllocBody343_46

def AllocBody343_48 : StackLang.HolProg 64 :=
.seq AllocBody343_6 AllocBody343_47

def AllocBody343_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody343_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody343_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody343_54 : StackLang.HolProg 64 :=
.seq AllocBody343_52 AllocBody343_53

def AllocBody343_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 987#64)

def AllocBody343_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_58 : StackLang.HolProg 64 :=
.seq AllocBody343_56 AllocBody343_57

def AllocBody343_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody343_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody343_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 5

def AllocBody343_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody343_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody343_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody343_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody343_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_69 : StackLang.HolProg 64 :=
.seq AllocBody343_67 AllocBody343_68

def AllocBody343_70 : StackLang.HolProg 64 :=
.seq AllocBody343_66 AllocBody343_69

def AllocBody343_71 : StackLang.HolProg 64 :=
.seq AllocBody343_65 AllocBody343_70

def AllocBody343_72 : StackLang.HolProg 64 :=
.seq AllocBody343_64 AllocBody343_71

def AllocBody343_73 : StackLang.HolProg 64 :=
.seq AllocBody343_63 AllocBody343_72

def AllocBody343_74 : StackLang.HolProg 64 :=
.seq AllocBody343_62 AllocBody343_73

def AllocBody343_75 : StackLang.HolProg 64 :=
.seq AllocBody343_61 AllocBody343_74

def AllocBody343_76 : StackLang.HolProg 64 :=
.seq AllocBody343_60 AllocBody343_75

def AllocBody343_77 : StackLang.HolProg 64 :=
.seq AllocBody343_59 AllocBody343_76

def AllocBody343_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody343_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody343_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody343_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody343_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody343_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody343_87 : StackLang.HolProg 64 :=
.seq AllocBody343_85 AllocBody343_86

def AllocBody343_88 : StackLang.HolProg 64 :=
.seq AllocBody343_84 AllocBody343_87

def AllocBody343_89 : StackLang.HolProg 64 :=
.seq AllocBody343_83 AllocBody343_88

def AllocBody343_90 : StackLang.HolProg 64 :=
.seq AllocBody343_82 AllocBody343_89

def AllocBody343_91 : StackLang.HolProg 64 :=
.seq AllocBody343_81 AllocBody343_90

def AllocBody343_92 : StackLang.HolProg 64 :=
.seq AllocBody343_80 AllocBody343_91

def AllocBody343_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody343_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody343_95 : StackLang.HolProg 64 :=
.seq AllocBody343_93 AllocBody343_94

def AllocBody343_96 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody343_97 : StackLang.HolProg 64 :=
.seq AllocBody343_95 AllocBody343_96

def AllocBody343_98 : StackLang.HolProg 64 :=
.call (some (AllocBody343_92, 0, 343, 4)) (Sum.inl 68) (some (AllocBody343_97, 343, 5))

def AllocBody343_99 : StackLang.HolProg 64 :=
.seq AllocBody343_79 AllocBody343_98

def AllocBody343_100 : StackLang.HolProg 64 :=
.seq AllocBody343_78 AllocBody343_99

def AllocBody343_101 : StackLang.HolProg 64 :=
.seq AllocBody343_77 AllocBody343_100

def AllocBody343_102 : StackLang.HolProg 64 :=
.seq AllocBody343_58 AllocBody343_101

def AllocBody343_103 : StackLang.HolProg 64 :=
.seq AllocBody343_55 AllocBody343_102

def AllocBody343_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody343_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody343_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody343_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody343_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody343_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody343_114 : StackLang.HolProg 64 :=
.seq AllocBody343_112 AllocBody343_113

def AllocBody343_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody343_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody343_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody343_118 : StackLang.HolProg 64 :=
.seq AllocBody343_116 AllocBody343_117

def AllocBody343_119 : StackLang.HolProg 64 :=
.seq AllocBody343_115 AllocBody343_118

def AllocBody343_120 : StackLang.HolProg 64 :=
.seq AllocBody343_114 AllocBody343_119

def AllocBody343_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 988#64)

def AllocBody343_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_124 : StackLang.HolProg 64 :=
.seq AllocBody343_122 AllocBody343_123

def AllocBody343_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody343_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody343_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 7

def AllocBody343_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody343_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody343_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody343_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody343_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_135 : StackLang.HolProg 64 :=
.seq AllocBody343_133 AllocBody343_134

def AllocBody343_136 : StackLang.HolProg 64 :=
.seq AllocBody343_132 AllocBody343_135

def AllocBody343_137 : StackLang.HolProg 64 :=
.seq AllocBody343_131 AllocBody343_136

def AllocBody343_138 : StackLang.HolProg 64 :=
.seq AllocBody343_130 AllocBody343_137

def AllocBody343_139 : StackLang.HolProg 64 :=
.seq AllocBody343_129 AllocBody343_138

def AllocBody343_140 : StackLang.HolProg 64 :=
.seq AllocBody343_128 AllocBody343_139

def AllocBody343_141 : StackLang.HolProg 64 :=
.seq AllocBody343_127 AllocBody343_140

def AllocBody343_142 : StackLang.HolProg 64 :=
.seq AllocBody343_126 AllocBody343_141

def AllocBody343_143 : StackLang.HolProg 64 :=
.seq AllocBody343_125 AllocBody343_142

def AllocBody343_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody343_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody343_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody343_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody343_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody343_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody343_153 : StackLang.HolProg 64 :=
.seq AllocBody343_151 AllocBody343_152

def AllocBody343_154 : StackLang.HolProg 64 :=
.seq AllocBody343_150 AllocBody343_153

def AllocBody343_155 : StackLang.HolProg 64 :=
.seq AllocBody343_149 AllocBody343_154

def AllocBody343_156 : StackLang.HolProg 64 :=
.seq AllocBody343_148 AllocBody343_155

def AllocBody343_157 : StackLang.HolProg 64 :=
.seq AllocBody343_147 AllocBody343_156

def AllocBody343_158 : StackLang.HolProg 64 :=
.seq AllocBody343_146 AllocBody343_157

def AllocBody343_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody343_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def AllocBody343_161 : StackLang.HolProg 64 :=
.seq AllocBody343_159 AllocBody343_160

def AllocBody343_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody343_163 : StackLang.HolProg 64 :=
.seq AllocBody343_161 AllocBody343_162

def AllocBody343_164 : StackLang.HolProg 64 :=
.call (some (AllocBody343_158, 0, 343, 6)) (Sum.inl 339) (some (AllocBody343_163, 343, 7))

def AllocBody343_165 : StackLang.HolProg 64 :=
.seq AllocBody343_145 AllocBody343_164

def AllocBody343_166 : StackLang.HolProg 64 :=
.seq AllocBody343_144 AllocBody343_165

def AllocBody343_167 : StackLang.HolProg 64 :=
.seq AllocBody343_143 AllocBody343_166

def AllocBody343_168 : StackLang.HolProg 64 :=
.seq AllocBody343_124 AllocBody343_167

def AllocBody343_169 : StackLang.HolProg 64 :=
.seq AllocBody343_121 AllocBody343_168

def AllocBody343_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody343_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody343_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def AllocBody343_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody343_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody343_179 : StackLang.HolProg 64 :=
.seq AllocBody343_177 AllocBody343_178

def AllocBody343_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 989#64)

def AllocBody343_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_183 : StackLang.HolProg 64 :=
.seq AllocBody343_181 AllocBody343_182

def AllocBody343_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody343_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody343_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody343_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 343 9

def AllocBody343_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody343_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody343_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody343_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody343_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_194 : StackLang.HolProg 64 :=
.seq AllocBody343_192 AllocBody343_193

def AllocBody343_195 : StackLang.HolProg 64 :=
.seq AllocBody343_191 AllocBody343_194

def AllocBody343_196 : StackLang.HolProg 64 :=
.seq AllocBody343_190 AllocBody343_195

def AllocBody343_197 : StackLang.HolProg 64 :=
.seq AllocBody343_189 AllocBody343_196

def AllocBody343_198 : StackLang.HolProg 64 :=
.seq AllocBody343_188 AllocBody343_197

def AllocBody343_199 : StackLang.HolProg 64 :=
.seq AllocBody343_187 AllocBody343_198

def AllocBody343_200 : StackLang.HolProg 64 :=
.seq AllocBody343_186 AllocBody343_199

def AllocBody343_201 : StackLang.HolProg 64 :=
.seq AllocBody343_185 AllocBody343_200

def AllocBody343_202 : StackLang.HolProg 64 :=
.seq AllocBody343_184 AllocBody343_201

def AllocBody343_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody343_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody343_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody343_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody343_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody343_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody343_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody343_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody343_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody343_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody343_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody343_216 : StackLang.HolProg 64 :=
.seq AllocBody343_214 AllocBody343_215

def AllocBody343_217 : StackLang.HolProg 64 :=
.seq AllocBody343_213 AllocBody343_216

def AllocBody343_218 : StackLang.HolProg 64 :=
.seq AllocBody343_212 AllocBody343_217

def AllocBody343_219 : StackLang.HolProg 64 :=
.seq AllocBody343_211 AllocBody343_218

def AllocBody343_220 : StackLang.HolProg 64 :=
.seq AllocBody343_210 AllocBody343_219

def AllocBody343_221 : StackLang.HolProg 64 :=
.seq AllocBody343_209 AllocBody343_220

def AllocBody343_222 : StackLang.HolProg 64 :=
.seq AllocBody343_208 AllocBody343_221

def AllocBody343_223 : StackLang.HolProg 64 :=
.seq AllocBody343_207 AllocBody343_222

def AllocBody343_224 : StackLang.HolProg 64 :=
.seq AllocBody343_206 AllocBody343_223

def AllocBody343_225 : StackLang.HolProg 64 :=
.seq AllocBody343_205 AllocBody343_224

def AllocBody343_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody343_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody343_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody343_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody343_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody343_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody343_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody343_233 : StackLang.HolProg 64 :=
.seq AllocBody343_231 AllocBody343_232

def AllocBody343_234 : StackLang.HolProg 64 :=
.seq AllocBody343_230 AllocBody343_233

def AllocBody343_235 : StackLang.HolProg 64 :=
.seq AllocBody343_229 AllocBody343_234

def AllocBody343_236 : StackLang.HolProg 64 :=
.seq AllocBody343_228 AllocBody343_235

def AllocBody343_237 : StackLang.HolProg 64 :=
.seq AllocBody343_227 AllocBody343_236

def AllocBody343_238 : StackLang.HolProg 64 :=
.seq AllocBody343_226 AllocBody343_237

def AllocBody343_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody343_240 : StackLang.HolProg 64 :=
.seq AllocBody343_238 AllocBody343_239

def AllocBody343_241 : StackLang.HolProg 64 :=
.call (some (AllocBody343_225, 0, 343, 8)) (Sum.inl 77) (some (AllocBody343_240, 343, 9))

def AllocBody343_242 : StackLang.HolProg 64 :=
.seq AllocBody343_204 AllocBody343_241

def AllocBody343_243 : StackLang.HolProg 64 :=
.seq AllocBody343_203 AllocBody343_242

def AllocBody343_244 : StackLang.HolProg 64 :=
.seq AllocBody343_202 AllocBody343_243

def AllocBody343_245 : StackLang.HolProg 64 :=
.seq AllocBody343_183 AllocBody343_244

def AllocBody343_246 : StackLang.HolProg 64 :=
.seq AllocBody343_180 AllocBody343_245

def AllocBody343_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody343_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody343_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 6

def AllocBody343_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody343_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 5

def AllocBody343_254 : StackLang.HolProg 64 :=
.seq AllocBody343_252 AllocBody343_253

def AllocBody343_255 : StackLang.HolProg 64 :=
.seq AllocBody343_251 AllocBody343_254

def AllocBody343_256 : StackLang.HolProg 64 :=
.seq AllocBody343_250 AllocBody343_255

def AllocBody343_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody343_258 : StackLang.HolProg 64 :=
.seq AllocBody343_256 AllocBody343_257

def AllocBody343_259 : StackLang.HolProg 64 :=
.seq AllocBody343_249 AllocBody343_258

def AllocBody343_260 : StackLang.HolProg 64 :=
.seq AllocBody343_248 AllocBody343_259

def AllocBody343_261 : StackLang.HolProg 64 :=
.seq AllocBody343_247 AllocBody343_260

def AllocBody343_262 : StackLang.HolProg 64 :=
.seq AllocBody343_246 AllocBody343_261

def AllocBody343_263 : StackLang.HolProg 64 :=
.seq AllocBody343_179 AllocBody343_262

def AllocBody343_264 : StackLang.HolProg 64 :=
.seq AllocBody343_176 AllocBody343_263

def AllocBody343_265 : StackLang.HolProg 64 :=
.seq AllocBody343_175 AllocBody343_264

def AllocBody343_266 : StackLang.HolProg 64 :=
.seq AllocBody343_174 AllocBody343_265

def AllocBody343_267 : StackLang.HolProg 64 :=
.seq AllocBody343_173 AllocBody343_266

def AllocBody343_268 : StackLang.HolProg 64 :=
.seq AllocBody343_172 AllocBody343_267

def AllocBody343_269 : StackLang.HolProg 64 :=
.seq AllocBody343_171 AllocBody343_268

def AllocBody343_270 : StackLang.HolProg 64 :=
.seq AllocBody343_170 AllocBody343_269

def AllocBody343_271 : StackLang.HolProg 64 :=
.seq AllocBody343_169 AllocBody343_270

def AllocBody343_272 : StackLang.HolProg 64 :=
.seq AllocBody343_120 AllocBody343_271

def AllocBody343_273 : StackLang.HolProg 64 :=
.seq AllocBody343_111 AllocBody343_272

def AllocBody343_274 : StackLang.HolProg 64 :=
.seq AllocBody343_110 AllocBody343_273

def AllocBody343_275 : StackLang.HolProg 64 :=
.seq AllocBody343_109 AllocBody343_274

def AllocBody343_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody343_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody343_279 : StackLang.HolProg 64 :=
.seq AllocBody343_277 AllocBody343_278

def AllocBody343_280 : StackLang.HolProg 64 :=
.seq AllocBody343_276 AllocBody343_279

def AllocBody343_281 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody343_275 AllocBody343_280

def AllocBody343_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody343_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody343_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody343_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody343_287 : StackLang.HolProg 64 :=
.seq AllocBody343_285 AllocBody343_286

def AllocBody343_288 : StackLang.HolProg 64 :=
.seq AllocBody343_284 AllocBody343_287

def AllocBody343_289 : StackLang.HolProg 64 :=
.seq AllocBody343_283 AllocBody343_288

def AllocBody343_290 : StackLang.HolProg 64 :=
.seq AllocBody343_282 AllocBody343_289

def AllocBody343_291 : StackLang.HolProg 64 :=
.seq AllocBody343_281 AllocBody343_290

def AllocBody343_292 : StackLang.HolProg 64 :=
.seq AllocBody343_108 AllocBody343_291

def AllocBody343_293 : StackLang.HolProg 64 :=
.loop AllocBody343_292

def AllocBody343_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody343_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 1 6

def AllocBody343_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody343_297 : StackLang.HolProg 64 :=
.seq AllocBody343_295 AllocBody343_296

def AllocBody343_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody343_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody343_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody343_301 : StackLang.HolProg 64 :=
.seq AllocBody343_299 AllocBody343_300

def AllocBody343_302 : StackLang.HolProg 64 :=
.seq AllocBody343_298 AllocBody343_301

def AllocBody343_303 : StackLang.HolProg 64 :=
.seq AllocBody343_297 AllocBody343_302

def AllocBody343_304 : StackLang.HolProg 64 :=
.seq AllocBody343_294 AllocBody343_303

def AllocBody343_305 : StackLang.HolProg 64 :=
.seq AllocBody343_293 AllocBody343_304

def AllocBody343_306 : StackLang.HolProg 64 :=
.seq AllocBody343_107 AllocBody343_305

def AllocBody343_307 : StackLang.HolProg 64 :=
.seq AllocBody343_106 AllocBody343_306

def AllocBody343_308 : StackLang.HolProg 64 :=
.seq AllocBody343_105 AllocBody343_307

def AllocBody343_309 : StackLang.HolProg 64 :=
.seq AllocBody343_104 AllocBody343_308

def AllocBody343_310 : StackLang.HolProg 64 :=
.seq AllocBody343_103 AllocBody343_309

def AllocBody343_311 : StackLang.HolProg 64 :=
.seq AllocBody343_54 AllocBody343_310

def AllocBody343_312 : StackLang.HolProg 64 :=
.seq AllocBody343_51 AllocBody343_311

def AllocBody343_313 : StackLang.HolProg 64 :=
.seq AllocBody343_50 AllocBody343_312

def AllocBody343_314 : StackLang.HolProg 64 :=
.seq AllocBody343_49 AllocBody343_313

def AllocBody343_315 : StackLang.HolProg 64 :=
.seq AllocBody343_48 AllocBody343_314

def AllocBody343_316 : StackLang.HolProg 64 :=
.seq AllocBody343_5 AllocBody343_315

def AllocBody343_317 : StackLang.HolProg 64 :=
.seq AllocBody343_0 AllocBody343_316

def Alloc343 : Nat × StackLang.HolProg 64 := (343, AllocBody343_317)
theorem Alloc343_eq : StackAlloc.progComp (343, raw343) = Alloc343 := by
  kernel_rfl
#print axioms Alloc343_eq
end InitECandidate.Proofs.BackendStages
