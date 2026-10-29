import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw788
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody788_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody788_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody788_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody788_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody788_4 : StackLang.HolProg 64 :=
.seq AllocBody788_2 AllocBody788_3

def AllocBody788_5 : StackLang.HolProg 64 :=
.seq AllocBody788_1 AllocBody788_4

def AllocBody788_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3651#64)

def AllocBody788_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_9 : StackLang.HolProg 64 :=
.seq AllocBody788_7 AllocBody788_8

def AllocBody788_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 3

def AllocBody788_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_20 : StackLang.HolProg 64 :=
.seq AllocBody788_18 AllocBody788_19

def AllocBody788_21 : StackLang.HolProg 64 :=
.seq AllocBody788_17 AllocBody788_20

def AllocBody788_22 : StackLang.HolProg 64 :=
.seq AllocBody788_16 AllocBody788_21

def AllocBody788_23 : StackLang.HolProg 64 :=
.seq AllocBody788_15 AllocBody788_22

def AllocBody788_24 : StackLang.HolProg 64 :=
.seq AllocBody788_14 AllocBody788_23

def AllocBody788_25 : StackLang.HolProg 64 :=
.seq AllocBody788_13 AllocBody788_24

def AllocBody788_26 : StackLang.HolProg 64 :=
.seq AllocBody788_12 AllocBody788_25

def AllocBody788_27 : StackLang.HolProg 64 :=
.seq AllocBody788_11 AllocBody788_26

def AllocBody788_28 : StackLang.HolProg 64 :=
.seq AllocBody788_10 AllocBody788_27

def AllocBody788_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody788_36 : StackLang.HolProg 64 :=
.seq AllocBody788_34 AllocBody788_35

def AllocBody788_37 : StackLang.HolProg 64 :=
.seq AllocBody788_33 AllocBody788_36

def AllocBody788_38 : StackLang.HolProg 64 :=
.seq AllocBody788_32 AllocBody788_37

def AllocBody788_39 : StackLang.HolProg 64 :=
.seq AllocBody788_31 AllocBody788_38

def AllocBody788_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_42 : StackLang.HolProg 64 :=
.seq AllocBody788_40 AllocBody788_41

def AllocBody788_43 : StackLang.HolProg 64 :=
.call (some (AllocBody788_39, 0, 788, 2)) (Sum.inl 69) (some (AllocBody788_42, 788, 3))

def AllocBody788_44 : StackLang.HolProg 64 :=
.seq AllocBody788_30 AllocBody788_43

def AllocBody788_45 : StackLang.HolProg 64 :=
.seq AllocBody788_29 AllocBody788_44

def AllocBody788_46 : StackLang.HolProg 64 :=
.seq AllocBody788_28 AllocBody788_45

def AllocBody788_47 : StackLang.HolProg 64 :=
.seq AllocBody788_9 AllocBody788_46

def AllocBody788_48 : StackLang.HolProg 64 :=
.seq AllocBody788_6 AllocBody788_47

def AllocBody788_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 192#64)

def AllocBody788_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody788_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3652#64)

def AllocBody788_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_55 : StackLang.HolProg 64 :=
.seq AllocBody788_53 AllocBody788_54

def AllocBody788_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 5

def AllocBody788_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_66 : StackLang.HolProg 64 :=
.seq AllocBody788_64 AllocBody788_65

def AllocBody788_67 : StackLang.HolProg 64 :=
.seq AllocBody788_63 AllocBody788_66

def AllocBody788_68 : StackLang.HolProg 64 :=
.seq AllocBody788_62 AllocBody788_67

def AllocBody788_69 : StackLang.HolProg 64 :=
.seq AllocBody788_61 AllocBody788_68

def AllocBody788_70 : StackLang.HolProg 64 :=
.seq AllocBody788_60 AllocBody788_69

def AllocBody788_71 : StackLang.HolProg 64 :=
.seq AllocBody788_59 AllocBody788_70

def AllocBody788_72 : StackLang.HolProg 64 :=
.seq AllocBody788_58 AllocBody788_71

def AllocBody788_73 : StackLang.HolProg 64 :=
.seq AllocBody788_57 AllocBody788_72

def AllocBody788_74 : StackLang.HolProg 64 :=
.seq AllocBody788_56 AllocBody788_73

def AllocBody788_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody788_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody788_83 : StackLang.HolProg 64 :=
.seq AllocBody788_81 AllocBody788_82

def AllocBody788_84 : StackLang.HolProg 64 :=
.seq AllocBody788_80 AllocBody788_83

def AllocBody788_85 : StackLang.HolProg 64 :=
.seq AllocBody788_79 AllocBody788_84

def AllocBody788_86 : StackLang.HolProg 64 :=
.seq AllocBody788_78 AllocBody788_85

def AllocBody788_87 : StackLang.HolProg 64 :=
.seq AllocBody788_77 AllocBody788_86

def AllocBody788_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody788_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_90 : StackLang.HolProg 64 :=
.seq AllocBody788_88 AllocBody788_89

def AllocBody788_91 : StackLang.HolProg 64 :=
.call (some (AllocBody788_87, 0, 788, 4)) (Sum.inl 68) (some (AllocBody788_90, 788, 5))

def AllocBody788_92 : StackLang.HolProg 64 :=
.seq AllocBody788_76 AllocBody788_91

def AllocBody788_93 : StackLang.HolProg 64 :=
.seq AllocBody788_75 AllocBody788_92

def AllocBody788_94 : StackLang.HolProg 64 :=
.seq AllocBody788_74 AllocBody788_93

def AllocBody788_95 : StackLang.HolProg 64 :=
.seq AllocBody788_55 AllocBody788_94

def AllocBody788_96 : StackLang.HolProg 64 :=
.seq AllocBody788_52 AllocBody788_95

def AllocBody788_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody788_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody788_100 : StackLang.HolProg 64 :=
.seq AllocBody788_98 AllocBody788_99

def AllocBody788_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3653#64)

def AllocBody788_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_104 : StackLang.HolProg 64 :=
.seq AllocBody788_102 AllocBody788_103

def AllocBody788_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 7

def AllocBody788_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_115 : StackLang.HolProg 64 :=
.seq AllocBody788_113 AllocBody788_114

def AllocBody788_116 : StackLang.HolProg 64 :=
.seq AllocBody788_112 AllocBody788_115

def AllocBody788_117 : StackLang.HolProg 64 :=
.seq AllocBody788_111 AllocBody788_116

def AllocBody788_118 : StackLang.HolProg 64 :=
.seq AllocBody788_110 AllocBody788_117

def AllocBody788_119 : StackLang.HolProg 64 :=
.seq AllocBody788_109 AllocBody788_118

def AllocBody788_120 : StackLang.HolProg 64 :=
.seq AllocBody788_108 AllocBody788_119

def AllocBody788_121 : StackLang.HolProg 64 :=
.seq AllocBody788_107 AllocBody788_120

def AllocBody788_122 : StackLang.HolProg 64 :=
.seq AllocBody788_106 AllocBody788_121

def AllocBody788_123 : StackLang.HolProg 64 :=
.seq AllocBody788_105 AllocBody788_122

def AllocBody788_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody788_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody788_132 : StackLang.HolProg 64 :=
.seq AllocBody788_130 AllocBody788_131

def AllocBody788_133 : StackLang.HolProg 64 :=
.seq AllocBody788_129 AllocBody788_132

def AllocBody788_134 : StackLang.HolProg 64 :=
.seq AllocBody788_128 AllocBody788_133

def AllocBody788_135 : StackLang.HolProg 64 :=
.seq AllocBody788_127 AllocBody788_134

def AllocBody788_136 : StackLang.HolProg 64 :=
.seq AllocBody788_126 AllocBody788_135

def AllocBody788_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody788_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody788_139 : StackLang.HolProg 64 :=
.seq AllocBody788_137 AllocBody788_138

def AllocBody788_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_141 : StackLang.HolProg 64 :=
.seq AllocBody788_139 AllocBody788_140

def AllocBody788_142 : StackLang.HolProg 64 :=
.call (some (AllocBody788_136, 0, 788, 6)) (Sum.inl 785) (some (AllocBody788_141, 788, 7))

def AllocBody788_143 : StackLang.HolProg 64 :=
.seq AllocBody788_125 AllocBody788_142

def AllocBody788_144 : StackLang.HolProg 64 :=
.seq AllocBody788_124 AllocBody788_143

def AllocBody788_145 : StackLang.HolProg 64 :=
.seq AllocBody788_123 AllocBody788_144

def AllocBody788_146 : StackLang.HolProg 64 :=
.seq AllocBody788_104 AllocBody788_145

def AllocBody788_147 : StackLang.HolProg 64 :=
.seq AllocBody788_101 AllocBody788_146

def AllocBody788_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody788_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody788_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody788_152 : StackLang.HolProg 64 :=
.seq AllocBody788_150 AllocBody788_151

def AllocBody788_153 : StackLang.HolProg 64 :=
.seq AllocBody788_149 AllocBody788_152

def AllocBody788_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3654#64)

def AllocBody788_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_157 : StackLang.HolProg 64 :=
.seq AllocBody788_155 AllocBody788_156

def AllocBody788_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 9

def AllocBody788_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_168 : StackLang.HolProg 64 :=
.seq AllocBody788_166 AllocBody788_167

def AllocBody788_169 : StackLang.HolProg 64 :=
.seq AllocBody788_165 AllocBody788_168

def AllocBody788_170 : StackLang.HolProg 64 :=
.seq AllocBody788_164 AllocBody788_169

def AllocBody788_171 : StackLang.HolProg 64 :=
.seq AllocBody788_163 AllocBody788_170

def AllocBody788_172 : StackLang.HolProg 64 :=
.seq AllocBody788_162 AllocBody788_171

def AllocBody788_173 : StackLang.HolProg 64 :=
.seq AllocBody788_161 AllocBody788_172

def AllocBody788_174 : StackLang.HolProg 64 :=
.seq AllocBody788_160 AllocBody788_173

def AllocBody788_175 : StackLang.HolProg 64 :=
.seq AllocBody788_159 AllocBody788_174

def AllocBody788_176 : StackLang.HolProg 64 :=
.seq AllocBody788_158 AllocBody788_175

def AllocBody788_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody788_185 : StackLang.HolProg 64 :=
.seq AllocBody788_183 AllocBody788_184

def AllocBody788_186 : StackLang.HolProg 64 :=
.seq AllocBody788_182 AllocBody788_185

def AllocBody788_187 : StackLang.HolProg 64 :=
.seq AllocBody788_181 AllocBody788_186

def AllocBody788_188 : StackLang.HolProg 64 :=
.seq AllocBody788_180 AllocBody788_187

def AllocBody788_189 : StackLang.HolProg 64 :=
.seq AllocBody788_179 AllocBody788_188

def AllocBody788_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody788_192 : StackLang.HolProg 64 :=
.seq AllocBody788_190 AllocBody788_191

def AllocBody788_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_194 : StackLang.HolProg 64 :=
.seq AllocBody788_192 AllocBody788_193

def AllocBody788_195 : StackLang.HolProg 64 :=
.call (some (AllocBody788_189, 0, 788, 8)) (Sum.inl 728) (some (AllocBody788_194, 788, 9))

def AllocBody788_196 : StackLang.HolProg 64 :=
.seq AllocBody788_178 AllocBody788_195

def AllocBody788_197 : StackLang.HolProg 64 :=
.seq AllocBody788_177 AllocBody788_196

def AllocBody788_198 : StackLang.HolProg 64 :=
.seq AllocBody788_176 AllocBody788_197

def AllocBody788_199 : StackLang.HolProg 64 :=
.seq AllocBody788_157 AllocBody788_198

def AllocBody788_200 : StackLang.HolProg 64 :=
.seq AllocBody788_154 AllocBody788_199

def AllocBody788_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody788_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody788_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody788_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody788_208 : StackLang.HolProg 64 :=
.seq AllocBody788_206 AllocBody788_207

def AllocBody788_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3655#64)

def AllocBody788_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_212 : StackLang.HolProg 64 :=
.seq AllocBody788_210 AllocBody788_211

def AllocBody788_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 11

def AllocBody788_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_223 : StackLang.HolProg 64 :=
.seq AllocBody788_221 AllocBody788_222

def AllocBody788_224 : StackLang.HolProg 64 :=
.seq AllocBody788_220 AllocBody788_223

def AllocBody788_225 : StackLang.HolProg 64 :=
.seq AllocBody788_219 AllocBody788_224

def AllocBody788_226 : StackLang.HolProg 64 :=
.seq AllocBody788_218 AllocBody788_225

def AllocBody788_227 : StackLang.HolProg 64 :=
.seq AllocBody788_217 AllocBody788_226

def AllocBody788_228 : StackLang.HolProg 64 :=
.seq AllocBody788_216 AllocBody788_227

def AllocBody788_229 : StackLang.HolProg 64 :=
.seq AllocBody788_215 AllocBody788_228

def AllocBody788_230 : StackLang.HolProg 64 :=
.seq AllocBody788_214 AllocBody788_229

def AllocBody788_231 : StackLang.HolProg 64 :=
.seq AllocBody788_213 AllocBody788_230

def AllocBody788_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody788_240 : StackLang.HolProg 64 :=
.seq AllocBody788_238 AllocBody788_239

def AllocBody788_241 : StackLang.HolProg 64 :=
.seq AllocBody788_237 AllocBody788_240

def AllocBody788_242 : StackLang.HolProg 64 :=
.seq AllocBody788_236 AllocBody788_241

def AllocBody788_243 : StackLang.HolProg 64 :=
.seq AllocBody788_235 AllocBody788_242

def AllocBody788_244 : StackLang.HolProg 64 :=
.seq AllocBody788_234 AllocBody788_243

def AllocBody788_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody788_247 : StackLang.HolProg 64 :=
.seq AllocBody788_245 AllocBody788_246

def AllocBody788_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_249 : StackLang.HolProg 64 :=
.seq AllocBody788_247 AllocBody788_248

def AllocBody788_250 : StackLang.HolProg 64 :=
.call (some (AllocBody788_244, 0, 788, 10)) (Sum.inl 728) (some (AllocBody788_249, 788, 11))

def AllocBody788_251 : StackLang.HolProg 64 :=
.seq AllocBody788_233 AllocBody788_250

def AllocBody788_252 : StackLang.HolProg 64 :=
.seq AllocBody788_232 AllocBody788_251

def AllocBody788_253 : StackLang.HolProg 64 :=
.seq AllocBody788_231 AllocBody788_252

def AllocBody788_254 : StackLang.HolProg 64 :=
.seq AllocBody788_212 AllocBody788_253

def AllocBody788_255 : StackLang.HolProg 64 :=
.seq AllocBody788_209 AllocBody788_254

def AllocBody788_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody788_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody788_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody788_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody788_263 : StackLang.HolProg 64 :=
.seq AllocBody788_261 AllocBody788_262

def AllocBody788_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3656#64)

def AllocBody788_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_267 : StackLang.HolProg 64 :=
.seq AllocBody788_265 AllocBody788_266

def AllocBody788_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 13

def AllocBody788_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_278 : StackLang.HolProg 64 :=
.seq AllocBody788_276 AllocBody788_277

def AllocBody788_279 : StackLang.HolProg 64 :=
.seq AllocBody788_275 AllocBody788_278

def AllocBody788_280 : StackLang.HolProg 64 :=
.seq AllocBody788_274 AllocBody788_279

def AllocBody788_281 : StackLang.HolProg 64 :=
.seq AllocBody788_273 AllocBody788_280

def AllocBody788_282 : StackLang.HolProg 64 :=
.seq AllocBody788_272 AllocBody788_281

def AllocBody788_283 : StackLang.HolProg 64 :=
.seq AllocBody788_271 AllocBody788_282

def AllocBody788_284 : StackLang.HolProg 64 :=
.seq AllocBody788_270 AllocBody788_283

def AllocBody788_285 : StackLang.HolProg 64 :=
.seq AllocBody788_269 AllocBody788_284

def AllocBody788_286 : StackLang.HolProg 64 :=
.seq AllocBody788_268 AllocBody788_285

def AllocBody788_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody788_296 : StackLang.HolProg 64 :=
.seq AllocBody788_294 AllocBody788_295

def AllocBody788_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody788_298 : StackLang.HolProg 64 :=
.seq AllocBody788_296 AllocBody788_297

def AllocBody788_299 : StackLang.HolProg 64 :=
.seq AllocBody788_293 AllocBody788_298

def AllocBody788_300 : StackLang.HolProg 64 :=
.seq AllocBody788_292 AllocBody788_299

def AllocBody788_301 : StackLang.HolProg 64 :=
.seq AllocBody788_291 AllocBody788_300

def AllocBody788_302 : StackLang.HolProg 64 :=
.seq AllocBody788_290 AllocBody788_301

def AllocBody788_303 : StackLang.HolProg 64 :=
.seq AllocBody788_289 AllocBody788_302

def AllocBody788_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody788_307 : StackLang.HolProg 64 :=
.seq AllocBody788_305 AllocBody788_306

def AllocBody788_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody788_309 : StackLang.HolProg 64 :=
.seq AllocBody788_307 AllocBody788_308

def AllocBody788_310 : StackLang.HolProg 64 :=
.seq AllocBody788_304 AllocBody788_309

def AllocBody788_311 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_312 : StackLang.HolProg 64 :=
.seq AllocBody788_310 AllocBody788_311

def AllocBody788_313 : StackLang.HolProg 64 :=
.call (some (AllocBody788_303, 0, 788, 12)) (Sum.inl 728) (some (AllocBody788_312, 788, 13))

def AllocBody788_314 : StackLang.HolProg 64 :=
.seq AllocBody788_288 AllocBody788_313

def AllocBody788_315 : StackLang.HolProg 64 :=
.seq AllocBody788_287 AllocBody788_314

def AllocBody788_316 : StackLang.HolProg 64 :=
.seq AllocBody788_286 AllocBody788_315

def AllocBody788_317 : StackLang.HolProg 64 :=
.seq AllocBody788_267 AllocBody788_316

def AllocBody788_318 : StackLang.HolProg 64 :=
.seq AllocBody788_264 AllocBody788_317

def AllocBody788_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def AllocBody788_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody788_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3657#64)

def AllocBody788_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_328 : StackLang.HolProg 64 :=
.seq AllocBody788_326 AllocBody788_327

def AllocBody788_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 15

def AllocBody788_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_339 : StackLang.HolProg 64 :=
.seq AllocBody788_337 AllocBody788_338

def AllocBody788_340 : StackLang.HolProg 64 :=
.seq AllocBody788_336 AllocBody788_339

def AllocBody788_341 : StackLang.HolProg 64 :=
.seq AllocBody788_335 AllocBody788_340

def AllocBody788_342 : StackLang.HolProg 64 :=
.seq AllocBody788_334 AllocBody788_341

def AllocBody788_343 : StackLang.HolProg 64 :=
.seq AllocBody788_333 AllocBody788_342

def AllocBody788_344 : StackLang.HolProg 64 :=
.seq AllocBody788_332 AllocBody788_343

def AllocBody788_345 : StackLang.HolProg 64 :=
.seq AllocBody788_331 AllocBody788_344

def AllocBody788_346 : StackLang.HolProg 64 :=
.seq AllocBody788_330 AllocBody788_345

def AllocBody788_347 : StackLang.HolProg 64 :=
.seq AllocBody788_329 AllocBody788_346

def AllocBody788_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_355 : StackLang.HolProg 64 :=
.seq AllocBody788_353 AllocBody788_354

def AllocBody788_356 : StackLang.HolProg 64 :=
.seq AllocBody788_352 AllocBody788_355

def AllocBody788_357 : StackLang.HolProg 64 :=
.seq AllocBody788_351 AllocBody788_356

def AllocBody788_358 : StackLang.HolProg 64 :=
.seq AllocBody788_350 AllocBody788_357

def AllocBody788_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody788_360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_361 : StackLang.HolProg 64 :=
.seq AllocBody788_359 AllocBody788_360

def AllocBody788_362 : StackLang.HolProg 64 :=
.call (some (AllocBody788_358, 0, 788, 14)) (Sum.inl 728) (some (AllocBody788_361, 788, 15))

def AllocBody788_363 : StackLang.HolProg 64 :=
.seq AllocBody788_349 AllocBody788_362

def AllocBody788_364 : StackLang.HolProg 64 :=
.seq AllocBody788_348 AllocBody788_363

def AllocBody788_365 : StackLang.HolProg 64 :=
.seq AllocBody788_347 AllocBody788_364

def AllocBody788_366 : StackLang.HolProg 64 :=
.seq AllocBody788_328 AllocBody788_365

def AllocBody788_367 : StackLang.HolProg 64 :=
.seq AllocBody788_325 AllocBody788_366

def AllocBody788_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody788_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3658#64)

def AllocBody788_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_373 : StackLang.HolProg 64 :=
.seq AllocBody788_371 AllocBody788_372

def AllocBody788_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody788_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody788_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody788_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 17

def AllocBody788_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody788_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody788_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody788_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody788_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_384 : StackLang.HolProg 64 :=
.seq AllocBody788_382 AllocBody788_383

def AllocBody788_385 : StackLang.HolProg 64 :=
.seq AllocBody788_381 AllocBody788_384

def AllocBody788_386 : StackLang.HolProg 64 :=
.seq AllocBody788_380 AllocBody788_385

def AllocBody788_387 : StackLang.HolProg 64 :=
.seq AllocBody788_379 AllocBody788_386

def AllocBody788_388 : StackLang.HolProg 64 :=
.seq AllocBody788_378 AllocBody788_387

def AllocBody788_389 : StackLang.HolProg 64 :=
.seq AllocBody788_377 AllocBody788_388

def AllocBody788_390 : StackLang.HolProg 64 :=
.seq AllocBody788_376 AllocBody788_389

def AllocBody788_391 : StackLang.HolProg 64 :=
.seq AllocBody788_375 AllocBody788_390

def AllocBody788_392 : StackLang.HolProg 64 :=
.seq AllocBody788_374 AllocBody788_391

def AllocBody788_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody788_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody788_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody788_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody788_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody788_400 : StackLang.HolProg 64 :=
.seq AllocBody788_398 AllocBody788_399

def AllocBody788_401 : StackLang.HolProg 64 :=
.seq AllocBody788_397 AllocBody788_400

def AllocBody788_402 : StackLang.HolProg 64 :=
.seq AllocBody788_396 AllocBody788_401

def AllocBody788_403 : StackLang.HolProg 64 :=
.seq AllocBody788_395 AllocBody788_402

def AllocBody788_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody788_405 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody788_406 : StackLang.HolProg 64 :=
.seq AllocBody788_404 AllocBody788_405

def AllocBody788_407 : StackLang.HolProg 64 :=
.call (some (AllocBody788_403, 0, 788, 16)) (Sum.inl 70) (some (AllocBody788_406, 788, 17))

def AllocBody788_408 : StackLang.HolProg 64 :=
.seq AllocBody788_394 AllocBody788_407

def AllocBody788_409 : StackLang.HolProg 64 :=
.seq AllocBody788_393 AllocBody788_408

def AllocBody788_410 : StackLang.HolProg 64 :=
.seq AllocBody788_392 AllocBody788_409

def AllocBody788_411 : StackLang.HolProg 64 :=
.seq AllocBody788_373 AllocBody788_410

def AllocBody788_412 : StackLang.HolProg 64 :=
.seq AllocBody788_370 AllocBody788_411

def AllocBody788_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody788_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody788_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody788_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody788_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody788_418 : StackLang.HolProg 64 :=
.seq AllocBody788_416 AllocBody788_417

def AllocBody788_419 : StackLang.HolProg 64 :=
.seq AllocBody788_415 AllocBody788_418

def AllocBody788_420 : StackLang.HolProg 64 :=
.seq AllocBody788_414 AllocBody788_419

def AllocBody788_421 : StackLang.HolProg 64 :=
.seq AllocBody788_413 AllocBody788_420

def AllocBody788_422 : StackLang.HolProg 64 :=
.seq AllocBody788_412 AllocBody788_421

def AllocBody788_423 : StackLang.HolProg 64 :=
.seq AllocBody788_369 AllocBody788_422

def AllocBody788_424 : StackLang.HolProg 64 :=
.seq AllocBody788_368 AllocBody788_423

def AllocBody788_425 : StackLang.HolProg 64 :=
.seq AllocBody788_367 AllocBody788_424

def AllocBody788_426 : StackLang.HolProg 64 :=
.seq AllocBody788_324 AllocBody788_425

def AllocBody788_427 : StackLang.HolProg 64 :=
.seq AllocBody788_323 AllocBody788_426

def AllocBody788_428 : StackLang.HolProg 64 :=
.seq AllocBody788_322 AllocBody788_427

def AllocBody788_429 : StackLang.HolProg 64 :=
.seq AllocBody788_321 AllocBody788_428

def AllocBody788_430 : StackLang.HolProg 64 :=
.seq AllocBody788_320 AllocBody788_429

def AllocBody788_431 : StackLang.HolProg 64 :=
.seq AllocBody788_319 AllocBody788_430

def AllocBody788_432 : StackLang.HolProg 64 :=
.seq AllocBody788_318 AllocBody788_431

def AllocBody788_433 : StackLang.HolProg 64 :=
.seq AllocBody788_263 AllocBody788_432

def AllocBody788_434 : StackLang.HolProg 64 :=
.seq AllocBody788_260 AllocBody788_433

def AllocBody788_435 : StackLang.HolProg 64 :=
.seq AllocBody788_259 AllocBody788_434

def AllocBody788_436 : StackLang.HolProg 64 :=
.seq AllocBody788_258 AllocBody788_435

def AllocBody788_437 : StackLang.HolProg 64 :=
.seq AllocBody788_257 AllocBody788_436

def AllocBody788_438 : StackLang.HolProg 64 :=
.seq AllocBody788_256 AllocBody788_437

def AllocBody788_439 : StackLang.HolProg 64 :=
.seq AllocBody788_255 AllocBody788_438

def AllocBody788_440 : StackLang.HolProg 64 :=
.seq AllocBody788_208 AllocBody788_439

def AllocBody788_441 : StackLang.HolProg 64 :=
.seq AllocBody788_205 AllocBody788_440

def AllocBody788_442 : StackLang.HolProg 64 :=
.seq AllocBody788_204 AllocBody788_441

def AllocBody788_443 : StackLang.HolProg 64 :=
.seq AllocBody788_203 AllocBody788_442

def AllocBody788_444 : StackLang.HolProg 64 :=
.seq AllocBody788_202 AllocBody788_443

def AllocBody788_445 : StackLang.HolProg 64 :=
.seq AllocBody788_201 AllocBody788_444

def AllocBody788_446 : StackLang.HolProg 64 :=
.seq AllocBody788_200 AllocBody788_445

def AllocBody788_447 : StackLang.HolProg 64 :=
.seq AllocBody788_153 AllocBody788_446

def AllocBody788_448 : StackLang.HolProg 64 :=
.seq AllocBody788_148 AllocBody788_447

def AllocBody788_449 : StackLang.HolProg 64 :=
.seq AllocBody788_147 AllocBody788_448

def AllocBody788_450 : StackLang.HolProg 64 :=
.seq AllocBody788_100 AllocBody788_449

def AllocBody788_451 : StackLang.HolProg 64 :=
.seq AllocBody788_97 AllocBody788_450

def AllocBody788_452 : StackLang.HolProg 64 :=
.seq AllocBody788_96 AllocBody788_451

def AllocBody788_453 : StackLang.HolProg 64 :=
.seq AllocBody788_51 AllocBody788_452

def AllocBody788_454 : StackLang.HolProg 64 :=
.seq AllocBody788_50 AllocBody788_453

def AllocBody788_455 : StackLang.HolProg 64 :=
.seq AllocBody788_49 AllocBody788_454

def AllocBody788_456 : StackLang.HolProg 64 :=
.seq AllocBody788_48 AllocBody788_455

def AllocBody788_457 : StackLang.HolProg 64 :=
.seq AllocBody788_5 AllocBody788_456

def AllocBody788_458 : StackLang.HolProg 64 :=
.seq AllocBody788_0 AllocBody788_457

def Alloc788 : Nat × StackLang.HolProg 64 := (788, AllocBody788_458)
theorem Alloc788_eq : StackAlloc.progComp (788, raw788) = Alloc788 := by
  kernel_rfl
#print axioms Alloc788_eq
end InitECandidate.Proofs.BackendStages
