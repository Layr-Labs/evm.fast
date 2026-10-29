import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw804
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody804_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody804_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody804_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody804_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody804_4 : StackLang.HolProg 64 :=
.seq AllocBody804_2 AllocBody804_3

def AllocBody804_5 : StackLang.HolProg 64 :=
.seq AllocBody804_1 AllocBody804_4

def AllocBody804_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3927#64)

def AllocBody804_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_9 : StackLang.HolProg 64 :=
.seq AllocBody804_7 AllocBody804_8

def AllocBody804_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 3

def AllocBody804_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_20 : StackLang.HolProg 64 :=
.seq AllocBody804_18 AllocBody804_19

def AllocBody804_21 : StackLang.HolProg 64 :=
.seq AllocBody804_17 AllocBody804_20

def AllocBody804_22 : StackLang.HolProg 64 :=
.seq AllocBody804_16 AllocBody804_21

def AllocBody804_23 : StackLang.HolProg 64 :=
.seq AllocBody804_15 AllocBody804_22

def AllocBody804_24 : StackLang.HolProg 64 :=
.seq AllocBody804_14 AllocBody804_23

def AllocBody804_25 : StackLang.HolProg 64 :=
.seq AllocBody804_13 AllocBody804_24

def AllocBody804_26 : StackLang.HolProg 64 :=
.seq AllocBody804_12 AllocBody804_25

def AllocBody804_27 : StackLang.HolProg 64 :=
.seq AllocBody804_11 AllocBody804_26

def AllocBody804_28 : StackLang.HolProg 64 :=
.seq AllocBody804_10 AllocBody804_27

def AllocBody804_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody804_36 : StackLang.HolProg 64 :=
.seq AllocBody804_34 AllocBody804_35

def AllocBody804_37 : StackLang.HolProg 64 :=
.seq AllocBody804_33 AllocBody804_36

def AllocBody804_38 : StackLang.HolProg 64 :=
.seq AllocBody804_32 AllocBody804_37

def AllocBody804_39 : StackLang.HolProg 64 :=
.seq AllocBody804_31 AllocBody804_38

def AllocBody804_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_42 : StackLang.HolProg 64 :=
.seq AllocBody804_40 AllocBody804_41

def AllocBody804_43 : StackLang.HolProg 64 :=
.call (some (AllocBody804_39, 0, 804, 2)) (Sum.inl 69) (some (AllocBody804_42, 804, 3))

def AllocBody804_44 : StackLang.HolProg 64 :=
.seq AllocBody804_30 AllocBody804_43

def AllocBody804_45 : StackLang.HolProg 64 :=
.seq AllocBody804_29 AllocBody804_44

def AllocBody804_46 : StackLang.HolProg 64 :=
.seq AllocBody804_28 AllocBody804_45

def AllocBody804_47 : StackLang.HolProg 64 :=
.seq AllocBody804_9 AllocBody804_46

def AllocBody804_48 : StackLang.HolProg 64 :=
.seq AllocBody804_6 AllocBody804_47

def AllocBody804_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def AllocBody804_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody804_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3928#64)

def AllocBody804_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_55 : StackLang.HolProg 64 :=
.seq AllocBody804_53 AllocBody804_54

def AllocBody804_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 5

def AllocBody804_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_66 : StackLang.HolProg 64 :=
.seq AllocBody804_64 AllocBody804_65

def AllocBody804_67 : StackLang.HolProg 64 :=
.seq AllocBody804_63 AllocBody804_66

def AllocBody804_68 : StackLang.HolProg 64 :=
.seq AllocBody804_62 AllocBody804_67

def AllocBody804_69 : StackLang.HolProg 64 :=
.seq AllocBody804_61 AllocBody804_68

def AllocBody804_70 : StackLang.HolProg 64 :=
.seq AllocBody804_60 AllocBody804_69

def AllocBody804_71 : StackLang.HolProg 64 :=
.seq AllocBody804_59 AllocBody804_70

def AllocBody804_72 : StackLang.HolProg 64 :=
.seq AllocBody804_58 AllocBody804_71

def AllocBody804_73 : StackLang.HolProg 64 :=
.seq AllocBody804_57 AllocBody804_72

def AllocBody804_74 : StackLang.HolProg 64 :=
.seq AllocBody804_56 AllocBody804_73

def AllocBody804_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody804_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_83 : StackLang.HolProg 64 :=
.seq AllocBody804_81 AllocBody804_82

def AllocBody804_84 : StackLang.HolProg 64 :=
.seq AllocBody804_80 AllocBody804_83

def AllocBody804_85 : StackLang.HolProg 64 :=
.seq AllocBody804_79 AllocBody804_84

def AllocBody804_86 : StackLang.HolProg 64 :=
.seq AllocBody804_78 AllocBody804_85

def AllocBody804_87 : StackLang.HolProg 64 :=
.seq AllocBody804_77 AllocBody804_86

def AllocBody804_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_90 : StackLang.HolProg 64 :=
.seq AllocBody804_88 AllocBody804_89

def AllocBody804_91 : StackLang.HolProg 64 :=
.call (some (AllocBody804_87, 0, 804, 4)) (Sum.inl 68) (some (AllocBody804_90, 804, 5))

def AllocBody804_92 : StackLang.HolProg 64 :=
.seq AllocBody804_76 AllocBody804_91

def AllocBody804_93 : StackLang.HolProg 64 :=
.seq AllocBody804_75 AllocBody804_92

def AllocBody804_94 : StackLang.HolProg 64 :=
.seq AllocBody804_74 AllocBody804_93

def AllocBody804_95 : StackLang.HolProg 64 :=
.seq AllocBody804_55 AllocBody804_94

def AllocBody804_96 : StackLang.HolProg 64 :=
.seq AllocBody804_52 AllocBody804_95

def AllocBody804_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody804_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def AllocBody804_100 : StackLang.HolProg 64 :=
.seq AllocBody804_98 AllocBody804_99

def AllocBody804_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3929#64)

def AllocBody804_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_104 : StackLang.HolProg 64 :=
.seq AllocBody804_102 AllocBody804_103

def AllocBody804_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 7

def AllocBody804_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_115 : StackLang.HolProg 64 :=
.seq AllocBody804_113 AllocBody804_114

def AllocBody804_116 : StackLang.HolProg 64 :=
.seq AllocBody804_112 AllocBody804_115

def AllocBody804_117 : StackLang.HolProg 64 :=
.seq AllocBody804_111 AllocBody804_116

def AllocBody804_118 : StackLang.HolProg 64 :=
.seq AllocBody804_110 AllocBody804_117

def AllocBody804_119 : StackLang.HolProg 64 :=
.seq AllocBody804_109 AllocBody804_118

def AllocBody804_120 : StackLang.HolProg 64 :=
.seq AllocBody804_108 AllocBody804_119

def AllocBody804_121 : StackLang.HolProg 64 :=
.seq AllocBody804_107 AllocBody804_120

def AllocBody804_122 : StackLang.HolProg 64 :=
.seq AllocBody804_106 AllocBody804_121

def AllocBody804_123 : StackLang.HolProg 64 :=
.seq AllocBody804_105 AllocBody804_122

def AllocBody804_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_131 : StackLang.HolProg 64 :=
.seq AllocBody804_129 AllocBody804_130

def AllocBody804_132 : StackLang.HolProg 64 :=
.seq AllocBody804_128 AllocBody804_131

def AllocBody804_133 : StackLang.HolProg 64 :=
.seq AllocBody804_127 AllocBody804_132

def AllocBody804_134 : StackLang.HolProg 64 :=
.seq AllocBody804_126 AllocBody804_133

def AllocBody804_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_137 : StackLang.HolProg 64 :=
.seq AllocBody804_135 AllocBody804_136

def AllocBody804_138 : StackLang.HolProg 64 :=
.call (some (AllocBody804_134, 0, 804, 6)) (Sum.inl 801) (some (AllocBody804_137, 804, 7))

def AllocBody804_139 : StackLang.HolProg 64 :=
.seq AllocBody804_125 AllocBody804_138

def AllocBody804_140 : StackLang.HolProg 64 :=
.seq AllocBody804_124 AllocBody804_139

def AllocBody804_141 : StackLang.HolProg 64 :=
.seq AllocBody804_123 AllocBody804_140

def AllocBody804_142 : StackLang.HolProg 64 :=
.seq AllocBody804_104 AllocBody804_141

def AllocBody804_143 : StackLang.HolProg 64 :=
.seq AllocBody804_101 AllocBody804_142

def AllocBody804_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody804_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody804_147 : StackLang.HolProg 64 :=
.seq AllocBody804_145 AllocBody804_146

def AllocBody804_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3930#64)

def AllocBody804_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_151 : StackLang.HolProg 64 :=
.seq AllocBody804_149 AllocBody804_150

def AllocBody804_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 9

def AllocBody804_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_162 : StackLang.HolProg 64 :=
.seq AllocBody804_160 AllocBody804_161

def AllocBody804_163 : StackLang.HolProg 64 :=
.seq AllocBody804_159 AllocBody804_162

def AllocBody804_164 : StackLang.HolProg 64 :=
.seq AllocBody804_158 AllocBody804_163

def AllocBody804_165 : StackLang.HolProg 64 :=
.seq AllocBody804_157 AllocBody804_164

def AllocBody804_166 : StackLang.HolProg 64 :=
.seq AllocBody804_156 AllocBody804_165

def AllocBody804_167 : StackLang.HolProg 64 :=
.seq AllocBody804_155 AllocBody804_166

def AllocBody804_168 : StackLang.HolProg 64 :=
.seq AllocBody804_154 AllocBody804_167

def AllocBody804_169 : StackLang.HolProg 64 :=
.seq AllocBody804_153 AllocBody804_168

def AllocBody804_170 : StackLang.HolProg 64 :=
.seq AllocBody804_152 AllocBody804_169

def AllocBody804_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody804_179 : StackLang.HolProg 64 :=
.seq AllocBody804_177 AllocBody804_178

def AllocBody804_180 : StackLang.HolProg 64 :=
.seq AllocBody804_176 AllocBody804_179

def AllocBody804_181 : StackLang.HolProg 64 :=
.seq AllocBody804_175 AllocBody804_180

def AllocBody804_182 : StackLang.HolProg 64 :=
.seq AllocBody804_174 AllocBody804_181

def AllocBody804_183 : StackLang.HolProg 64 :=
.seq AllocBody804_173 AllocBody804_182

def AllocBody804_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody804_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody804_186 : StackLang.HolProg 64 :=
.seq AllocBody804_184 AllocBody804_185

def AllocBody804_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_188 : StackLang.HolProg 64 :=
.seq AllocBody804_186 AllocBody804_187

def AllocBody804_189 : StackLang.HolProg 64 :=
.call (some (AllocBody804_183, 0, 804, 8)) (Sum.inl 803) (some (AllocBody804_188, 804, 9))

def AllocBody804_190 : StackLang.HolProg 64 :=
.seq AllocBody804_172 AllocBody804_189

def AllocBody804_191 : StackLang.HolProg 64 :=
.seq AllocBody804_171 AllocBody804_190

def AllocBody804_192 : StackLang.HolProg 64 :=
.seq AllocBody804_170 AllocBody804_191

def AllocBody804_193 : StackLang.HolProg 64 :=
.seq AllocBody804_151 AllocBody804_192

def AllocBody804_194 : StackLang.HolProg 64 :=
.seq AllocBody804_148 AllocBody804_193

def AllocBody804_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody804_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody804_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody804_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody804_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody804_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1632#64)))

def AllocBody804_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 10#64)

def AllocBody804_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3931#64)

def AllocBody804_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_207 : StackLang.HolProg 64 :=
.seq AllocBody804_205 AllocBody804_206

def AllocBody804_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 11

def AllocBody804_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_218 : StackLang.HolProg 64 :=
.seq AllocBody804_216 AllocBody804_217

def AllocBody804_219 : StackLang.HolProg 64 :=
.seq AllocBody804_215 AllocBody804_218

def AllocBody804_220 : StackLang.HolProg 64 :=
.seq AllocBody804_214 AllocBody804_219

def AllocBody804_221 : StackLang.HolProg 64 :=
.seq AllocBody804_213 AllocBody804_220

def AllocBody804_222 : StackLang.HolProg 64 :=
.seq AllocBody804_212 AllocBody804_221

def AllocBody804_223 : StackLang.HolProg 64 :=
.seq AllocBody804_211 AllocBody804_222

def AllocBody804_224 : StackLang.HolProg 64 :=
.seq AllocBody804_210 AllocBody804_223

def AllocBody804_225 : StackLang.HolProg 64 :=
.seq AllocBody804_209 AllocBody804_224

def AllocBody804_226 : StackLang.HolProg 64 :=
.seq AllocBody804_208 AllocBody804_225

def AllocBody804_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody804_234 : StackLang.HolProg 64 :=
.seq AllocBody804_232 AllocBody804_233

def AllocBody804_235 : StackLang.HolProg 64 :=
.seq AllocBody804_231 AllocBody804_234

def AllocBody804_236 : StackLang.HolProg 64 :=
.seq AllocBody804_230 AllocBody804_235

def AllocBody804_237 : StackLang.HolProg 64 :=
.seq AllocBody804_229 AllocBody804_236

def AllocBody804_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody804_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_240 : StackLang.HolProg 64 :=
.seq AllocBody804_238 AllocBody804_239

def AllocBody804_241 : StackLang.HolProg 64 :=
.call (some (AllocBody804_237, 0, 804, 10)) (Sum.inl 784) (some (AllocBody804_240, 804, 11))

def AllocBody804_242 : StackLang.HolProg 64 :=
.seq AllocBody804_228 AllocBody804_241

def AllocBody804_243 : StackLang.HolProg 64 :=
.seq AllocBody804_227 AllocBody804_242

def AllocBody804_244 : StackLang.HolProg 64 :=
.seq AllocBody804_226 AllocBody804_243

def AllocBody804_245 : StackLang.HolProg 64 :=
.seq AllocBody804_207 AllocBody804_244

def AllocBody804_246 : StackLang.HolProg 64 :=
.seq AllocBody804_204 AllocBody804_245

def AllocBody804_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody804_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3932#64)

def AllocBody804_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_252 : StackLang.HolProg 64 :=
.seq AllocBody804_250 AllocBody804_251

def AllocBody804_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody804_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody804_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody804_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 13

def AllocBody804_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody804_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody804_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody804_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody804_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_263 : StackLang.HolProg 64 :=
.seq AllocBody804_261 AllocBody804_262

def AllocBody804_264 : StackLang.HolProg 64 :=
.seq AllocBody804_260 AllocBody804_263

def AllocBody804_265 : StackLang.HolProg 64 :=
.seq AllocBody804_259 AllocBody804_264

def AllocBody804_266 : StackLang.HolProg 64 :=
.seq AllocBody804_258 AllocBody804_265

def AllocBody804_267 : StackLang.HolProg 64 :=
.seq AllocBody804_257 AllocBody804_266

def AllocBody804_268 : StackLang.HolProg 64 :=
.seq AllocBody804_256 AllocBody804_267

def AllocBody804_269 : StackLang.HolProg 64 :=
.seq AllocBody804_255 AllocBody804_268

def AllocBody804_270 : StackLang.HolProg 64 :=
.seq AllocBody804_254 AllocBody804_269

def AllocBody804_271 : StackLang.HolProg 64 :=
.seq AllocBody804_253 AllocBody804_270

def AllocBody804_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody804_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody804_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody804_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody804_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody804_279 : StackLang.HolProg 64 :=
.seq AllocBody804_277 AllocBody804_278

def AllocBody804_280 : StackLang.HolProg 64 :=
.seq AllocBody804_276 AllocBody804_279

def AllocBody804_281 : StackLang.HolProg 64 :=
.seq AllocBody804_275 AllocBody804_280

def AllocBody804_282 : StackLang.HolProg 64 :=
.seq AllocBody804_274 AllocBody804_281

def AllocBody804_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody804_284 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody804_285 : StackLang.HolProg 64 :=
.seq AllocBody804_283 AllocBody804_284

def AllocBody804_286 : StackLang.HolProg 64 :=
.call (some (AllocBody804_282, 0, 804, 12)) (Sum.inl 70) (some (AllocBody804_285, 804, 13))

def AllocBody804_287 : StackLang.HolProg 64 :=
.seq AllocBody804_273 AllocBody804_286

def AllocBody804_288 : StackLang.HolProg 64 :=
.seq AllocBody804_272 AllocBody804_287

def AllocBody804_289 : StackLang.HolProg 64 :=
.seq AllocBody804_271 AllocBody804_288

def AllocBody804_290 : StackLang.HolProg 64 :=
.seq AllocBody804_252 AllocBody804_289

def AllocBody804_291 : StackLang.HolProg 64 :=
.seq AllocBody804_249 AllocBody804_290

def AllocBody804_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody804_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody804_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody804_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody804_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody804_297 : StackLang.HolProg 64 :=
.seq AllocBody804_295 AllocBody804_296

def AllocBody804_298 : StackLang.HolProg 64 :=
.seq AllocBody804_294 AllocBody804_297

def AllocBody804_299 : StackLang.HolProg 64 :=
.seq AllocBody804_293 AllocBody804_298

def AllocBody804_300 : StackLang.HolProg 64 :=
.seq AllocBody804_292 AllocBody804_299

def AllocBody804_301 : StackLang.HolProg 64 :=
.seq AllocBody804_291 AllocBody804_300

def AllocBody804_302 : StackLang.HolProg 64 :=
.seq AllocBody804_248 AllocBody804_301

def AllocBody804_303 : StackLang.HolProg 64 :=
.seq AllocBody804_247 AllocBody804_302

def AllocBody804_304 : StackLang.HolProg 64 :=
.seq AllocBody804_246 AllocBody804_303

def AllocBody804_305 : StackLang.HolProg 64 :=
.seq AllocBody804_203 AllocBody804_304

def AllocBody804_306 : StackLang.HolProg 64 :=
.seq AllocBody804_202 AllocBody804_305

def AllocBody804_307 : StackLang.HolProg 64 :=
.seq AllocBody804_201 AllocBody804_306

def AllocBody804_308 : StackLang.HolProg 64 :=
.seq AllocBody804_200 AllocBody804_307

def AllocBody804_309 : StackLang.HolProg 64 :=
.seq AllocBody804_199 AllocBody804_308

def AllocBody804_310 : StackLang.HolProg 64 :=
.seq AllocBody804_198 AllocBody804_309

def AllocBody804_311 : StackLang.HolProg 64 :=
.seq AllocBody804_197 AllocBody804_310

def AllocBody804_312 : StackLang.HolProg 64 :=
.seq AllocBody804_196 AllocBody804_311

def AllocBody804_313 : StackLang.HolProg 64 :=
.seq AllocBody804_195 AllocBody804_312

def AllocBody804_314 : StackLang.HolProg 64 :=
.seq AllocBody804_194 AllocBody804_313

def AllocBody804_315 : StackLang.HolProg 64 :=
.seq AllocBody804_147 AllocBody804_314

def AllocBody804_316 : StackLang.HolProg 64 :=
.seq AllocBody804_144 AllocBody804_315

def AllocBody804_317 : StackLang.HolProg 64 :=
.seq AllocBody804_143 AllocBody804_316

def AllocBody804_318 : StackLang.HolProg 64 :=
.seq AllocBody804_100 AllocBody804_317

def AllocBody804_319 : StackLang.HolProg 64 :=
.seq AllocBody804_97 AllocBody804_318

def AllocBody804_320 : StackLang.HolProg 64 :=
.seq AllocBody804_96 AllocBody804_319

def AllocBody804_321 : StackLang.HolProg 64 :=
.seq AllocBody804_51 AllocBody804_320

def AllocBody804_322 : StackLang.HolProg 64 :=
.seq AllocBody804_50 AllocBody804_321

def AllocBody804_323 : StackLang.HolProg 64 :=
.seq AllocBody804_49 AllocBody804_322

def AllocBody804_324 : StackLang.HolProg 64 :=
.seq AllocBody804_48 AllocBody804_323

def AllocBody804_325 : StackLang.HolProg 64 :=
.seq AllocBody804_5 AllocBody804_324

def AllocBody804_326 : StackLang.HolProg 64 :=
.seq AllocBody804_0 AllocBody804_325

def Alloc804 : Nat × StackLang.HolProg 64 := (804, AllocBody804_326)
theorem Alloc804_eq : StackAlloc.progComp (804, raw804) = Alloc804 := by
  kernel_rfl
#print axioms Alloc804_eq
end InitECandidate.Proofs.BackendStages
