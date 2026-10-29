import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw643
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody643_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody643_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody643_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody643_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody643_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody643_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody643_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody643_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody643_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody643_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody643_10 : StackLang.HolProg 64 :=
.seq AllocBody643_8 AllocBody643_9

def AllocBody643_11 : StackLang.HolProg 64 :=
.seq AllocBody643_7 AllocBody643_10

def AllocBody643_12 : StackLang.HolProg 64 :=
.seq AllocBody643_6 AllocBody643_11

def AllocBody643_13 : StackLang.HolProg 64 :=
.seq AllocBody643_5 AllocBody643_12

def AllocBody643_14 : StackLang.HolProg 64 :=
.seq AllocBody643_4 AllocBody643_13

def AllocBody643_15 : StackLang.HolProg 64 :=
.seq AllocBody643_3 AllocBody643_14

def AllocBody643_16 : StackLang.HolProg 64 :=
.seq AllocBody643_2 AllocBody643_15

def AllocBody643_17 : StackLang.HolProg 64 :=
.seq AllocBody643_1 AllocBody643_16

def AllocBody643_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2621#64)

def AllocBody643_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_21 : StackLang.HolProg 64 :=
.seq AllocBody643_19 AllocBody643_20

def AllocBody643_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody643_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody643_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 3

def AllocBody643_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody643_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody643_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody643_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody643_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_32 : StackLang.HolProg 64 :=
.seq AllocBody643_30 AllocBody643_31

def AllocBody643_33 : StackLang.HolProg 64 :=
.seq AllocBody643_29 AllocBody643_32

def AllocBody643_34 : StackLang.HolProg 64 :=
.seq AllocBody643_28 AllocBody643_33

def AllocBody643_35 : StackLang.HolProg 64 :=
.seq AllocBody643_27 AllocBody643_34

def AllocBody643_36 : StackLang.HolProg 64 :=
.seq AllocBody643_26 AllocBody643_35

def AllocBody643_37 : StackLang.HolProg 64 :=
.seq AllocBody643_25 AllocBody643_36

def AllocBody643_38 : StackLang.HolProg 64 :=
.seq AllocBody643_24 AllocBody643_37

def AllocBody643_39 : StackLang.HolProg 64 :=
.seq AllocBody643_23 AllocBody643_38

def AllocBody643_40 : StackLang.HolProg 64 :=
.seq AllocBody643_22 AllocBody643_39

def AllocBody643_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody643_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody643_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody643_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody643_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody643_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody643_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody643_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody643_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody643_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody643_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody643_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody643_56 : StackLang.HolProg 64 :=
.seq AllocBody643_54 AllocBody643_55

def AllocBody643_57 : StackLang.HolProg 64 :=
.seq AllocBody643_53 AllocBody643_56

def AllocBody643_58 : StackLang.HolProg 64 :=
.seq AllocBody643_52 AllocBody643_57

def AllocBody643_59 : StackLang.HolProg 64 :=
.seq AllocBody643_51 AllocBody643_58

def AllocBody643_60 : StackLang.HolProg 64 :=
.seq AllocBody643_50 AllocBody643_59

def AllocBody643_61 : StackLang.HolProg 64 :=
.seq AllocBody643_49 AllocBody643_60

def AllocBody643_62 : StackLang.HolProg 64 :=
.seq AllocBody643_48 AllocBody643_61

def AllocBody643_63 : StackLang.HolProg 64 :=
.seq AllocBody643_47 AllocBody643_62

def AllocBody643_64 : StackLang.HolProg 64 :=
.seq AllocBody643_46 AllocBody643_63

def AllocBody643_65 : StackLang.HolProg 64 :=
.seq AllocBody643_45 AllocBody643_64

def AllocBody643_66 : StackLang.HolProg 64 :=
.seq AllocBody643_44 AllocBody643_65

def AllocBody643_67 : StackLang.HolProg 64 :=
.seq AllocBody643_43 AllocBody643_66

def AllocBody643_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody643_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody643_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody643_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody643_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody643_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody643_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody643_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody643_76 : StackLang.HolProg 64 :=
.seq AllocBody643_74 AllocBody643_75

def AllocBody643_77 : StackLang.HolProg 64 :=
.seq AllocBody643_73 AllocBody643_76

def AllocBody643_78 : StackLang.HolProg 64 :=
.seq AllocBody643_72 AllocBody643_77

def AllocBody643_79 : StackLang.HolProg 64 :=
.seq AllocBody643_71 AllocBody643_78

def AllocBody643_80 : StackLang.HolProg 64 :=
.seq AllocBody643_70 AllocBody643_79

def AllocBody643_81 : StackLang.HolProg 64 :=
.seq AllocBody643_69 AllocBody643_80

def AllocBody643_82 : StackLang.HolProg 64 :=
.seq AllocBody643_68 AllocBody643_81

def AllocBody643_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody643_84 : StackLang.HolProg 64 :=
.seq AllocBody643_82 AllocBody643_83

def AllocBody643_85 : StackLang.HolProg 64 :=
.call (some (AllocBody643_67, 0, 643, 2)) (Sum.inl 106) (some (AllocBody643_84, 643, 3))

def AllocBody643_86 : StackLang.HolProg 64 :=
.seq AllocBody643_42 AllocBody643_85

def AllocBody643_87 : StackLang.HolProg 64 :=
.seq AllocBody643_41 AllocBody643_86

def AllocBody643_88 : StackLang.HolProg 64 :=
.seq AllocBody643_40 AllocBody643_87

def AllocBody643_89 : StackLang.HolProg 64 :=
.seq AllocBody643_21 AllocBody643_88

def AllocBody643_90 : StackLang.HolProg 64 :=
.seq AllocBody643_18 AllocBody643_89

def AllocBody643_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody643_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def AllocBody643_94 : StackLang.HolProg 64 :=
.seq AllocBody643_92 AllocBody643_93

def AllocBody643_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2622#64)

def AllocBody643_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_98 : StackLang.HolProg 64 :=
.seq AllocBody643_96 AllocBody643_97

def AllocBody643_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody643_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody643_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 5

def AllocBody643_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody643_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody643_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody643_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody643_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_109 : StackLang.HolProg 64 :=
.seq AllocBody643_107 AllocBody643_108

def AllocBody643_110 : StackLang.HolProg 64 :=
.seq AllocBody643_106 AllocBody643_109

def AllocBody643_111 : StackLang.HolProg 64 :=
.seq AllocBody643_105 AllocBody643_110

def AllocBody643_112 : StackLang.HolProg 64 :=
.seq AllocBody643_104 AllocBody643_111

def AllocBody643_113 : StackLang.HolProg 64 :=
.seq AllocBody643_103 AllocBody643_112

def AllocBody643_114 : StackLang.HolProg 64 :=
.seq AllocBody643_102 AllocBody643_113

def AllocBody643_115 : StackLang.HolProg 64 :=
.seq AllocBody643_101 AllocBody643_114

def AllocBody643_116 : StackLang.HolProg 64 :=
.seq AllocBody643_100 AllocBody643_115

def AllocBody643_117 : StackLang.HolProg 64 :=
.seq AllocBody643_99 AllocBody643_116

def AllocBody643_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody643_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody643_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody643_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody643_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody643_126 : StackLang.HolProg 64 :=
.seq AllocBody643_124 AllocBody643_125

def AllocBody643_127 : StackLang.HolProg 64 :=
.seq AllocBody643_123 AllocBody643_126

def AllocBody643_128 : StackLang.HolProg 64 :=
.seq AllocBody643_122 AllocBody643_127

def AllocBody643_129 : StackLang.HolProg 64 :=
.seq AllocBody643_121 AllocBody643_128

def AllocBody643_130 : StackLang.HolProg 64 :=
.seq AllocBody643_120 AllocBody643_129

def AllocBody643_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody643_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody643_133 : StackLang.HolProg 64 :=
.seq AllocBody643_131 AllocBody643_132

def AllocBody643_134 : StackLang.HolProg 64 :=
.call (some (AllocBody643_130, 0, 643, 4)) (Sum.inl 117) (some (AllocBody643_133, 643, 5))

def AllocBody643_135 : StackLang.HolProg 64 :=
.seq AllocBody643_119 AllocBody643_134

def AllocBody643_136 : StackLang.HolProg 64 :=
.seq AllocBody643_118 AllocBody643_135

def AllocBody643_137 : StackLang.HolProg 64 :=
.seq AllocBody643_117 AllocBody643_136

def AllocBody643_138 : StackLang.HolProg 64 :=
.seq AllocBody643_98 AllocBody643_137

def AllocBody643_139 : StackLang.HolProg 64 :=
.seq AllocBody643_95 AllocBody643_138

def AllocBody643_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody643_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody643_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody643_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody643_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody643_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody643_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2623#64)

def AllocBody643_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_153 : StackLang.HolProg 64 :=
.seq AllocBody643_151 AllocBody643_152

def AllocBody643_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody643_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody643_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody643_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 7

def AllocBody643_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody643_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody643_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody643_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody643_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_164 : StackLang.HolProg 64 :=
.seq AllocBody643_162 AllocBody643_163

def AllocBody643_165 : StackLang.HolProg 64 :=
.seq AllocBody643_161 AllocBody643_164

def AllocBody643_166 : StackLang.HolProg 64 :=
.seq AllocBody643_160 AllocBody643_165

def AllocBody643_167 : StackLang.HolProg 64 :=
.seq AllocBody643_159 AllocBody643_166

def AllocBody643_168 : StackLang.HolProg 64 :=
.seq AllocBody643_158 AllocBody643_167

def AllocBody643_169 : StackLang.HolProg 64 :=
.seq AllocBody643_157 AllocBody643_168

def AllocBody643_170 : StackLang.HolProg 64 :=
.seq AllocBody643_156 AllocBody643_169

def AllocBody643_171 : StackLang.HolProg 64 :=
.seq AllocBody643_155 AllocBody643_170

def AllocBody643_172 : StackLang.HolProg 64 :=
.seq AllocBody643_154 AllocBody643_171

def AllocBody643_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody643_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody643_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody643_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody643_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody643_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody643_181 : StackLang.HolProg 64 :=
.seq AllocBody643_179 AllocBody643_180

def AllocBody643_182 : StackLang.HolProg 64 :=
.seq AllocBody643_178 AllocBody643_181

def AllocBody643_183 : StackLang.HolProg 64 :=
.seq AllocBody643_177 AllocBody643_182

def AllocBody643_184 : StackLang.HolProg 64 :=
.seq AllocBody643_176 AllocBody643_183

def AllocBody643_185 : StackLang.HolProg 64 :=
.seq AllocBody643_175 AllocBody643_184

def AllocBody643_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody643_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody643_188 : StackLang.HolProg 64 :=
.seq AllocBody643_186 AllocBody643_187

def AllocBody643_189 : StackLang.HolProg 64 :=
.call (some (AllocBody643_185, 0, 643, 6)) (Sum.inl 116) (some (AllocBody643_188, 643, 7))

def AllocBody643_190 : StackLang.HolProg 64 :=
.seq AllocBody643_174 AllocBody643_189

def AllocBody643_191 : StackLang.HolProg 64 :=
.seq AllocBody643_173 AllocBody643_190

def AllocBody643_192 : StackLang.HolProg 64 :=
.seq AllocBody643_172 AllocBody643_191

def AllocBody643_193 : StackLang.HolProg 64 :=
.seq AllocBody643_153 AllocBody643_192

def AllocBody643_194 : StackLang.HolProg 64 :=
.seq AllocBody643_150 AllocBody643_193

def AllocBody643_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody643_197 : StackLang.HolProg 64 :=
.seq AllocBody643_195 AllocBody643_196

def AllocBody643_198 : StackLang.HolProg 64 :=
.seq AllocBody643_194 AllocBody643_197

def AllocBody643_199 : StackLang.HolProg 64 :=
.seq AllocBody643_149 AllocBody643_198

def AllocBody643_200 : StackLang.HolProg 64 :=
.seq AllocBody643_148 AllocBody643_199

def AllocBody643_201 : StackLang.HolProg 64 :=
.seq AllocBody643_147 AllocBody643_200

def AllocBody643_202 : StackLang.HolProg 64 :=
.seq AllocBody643_146 AllocBody643_201

def AllocBody643_203 : StackLang.HolProg 64 :=
.seq AllocBody643_145 AllocBody643_202

def AllocBody643_204 : StackLang.HolProg 64 :=
.seq AllocBody643_144 AllocBody643_203

def AllocBody643_205 : StackLang.HolProg 64 :=
.seq AllocBody643_143 AllocBody643_204

def AllocBody643_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def AllocBody643_208 : StackLang.HolProg 64 :=
.seq AllocBody643_206 AllocBody643_207

def AllocBody643_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody643_205 AllocBody643_208

def AllocBody643_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody643_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody643_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody643_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody643_214 : StackLang.HolProg 64 :=
.seq AllocBody643_212 AllocBody643_213

def AllocBody643_215 : StackLang.HolProg 64 :=
.seq AllocBody643_211 AllocBody643_214

def AllocBody643_216 : StackLang.HolProg 64 :=
.seq AllocBody643_210 AllocBody643_215

def AllocBody643_217 : StackLang.HolProg 64 :=
.seq AllocBody643_209 AllocBody643_216

def AllocBody643_218 : StackLang.HolProg 64 :=
.seq AllocBody643_142 AllocBody643_217

def AllocBody643_219 : StackLang.HolProg 64 :=
.seq AllocBody643_141 AllocBody643_218

def AllocBody643_220 : StackLang.HolProg 64 :=
.seq AllocBody643_140 AllocBody643_219

def AllocBody643_221 : StackLang.HolProg 64 :=
.seq AllocBody643_139 AllocBody643_220

def AllocBody643_222 : StackLang.HolProg 64 :=
.seq AllocBody643_94 AllocBody643_221

def AllocBody643_223 : StackLang.HolProg 64 :=
.seq AllocBody643_91 AllocBody643_222

def AllocBody643_224 : StackLang.HolProg 64 :=
.seq AllocBody643_90 AllocBody643_223

def AllocBody643_225 : StackLang.HolProg 64 :=
.seq AllocBody643_17 AllocBody643_224

def AllocBody643_226 : StackLang.HolProg 64 :=
.seq AllocBody643_0 AllocBody643_225

def Alloc643 : Nat × StackLang.HolProg 64 := (643, AllocBody643_226)
theorem Alloc643_eq : StackAlloc.progComp (643, raw643) = Alloc643 := by
  kernel_rfl
#print axioms Alloc643_eq
end InitECandidate.Proofs.BackendStages
