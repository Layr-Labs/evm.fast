import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw382
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody382_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody382_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody382_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody382_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody382_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody382_5 : StackLang.HolProg 64 :=
.seq AllocBody382_3 AllocBody382_4

def AllocBody382_6 : StackLang.HolProg 64 :=
.seq AllocBody382_2 AllocBody382_5

def AllocBody382_7 : StackLang.HolProg 64 :=
.seq AllocBody382_1 AllocBody382_6

def AllocBody382_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1125#64)

def AllocBody382_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_11 : StackLang.HolProg 64 :=
.seq AllocBody382_9 AllocBody382_10

def AllocBody382_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody382_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody382_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 3

def AllocBody382_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody382_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody382_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody382_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_22 : StackLang.HolProg 64 :=
.seq AllocBody382_20 AllocBody382_21

def AllocBody382_23 : StackLang.HolProg 64 :=
.seq AllocBody382_19 AllocBody382_22

def AllocBody382_24 : StackLang.HolProg 64 :=
.seq AllocBody382_18 AllocBody382_23

def AllocBody382_25 : StackLang.HolProg 64 :=
.seq AllocBody382_17 AllocBody382_24

def AllocBody382_26 : StackLang.HolProg 64 :=
.seq AllocBody382_16 AllocBody382_25

def AllocBody382_27 : StackLang.HolProg 64 :=
.seq AllocBody382_15 AllocBody382_26

def AllocBody382_28 : StackLang.HolProg 64 :=
.seq AllocBody382_14 AllocBody382_27

def AllocBody382_29 : StackLang.HolProg 64 :=
.seq AllocBody382_13 AllocBody382_28

def AllocBody382_30 : StackLang.HolProg 64 :=
.seq AllocBody382_12 AllocBody382_29

def AllocBody382_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody382_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody382_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody382_38 : StackLang.HolProg 64 :=
.seq AllocBody382_36 AllocBody382_37

def AllocBody382_39 : StackLang.HolProg 64 :=
.seq AllocBody382_35 AllocBody382_38

def AllocBody382_40 : StackLang.HolProg 64 :=
.seq AllocBody382_34 AllocBody382_39

def AllocBody382_41 : StackLang.HolProg 64 :=
.seq AllocBody382_33 AllocBody382_40

def AllocBody382_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody382_44 : StackLang.HolProg 64 :=
.seq AllocBody382_42 AllocBody382_43

def AllocBody382_45 : StackLang.HolProg 64 :=
.call (some (AllocBody382_41, 0, 382, 2)) (Sum.inl 69) (some (AllocBody382_44, 382, 3))

def AllocBody382_46 : StackLang.HolProg 64 :=
.seq AllocBody382_32 AllocBody382_45

def AllocBody382_47 : StackLang.HolProg 64 :=
.seq AllocBody382_31 AllocBody382_46

def AllocBody382_48 : StackLang.HolProg 64 :=
.seq AllocBody382_30 AllocBody382_47

def AllocBody382_49 : StackLang.HolProg 64 :=
.seq AllocBody382_11 AllocBody382_48

def AllocBody382_50 : StackLang.HolProg 64 :=
.seq AllocBody382_8 AllocBody382_49

def AllocBody382_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody382_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 72#64)

def AllocBody382_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody382_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1126#64)

def AllocBody382_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_57 : StackLang.HolProg 64 :=
.seq AllocBody382_55 AllocBody382_56

def AllocBody382_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody382_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody382_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 5

def AllocBody382_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody382_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody382_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody382_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_68 : StackLang.HolProg 64 :=
.seq AllocBody382_66 AllocBody382_67

def AllocBody382_69 : StackLang.HolProg 64 :=
.seq AllocBody382_65 AllocBody382_68

def AllocBody382_70 : StackLang.HolProg 64 :=
.seq AllocBody382_64 AllocBody382_69

def AllocBody382_71 : StackLang.HolProg 64 :=
.seq AllocBody382_63 AllocBody382_70

def AllocBody382_72 : StackLang.HolProg 64 :=
.seq AllocBody382_62 AllocBody382_71

def AllocBody382_73 : StackLang.HolProg 64 :=
.seq AllocBody382_61 AllocBody382_72

def AllocBody382_74 : StackLang.HolProg 64 :=
.seq AllocBody382_60 AllocBody382_73

def AllocBody382_75 : StackLang.HolProg 64 :=
.seq AllocBody382_59 AllocBody382_74

def AllocBody382_76 : StackLang.HolProg 64 :=
.seq AllocBody382_58 AllocBody382_75

def AllocBody382_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody382_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody382_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody382_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody382_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody382_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody382_88 : StackLang.HolProg 64 :=
.seq AllocBody382_86 AllocBody382_87

def AllocBody382_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody382_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_91 : StackLang.HolProg 64 :=
.seq AllocBody382_89 AllocBody382_90

def AllocBody382_92 : StackLang.HolProg 64 :=
.seq AllocBody382_88 AllocBody382_91

def AllocBody382_93 : StackLang.HolProg 64 :=
.seq AllocBody382_85 AllocBody382_92

def AllocBody382_94 : StackLang.HolProg 64 :=
.seq AllocBody382_84 AllocBody382_93

def AllocBody382_95 : StackLang.HolProg 64 :=
.seq AllocBody382_83 AllocBody382_94

def AllocBody382_96 : StackLang.HolProg 64 :=
.seq AllocBody382_82 AllocBody382_95

def AllocBody382_97 : StackLang.HolProg 64 :=
.seq AllocBody382_81 AllocBody382_96

def AllocBody382_98 : StackLang.HolProg 64 :=
.seq AllocBody382_80 AllocBody382_97

def AllocBody382_99 : StackLang.HolProg 64 :=
.seq AllocBody382_79 AllocBody382_98

def AllocBody382_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody382_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody382_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody382_104 : StackLang.HolProg 64 :=
.seq AllocBody382_102 AllocBody382_103

def AllocBody382_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody382_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_107 : StackLang.HolProg 64 :=
.seq AllocBody382_105 AllocBody382_106

def AllocBody382_108 : StackLang.HolProg 64 :=
.seq AllocBody382_104 AllocBody382_107

def AllocBody382_109 : StackLang.HolProg 64 :=
.seq AllocBody382_101 AllocBody382_108

def AllocBody382_110 : StackLang.HolProg 64 :=
.seq AllocBody382_100 AllocBody382_109

def AllocBody382_111 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody382_112 : StackLang.HolProg 64 :=
.seq AllocBody382_110 AllocBody382_111

def AllocBody382_113 : StackLang.HolProg 64 :=
.call (some (AllocBody382_99, 0, 382, 4)) (Sum.inl 68) (some (AllocBody382_112, 382, 5))

def AllocBody382_114 : StackLang.HolProg 64 :=
.seq AllocBody382_78 AllocBody382_113

def AllocBody382_115 : StackLang.HolProg 64 :=
.seq AllocBody382_77 AllocBody382_114

def AllocBody382_116 : StackLang.HolProg 64 :=
.seq AllocBody382_76 AllocBody382_115

def AllocBody382_117 : StackLang.HolProg 64 :=
.seq AllocBody382_57 AllocBody382_116

def AllocBody382_118 : StackLang.HolProg 64 :=
.seq AllocBody382_54 AllocBody382_117

def AllocBody382_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody382_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def AllocBody382_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody382_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody382_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody382_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody382_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1127#64)

def AllocBody382_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_129 : StackLang.HolProg 64 :=
.seq AllocBody382_127 AllocBody382_128

def AllocBody382_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody382_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody382_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 7

def AllocBody382_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody382_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody382_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody382_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_140 : StackLang.HolProg 64 :=
.seq AllocBody382_138 AllocBody382_139

def AllocBody382_141 : StackLang.HolProg 64 :=
.seq AllocBody382_137 AllocBody382_140

def AllocBody382_142 : StackLang.HolProg 64 :=
.seq AllocBody382_136 AllocBody382_141

def AllocBody382_143 : StackLang.HolProg 64 :=
.seq AllocBody382_135 AllocBody382_142

def AllocBody382_144 : StackLang.HolProg 64 :=
.seq AllocBody382_134 AllocBody382_143

def AllocBody382_145 : StackLang.HolProg 64 :=
.seq AllocBody382_133 AllocBody382_144

def AllocBody382_146 : StackLang.HolProg 64 :=
.seq AllocBody382_132 AllocBody382_145

def AllocBody382_147 : StackLang.HolProg 64 :=
.seq AllocBody382_131 AllocBody382_146

def AllocBody382_148 : StackLang.HolProg 64 :=
.seq AllocBody382_130 AllocBody382_147

def AllocBody382_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody382_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody382_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody382_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody382_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody382_158 : StackLang.HolProg 64 :=
.seq AllocBody382_156 AllocBody382_157

def AllocBody382_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody382_160 : StackLang.HolProg 64 :=
.seq AllocBody382_158 AllocBody382_159

def AllocBody382_161 : StackLang.HolProg 64 :=
.seq AllocBody382_155 AllocBody382_160

def AllocBody382_162 : StackLang.HolProg 64 :=
.seq AllocBody382_154 AllocBody382_161

def AllocBody382_163 : StackLang.HolProg 64 :=
.seq AllocBody382_153 AllocBody382_162

def AllocBody382_164 : StackLang.HolProg 64 :=
.seq AllocBody382_152 AllocBody382_163

def AllocBody382_165 : StackLang.HolProg 64 :=
.seq AllocBody382_151 AllocBody382_164

def AllocBody382_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody382_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody382_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody382_169 : StackLang.HolProg 64 :=
.seq AllocBody382_167 AllocBody382_168

def AllocBody382_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody382_171 : StackLang.HolProg 64 :=
.seq AllocBody382_169 AllocBody382_170

def AllocBody382_172 : StackLang.HolProg 64 :=
.seq AllocBody382_166 AllocBody382_171

def AllocBody382_173 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody382_174 : StackLang.HolProg 64 :=
.seq AllocBody382_172 AllocBody382_173

def AllocBody382_175 : StackLang.HolProg 64 :=
.call (some (AllocBody382_165, 0, 382, 6)) (Sum.inl 379) (some (AllocBody382_174, 382, 7))

def AllocBody382_176 : StackLang.HolProg 64 :=
.seq AllocBody382_150 AllocBody382_175

def AllocBody382_177 : StackLang.HolProg 64 :=
.seq AllocBody382_149 AllocBody382_176

def AllocBody382_178 : StackLang.HolProg 64 :=
.seq AllocBody382_148 AllocBody382_177

def AllocBody382_179 : StackLang.HolProg 64 :=
.seq AllocBody382_129 AllocBody382_178

def AllocBody382_180 : StackLang.HolProg 64 :=
.seq AllocBody382_126 AllocBody382_179

def AllocBody382_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody382_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody382_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1128#64)

def AllocBody382_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_186 : StackLang.HolProg 64 :=
.seq AllocBody382_184 AllocBody382_185

def AllocBody382_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody382_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody382_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 9

def AllocBody382_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody382_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody382_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody382_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_197 : StackLang.HolProg 64 :=
.seq AllocBody382_195 AllocBody382_196

def AllocBody382_198 : StackLang.HolProg 64 :=
.seq AllocBody382_194 AllocBody382_197

def AllocBody382_199 : StackLang.HolProg 64 :=
.seq AllocBody382_193 AllocBody382_198

def AllocBody382_200 : StackLang.HolProg 64 :=
.seq AllocBody382_192 AllocBody382_199

def AllocBody382_201 : StackLang.HolProg 64 :=
.seq AllocBody382_191 AllocBody382_200

def AllocBody382_202 : StackLang.HolProg 64 :=
.seq AllocBody382_190 AllocBody382_201

def AllocBody382_203 : StackLang.HolProg 64 :=
.seq AllocBody382_189 AllocBody382_202

def AllocBody382_204 : StackLang.HolProg 64 :=
.seq AllocBody382_188 AllocBody382_203

def AllocBody382_205 : StackLang.HolProg 64 :=
.seq AllocBody382_187 AllocBody382_204

def AllocBody382_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody382_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody382_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody382_213 : StackLang.HolProg 64 :=
.seq AllocBody382_211 AllocBody382_212

def AllocBody382_214 : StackLang.HolProg 64 :=
.seq AllocBody382_210 AllocBody382_213

def AllocBody382_215 : StackLang.HolProg 64 :=
.seq AllocBody382_209 AllocBody382_214

def AllocBody382_216 : StackLang.HolProg 64 :=
.seq AllocBody382_208 AllocBody382_215

def AllocBody382_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody382_218 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody382_219 : StackLang.HolProg 64 :=
.seq AllocBody382_217 AllocBody382_218

def AllocBody382_220 : StackLang.HolProg 64 :=
.call (some (AllocBody382_216, 0, 382, 8)) (Sum.inl 380) (some (AllocBody382_219, 382, 9))

def AllocBody382_221 : StackLang.HolProg 64 :=
.seq AllocBody382_207 AllocBody382_220

def AllocBody382_222 : StackLang.HolProg 64 :=
.seq AllocBody382_206 AllocBody382_221

def AllocBody382_223 : StackLang.HolProg 64 :=
.seq AllocBody382_205 AllocBody382_222

def AllocBody382_224 : StackLang.HolProg 64 :=
.seq AllocBody382_186 AllocBody382_223

def AllocBody382_225 : StackLang.HolProg 64 :=
.seq AllocBody382_183 AllocBody382_224

def AllocBody382_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody382_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody382_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1129#64)

def AllocBody382_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_231 : StackLang.HolProg 64 :=
.seq AllocBody382_229 AllocBody382_230

def AllocBody382_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody382_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody382_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody382_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 382 11

def AllocBody382_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody382_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody382_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody382_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody382_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_242 : StackLang.HolProg 64 :=
.seq AllocBody382_240 AllocBody382_241

def AllocBody382_243 : StackLang.HolProg 64 :=
.seq AllocBody382_239 AllocBody382_242

def AllocBody382_244 : StackLang.HolProg 64 :=
.seq AllocBody382_238 AllocBody382_243

def AllocBody382_245 : StackLang.HolProg 64 :=
.seq AllocBody382_237 AllocBody382_244

def AllocBody382_246 : StackLang.HolProg 64 :=
.seq AllocBody382_236 AllocBody382_245

def AllocBody382_247 : StackLang.HolProg 64 :=
.seq AllocBody382_235 AllocBody382_246

def AllocBody382_248 : StackLang.HolProg 64 :=
.seq AllocBody382_234 AllocBody382_247

def AllocBody382_249 : StackLang.HolProg 64 :=
.seq AllocBody382_233 AllocBody382_248

def AllocBody382_250 : StackLang.HolProg 64 :=
.seq AllocBody382_232 AllocBody382_249

def AllocBody382_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody382_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody382_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody382_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody382_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody382_258 : StackLang.HolProg 64 :=
.seq AllocBody382_256 AllocBody382_257

def AllocBody382_259 : StackLang.HolProg 64 :=
.seq AllocBody382_255 AllocBody382_258

def AllocBody382_260 : StackLang.HolProg 64 :=
.seq AllocBody382_254 AllocBody382_259

def AllocBody382_261 : StackLang.HolProg 64 :=
.seq AllocBody382_253 AllocBody382_260

def AllocBody382_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody382_263 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody382_264 : StackLang.HolProg 64 :=
.seq AllocBody382_262 AllocBody382_263

def AllocBody382_265 : StackLang.HolProg 64 :=
.call (some (AllocBody382_261, 0, 382, 10)) (Sum.inl 70) (some (AllocBody382_264, 382, 11))

def AllocBody382_266 : StackLang.HolProg 64 :=
.seq AllocBody382_252 AllocBody382_265

def AllocBody382_267 : StackLang.HolProg 64 :=
.seq AllocBody382_251 AllocBody382_266

def AllocBody382_268 : StackLang.HolProg 64 :=
.seq AllocBody382_250 AllocBody382_267

def AllocBody382_269 : StackLang.HolProg 64 :=
.seq AllocBody382_231 AllocBody382_268

def AllocBody382_270 : StackLang.HolProg 64 :=
.seq AllocBody382_228 AllocBody382_269

def AllocBody382_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody382_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody382_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody382_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody382_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody382_276 : StackLang.HolProg 64 :=
.seq AllocBody382_274 AllocBody382_275

def AllocBody382_277 : StackLang.HolProg 64 :=
.seq AllocBody382_273 AllocBody382_276

def AllocBody382_278 : StackLang.HolProg 64 :=
.seq AllocBody382_272 AllocBody382_277

def AllocBody382_279 : StackLang.HolProg 64 :=
.seq AllocBody382_271 AllocBody382_278

def AllocBody382_280 : StackLang.HolProg 64 :=
.seq AllocBody382_270 AllocBody382_279

def AllocBody382_281 : StackLang.HolProg 64 :=
.seq AllocBody382_227 AllocBody382_280

def AllocBody382_282 : StackLang.HolProg 64 :=
.seq AllocBody382_226 AllocBody382_281

def AllocBody382_283 : StackLang.HolProg 64 :=
.seq AllocBody382_225 AllocBody382_282

def AllocBody382_284 : StackLang.HolProg 64 :=
.seq AllocBody382_182 AllocBody382_283

def AllocBody382_285 : StackLang.HolProg 64 :=
.seq AllocBody382_181 AllocBody382_284

def AllocBody382_286 : StackLang.HolProg 64 :=
.seq AllocBody382_180 AllocBody382_285

def AllocBody382_287 : StackLang.HolProg 64 :=
.seq AllocBody382_125 AllocBody382_286

def AllocBody382_288 : StackLang.HolProg 64 :=
.seq AllocBody382_124 AllocBody382_287

def AllocBody382_289 : StackLang.HolProg 64 :=
.seq AllocBody382_123 AllocBody382_288

def AllocBody382_290 : StackLang.HolProg 64 :=
.seq AllocBody382_122 AllocBody382_289

def AllocBody382_291 : StackLang.HolProg 64 :=
.seq AllocBody382_121 AllocBody382_290

def AllocBody382_292 : StackLang.HolProg 64 :=
.seq AllocBody382_120 AllocBody382_291

def AllocBody382_293 : StackLang.HolProg 64 :=
.seq AllocBody382_119 AllocBody382_292

def AllocBody382_294 : StackLang.HolProg 64 :=
.seq AllocBody382_118 AllocBody382_293

def AllocBody382_295 : StackLang.HolProg 64 :=
.seq AllocBody382_53 AllocBody382_294

def AllocBody382_296 : StackLang.HolProg 64 :=
.seq AllocBody382_52 AllocBody382_295

def AllocBody382_297 : StackLang.HolProg 64 :=
.seq AllocBody382_51 AllocBody382_296

def AllocBody382_298 : StackLang.HolProg 64 :=
.seq AllocBody382_50 AllocBody382_297

def AllocBody382_299 : StackLang.HolProg 64 :=
.seq AllocBody382_7 AllocBody382_298

def AllocBody382_300 : StackLang.HolProg 64 :=
.seq AllocBody382_0 AllocBody382_299

def Alloc382 : Nat × StackLang.HolProg 64 := (382, AllocBody382_300)
theorem Alloc382_eq : StackAlloc.progComp (382, raw382) = Alloc382 := by
  kernel_rfl
#print axioms Alloc382_eq
end InitECandidate.Proofs.BackendStages
