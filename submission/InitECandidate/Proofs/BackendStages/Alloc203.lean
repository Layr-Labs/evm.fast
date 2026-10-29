import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw203
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody203_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody203_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody203_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody203_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody203_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody203_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody203_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody203_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody203_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody203_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody203_10 : StackLang.HolProg 64 :=
.seq AllocBody203_8 AllocBody203_9

def AllocBody203_11 : StackLang.HolProg 64 :=
.seq AllocBody203_7 AllocBody203_10

def AllocBody203_12 : StackLang.HolProg 64 :=
.seq AllocBody203_6 AllocBody203_11

def AllocBody203_13 : StackLang.HolProg 64 :=
.seq AllocBody203_5 AllocBody203_12

def AllocBody203_14 : StackLang.HolProg 64 :=
.seq AllocBody203_4 AllocBody203_13

def AllocBody203_15 : StackLang.HolProg 64 :=
.seq AllocBody203_3 AllocBody203_14

def AllocBody203_16 : StackLang.HolProg 64 :=
.seq AllocBody203_2 AllocBody203_15

def AllocBody203_17 : StackLang.HolProg 64 :=
.seq AllocBody203_1 AllocBody203_16

def AllocBody203_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 254#64)

def AllocBody203_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_21 : StackLang.HolProg 64 :=
.seq AllocBody203_19 AllocBody203_20

def AllocBody203_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody203_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody203_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 3

def AllocBody203_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody203_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody203_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody203_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody203_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_32 : StackLang.HolProg 64 :=
.seq AllocBody203_30 AllocBody203_31

def AllocBody203_33 : StackLang.HolProg 64 :=
.seq AllocBody203_29 AllocBody203_32

def AllocBody203_34 : StackLang.HolProg 64 :=
.seq AllocBody203_28 AllocBody203_33

def AllocBody203_35 : StackLang.HolProg 64 :=
.seq AllocBody203_27 AllocBody203_34

def AllocBody203_36 : StackLang.HolProg 64 :=
.seq AllocBody203_26 AllocBody203_35

def AllocBody203_37 : StackLang.HolProg 64 :=
.seq AllocBody203_25 AllocBody203_36

def AllocBody203_38 : StackLang.HolProg 64 :=
.seq AllocBody203_24 AllocBody203_37

def AllocBody203_39 : StackLang.HolProg 64 :=
.seq AllocBody203_23 AllocBody203_38

def AllocBody203_40 : StackLang.HolProg 64 :=
.seq AllocBody203_22 AllocBody203_39

def AllocBody203_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody203_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody203_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody203_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody203_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody203_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody203_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody203_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody203_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody203_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody203_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody203_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody203_56 : StackLang.HolProg 64 :=
.seq AllocBody203_54 AllocBody203_55

def AllocBody203_57 : StackLang.HolProg 64 :=
.seq AllocBody203_53 AllocBody203_56

def AllocBody203_58 : StackLang.HolProg 64 :=
.seq AllocBody203_52 AllocBody203_57

def AllocBody203_59 : StackLang.HolProg 64 :=
.seq AllocBody203_51 AllocBody203_58

def AllocBody203_60 : StackLang.HolProg 64 :=
.seq AllocBody203_50 AllocBody203_59

def AllocBody203_61 : StackLang.HolProg 64 :=
.seq AllocBody203_49 AllocBody203_60

def AllocBody203_62 : StackLang.HolProg 64 :=
.seq AllocBody203_48 AllocBody203_61

def AllocBody203_63 : StackLang.HolProg 64 :=
.seq AllocBody203_47 AllocBody203_62

def AllocBody203_64 : StackLang.HolProg 64 :=
.seq AllocBody203_46 AllocBody203_63

def AllocBody203_65 : StackLang.HolProg 64 :=
.seq AllocBody203_45 AllocBody203_64

def AllocBody203_66 : StackLang.HolProg 64 :=
.seq AllocBody203_44 AllocBody203_65

def AllocBody203_67 : StackLang.HolProg 64 :=
.seq AllocBody203_43 AllocBody203_66

def AllocBody203_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody203_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody203_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody203_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody203_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody203_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody203_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody203_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody203_76 : StackLang.HolProg 64 :=
.seq AllocBody203_74 AllocBody203_75

def AllocBody203_77 : StackLang.HolProg 64 :=
.seq AllocBody203_73 AllocBody203_76

def AllocBody203_78 : StackLang.HolProg 64 :=
.seq AllocBody203_72 AllocBody203_77

def AllocBody203_79 : StackLang.HolProg 64 :=
.seq AllocBody203_71 AllocBody203_78

def AllocBody203_80 : StackLang.HolProg 64 :=
.seq AllocBody203_70 AllocBody203_79

def AllocBody203_81 : StackLang.HolProg 64 :=
.seq AllocBody203_69 AllocBody203_80

def AllocBody203_82 : StackLang.HolProg 64 :=
.seq AllocBody203_68 AllocBody203_81

def AllocBody203_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody203_84 : StackLang.HolProg 64 :=
.seq AllocBody203_82 AllocBody203_83

def AllocBody203_85 : StackLang.HolProg 64 :=
.call (some (AllocBody203_67, 0, 203, 2)) (Sum.inl 106) (some (AllocBody203_84, 203, 3))

def AllocBody203_86 : StackLang.HolProg 64 :=
.seq AllocBody203_42 AllocBody203_85

def AllocBody203_87 : StackLang.HolProg 64 :=
.seq AllocBody203_41 AllocBody203_86

def AllocBody203_88 : StackLang.HolProg 64 :=
.seq AllocBody203_40 AllocBody203_87

def AllocBody203_89 : StackLang.HolProg 64 :=
.seq AllocBody203_21 AllocBody203_88

def AllocBody203_90 : StackLang.HolProg 64 :=
.seq AllocBody203_18 AllocBody203_89

def AllocBody203_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody203_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def AllocBody203_94 : StackLang.HolProg 64 :=
.seq AllocBody203_92 AllocBody203_93

def AllocBody203_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 255#64)

def AllocBody203_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_98 : StackLang.HolProg 64 :=
.seq AllocBody203_96 AllocBody203_97

def AllocBody203_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody203_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody203_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 5

def AllocBody203_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody203_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody203_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody203_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody203_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_109 : StackLang.HolProg 64 :=
.seq AllocBody203_107 AllocBody203_108

def AllocBody203_110 : StackLang.HolProg 64 :=
.seq AllocBody203_106 AllocBody203_109

def AllocBody203_111 : StackLang.HolProg 64 :=
.seq AllocBody203_105 AllocBody203_110

def AllocBody203_112 : StackLang.HolProg 64 :=
.seq AllocBody203_104 AllocBody203_111

def AllocBody203_113 : StackLang.HolProg 64 :=
.seq AllocBody203_103 AllocBody203_112

def AllocBody203_114 : StackLang.HolProg 64 :=
.seq AllocBody203_102 AllocBody203_113

def AllocBody203_115 : StackLang.HolProg 64 :=
.seq AllocBody203_101 AllocBody203_114

def AllocBody203_116 : StackLang.HolProg 64 :=
.seq AllocBody203_100 AllocBody203_115

def AllocBody203_117 : StackLang.HolProg 64 :=
.seq AllocBody203_99 AllocBody203_116

def AllocBody203_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody203_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody203_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody203_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody203_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody203_126 : StackLang.HolProg 64 :=
.seq AllocBody203_124 AllocBody203_125

def AllocBody203_127 : StackLang.HolProg 64 :=
.seq AllocBody203_123 AllocBody203_126

def AllocBody203_128 : StackLang.HolProg 64 :=
.seq AllocBody203_122 AllocBody203_127

def AllocBody203_129 : StackLang.HolProg 64 :=
.seq AllocBody203_121 AllocBody203_128

def AllocBody203_130 : StackLang.HolProg 64 :=
.seq AllocBody203_120 AllocBody203_129

def AllocBody203_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody203_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody203_133 : StackLang.HolProg 64 :=
.seq AllocBody203_131 AllocBody203_132

def AllocBody203_134 : StackLang.HolProg 64 :=
.call (some (AllocBody203_130, 0, 203, 4)) (Sum.inl 117) (some (AllocBody203_133, 203, 5))

def AllocBody203_135 : StackLang.HolProg 64 :=
.seq AllocBody203_119 AllocBody203_134

def AllocBody203_136 : StackLang.HolProg 64 :=
.seq AllocBody203_118 AllocBody203_135

def AllocBody203_137 : StackLang.HolProg 64 :=
.seq AllocBody203_117 AllocBody203_136

def AllocBody203_138 : StackLang.HolProg 64 :=
.seq AllocBody203_98 AllocBody203_137

def AllocBody203_139 : StackLang.HolProg 64 :=
.seq AllocBody203_95 AllocBody203_138

def AllocBody203_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody203_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody203_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody203_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody203_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody203_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody203_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 256#64)

def AllocBody203_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_153 : StackLang.HolProg 64 :=
.seq AllocBody203_151 AllocBody203_152

def AllocBody203_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody203_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody203_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody203_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 7

def AllocBody203_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody203_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody203_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody203_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody203_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_164 : StackLang.HolProg 64 :=
.seq AllocBody203_162 AllocBody203_163

def AllocBody203_165 : StackLang.HolProg 64 :=
.seq AllocBody203_161 AllocBody203_164

def AllocBody203_166 : StackLang.HolProg 64 :=
.seq AllocBody203_160 AllocBody203_165

def AllocBody203_167 : StackLang.HolProg 64 :=
.seq AllocBody203_159 AllocBody203_166

def AllocBody203_168 : StackLang.HolProg 64 :=
.seq AllocBody203_158 AllocBody203_167

def AllocBody203_169 : StackLang.HolProg 64 :=
.seq AllocBody203_157 AllocBody203_168

def AllocBody203_170 : StackLang.HolProg 64 :=
.seq AllocBody203_156 AllocBody203_169

def AllocBody203_171 : StackLang.HolProg 64 :=
.seq AllocBody203_155 AllocBody203_170

def AllocBody203_172 : StackLang.HolProg 64 :=
.seq AllocBody203_154 AllocBody203_171

def AllocBody203_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody203_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody203_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody203_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody203_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody203_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody203_181 : StackLang.HolProg 64 :=
.seq AllocBody203_179 AllocBody203_180

def AllocBody203_182 : StackLang.HolProg 64 :=
.seq AllocBody203_178 AllocBody203_181

def AllocBody203_183 : StackLang.HolProg 64 :=
.seq AllocBody203_177 AllocBody203_182

def AllocBody203_184 : StackLang.HolProg 64 :=
.seq AllocBody203_176 AllocBody203_183

def AllocBody203_185 : StackLang.HolProg 64 :=
.seq AllocBody203_175 AllocBody203_184

def AllocBody203_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody203_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody203_188 : StackLang.HolProg 64 :=
.seq AllocBody203_186 AllocBody203_187

def AllocBody203_189 : StackLang.HolProg 64 :=
.call (some (AllocBody203_185, 0, 203, 6)) (Sum.inl 116) (some (AllocBody203_188, 203, 7))

def AllocBody203_190 : StackLang.HolProg 64 :=
.seq AllocBody203_174 AllocBody203_189

def AllocBody203_191 : StackLang.HolProg 64 :=
.seq AllocBody203_173 AllocBody203_190

def AllocBody203_192 : StackLang.HolProg 64 :=
.seq AllocBody203_172 AllocBody203_191

def AllocBody203_193 : StackLang.HolProg 64 :=
.seq AllocBody203_153 AllocBody203_192

def AllocBody203_194 : StackLang.HolProg 64 :=
.seq AllocBody203_150 AllocBody203_193

def AllocBody203_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody203_197 : StackLang.HolProg 64 :=
.seq AllocBody203_195 AllocBody203_196

def AllocBody203_198 : StackLang.HolProg 64 :=
.seq AllocBody203_194 AllocBody203_197

def AllocBody203_199 : StackLang.HolProg 64 :=
.seq AllocBody203_149 AllocBody203_198

def AllocBody203_200 : StackLang.HolProg 64 :=
.seq AllocBody203_148 AllocBody203_199

def AllocBody203_201 : StackLang.HolProg 64 :=
.seq AllocBody203_147 AllocBody203_200

def AllocBody203_202 : StackLang.HolProg 64 :=
.seq AllocBody203_146 AllocBody203_201

def AllocBody203_203 : StackLang.HolProg 64 :=
.seq AllocBody203_145 AllocBody203_202

def AllocBody203_204 : StackLang.HolProg 64 :=
.seq AllocBody203_144 AllocBody203_203

def AllocBody203_205 : StackLang.HolProg 64 :=
.seq AllocBody203_143 AllocBody203_204

def AllocBody203_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody203_208 : StackLang.HolProg 64 :=
.seq AllocBody203_206 AllocBody203_207

def AllocBody203_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody203_205 AllocBody203_208

def AllocBody203_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody203_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody203_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody203_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody203_214 : StackLang.HolProg 64 :=
.seq AllocBody203_212 AllocBody203_213

def AllocBody203_215 : StackLang.HolProg 64 :=
.seq AllocBody203_211 AllocBody203_214

def AllocBody203_216 : StackLang.HolProg 64 :=
.seq AllocBody203_210 AllocBody203_215

def AllocBody203_217 : StackLang.HolProg 64 :=
.seq AllocBody203_209 AllocBody203_216

def AllocBody203_218 : StackLang.HolProg 64 :=
.seq AllocBody203_142 AllocBody203_217

def AllocBody203_219 : StackLang.HolProg 64 :=
.seq AllocBody203_141 AllocBody203_218

def AllocBody203_220 : StackLang.HolProg 64 :=
.seq AllocBody203_140 AllocBody203_219

def AllocBody203_221 : StackLang.HolProg 64 :=
.seq AllocBody203_139 AllocBody203_220

def AllocBody203_222 : StackLang.HolProg 64 :=
.seq AllocBody203_94 AllocBody203_221

def AllocBody203_223 : StackLang.HolProg 64 :=
.seq AllocBody203_91 AllocBody203_222

def AllocBody203_224 : StackLang.HolProg 64 :=
.seq AllocBody203_90 AllocBody203_223

def AllocBody203_225 : StackLang.HolProg 64 :=
.seq AllocBody203_17 AllocBody203_224

def AllocBody203_226 : StackLang.HolProg 64 :=
.seq AllocBody203_0 AllocBody203_225

def Alloc203 : Nat × StackLang.HolProg 64 := (203, AllocBody203_226)
theorem Alloc203_eq : StackAlloc.progComp (203, raw203) = Alloc203 := by
  kernel_rfl
#print axioms Alloc203_eq
end InitECandidate.Proofs.BackendStages
