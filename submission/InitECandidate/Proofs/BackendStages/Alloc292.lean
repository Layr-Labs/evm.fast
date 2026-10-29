import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw292
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody292_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody292_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody292_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody292_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody292_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody292_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody292_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody292_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody292_8 : StackLang.HolProg 64 :=
.seq AllocBody292_6 AllocBody292_7

def AllocBody292_9 : StackLang.HolProg 64 :=
.seq AllocBody292_5 AllocBody292_8

def AllocBody292_10 : StackLang.HolProg 64 :=
.seq AllocBody292_4 AllocBody292_9

def AllocBody292_11 : StackLang.HolProg 64 :=
.seq AllocBody292_3 AllocBody292_10

def AllocBody292_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 794#64)

def AllocBody292_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_15 : StackLang.HolProg 64 :=
.seq AllocBody292_13 AllocBody292_14

def AllocBody292_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody292_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody292_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 3

def AllocBody292_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody292_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody292_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody292_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody292_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_26 : StackLang.HolProg 64 :=
.seq AllocBody292_24 AllocBody292_25

def AllocBody292_27 : StackLang.HolProg 64 :=
.seq AllocBody292_23 AllocBody292_26

def AllocBody292_28 : StackLang.HolProg 64 :=
.seq AllocBody292_22 AllocBody292_27

def AllocBody292_29 : StackLang.HolProg 64 :=
.seq AllocBody292_21 AllocBody292_28

def AllocBody292_30 : StackLang.HolProg 64 :=
.seq AllocBody292_20 AllocBody292_29

def AllocBody292_31 : StackLang.HolProg 64 :=
.seq AllocBody292_19 AllocBody292_30

def AllocBody292_32 : StackLang.HolProg 64 :=
.seq AllocBody292_18 AllocBody292_31

def AllocBody292_33 : StackLang.HolProg 64 :=
.seq AllocBody292_17 AllocBody292_32

def AllocBody292_34 : StackLang.HolProg 64 :=
.seq AllocBody292_16 AllocBody292_33

def AllocBody292_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody292_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody292_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody292_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody292_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody292_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody292_44 : StackLang.HolProg 64 :=
.seq AllocBody292_42 AllocBody292_43

def AllocBody292_45 : StackLang.HolProg 64 :=
.seq AllocBody292_41 AllocBody292_44

def AllocBody292_46 : StackLang.HolProg 64 :=
.seq AllocBody292_40 AllocBody292_45

def AllocBody292_47 : StackLang.HolProg 64 :=
.seq AllocBody292_39 AllocBody292_46

def AllocBody292_48 : StackLang.HolProg 64 :=
.seq AllocBody292_38 AllocBody292_47

def AllocBody292_49 : StackLang.HolProg 64 :=
.seq AllocBody292_37 AllocBody292_48

def AllocBody292_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody292_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody292_52 : StackLang.HolProg 64 :=
.seq AllocBody292_50 AllocBody292_51

def AllocBody292_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody292_54 : StackLang.HolProg 64 :=
.seq AllocBody292_52 AllocBody292_53

def AllocBody292_55 : StackLang.HolProg 64 :=
.call (some (AllocBody292_49, 0, 292, 2)) (Sum.inl 68) (some (AllocBody292_54, 292, 3))

def AllocBody292_56 : StackLang.HolProg 64 :=
.seq AllocBody292_36 AllocBody292_55

def AllocBody292_57 : StackLang.HolProg 64 :=
.seq AllocBody292_35 AllocBody292_56

def AllocBody292_58 : StackLang.HolProg 64 :=
.seq AllocBody292_34 AllocBody292_57

def AllocBody292_59 : StackLang.HolProg 64 :=
.seq AllocBody292_15 AllocBody292_58

def AllocBody292_60 : StackLang.HolProg 64 :=
.seq AllocBody292_12 AllocBody292_59

def AllocBody292_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody292_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody292_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody292_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody292_65 : StackLang.HolProg 64 :=
.seq AllocBody292_63 AllocBody292_64

def AllocBody292_66 : StackLang.HolProg 64 :=
.seq AllocBody292_62 AllocBody292_65

def AllocBody292_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 795#64)

def AllocBody292_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_70 : StackLang.HolProg 64 :=
.seq AllocBody292_68 AllocBody292_69

def AllocBody292_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody292_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody292_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 5

def AllocBody292_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody292_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody292_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody292_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody292_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_81 : StackLang.HolProg 64 :=
.seq AllocBody292_79 AllocBody292_80

def AllocBody292_82 : StackLang.HolProg 64 :=
.seq AllocBody292_78 AllocBody292_81

def AllocBody292_83 : StackLang.HolProg 64 :=
.seq AllocBody292_77 AllocBody292_82

def AllocBody292_84 : StackLang.HolProg 64 :=
.seq AllocBody292_76 AllocBody292_83

def AllocBody292_85 : StackLang.HolProg 64 :=
.seq AllocBody292_75 AllocBody292_84

def AllocBody292_86 : StackLang.HolProg 64 :=
.seq AllocBody292_74 AllocBody292_85

def AllocBody292_87 : StackLang.HolProg 64 :=
.seq AllocBody292_73 AllocBody292_86

def AllocBody292_88 : StackLang.HolProg 64 :=
.seq AllocBody292_72 AllocBody292_87

def AllocBody292_89 : StackLang.HolProg 64 :=
.seq AllocBody292_71 AllocBody292_88

def AllocBody292_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody292_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody292_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody292_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody292_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody292_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody292_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody292_100 : StackLang.HolProg 64 :=
.seq AllocBody292_98 AllocBody292_99

def AllocBody292_101 : StackLang.HolProg 64 :=
.seq AllocBody292_97 AllocBody292_100

def AllocBody292_102 : StackLang.HolProg 64 :=
.seq AllocBody292_96 AllocBody292_101

def AllocBody292_103 : StackLang.HolProg 64 :=
.seq AllocBody292_95 AllocBody292_102

def AllocBody292_104 : StackLang.HolProg 64 :=
.seq AllocBody292_94 AllocBody292_103

def AllocBody292_105 : StackLang.HolProg 64 :=
.seq AllocBody292_93 AllocBody292_104

def AllocBody292_106 : StackLang.HolProg 64 :=
.seq AllocBody292_92 AllocBody292_105

def AllocBody292_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody292_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody292_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody292_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody292_111 : StackLang.HolProg 64 :=
.seq AllocBody292_109 AllocBody292_110

def AllocBody292_112 : StackLang.HolProg 64 :=
.seq AllocBody292_108 AllocBody292_111

def AllocBody292_113 : StackLang.HolProg 64 :=
.seq AllocBody292_107 AllocBody292_112

def AllocBody292_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody292_115 : StackLang.HolProg 64 :=
.seq AllocBody292_113 AllocBody292_114

def AllocBody292_116 : StackLang.HolProg 64 :=
.call (some (AllocBody292_106, 0, 292, 4)) (Sum.inl 77) (some (AllocBody292_115, 292, 5))

def AllocBody292_117 : StackLang.HolProg 64 :=
.seq AllocBody292_91 AllocBody292_116

def AllocBody292_118 : StackLang.HolProg 64 :=
.seq AllocBody292_90 AllocBody292_117

def AllocBody292_119 : StackLang.HolProg 64 :=
.seq AllocBody292_89 AllocBody292_118

def AllocBody292_120 : StackLang.HolProg 64 :=
.seq AllocBody292_70 AllocBody292_119

def AllocBody292_121 : StackLang.HolProg 64 :=
.seq AllocBody292_67 AllocBody292_120

def AllocBody292_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody292_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody292_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody292_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 796#64)

def AllocBody292_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_129 : StackLang.HolProg 64 :=
.seq AllocBody292_127 AllocBody292_128

def AllocBody292_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody292_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody292_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody292_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 7

def AllocBody292_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody292_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody292_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody292_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody292_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_140 : StackLang.HolProg 64 :=
.seq AllocBody292_138 AllocBody292_139

def AllocBody292_141 : StackLang.HolProg 64 :=
.seq AllocBody292_137 AllocBody292_140

def AllocBody292_142 : StackLang.HolProg 64 :=
.seq AllocBody292_136 AllocBody292_141

def AllocBody292_143 : StackLang.HolProg 64 :=
.seq AllocBody292_135 AllocBody292_142

def AllocBody292_144 : StackLang.HolProg 64 :=
.seq AllocBody292_134 AllocBody292_143

def AllocBody292_145 : StackLang.HolProg 64 :=
.seq AllocBody292_133 AllocBody292_144

def AllocBody292_146 : StackLang.HolProg 64 :=
.seq AllocBody292_132 AllocBody292_145

def AllocBody292_147 : StackLang.HolProg 64 :=
.seq AllocBody292_131 AllocBody292_146

def AllocBody292_148 : StackLang.HolProg 64 :=
.seq AllocBody292_130 AllocBody292_147

def AllocBody292_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody292_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody292_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody292_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody292_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody292_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody292_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody292_157 : StackLang.HolProg 64 :=
.seq AllocBody292_155 AllocBody292_156

def AllocBody292_158 : StackLang.HolProg 64 :=
.seq AllocBody292_154 AllocBody292_157

def AllocBody292_159 : StackLang.HolProg 64 :=
.seq AllocBody292_153 AllocBody292_158

def AllocBody292_160 : StackLang.HolProg 64 :=
.seq AllocBody292_152 AllocBody292_159

def AllocBody292_161 : StackLang.HolProg 64 :=
.seq AllocBody292_151 AllocBody292_160

def AllocBody292_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody292_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def AllocBody292_164 : StackLang.HolProg 64 :=
.seq AllocBody292_162 AllocBody292_163

def AllocBody292_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody292_166 : StackLang.HolProg 64 :=
.seq AllocBody292_164 AllocBody292_165

def AllocBody292_167 : StackLang.HolProg 64 :=
.call (some (AllocBody292_161, 0, 292, 6)) (Sum.inl 77) (some (AllocBody292_166, 292, 7))

def AllocBody292_168 : StackLang.HolProg 64 :=
.seq AllocBody292_150 AllocBody292_167

def AllocBody292_169 : StackLang.HolProg 64 :=
.seq AllocBody292_149 AllocBody292_168

def AllocBody292_170 : StackLang.HolProg 64 :=
.seq AllocBody292_148 AllocBody292_169

def AllocBody292_171 : StackLang.HolProg 64 :=
.seq AllocBody292_129 AllocBody292_170

def AllocBody292_172 : StackLang.HolProg 64 :=
.seq AllocBody292_126 AllocBody292_171

def AllocBody292_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody292_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody292_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody292_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody292_177 : StackLang.HolProg 64 :=
.seq AllocBody292_175 AllocBody292_176

def AllocBody292_178 : StackLang.HolProg 64 :=
.seq AllocBody292_174 AllocBody292_177

def AllocBody292_179 : StackLang.HolProg 64 :=
.seq AllocBody292_173 AllocBody292_178

def AllocBody292_180 : StackLang.HolProg 64 :=
.seq AllocBody292_172 AllocBody292_179

def AllocBody292_181 : StackLang.HolProg 64 :=
.seq AllocBody292_125 AllocBody292_180

def AllocBody292_182 : StackLang.HolProg 64 :=
.seq AllocBody292_124 AllocBody292_181

def AllocBody292_183 : StackLang.HolProg 64 :=
.seq AllocBody292_123 AllocBody292_182

def AllocBody292_184 : StackLang.HolProg 64 :=
.seq AllocBody292_122 AllocBody292_183

def AllocBody292_185 : StackLang.HolProg 64 :=
.seq AllocBody292_121 AllocBody292_184

def AllocBody292_186 : StackLang.HolProg 64 :=
.seq AllocBody292_66 AllocBody292_185

def AllocBody292_187 : StackLang.HolProg 64 :=
.seq AllocBody292_61 AllocBody292_186

def AllocBody292_188 : StackLang.HolProg 64 :=
.seq AllocBody292_60 AllocBody292_187

def AllocBody292_189 : StackLang.HolProg 64 :=
.seq AllocBody292_11 AllocBody292_188

def AllocBody292_190 : StackLang.HolProg 64 :=
.seq AllocBody292_2 AllocBody292_189

def AllocBody292_191 : StackLang.HolProg 64 :=
.seq AllocBody292_1 AllocBody292_190

def AllocBody292_192 : StackLang.HolProg 64 :=
.seq AllocBody292_0 AllocBody292_191

def Alloc292 : Nat × StackLang.HolProg 64 := (292, AllocBody292_192)
theorem Alloc292_eq : StackAlloc.progComp (292, raw292) = Alloc292 := by
  kernel_rfl
#print axioms Alloc292_eq
end InitECandidate.Proofs.BackendStages
