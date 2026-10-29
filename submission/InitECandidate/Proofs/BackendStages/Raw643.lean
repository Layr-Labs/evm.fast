import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function643
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody643_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody643_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody643_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody643_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody643_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody643_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody643_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody643_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody643_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody643_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody643_10 : StackLang.HolProg 64 :=
.seq rawBody643_8 rawBody643_9

def rawBody643_11 : StackLang.HolProg 64 :=
.seq rawBody643_7 rawBody643_10

def rawBody643_12 : StackLang.HolProg 64 :=
.seq rawBody643_6 rawBody643_11

def rawBody643_13 : StackLang.HolProg 64 :=
.seq rawBody643_5 rawBody643_12

def rawBody643_14 : StackLang.HolProg 64 :=
.seq rawBody643_4 rawBody643_13

def rawBody643_15 : StackLang.HolProg 64 :=
.seq rawBody643_3 rawBody643_14

def rawBody643_16 : StackLang.HolProg 64 :=
.seq rawBody643_2 rawBody643_15

def rawBody643_17 : StackLang.HolProg 64 :=
.seq rawBody643_1 rawBody643_16

def rawBody643_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2621#64)

def rawBody643_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_21 : StackLang.HolProg 64 :=
.seq rawBody643_19 rawBody643_20

def rawBody643_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody643_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody643_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 3

def rawBody643_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody643_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody643_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody643_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody643_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_32 : StackLang.HolProg 64 :=
.seq rawBody643_30 rawBody643_31

def rawBody643_33 : StackLang.HolProg 64 :=
.seq rawBody643_29 rawBody643_32

def rawBody643_34 : StackLang.HolProg 64 :=
.seq rawBody643_28 rawBody643_33

def rawBody643_35 : StackLang.HolProg 64 :=
.seq rawBody643_27 rawBody643_34

def rawBody643_36 : StackLang.HolProg 64 :=
.seq rawBody643_26 rawBody643_35

def rawBody643_37 : StackLang.HolProg 64 :=
.seq rawBody643_25 rawBody643_36

def rawBody643_38 : StackLang.HolProg 64 :=
.seq rawBody643_24 rawBody643_37

def rawBody643_39 : StackLang.HolProg 64 :=
.seq rawBody643_23 rawBody643_38

def rawBody643_40 : StackLang.HolProg 64 :=
.seq rawBody643_22 rawBody643_39

def rawBody643_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody643_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody643_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody643_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody643_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody643_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody643_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody643_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody643_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody643_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody643_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody643_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody643_56 : StackLang.HolProg 64 :=
.seq rawBody643_54 rawBody643_55

def rawBody643_57 : StackLang.HolProg 64 :=
.seq rawBody643_53 rawBody643_56

def rawBody643_58 : StackLang.HolProg 64 :=
.seq rawBody643_52 rawBody643_57

def rawBody643_59 : StackLang.HolProg 64 :=
.seq rawBody643_51 rawBody643_58

def rawBody643_60 : StackLang.HolProg 64 :=
.seq rawBody643_50 rawBody643_59

def rawBody643_61 : StackLang.HolProg 64 :=
.seq rawBody643_49 rawBody643_60

def rawBody643_62 : StackLang.HolProg 64 :=
.seq rawBody643_48 rawBody643_61

def rawBody643_63 : StackLang.HolProg 64 :=
.seq rawBody643_47 rawBody643_62

def rawBody643_64 : StackLang.HolProg 64 :=
.seq rawBody643_46 rawBody643_63

def rawBody643_65 : StackLang.HolProg 64 :=
.seq rawBody643_45 rawBody643_64

def rawBody643_66 : StackLang.HolProg 64 :=
.seq rawBody643_44 rawBody643_65

def rawBody643_67 : StackLang.HolProg 64 :=
.seq rawBody643_43 rawBody643_66

def rawBody643_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody643_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody643_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody643_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody643_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody643_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody643_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody643_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody643_76 : StackLang.HolProg 64 :=
.seq rawBody643_74 rawBody643_75

def rawBody643_77 : StackLang.HolProg 64 :=
.seq rawBody643_73 rawBody643_76

def rawBody643_78 : StackLang.HolProg 64 :=
.seq rawBody643_72 rawBody643_77

def rawBody643_79 : StackLang.HolProg 64 :=
.seq rawBody643_71 rawBody643_78

def rawBody643_80 : StackLang.HolProg 64 :=
.seq rawBody643_70 rawBody643_79

def rawBody643_81 : StackLang.HolProg 64 :=
.seq rawBody643_69 rawBody643_80

def rawBody643_82 : StackLang.HolProg 64 :=
.seq rawBody643_68 rawBody643_81

def rawBody643_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody643_84 : StackLang.HolProg 64 :=
.seq rawBody643_82 rawBody643_83

def rawBody643_85 : StackLang.HolProg 64 :=
.call (some (rawBody643_67, 0, 643, 2)) (Sum.inl 106) (some (rawBody643_84, 643, 3))

def rawBody643_86 : StackLang.HolProg 64 :=
.seq rawBody643_42 rawBody643_85

def rawBody643_87 : StackLang.HolProg 64 :=
.seq rawBody643_41 rawBody643_86

def rawBody643_88 : StackLang.HolProg 64 :=
.seq rawBody643_40 rawBody643_87

def rawBody643_89 : StackLang.HolProg 64 :=
.seq rawBody643_21 rawBody643_88

def rawBody643_90 : StackLang.HolProg 64 :=
.seq rawBody643_18 rawBody643_89

def rawBody643_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody643_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def rawBody643_94 : StackLang.HolProg 64 :=
.seq rawBody643_92 rawBody643_93

def rawBody643_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2622#64)

def rawBody643_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_98 : StackLang.HolProg 64 :=
.seq rawBody643_96 rawBody643_97

def rawBody643_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody643_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody643_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 5

def rawBody643_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody643_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody643_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody643_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody643_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_109 : StackLang.HolProg 64 :=
.seq rawBody643_107 rawBody643_108

def rawBody643_110 : StackLang.HolProg 64 :=
.seq rawBody643_106 rawBody643_109

def rawBody643_111 : StackLang.HolProg 64 :=
.seq rawBody643_105 rawBody643_110

def rawBody643_112 : StackLang.HolProg 64 :=
.seq rawBody643_104 rawBody643_111

def rawBody643_113 : StackLang.HolProg 64 :=
.seq rawBody643_103 rawBody643_112

def rawBody643_114 : StackLang.HolProg 64 :=
.seq rawBody643_102 rawBody643_113

def rawBody643_115 : StackLang.HolProg 64 :=
.seq rawBody643_101 rawBody643_114

def rawBody643_116 : StackLang.HolProg 64 :=
.seq rawBody643_100 rawBody643_115

def rawBody643_117 : StackLang.HolProg 64 :=
.seq rawBody643_99 rawBody643_116

def rawBody643_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody643_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody643_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody643_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody643_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody643_126 : StackLang.HolProg 64 :=
.seq rawBody643_124 rawBody643_125

def rawBody643_127 : StackLang.HolProg 64 :=
.seq rawBody643_123 rawBody643_126

def rawBody643_128 : StackLang.HolProg 64 :=
.seq rawBody643_122 rawBody643_127

def rawBody643_129 : StackLang.HolProg 64 :=
.seq rawBody643_121 rawBody643_128

def rawBody643_130 : StackLang.HolProg 64 :=
.seq rawBody643_120 rawBody643_129

def rawBody643_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody643_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody643_133 : StackLang.HolProg 64 :=
.seq rawBody643_131 rawBody643_132

def rawBody643_134 : StackLang.HolProg 64 :=
.call (some (rawBody643_130, 0, 643, 4)) (Sum.inl 117) (some (rawBody643_133, 643, 5))

def rawBody643_135 : StackLang.HolProg 64 :=
.seq rawBody643_119 rawBody643_134

def rawBody643_136 : StackLang.HolProg 64 :=
.seq rawBody643_118 rawBody643_135

def rawBody643_137 : StackLang.HolProg 64 :=
.seq rawBody643_117 rawBody643_136

def rawBody643_138 : StackLang.HolProg 64 :=
.seq rawBody643_98 rawBody643_137

def rawBody643_139 : StackLang.HolProg 64 :=
.seq rawBody643_95 rawBody643_138

def rawBody643_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody643_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody643_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def rawBody643_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody643_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody643_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def rawBody643_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2623#64)

def rawBody643_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_153 : StackLang.HolProg 64 :=
.seq rawBody643_151 rawBody643_152

def rawBody643_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody643_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody643_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody643_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 643 7

def rawBody643_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody643_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody643_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody643_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody643_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_164 : StackLang.HolProg 64 :=
.seq rawBody643_162 rawBody643_163

def rawBody643_165 : StackLang.HolProg 64 :=
.seq rawBody643_161 rawBody643_164

def rawBody643_166 : StackLang.HolProg 64 :=
.seq rawBody643_160 rawBody643_165

def rawBody643_167 : StackLang.HolProg 64 :=
.seq rawBody643_159 rawBody643_166

def rawBody643_168 : StackLang.HolProg 64 :=
.seq rawBody643_158 rawBody643_167

def rawBody643_169 : StackLang.HolProg 64 :=
.seq rawBody643_157 rawBody643_168

def rawBody643_170 : StackLang.HolProg 64 :=
.seq rawBody643_156 rawBody643_169

def rawBody643_171 : StackLang.HolProg 64 :=
.seq rawBody643_155 rawBody643_170

def rawBody643_172 : StackLang.HolProg 64 :=
.seq rawBody643_154 rawBody643_171

def rawBody643_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody643_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody643_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody643_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody643_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody643_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody643_181 : StackLang.HolProg 64 :=
.seq rawBody643_179 rawBody643_180

def rawBody643_182 : StackLang.HolProg 64 :=
.seq rawBody643_178 rawBody643_181

def rawBody643_183 : StackLang.HolProg 64 :=
.seq rawBody643_177 rawBody643_182

def rawBody643_184 : StackLang.HolProg 64 :=
.seq rawBody643_176 rawBody643_183

def rawBody643_185 : StackLang.HolProg 64 :=
.seq rawBody643_175 rawBody643_184

def rawBody643_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody643_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody643_188 : StackLang.HolProg 64 :=
.seq rawBody643_186 rawBody643_187

def rawBody643_189 : StackLang.HolProg 64 :=
.call (some (rawBody643_185, 0, 643, 6)) (Sum.inl 116) (some (rawBody643_188, 643, 7))

def rawBody643_190 : StackLang.HolProg 64 :=
.seq rawBody643_174 rawBody643_189

def rawBody643_191 : StackLang.HolProg 64 :=
.seq rawBody643_173 rawBody643_190

def rawBody643_192 : StackLang.HolProg 64 :=
.seq rawBody643_172 rawBody643_191

def rawBody643_193 : StackLang.HolProg 64 :=
.seq rawBody643_153 rawBody643_192

def rawBody643_194 : StackLang.HolProg 64 :=
.seq rawBody643_150 rawBody643_193

def rawBody643_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody643_197 : StackLang.HolProg 64 :=
.seq rawBody643_195 rawBody643_196

def rawBody643_198 : StackLang.HolProg 64 :=
.seq rawBody643_194 rawBody643_197

def rawBody643_199 : StackLang.HolProg 64 :=
.seq rawBody643_149 rawBody643_198

def rawBody643_200 : StackLang.HolProg 64 :=
.seq rawBody643_148 rawBody643_199

def rawBody643_201 : StackLang.HolProg 64 :=
.seq rawBody643_147 rawBody643_200

def rawBody643_202 : StackLang.HolProg 64 :=
.seq rawBody643_146 rawBody643_201

def rawBody643_203 : StackLang.HolProg 64 :=
.seq rawBody643_145 rawBody643_202

def rawBody643_204 : StackLang.HolProg 64 :=
.seq rawBody643_144 rawBody643_203

def rawBody643_205 : StackLang.HolProg 64 :=
.seq rawBody643_143 rawBody643_204

def rawBody643_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody643_208 : StackLang.HolProg 64 :=
.seq rawBody643_206 rawBody643_207

def rawBody643_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody643_205 rawBody643_208

def rawBody643_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody643_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody643_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody643_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody643_214 : StackLang.HolProg 64 :=
.seq rawBody643_212 rawBody643_213

def rawBody643_215 : StackLang.HolProg 64 :=
.seq rawBody643_211 rawBody643_214

def rawBody643_216 : StackLang.HolProg 64 :=
.seq rawBody643_210 rawBody643_215

def rawBody643_217 : StackLang.HolProg 64 :=
.seq rawBody643_209 rawBody643_216

def rawBody643_218 : StackLang.HolProg 64 :=
.seq rawBody643_142 rawBody643_217

def rawBody643_219 : StackLang.HolProg 64 :=
.seq rawBody643_141 rawBody643_218

def rawBody643_220 : StackLang.HolProg 64 :=
.seq rawBody643_140 rawBody643_219

def rawBody643_221 : StackLang.HolProg 64 :=
.seq rawBody643_139 rawBody643_220

def rawBody643_222 : StackLang.HolProg 64 :=
.seq rawBody643_94 rawBody643_221

def rawBody643_223 : StackLang.HolProg 64 :=
.seq rawBody643_91 rawBody643_222

def rawBody643_224 : StackLang.HolProg 64 :=
.seq rawBody643_90 rawBody643_223

def rawBody643_225 : StackLang.HolProg 64 :=
.seq rawBody643_17 rawBody643_224

def rawBody643_226 : StackLang.HolProg 64 :=
.seq rawBody643_0 rawBody643_225

def raw643 : StackLang.HolProg 64 := rawBody643_226
theorem raw643_eq : StackRawCall.compTop RawInfo.rawInfo (function643 (.list [])).1 = raw643 := by
  kernel_rfl
#print axioms raw643_eq
end InitECandidate.Proofs.BackendStages
