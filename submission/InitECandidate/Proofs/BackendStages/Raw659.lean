import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function659
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody659_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def rawBody659_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def rawBody659_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def rawBody659_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def rawBody659_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody659_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def rawBody659_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody659_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody659_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody659_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def rawBody659_10 : StackLang.HolProg 64 :=
.seq rawBody659_8 rawBody659_9

def rawBody659_11 : StackLang.HolProg 64 :=
.seq rawBody659_7 rawBody659_10

def rawBody659_12 : StackLang.HolProg 64 :=
.seq rawBody659_6 rawBody659_11

def rawBody659_13 : StackLang.HolProg 64 :=
.seq rawBody659_5 rawBody659_12

def rawBody659_14 : StackLang.HolProg 64 :=
.seq rawBody659_4 rawBody659_13

def rawBody659_15 : StackLang.HolProg 64 :=
.seq rawBody659_3 rawBody659_14

def rawBody659_16 : StackLang.HolProg 64 :=
.seq rawBody659_2 rawBody659_15

def rawBody659_17 : StackLang.HolProg 64 :=
.seq rawBody659_1 rawBody659_16

def rawBody659_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2747#64)

def rawBody659_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_21 : StackLang.HolProg 64 :=
.seq rawBody659_19 rawBody659_20

def rawBody659_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody659_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody659_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 3

def rawBody659_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody659_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody659_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody659_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody659_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_32 : StackLang.HolProg 64 :=
.seq rawBody659_30 rawBody659_31

def rawBody659_33 : StackLang.HolProg 64 :=
.seq rawBody659_29 rawBody659_32

def rawBody659_34 : StackLang.HolProg 64 :=
.seq rawBody659_28 rawBody659_33

def rawBody659_35 : StackLang.HolProg 64 :=
.seq rawBody659_27 rawBody659_34

def rawBody659_36 : StackLang.HolProg 64 :=
.seq rawBody659_26 rawBody659_35

def rawBody659_37 : StackLang.HolProg 64 :=
.seq rawBody659_25 rawBody659_36

def rawBody659_38 : StackLang.HolProg 64 :=
.seq rawBody659_24 rawBody659_37

def rawBody659_39 : StackLang.HolProg 64 :=
.seq rawBody659_23 rawBody659_38

def rawBody659_40 : StackLang.HolProg 64 :=
.seq rawBody659_22 rawBody659_39

def rawBody659_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody659_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody659_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody659_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody659_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody659_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody659_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody659_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody659_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody659_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody659_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody659_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody659_56 : StackLang.HolProg 64 :=
.seq rawBody659_54 rawBody659_55

def rawBody659_57 : StackLang.HolProg 64 :=
.seq rawBody659_53 rawBody659_56

def rawBody659_58 : StackLang.HolProg 64 :=
.seq rawBody659_52 rawBody659_57

def rawBody659_59 : StackLang.HolProg 64 :=
.seq rawBody659_51 rawBody659_58

def rawBody659_60 : StackLang.HolProg 64 :=
.seq rawBody659_50 rawBody659_59

def rawBody659_61 : StackLang.HolProg 64 :=
.seq rawBody659_49 rawBody659_60

def rawBody659_62 : StackLang.HolProg 64 :=
.seq rawBody659_48 rawBody659_61

def rawBody659_63 : StackLang.HolProg 64 :=
.seq rawBody659_47 rawBody659_62

def rawBody659_64 : StackLang.HolProg 64 :=
.seq rawBody659_46 rawBody659_63

def rawBody659_65 : StackLang.HolProg 64 :=
.seq rawBody659_45 rawBody659_64

def rawBody659_66 : StackLang.HolProg 64 :=
.seq rawBody659_44 rawBody659_65

def rawBody659_67 : StackLang.HolProg 64 :=
.seq rawBody659_43 rawBody659_66

def rawBody659_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def rawBody659_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def rawBody659_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def rawBody659_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody659_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody659_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody659_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody659_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody659_76 : StackLang.HolProg 64 :=
.seq rawBody659_74 rawBody659_75

def rawBody659_77 : StackLang.HolProg 64 :=
.seq rawBody659_73 rawBody659_76

def rawBody659_78 : StackLang.HolProg 64 :=
.seq rawBody659_72 rawBody659_77

def rawBody659_79 : StackLang.HolProg 64 :=
.seq rawBody659_71 rawBody659_78

def rawBody659_80 : StackLang.HolProg 64 :=
.seq rawBody659_70 rawBody659_79

def rawBody659_81 : StackLang.HolProg 64 :=
.seq rawBody659_69 rawBody659_80

def rawBody659_82 : StackLang.HolProg 64 :=
.seq rawBody659_68 rawBody659_81

def rawBody659_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody659_84 : StackLang.HolProg 64 :=
.seq rawBody659_82 rawBody659_83

def rawBody659_85 : StackLang.HolProg 64 :=
.call (some (rawBody659_67, 0, 659, 2)) (Sum.inl 106) (some (rawBody659_84, 659, 3))

def rawBody659_86 : StackLang.HolProg 64 :=
.seq rawBody659_42 rawBody659_85

def rawBody659_87 : StackLang.HolProg 64 :=
.seq rawBody659_41 rawBody659_86

def rawBody659_88 : StackLang.HolProg 64 :=
.seq rawBody659_40 rawBody659_87

def rawBody659_89 : StackLang.HolProg 64 :=
.seq rawBody659_21 rawBody659_88

def rawBody659_90 : StackLang.HolProg 64 :=
.seq rawBody659_18 rawBody659_89

def rawBody659_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody659_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 8

def rawBody659_94 : StackLang.HolProg 64 :=
.seq rawBody659_92 rawBody659_93

def rawBody659_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2748#64)

def rawBody659_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_98 : StackLang.HolProg 64 :=
.seq rawBody659_96 rawBody659_97

def rawBody659_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody659_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody659_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 5

def rawBody659_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody659_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody659_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody659_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody659_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_109 : StackLang.HolProg 64 :=
.seq rawBody659_107 rawBody659_108

def rawBody659_110 : StackLang.HolProg 64 :=
.seq rawBody659_106 rawBody659_109

def rawBody659_111 : StackLang.HolProg 64 :=
.seq rawBody659_105 rawBody659_110

def rawBody659_112 : StackLang.HolProg 64 :=
.seq rawBody659_104 rawBody659_111

def rawBody659_113 : StackLang.HolProg 64 :=
.seq rawBody659_103 rawBody659_112

def rawBody659_114 : StackLang.HolProg 64 :=
.seq rawBody659_102 rawBody659_113

def rawBody659_115 : StackLang.HolProg 64 :=
.seq rawBody659_101 rawBody659_114

def rawBody659_116 : StackLang.HolProg 64 :=
.seq rawBody659_100 rawBody659_115

def rawBody659_117 : StackLang.HolProg 64 :=
.seq rawBody659_99 rawBody659_116

def rawBody659_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody659_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody659_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody659_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody659_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody659_126 : StackLang.HolProg 64 :=
.seq rawBody659_124 rawBody659_125

def rawBody659_127 : StackLang.HolProg 64 :=
.seq rawBody659_123 rawBody659_126

def rawBody659_128 : StackLang.HolProg 64 :=
.seq rawBody659_122 rawBody659_127

def rawBody659_129 : StackLang.HolProg 64 :=
.seq rawBody659_121 rawBody659_128

def rawBody659_130 : StackLang.HolProg 64 :=
.seq rawBody659_120 rawBody659_129

def rawBody659_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def rawBody659_132 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody659_133 : StackLang.HolProg 64 :=
.seq rawBody659_131 rawBody659_132

def rawBody659_134 : StackLang.HolProg 64 :=
.call (some (rawBody659_130, 0, 659, 4)) (Sum.inl 117) (some (rawBody659_133, 659, 5))

def rawBody659_135 : StackLang.HolProg 64 :=
.seq rawBody659_119 rawBody659_134

def rawBody659_136 : StackLang.HolProg 64 :=
.seq rawBody659_118 rawBody659_135

def rawBody659_137 : StackLang.HolProg 64 :=
.seq rawBody659_117 rawBody659_136

def rawBody659_138 : StackLang.HolProg 64 :=
.seq rawBody659_98 rawBody659_137

def rawBody659_139 : StackLang.HolProg 64 :=
.seq rawBody659_95 rawBody659_138

def rawBody659_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody659_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody659_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def rawBody659_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def rawBody659_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def rawBody659_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def rawBody659_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2749#64)

def rawBody659_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_153 : StackLang.HolProg 64 :=
.seq rawBody659_151 rawBody659_152

def rawBody659_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody659_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody659_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody659_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 659 7

def rawBody659_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody659_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody659_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody659_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody659_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_164 : StackLang.HolProg 64 :=
.seq rawBody659_162 rawBody659_163

def rawBody659_165 : StackLang.HolProg 64 :=
.seq rawBody659_161 rawBody659_164

def rawBody659_166 : StackLang.HolProg 64 :=
.seq rawBody659_160 rawBody659_165

def rawBody659_167 : StackLang.HolProg 64 :=
.seq rawBody659_159 rawBody659_166

def rawBody659_168 : StackLang.HolProg 64 :=
.seq rawBody659_158 rawBody659_167

def rawBody659_169 : StackLang.HolProg 64 :=
.seq rawBody659_157 rawBody659_168

def rawBody659_170 : StackLang.HolProg 64 :=
.seq rawBody659_156 rawBody659_169

def rawBody659_171 : StackLang.HolProg 64 :=
.seq rawBody659_155 rawBody659_170

def rawBody659_172 : StackLang.HolProg 64 :=
.seq rawBody659_154 rawBody659_171

def rawBody659_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody659_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody659_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody659_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody659_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody659_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody659_181 : StackLang.HolProg 64 :=
.seq rawBody659_179 rawBody659_180

def rawBody659_182 : StackLang.HolProg 64 :=
.seq rawBody659_178 rawBody659_181

def rawBody659_183 : StackLang.HolProg 64 :=
.seq rawBody659_177 rawBody659_182

def rawBody659_184 : StackLang.HolProg 64 :=
.seq rawBody659_176 rawBody659_183

def rawBody659_185 : StackLang.HolProg 64 :=
.seq rawBody659_175 rawBody659_184

def rawBody659_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody659_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody659_188 : StackLang.HolProg 64 :=
.seq rawBody659_186 rawBody659_187

def rawBody659_189 : StackLang.HolProg 64 :=
.call (some (rawBody659_185, 0, 659, 6)) (Sum.inl 116) (some (rawBody659_188, 659, 7))

def rawBody659_190 : StackLang.HolProg 64 :=
.seq rawBody659_174 rawBody659_189

def rawBody659_191 : StackLang.HolProg 64 :=
.seq rawBody659_173 rawBody659_190

def rawBody659_192 : StackLang.HolProg 64 :=
.seq rawBody659_172 rawBody659_191

def rawBody659_193 : StackLang.HolProg 64 :=
.seq rawBody659_153 rawBody659_192

def rawBody659_194 : StackLang.HolProg 64 :=
.seq rawBody659_150 rawBody659_193

def rawBody659_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody659_197 : StackLang.HolProg 64 :=
.seq rawBody659_195 rawBody659_196

def rawBody659_198 : StackLang.HolProg 64 :=
.seq rawBody659_194 rawBody659_197

def rawBody659_199 : StackLang.HolProg 64 :=
.seq rawBody659_149 rawBody659_198

def rawBody659_200 : StackLang.HolProg 64 :=
.seq rawBody659_148 rawBody659_199

def rawBody659_201 : StackLang.HolProg 64 :=
.seq rawBody659_147 rawBody659_200

def rawBody659_202 : StackLang.HolProg 64 :=
.seq rawBody659_146 rawBody659_201

def rawBody659_203 : StackLang.HolProg 64 :=
.seq rawBody659_145 rawBody659_202

def rawBody659_204 : StackLang.HolProg 64 :=
.seq rawBody659_144 rawBody659_203

def rawBody659_205 : StackLang.HolProg 64 :=
.seq rawBody659_143 rawBody659_204

def rawBody659_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 9

def rawBody659_208 : StackLang.HolProg 64 :=
.seq rawBody659_206 rawBody659_207

def rawBody659_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody659_205 rawBody659_208

def rawBody659_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody659_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody659_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def rawBody659_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody659_214 : StackLang.HolProg 64 :=
.seq rawBody659_212 rawBody659_213

def rawBody659_215 : StackLang.HolProg 64 :=
.seq rawBody659_211 rawBody659_214

def rawBody659_216 : StackLang.HolProg 64 :=
.seq rawBody659_210 rawBody659_215

def rawBody659_217 : StackLang.HolProg 64 :=
.seq rawBody659_209 rawBody659_216

def rawBody659_218 : StackLang.HolProg 64 :=
.seq rawBody659_142 rawBody659_217

def rawBody659_219 : StackLang.HolProg 64 :=
.seq rawBody659_141 rawBody659_218

def rawBody659_220 : StackLang.HolProg 64 :=
.seq rawBody659_140 rawBody659_219

def rawBody659_221 : StackLang.HolProg 64 :=
.seq rawBody659_139 rawBody659_220

def rawBody659_222 : StackLang.HolProg 64 :=
.seq rawBody659_94 rawBody659_221

def rawBody659_223 : StackLang.HolProg 64 :=
.seq rawBody659_91 rawBody659_222

def rawBody659_224 : StackLang.HolProg 64 :=
.seq rawBody659_90 rawBody659_223

def rawBody659_225 : StackLang.HolProg 64 :=
.seq rawBody659_17 rawBody659_224

def rawBody659_226 : StackLang.HolProg 64 :=
.seq rawBody659_0 rawBody659_225

def raw659 : StackLang.HolProg 64 := rawBody659_226
theorem raw659_eq : StackRawCall.compTop RawInfo.rawInfo (function659 (.list [])).1 = raw659 := by
  kernel_rfl
#print axioms raw659_eq
end InitECandidate.Proofs.BackendStages
