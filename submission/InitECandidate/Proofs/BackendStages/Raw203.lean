import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function203
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody203_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody203_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody203_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody203_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody203_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody203_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody203_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody203_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody203_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody203_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody203_10 : StackLang.HolProg 64 :=
.seq rawBody203_8 rawBody203_9

def rawBody203_11 : StackLang.HolProg 64 :=
.seq rawBody203_7 rawBody203_10

def rawBody203_12 : StackLang.HolProg 64 :=
.seq rawBody203_6 rawBody203_11

def rawBody203_13 : StackLang.HolProg 64 :=
.seq rawBody203_5 rawBody203_12

def rawBody203_14 : StackLang.HolProg 64 :=
.seq rawBody203_4 rawBody203_13

def rawBody203_15 : StackLang.HolProg 64 :=
.seq rawBody203_3 rawBody203_14

def rawBody203_16 : StackLang.HolProg 64 :=
.seq rawBody203_2 rawBody203_15

def rawBody203_17 : StackLang.HolProg 64 :=
.seq rawBody203_1 rawBody203_16

def rawBody203_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 254#64)

def rawBody203_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_21 : StackLang.HolProg 64 :=
.seq rawBody203_19 rawBody203_20

def rawBody203_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody203_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody203_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 3

def rawBody203_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody203_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody203_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody203_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody203_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_32 : StackLang.HolProg 64 :=
.seq rawBody203_30 rawBody203_31

def rawBody203_33 : StackLang.HolProg 64 :=
.seq rawBody203_29 rawBody203_32

def rawBody203_34 : StackLang.HolProg 64 :=
.seq rawBody203_28 rawBody203_33

def rawBody203_35 : StackLang.HolProg 64 :=
.seq rawBody203_27 rawBody203_34

def rawBody203_36 : StackLang.HolProg 64 :=
.seq rawBody203_26 rawBody203_35

def rawBody203_37 : StackLang.HolProg 64 :=
.seq rawBody203_25 rawBody203_36

def rawBody203_38 : StackLang.HolProg 64 :=
.seq rawBody203_24 rawBody203_37

def rawBody203_39 : StackLang.HolProg 64 :=
.seq rawBody203_23 rawBody203_38

def rawBody203_40 : StackLang.HolProg 64 :=
.seq rawBody203_22 rawBody203_39

def rawBody203_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody203_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody203_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody203_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody203_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody203_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody203_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody203_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody203_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody203_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody203_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody203_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody203_56 : StackLang.HolProg 64 :=
.seq rawBody203_54 rawBody203_55

def rawBody203_57 : StackLang.HolProg 64 :=
.seq rawBody203_53 rawBody203_56

def rawBody203_58 : StackLang.HolProg 64 :=
.seq rawBody203_52 rawBody203_57

def rawBody203_59 : StackLang.HolProg 64 :=
.seq rawBody203_51 rawBody203_58

def rawBody203_60 : StackLang.HolProg 64 :=
.seq rawBody203_50 rawBody203_59

def rawBody203_61 : StackLang.HolProg 64 :=
.seq rawBody203_49 rawBody203_60

def rawBody203_62 : StackLang.HolProg 64 :=
.seq rawBody203_48 rawBody203_61

def rawBody203_63 : StackLang.HolProg 64 :=
.seq rawBody203_47 rawBody203_62

def rawBody203_64 : StackLang.HolProg 64 :=
.seq rawBody203_46 rawBody203_63

def rawBody203_65 : StackLang.HolProg 64 :=
.seq rawBody203_45 rawBody203_64

def rawBody203_66 : StackLang.HolProg 64 :=
.seq rawBody203_44 rawBody203_65

def rawBody203_67 : StackLang.HolProg 64 :=
.seq rawBody203_43 rawBody203_66

def rawBody203_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody203_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody203_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody203_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody203_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody203_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody203_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody203_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody203_76 : StackLang.HolProg 64 :=
.seq rawBody203_74 rawBody203_75

def rawBody203_77 : StackLang.HolProg 64 :=
.seq rawBody203_73 rawBody203_76

def rawBody203_78 : StackLang.HolProg 64 :=
.seq rawBody203_72 rawBody203_77

def rawBody203_79 : StackLang.HolProg 64 :=
.seq rawBody203_71 rawBody203_78

def rawBody203_80 : StackLang.HolProg 64 :=
.seq rawBody203_70 rawBody203_79

def rawBody203_81 : StackLang.HolProg 64 :=
.seq rawBody203_69 rawBody203_80

def rawBody203_82 : StackLang.HolProg 64 :=
.seq rawBody203_68 rawBody203_81

def rawBody203_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody203_84 : StackLang.HolProg 64 :=
.seq rawBody203_82 rawBody203_83

def rawBody203_85 : StackLang.HolProg 64 :=
.call (some (rawBody203_67, 0, 203, 2)) (Sum.inl 106) (some (rawBody203_84, 203, 3))

def rawBody203_86 : StackLang.HolProg 64 :=
.seq rawBody203_42 rawBody203_85

def rawBody203_87 : StackLang.HolProg 64 :=
.seq rawBody203_41 rawBody203_86

def rawBody203_88 : StackLang.HolProg 64 :=
.seq rawBody203_40 rawBody203_87

def rawBody203_89 : StackLang.HolProg 64 :=
.seq rawBody203_21 rawBody203_88

def rawBody203_90 : StackLang.HolProg 64 :=
.seq rawBody203_18 rawBody203_89

def rawBody203_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody203_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def rawBody203_94 : StackLang.HolProg 64 :=
.seq rawBody203_92 rawBody203_93

def rawBody203_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 255#64)

def rawBody203_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_98 : StackLang.HolProg 64 :=
.seq rawBody203_96 rawBody203_97

def rawBody203_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody203_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody203_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 5

def rawBody203_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody203_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody203_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody203_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody203_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_109 : StackLang.HolProg 64 :=
.seq rawBody203_107 rawBody203_108

def rawBody203_110 : StackLang.HolProg 64 :=
.seq rawBody203_106 rawBody203_109

def rawBody203_111 : StackLang.HolProg 64 :=
.seq rawBody203_105 rawBody203_110

def rawBody203_112 : StackLang.HolProg 64 :=
.seq rawBody203_104 rawBody203_111

def rawBody203_113 : StackLang.HolProg 64 :=
.seq rawBody203_103 rawBody203_112

def rawBody203_114 : StackLang.HolProg 64 :=
.seq rawBody203_102 rawBody203_113

def rawBody203_115 : StackLang.HolProg 64 :=
.seq rawBody203_101 rawBody203_114

def rawBody203_116 : StackLang.HolProg 64 :=
.seq rawBody203_100 rawBody203_115

def rawBody203_117 : StackLang.HolProg 64 :=
.seq rawBody203_99 rawBody203_116

def rawBody203_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody203_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody203_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody203_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody203_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody203_126 : StackLang.HolProg 64 :=
.seq rawBody203_124 rawBody203_125

def rawBody203_127 : StackLang.HolProg 64 :=
.seq rawBody203_123 rawBody203_126

def rawBody203_128 : StackLang.HolProg 64 :=
.seq rawBody203_122 rawBody203_127

def rawBody203_129 : StackLang.HolProg 64 :=
.seq rawBody203_121 rawBody203_128

def rawBody203_130 : StackLang.HolProg 64 :=
.seq rawBody203_120 rawBody203_129

def rawBody203_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody203_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody203_133 : StackLang.HolProg 64 :=
.seq rawBody203_131 rawBody203_132

def rawBody203_134 : StackLang.HolProg 64 :=
.call (some (rawBody203_130, 0, 203, 4)) (Sum.inl 117) (some (rawBody203_133, 203, 5))

def rawBody203_135 : StackLang.HolProg 64 :=
.seq rawBody203_119 rawBody203_134

def rawBody203_136 : StackLang.HolProg 64 :=
.seq rawBody203_118 rawBody203_135

def rawBody203_137 : StackLang.HolProg 64 :=
.seq rawBody203_117 rawBody203_136

def rawBody203_138 : StackLang.HolProg 64 :=
.seq rawBody203_98 rawBody203_137

def rawBody203_139 : StackLang.HolProg 64 :=
.seq rawBody203_95 rawBody203_138

def rawBody203_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody203_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody203_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def rawBody203_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody203_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody203_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def rawBody203_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 256#64)

def rawBody203_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_153 : StackLang.HolProg 64 :=
.seq rawBody203_151 rawBody203_152

def rawBody203_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody203_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody203_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody203_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 203 7

def rawBody203_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody203_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody203_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody203_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody203_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_164 : StackLang.HolProg 64 :=
.seq rawBody203_162 rawBody203_163

def rawBody203_165 : StackLang.HolProg 64 :=
.seq rawBody203_161 rawBody203_164

def rawBody203_166 : StackLang.HolProg 64 :=
.seq rawBody203_160 rawBody203_165

def rawBody203_167 : StackLang.HolProg 64 :=
.seq rawBody203_159 rawBody203_166

def rawBody203_168 : StackLang.HolProg 64 :=
.seq rawBody203_158 rawBody203_167

def rawBody203_169 : StackLang.HolProg 64 :=
.seq rawBody203_157 rawBody203_168

def rawBody203_170 : StackLang.HolProg 64 :=
.seq rawBody203_156 rawBody203_169

def rawBody203_171 : StackLang.HolProg 64 :=
.seq rawBody203_155 rawBody203_170

def rawBody203_172 : StackLang.HolProg 64 :=
.seq rawBody203_154 rawBody203_171

def rawBody203_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody203_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody203_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody203_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody203_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody203_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody203_181 : StackLang.HolProg 64 :=
.seq rawBody203_179 rawBody203_180

def rawBody203_182 : StackLang.HolProg 64 :=
.seq rawBody203_178 rawBody203_181

def rawBody203_183 : StackLang.HolProg 64 :=
.seq rawBody203_177 rawBody203_182

def rawBody203_184 : StackLang.HolProg 64 :=
.seq rawBody203_176 rawBody203_183

def rawBody203_185 : StackLang.HolProg 64 :=
.seq rawBody203_175 rawBody203_184

def rawBody203_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody203_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody203_188 : StackLang.HolProg 64 :=
.seq rawBody203_186 rawBody203_187

def rawBody203_189 : StackLang.HolProg 64 :=
.call (some (rawBody203_185, 0, 203, 6)) (Sum.inl 116) (some (rawBody203_188, 203, 7))

def rawBody203_190 : StackLang.HolProg 64 :=
.seq rawBody203_174 rawBody203_189

def rawBody203_191 : StackLang.HolProg 64 :=
.seq rawBody203_173 rawBody203_190

def rawBody203_192 : StackLang.HolProg 64 :=
.seq rawBody203_172 rawBody203_191

def rawBody203_193 : StackLang.HolProg 64 :=
.seq rawBody203_153 rawBody203_192

def rawBody203_194 : StackLang.HolProg 64 :=
.seq rawBody203_150 rawBody203_193

def rawBody203_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody203_197 : StackLang.HolProg 64 :=
.seq rawBody203_195 rawBody203_196

def rawBody203_198 : StackLang.HolProg 64 :=
.seq rawBody203_194 rawBody203_197

def rawBody203_199 : StackLang.HolProg 64 :=
.seq rawBody203_149 rawBody203_198

def rawBody203_200 : StackLang.HolProg 64 :=
.seq rawBody203_148 rawBody203_199

def rawBody203_201 : StackLang.HolProg 64 :=
.seq rawBody203_147 rawBody203_200

def rawBody203_202 : StackLang.HolProg 64 :=
.seq rawBody203_146 rawBody203_201

def rawBody203_203 : StackLang.HolProg 64 :=
.seq rawBody203_145 rawBody203_202

def rawBody203_204 : StackLang.HolProg 64 :=
.seq rawBody203_144 rawBody203_203

def rawBody203_205 : StackLang.HolProg 64 :=
.seq rawBody203_143 rawBody203_204

def rawBody203_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody203_208 : StackLang.HolProg 64 :=
.seq rawBody203_206 rawBody203_207

def rawBody203_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody203_205 rawBody203_208

def rawBody203_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody203_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody203_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody203_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody203_214 : StackLang.HolProg 64 :=
.seq rawBody203_212 rawBody203_213

def rawBody203_215 : StackLang.HolProg 64 :=
.seq rawBody203_211 rawBody203_214

def rawBody203_216 : StackLang.HolProg 64 :=
.seq rawBody203_210 rawBody203_215

def rawBody203_217 : StackLang.HolProg 64 :=
.seq rawBody203_209 rawBody203_216

def rawBody203_218 : StackLang.HolProg 64 :=
.seq rawBody203_142 rawBody203_217

def rawBody203_219 : StackLang.HolProg 64 :=
.seq rawBody203_141 rawBody203_218

def rawBody203_220 : StackLang.HolProg 64 :=
.seq rawBody203_140 rawBody203_219

def rawBody203_221 : StackLang.HolProg 64 :=
.seq rawBody203_139 rawBody203_220

def rawBody203_222 : StackLang.HolProg 64 :=
.seq rawBody203_94 rawBody203_221

def rawBody203_223 : StackLang.HolProg 64 :=
.seq rawBody203_91 rawBody203_222

def rawBody203_224 : StackLang.HolProg 64 :=
.seq rawBody203_90 rawBody203_223

def rawBody203_225 : StackLang.HolProg 64 :=
.seq rawBody203_17 rawBody203_224

def rawBody203_226 : StackLang.HolProg 64 :=
.seq rawBody203_0 rawBody203_225

def raw203 : StackLang.HolProg 64 := rawBody203_226
theorem raw203_eq : StackRawCall.compTop RawInfo.rawInfo (function203 (.list [])).1 = raw203 := by
  kernel_rfl
#print axioms raw203_eq
end InitECandidate.Proofs.BackendStages
