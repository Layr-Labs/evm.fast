import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw659
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody659_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody659_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody659_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody659_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody659_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody659_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody659_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody659_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody659_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody659_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody659_10 : StackLang.HolProg 64 :=
.seq AllocBody659_8 AllocBody659_9

def AllocBody659_11 : StackLang.HolProg 64 :=
.seq AllocBody659_7 AllocBody659_10

def AllocBody659_12 : StackLang.HolProg 64 :=
.seq AllocBody659_6 AllocBody659_11

def AllocBody659_13 : StackLang.HolProg 64 :=
.seq AllocBody659_5 AllocBody659_12

def AllocBody659_14 : StackLang.HolProg 64 :=
.seq AllocBody659_4 AllocBody659_13

def AllocBody659_15 : StackLang.HolProg 64 :=
.seq AllocBody659_3 AllocBody659_14

def AllocBody659_16 : StackLang.HolProg 64 :=
.seq AllocBody659_2 AllocBody659_15

def AllocBody659_17 : StackLang.HolProg 64 :=
.seq AllocBody659_1 AllocBody659_16

def AllocBody659_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2747#64)

def AllocBody659_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_21 : StackLang.HolProg 64 :=
.seq AllocBody659_19 AllocBody659_20

def AllocBody659_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody659_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody659_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 3

def AllocBody659_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody659_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody659_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody659_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody659_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_32 : StackLang.HolProg 64 :=
.seq AllocBody659_30 AllocBody659_31

def AllocBody659_33 : StackLang.HolProg 64 :=
.seq AllocBody659_29 AllocBody659_32

def AllocBody659_34 : StackLang.HolProg 64 :=
.seq AllocBody659_28 AllocBody659_33

def AllocBody659_35 : StackLang.HolProg 64 :=
.seq AllocBody659_27 AllocBody659_34

def AllocBody659_36 : StackLang.HolProg 64 :=
.seq AllocBody659_26 AllocBody659_35

def AllocBody659_37 : StackLang.HolProg 64 :=
.seq AllocBody659_25 AllocBody659_36

def AllocBody659_38 : StackLang.HolProg 64 :=
.seq AllocBody659_24 AllocBody659_37

def AllocBody659_39 : StackLang.HolProg 64 :=
.seq AllocBody659_23 AllocBody659_38

def AllocBody659_40 : StackLang.HolProg 64 :=
.seq AllocBody659_22 AllocBody659_39

def AllocBody659_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody659_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody659_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody659_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody659_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody659_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody659_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody659_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody659_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody659_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody659_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody659_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody659_56 : StackLang.HolProg 64 :=
.seq AllocBody659_54 AllocBody659_55

def AllocBody659_57 : StackLang.HolProg 64 :=
.seq AllocBody659_53 AllocBody659_56

def AllocBody659_58 : StackLang.HolProg 64 :=
.seq AllocBody659_52 AllocBody659_57

def AllocBody659_59 : StackLang.HolProg 64 :=
.seq AllocBody659_51 AllocBody659_58

def AllocBody659_60 : StackLang.HolProg 64 :=
.seq AllocBody659_50 AllocBody659_59

def AllocBody659_61 : StackLang.HolProg 64 :=
.seq AllocBody659_49 AllocBody659_60

def AllocBody659_62 : StackLang.HolProg 64 :=
.seq AllocBody659_48 AllocBody659_61

def AllocBody659_63 : StackLang.HolProg 64 :=
.seq AllocBody659_47 AllocBody659_62

def AllocBody659_64 : StackLang.HolProg 64 :=
.seq AllocBody659_46 AllocBody659_63

def AllocBody659_65 : StackLang.HolProg 64 :=
.seq AllocBody659_45 AllocBody659_64

def AllocBody659_66 : StackLang.HolProg 64 :=
.seq AllocBody659_44 AllocBody659_65

def AllocBody659_67 : StackLang.HolProg 64 :=
.seq AllocBody659_43 AllocBody659_66

def AllocBody659_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody659_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody659_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody659_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody659_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody659_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody659_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody659_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody659_76 : StackLang.HolProg 64 :=
.seq AllocBody659_74 AllocBody659_75

def AllocBody659_77 : StackLang.HolProg 64 :=
.seq AllocBody659_73 AllocBody659_76

def AllocBody659_78 : StackLang.HolProg 64 :=
.seq AllocBody659_72 AllocBody659_77

def AllocBody659_79 : StackLang.HolProg 64 :=
.seq AllocBody659_71 AllocBody659_78

def AllocBody659_80 : StackLang.HolProg 64 :=
.seq AllocBody659_70 AllocBody659_79

def AllocBody659_81 : StackLang.HolProg 64 :=
.seq AllocBody659_69 AllocBody659_80

def AllocBody659_82 : StackLang.HolProg 64 :=
.seq AllocBody659_68 AllocBody659_81

def AllocBody659_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody659_84 : StackLang.HolProg 64 :=
.seq AllocBody659_82 AllocBody659_83

def AllocBody659_85 : StackLang.HolProg 64 :=
.call (some (AllocBody659_67, 0, 659, 2)) (Sum.inl 106) (some (AllocBody659_84, 659, 3))

def AllocBody659_86 : StackLang.HolProg 64 :=
.seq AllocBody659_42 AllocBody659_85

def AllocBody659_87 : StackLang.HolProg 64 :=
.seq AllocBody659_41 AllocBody659_86

def AllocBody659_88 : StackLang.HolProg 64 :=
.seq AllocBody659_40 AllocBody659_87

def AllocBody659_89 : StackLang.HolProg 64 :=
.seq AllocBody659_21 AllocBody659_88

def AllocBody659_90 : StackLang.HolProg 64 :=
.seq AllocBody659_18 AllocBody659_89

def AllocBody659_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody659_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def AllocBody659_94 : StackLang.HolProg 64 :=
.seq AllocBody659_92 AllocBody659_93

def AllocBody659_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2748#64)

def AllocBody659_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_98 : StackLang.HolProg 64 :=
.seq AllocBody659_96 AllocBody659_97

def AllocBody659_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody659_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody659_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 5

def AllocBody659_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody659_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody659_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody659_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody659_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_109 : StackLang.HolProg 64 :=
.seq AllocBody659_107 AllocBody659_108

def AllocBody659_110 : StackLang.HolProg 64 :=
.seq AllocBody659_106 AllocBody659_109

def AllocBody659_111 : StackLang.HolProg 64 :=
.seq AllocBody659_105 AllocBody659_110

def AllocBody659_112 : StackLang.HolProg 64 :=
.seq AllocBody659_104 AllocBody659_111

def AllocBody659_113 : StackLang.HolProg 64 :=
.seq AllocBody659_103 AllocBody659_112

def AllocBody659_114 : StackLang.HolProg 64 :=
.seq AllocBody659_102 AllocBody659_113

def AllocBody659_115 : StackLang.HolProg 64 :=
.seq AllocBody659_101 AllocBody659_114

def AllocBody659_116 : StackLang.HolProg 64 :=
.seq AllocBody659_100 AllocBody659_115

def AllocBody659_117 : StackLang.HolProg 64 :=
.seq AllocBody659_99 AllocBody659_116

def AllocBody659_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody659_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody659_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody659_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody659_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody659_126 : StackLang.HolProg 64 :=
.seq AllocBody659_124 AllocBody659_125

def AllocBody659_127 : StackLang.HolProg 64 :=
.seq AllocBody659_123 AllocBody659_126

def AllocBody659_128 : StackLang.HolProg 64 :=
.seq AllocBody659_122 AllocBody659_127

def AllocBody659_129 : StackLang.HolProg 64 :=
.seq AllocBody659_121 AllocBody659_128

def AllocBody659_130 : StackLang.HolProg 64 :=
.seq AllocBody659_120 AllocBody659_129

def AllocBody659_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody659_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody659_133 : StackLang.HolProg 64 :=
.seq AllocBody659_131 AllocBody659_132

def AllocBody659_134 : StackLang.HolProg 64 :=
.call (some (AllocBody659_130, 0, 659, 4)) (Sum.inl 117) (some (AllocBody659_133, 659, 5))

def AllocBody659_135 : StackLang.HolProg 64 :=
.seq AllocBody659_119 AllocBody659_134

def AllocBody659_136 : StackLang.HolProg 64 :=
.seq AllocBody659_118 AllocBody659_135

def AllocBody659_137 : StackLang.HolProg 64 :=
.seq AllocBody659_117 AllocBody659_136

def AllocBody659_138 : StackLang.HolProg 64 :=
.seq AllocBody659_98 AllocBody659_137

def AllocBody659_139 : StackLang.HolProg 64 :=
.seq AllocBody659_95 AllocBody659_138

def AllocBody659_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody659_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody659_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def AllocBody659_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def AllocBody659_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def AllocBody659_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def AllocBody659_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2749#64)

def AllocBody659_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_153 : StackLang.HolProg 64 :=
.seq AllocBody659_151 AllocBody659_152

def AllocBody659_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody659_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody659_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody659_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 7

def AllocBody659_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody659_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody659_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody659_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody659_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_164 : StackLang.HolProg 64 :=
.seq AllocBody659_162 AllocBody659_163

def AllocBody659_165 : StackLang.HolProg 64 :=
.seq AllocBody659_161 AllocBody659_164

def AllocBody659_166 : StackLang.HolProg 64 :=
.seq AllocBody659_160 AllocBody659_165

def AllocBody659_167 : StackLang.HolProg 64 :=
.seq AllocBody659_159 AllocBody659_166

def AllocBody659_168 : StackLang.HolProg 64 :=
.seq AllocBody659_158 AllocBody659_167

def AllocBody659_169 : StackLang.HolProg 64 :=
.seq AllocBody659_157 AllocBody659_168

def AllocBody659_170 : StackLang.HolProg 64 :=
.seq AllocBody659_156 AllocBody659_169

def AllocBody659_171 : StackLang.HolProg 64 :=
.seq AllocBody659_155 AllocBody659_170

def AllocBody659_172 : StackLang.HolProg 64 :=
.seq AllocBody659_154 AllocBody659_171

def AllocBody659_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody659_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody659_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody659_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody659_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody659_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody659_181 : StackLang.HolProg 64 :=
.seq AllocBody659_179 AllocBody659_180

def AllocBody659_182 : StackLang.HolProg 64 :=
.seq AllocBody659_178 AllocBody659_181

def AllocBody659_183 : StackLang.HolProg 64 :=
.seq AllocBody659_177 AllocBody659_182

def AllocBody659_184 : StackLang.HolProg 64 :=
.seq AllocBody659_176 AllocBody659_183

def AllocBody659_185 : StackLang.HolProg 64 :=
.seq AllocBody659_175 AllocBody659_184

def AllocBody659_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody659_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody659_188 : StackLang.HolProg 64 :=
.seq AllocBody659_186 AllocBody659_187

def AllocBody659_189 : StackLang.HolProg 64 :=
.call (some (AllocBody659_185, 0, 659, 6)) (Sum.inl 116) (some (AllocBody659_188, 659, 7))

def AllocBody659_190 : StackLang.HolProg 64 :=
.seq AllocBody659_174 AllocBody659_189

def AllocBody659_191 : StackLang.HolProg 64 :=
.seq AllocBody659_173 AllocBody659_190

def AllocBody659_192 : StackLang.HolProg 64 :=
.seq AllocBody659_172 AllocBody659_191

def AllocBody659_193 : StackLang.HolProg 64 :=
.seq AllocBody659_153 AllocBody659_192

def AllocBody659_194 : StackLang.HolProg 64 :=
.seq AllocBody659_150 AllocBody659_193

def AllocBody659_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody659_197 : StackLang.HolProg 64 :=
.seq AllocBody659_195 AllocBody659_196

def AllocBody659_198 : StackLang.HolProg 64 :=
.seq AllocBody659_194 AllocBody659_197

def AllocBody659_199 : StackLang.HolProg 64 :=
.seq AllocBody659_149 AllocBody659_198

def AllocBody659_200 : StackLang.HolProg 64 :=
.seq AllocBody659_148 AllocBody659_199

def AllocBody659_201 : StackLang.HolProg 64 :=
.seq AllocBody659_147 AllocBody659_200

def AllocBody659_202 : StackLang.HolProg 64 :=
.seq AllocBody659_146 AllocBody659_201

def AllocBody659_203 : StackLang.HolProg 64 :=
.seq AllocBody659_145 AllocBody659_202

def AllocBody659_204 : StackLang.HolProg 64 :=
.seq AllocBody659_144 AllocBody659_203

def AllocBody659_205 : StackLang.HolProg 64 :=
.seq AllocBody659_143 AllocBody659_204

def AllocBody659_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody659_208 : StackLang.HolProg 64 :=
.seq AllocBody659_206 AllocBody659_207

def AllocBody659_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody659_205 AllocBody659_208

def AllocBody659_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody659_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody659_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody659_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody659_214 : StackLang.HolProg 64 :=
.seq AllocBody659_212 AllocBody659_213

def AllocBody659_215 : StackLang.HolProg 64 :=
.seq AllocBody659_211 AllocBody659_214

def AllocBody659_216 : StackLang.HolProg 64 :=
.seq AllocBody659_210 AllocBody659_215

def AllocBody659_217 : StackLang.HolProg 64 :=
.seq AllocBody659_209 AllocBody659_216

def AllocBody659_218 : StackLang.HolProg 64 :=
.seq AllocBody659_142 AllocBody659_217

def AllocBody659_219 : StackLang.HolProg 64 :=
.seq AllocBody659_141 AllocBody659_218

def AllocBody659_220 : StackLang.HolProg 64 :=
.seq AllocBody659_140 AllocBody659_219

def AllocBody659_221 : StackLang.HolProg 64 :=
.seq AllocBody659_139 AllocBody659_220

def AllocBody659_222 : StackLang.HolProg 64 :=
.seq AllocBody659_94 AllocBody659_221

def AllocBody659_223 : StackLang.HolProg 64 :=
.seq AllocBody659_91 AllocBody659_222

def AllocBody659_224 : StackLang.HolProg 64 :=
.seq AllocBody659_90 AllocBody659_223

def AllocBody659_225 : StackLang.HolProg 64 :=
.seq AllocBody659_17 AllocBody659_224

def AllocBody659_226 : StackLang.HolProg 64 :=
.seq AllocBody659_0 AllocBody659_225

def Alloc659 : Nat × StackLang.HolProg 64 := (659, AllocBody659_226)
theorem Alloc659_eq : StackAlloc.progComp (659, raw659) = Alloc659 := by
  kernel_rfl
#print axioms Alloc659_eq
end InitECandidate.Proofs.BackendStages
