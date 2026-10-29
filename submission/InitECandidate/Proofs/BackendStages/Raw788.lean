import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function788
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody788_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody788_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody788_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody788_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody788_4 : StackLang.HolProg 64 :=
.seq rawBody788_2 rawBody788_3

def rawBody788_5 : StackLang.HolProg 64 :=
.seq rawBody788_1 rawBody788_4

def rawBody788_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3651#64)

def rawBody788_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_9 : StackLang.HolProg 64 :=
.seq rawBody788_7 rawBody788_8

def rawBody788_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 3

def rawBody788_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_20 : StackLang.HolProg 64 :=
.seq rawBody788_18 rawBody788_19

def rawBody788_21 : StackLang.HolProg 64 :=
.seq rawBody788_17 rawBody788_20

def rawBody788_22 : StackLang.HolProg 64 :=
.seq rawBody788_16 rawBody788_21

def rawBody788_23 : StackLang.HolProg 64 :=
.seq rawBody788_15 rawBody788_22

def rawBody788_24 : StackLang.HolProg 64 :=
.seq rawBody788_14 rawBody788_23

def rawBody788_25 : StackLang.HolProg 64 :=
.seq rawBody788_13 rawBody788_24

def rawBody788_26 : StackLang.HolProg 64 :=
.seq rawBody788_12 rawBody788_25

def rawBody788_27 : StackLang.HolProg 64 :=
.seq rawBody788_11 rawBody788_26

def rawBody788_28 : StackLang.HolProg 64 :=
.seq rawBody788_10 rawBody788_27

def rawBody788_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody788_36 : StackLang.HolProg 64 :=
.seq rawBody788_34 rawBody788_35

def rawBody788_37 : StackLang.HolProg 64 :=
.seq rawBody788_33 rawBody788_36

def rawBody788_38 : StackLang.HolProg 64 :=
.seq rawBody788_32 rawBody788_37

def rawBody788_39 : StackLang.HolProg 64 :=
.seq rawBody788_31 rawBody788_38

def rawBody788_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_42 : StackLang.HolProg 64 :=
.seq rawBody788_40 rawBody788_41

def rawBody788_43 : StackLang.HolProg 64 :=
.call (some (rawBody788_39, 0, 788, 2)) (Sum.inl 69) (some (rawBody788_42, 788, 3))

def rawBody788_44 : StackLang.HolProg 64 :=
.seq rawBody788_30 rawBody788_43

def rawBody788_45 : StackLang.HolProg 64 :=
.seq rawBody788_29 rawBody788_44

def rawBody788_46 : StackLang.HolProg 64 :=
.seq rawBody788_28 rawBody788_45

def rawBody788_47 : StackLang.HolProg 64 :=
.seq rawBody788_9 rawBody788_46

def rawBody788_48 : StackLang.HolProg 64 :=
.seq rawBody788_6 rawBody788_47

def rawBody788_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 192#64)

def rawBody788_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody788_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3652#64)

def rawBody788_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_55 : StackLang.HolProg 64 :=
.seq rawBody788_53 rawBody788_54

def rawBody788_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 5

def rawBody788_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_66 : StackLang.HolProg 64 :=
.seq rawBody788_64 rawBody788_65

def rawBody788_67 : StackLang.HolProg 64 :=
.seq rawBody788_63 rawBody788_66

def rawBody788_68 : StackLang.HolProg 64 :=
.seq rawBody788_62 rawBody788_67

def rawBody788_69 : StackLang.HolProg 64 :=
.seq rawBody788_61 rawBody788_68

def rawBody788_70 : StackLang.HolProg 64 :=
.seq rawBody788_60 rawBody788_69

def rawBody788_71 : StackLang.HolProg 64 :=
.seq rawBody788_59 rawBody788_70

def rawBody788_72 : StackLang.HolProg 64 :=
.seq rawBody788_58 rawBody788_71

def rawBody788_73 : StackLang.HolProg 64 :=
.seq rawBody788_57 rawBody788_72

def rawBody788_74 : StackLang.HolProg 64 :=
.seq rawBody788_56 rawBody788_73

def rawBody788_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody788_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody788_83 : StackLang.HolProg 64 :=
.seq rawBody788_81 rawBody788_82

def rawBody788_84 : StackLang.HolProg 64 :=
.seq rawBody788_80 rawBody788_83

def rawBody788_85 : StackLang.HolProg 64 :=
.seq rawBody788_79 rawBody788_84

def rawBody788_86 : StackLang.HolProg 64 :=
.seq rawBody788_78 rawBody788_85

def rawBody788_87 : StackLang.HolProg 64 :=
.seq rawBody788_77 rawBody788_86

def rawBody788_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody788_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_90 : StackLang.HolProg 64 :=
.seq rawBody788_88 rawBody788_89

def rawBody788_91 : StackLang.HolProg 64 :=
.call (some (rawBody788_87, 0, 788, 4)) (Sum.inl 68) (some (rawBody788_90, 788, 5))

def rawBody788_92 : StackLang.HolProg 64 :=
.seq rawBody788_76 rawBody788_91

def rawBody788_93 : StackLang.HolProg 64 :=
.seq rawBody788_75 rawBody788_92

def rawBody788_94 : StackLang.HolProg 64 :=
.seq rawBody788_74 rawBody788_93

def rawBody788_95 : StackLang.HolProg 64 :=
.seq rawBody788_55 rawBody788_94

def rawBody788_96 : StackLang.HolProg 64 :=
.seq rawBody788_52 rawBody788_95

def rawBody788_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody788_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody788_100 : StackLang.HolProg 64 :=
.seq rawBody788_98 rawBody788_99

def rawBody788_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3653#64)

def rawBody788_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_104 : StackLang.HolProg 64 :=
.seq rawBody788_102 rawBody788_103

def rawBody788_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 7

def rawBody788_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_115 : StackLang.HolProg 64 :=
.seq rawBody788_113 rawBody788_114

def rawBody788_116 : StackLang.HolProg 64 :=
.seq rawBody788_112 rawBody788_115

def rawBody788_117 : StackLang.HolProg 64 :=
.seq rawBody788_111 rawBody788_116

def rawBody788_118 : StackLang.HolProg 64 :=
.seq rawBody788_110 rawBody788_117

def rawBody788_119 : StackLang.HolProg 64 :=
.seq rawBody788_109 rawBody788_118

def rawBody788_120 : StackLang.HolProg 64 :=
.seq rawBody788_108 rawBody788_119

def rawBody788_121 : StackLang.HolProg 64 :=
.seq rawBody788_107 rawBody788_120

def rawBody788_122 : StackLang.HolProg 64 :=
.seq rawBody788_106 rawBody788_121

def rawBody788_123 : StackLang.HolProg 64 :=
.seq rawBody788_105 rawBody788_122

def rawBody788_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody788_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody788_132 : StackLang.HolProg 64 :=
.seq rawBody788_130 rawBody788_131

def rawBody788_133 : StackLang.HolProg 64 :=
.seq rawBody788_129 rawBody788_132

def rawBody788_134 : StackLang.HolProg 64 :=
.seq rawBody788_128 rawBody788_133

def rawBody788_135 : StackLang.HolProg 64 :=
.seq rawBody788_127 rawBody788_134

def rawBody788_136 : StackLang.HolProg 64 :=
.seq rawBody788_126 rawBody788_135

def rawBody788_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody788_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody788_139 : StackLang.HolProg 64 :=
.seq rawBody788_137 rawBody788_138

def rawBody788_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_141 : StackLang.HolProg 64 :=
.seq rawBody788_139 rawBody788_140

def rawBody788_142 : StackLang.HolProg 64 :=
.call (some (rawBody788_136, 0, 788, 6)) (Sum.inl 785) (some (rawBody788_141, 788, 7))

def rawBody788_143 : StackLang.HolProg 64 :=
.seq rawBody788_125 rawBody788_142

def rawBody788_144 : StackLang.HolProg 64 :=
.seq rawBody788_124 rawBody788_143

def rawBody788_145 : StackLang.HolProg 64 :=
.seq rawBody788_123 rawBody788_144

def rawBody788_146 : StackLang.HolProg 64 :=
.seq rawBody788_104 rawBody788_145

def rawBody788_147 : StackLang.HolProg 64 :=
.seq rawBody788_101 rawBody788_146

def rawBody788_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody788_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody788_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody788_152 : StackLang.HolProg 64 :=
.seq rawBody788_150 rawBody788_151

def rawBody788_153 : StackLang.HolProg 64 :=
.seq rawBody788_149 rawBody788_152

def rawBody788_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3654#64)

def rawBody788_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_157 : StackLang.HolProg 64 :=
.seq rawBody788_155 rawBody788_156

def rawBody788_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 9

def rawBody788_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_168 : StackLang.HolProg 64 :=
.seq rawBody788_166 rawBody788_167

def rawBody788_169 : StackLang.HolProg 64 :=
.seq rawBody788_165 rawBody788_168

def rawBody788_170 : StackLang.HolProg 64 :=
.seq rawBody788_164 rawBody788_169

def rawBody788_171 : StackLang.HolProg 64 :=
.seq rawBody788_163 rawBody788_170

def rawBody788_172 : StackLang.HolProg 64 :=
.seq rawBody788_162 rawBody788_171

def rawBody788_173 : StackLang.HolProg 64 :=
.seq rawBody788_161 rawBody788_172

def rawBody788_174 : StackLang.HolProg 64 :=
.seq rawBody788_160 rawBody788_173

def rawBody788_175 : StackLang.HolProg 64 :=
.seq rawBody788_159 rawBody788_174

def rawBody788_176 : StackLang.HolProg 64 :=
.seq rawBody788_158 rawBody788_175

def rawBody788_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody788_185 : StackLang.HolProg 64 :=
.seq rawBody788_183 rawBody788_184

def rawBody788_186 : StackLang.HolProg 64 :=
.seq rawBody788_182 rawBody788_185

def rawBody788_187 : StackLang.HolProg 64 :=
.seq rawBody788_181 rawBody788_186

def rawBody788_188 : StackLang.HolProg 64 :=
.seq rawBody788_180 rawBody788_187

def rawBody788_189 : StackLang.HolProg 64 :=
.seq rawBody788_179 rawBody788_188

def rawBody788_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody788_192 : StackLang.HolProg 64 :=
.seq rawBody788_190 rawBody788_191

def rawBody788_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_194 : StackLang.HolProg 64 :=
.seq rawBody788_192 rawBody788_193

def rawBody788_195 : StackLang.HolProg 64 :=
.call (some (rawBody788_189, 0, 788, 8)) (Sum.inl 728) (some (rawBody788_194, 788, 9))

def rawBody788_196 : StackLang.HolProg 64 :=
.seq rawBody788_178 rawBody788_195

def rawBody788_197 : StackLang.HolProg 64 :=
.seq rawBody788_177 rawBody788_196

def rawBody788_198 : StackLang.HolProg 64 :=
.seq rawBody788_176 rawBody788_197

def rawBody788_199 : StackLang.HolProg 64 :=
.seq rawBody788_157 rawBody788_198

def rawBody788_200 : StackLang.HolProg 64 :=
.seq rawBody788_154 rawBody788_199

def rawBody788_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody788_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody788_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody788_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody788_208 : StackLang.HolProg 64 :=
.seq rawBody788_206 rawBody788_207

def rawBody788_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3655#64)

def rawBody788_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_212 : StackLang.HolProg 64 :=
.seq rawBody788_210 rawBody788_211

def rawBody788_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 11

def rawBody788_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_223 : StackLang.HolProg 64 :=
.seq rawBody788_221 rawBody788_222

def rawBody788_224 : StackLang.HolProg 64 :=
.seq rawBody788_220 rawBody788_223

def rawBody788_225 : StackLang.HolProg 64 :=
.seq rawBody788_219 rawBody788_224

def rawBody788_226 : StackLang.HolProg 64 :=
.seq rawBody788_218 rawBody788_225

def rawBody788_227 : StackLang.HolProg 64 :=
.seq rawBody788_217 rawBody788_226

def rawBody788_228 : StackLang.HolProg 64 :=
.seq rawBody788_216 rawBody788_227

def rawBody788_229 : StackLang.HolProg 64 :=
.seq rawBody788_215 rawBody788_228

def rawBody788_230 : StackLang.HolProg 64 :=
.seq rawBody788_214 rawBody788_229

def rawBody788_231 : StackLang.HolProg 64 :=
.seq rawBody788_213 rawBody788_230

def rawBody788_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody788_240 : StackLang.HolProg 64 :=
.seq rawBody788_238 rawBody788_239

def rawBody788_241 : StackLang.HolProg 64 :=
.seq rawBody788_237 rawBody788_240

def rawBody788_242 : StackLang.HolProg 64 :=
.seq rawBody788_236 rawBody788_241

def rawBody788_243 : StackLang.HolProg 64 :=
.seq rawBody788_235 rawBody788_242

def rawBody788_244 : StackLang.HolProg 64 :=
.seq rawBody788_234 rawBody788_243

def rawBody788_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody788_247 : StackLang.HolProg 64 :=
.seq rawBody788_245 rawBody788_246

def rawBody788_248 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_249 : StackLang.HolProg 64 :=
.seq rawBody788_247 rawBody788_248

def rawBody788_250 : StackLang.HolProg 64 :=
.call (some (rawBody788_244, 0, 788, 10)) (Sum.inl 728) (some (rawBody788_249, 788, 11))

def rawBody788_251 : StackLang.HolProg 64 :=
.seq rawBody788_233 rawBody788_250

def rawBody788_252 : StackLang.HolProg 64 :=
.seq rawBody788_232 rawBody788_251

def rawBody788_253 : StackLang.HolProg 64 :=
.seq rawBody788_231 rawBody788_252

def rawBody788_254 : StackLang.HolProg 64 :=
.seq rawBody788_212 rawBody788_253

def rawBody788_255 : StackLang.HolProg 64 :=
.seq rawBody788_209 rawBody788_254

def rawBody788_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody788_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def rawBody788_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody788_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody788_263 : StackLang.HolProg 64 :=
.seq rawBody788_261 rawBody788_262

def rawBody788_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3656#64)

def rawBody788_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_267 : StackLang.HolProg 64 :=
.seq rawBody788_265 rawBody788_266

def rawBody788_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 13

def rawBody788_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_278 : StackLang.HolProg 64 :=
.seq rawBody788_276 rawBody788_277

def rawBody788_279 : StackLang.HolProg 64 :=
.seq rawBody788_275 rawBody788_278

def rawBody788_280 : StackLang.HolProg 64 :=
.seq rawBody788_274 rawBody788_279

def rawBody788_281 : StackLang.HolProg 64 :=
.seq rawBody788_273 rawBody788_280

def rawBody788_282 : StackLang.HolProg 64 :=
.seq rawBody788_272 rawBody788_281

def rawBody788_283 : StackLang.HolProg 64 :=
.seq rawBody788_271 rawBody788_282

def rawBody788_284 : StackLang.HolProg 64 :=
.seq rawBody788_270 rawBody788_283

def rawBody788_285 : StackLang.HolProg 64 :=
.seq rawBody788_269 rawBody788_284

def rawBody788_286 : StackLang.HolProg 64 :=
.seq rawBody788_268 rawBody788_285

def rawBody788_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody788_296 : StackLang.HolProg 64 :=
.seq rawBody788_294 rawBody788_295

def rawBody788_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody788_298 : StackLang.HolProg 64 :=
.seq rawBody788_296 rawBody788_297

def rawBody788_299 : StackLang.HolProg 64 :=
.seq rawBody788_293 rawBody788_298

def rawBody788_300 : StackLang.HolProg 64 :=
.seq rawBody788_292 rawBody788_299

def rawBody788_301 : StackLang.HolProg 64 :=
.seq rawBody788_291 rawBody788_300

def rawBody788_302 : StackLang.HolProg 64 :=
.seq rawBody788_290 rawBody788_301

def rawBody788_303 : StackLang.HolProg 64 :=
.seq rawBody788_289 rawBody788_302

def rawBody788_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody788_307 : StackLang.HolProg 64 :=
.seq rawBody788_305 rawBody788_306

def rawBody788_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody788_309 : StackLang.HolProg 64 :=
.seq rawBody788_307 rawBody788_308

def rawBody788_310 : StackLang.HolProg 64 :=
.seq rawBody788_304 rawBody788_309

def rawBody788_311 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_312 : StackLang.HolProg 64 :=
.seq rawBody788_310 rawBody788_311

def rawBody788_313 : StackLang.HolProg 64 :=
.call (some (rawBody788_303, 0, 788, 12)) (Sum.inl 728) (some (rawBody788_312, 788, 13))

def rawBody788_314 : StackLang.HolProg 64 :=
.seq rawBody788_288 rawBody788_313

def rawBody788_315 : StackLang.HolProg 64 :=
.seq rawBody788_287 rawBody788_314

def rawBody788_316 : StackLang.HolProg 64 :=
.seq rawBody788_286 rawBody788_315

def rawBody788_317 : StackLang.HolProg 64 :=
.seq rawBody788_267 rawBody788_316

def rawBody788_318 : StackLang.HolProg 64 :=
.seq rawBody788_264 rawBody788_317

def rawBody788_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def rawBody788_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def rawBody788_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3657#64)

def rawBody788_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_328 : StackLang.HolProg 64 :=
.seq rawBody788_326 rawBody788_327

def rawBody788_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 15

def rawBody788_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_339 : StackLang.HolProg 64 :=
.seq rawBody788_337 rawBody788_338

def rawBody788_340 : StackLang.HolProg 64 :=
.seq rawBody788_336 rawBody788_339

def rawBody788_341 : StackLang.HolProg 64 :=
.seq rawBody788_335 rawBody788_340

def rawBody788_342 : StackLang.HolProg 64 :=
.seq rawBody788_334 rawBody788_341

def rawBody788_343 : StackLang.HolProg 64 :=
.seq rawBody788_333 rawBody788_342

def rawBody788_344 : StackLang.HolProg 64 :=
.seq rawBody788_332 rawBody788_343

def rawBody788_345 : StackLang.HolProg 64 :=
.seq rawBody788_331 rawBody788_344

def rawBody788_346 : StackLang.HolProg 64 :=
.seq rawBody788_330 rawBody788_345

def rawBody788_347 : StackLang.HolProg 64 :=
.seq rawBody788_329 rawBody788_346

def rawBody788_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_355 : StackLang.HolProg 64 :=
.seq rawBody788_353 rawBody788_354

def rawBody788_356 : StackLang.HolProg 64 :=
.seq rawBody788_352 rawBody788_355

def rawBody788_357 : StackLang.HolProg 64 :=
.seq rawBody788_351 rawBody788_356

def rawBody788_358 : StackLang.HolProg 64 :=
.seq rawBody788_350 rawBody788_357

def rawBody788_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody788_360 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_361 : StackLang.HolProg 64 :=
.seq rawBody788_359 rawBody788_360

def rawBody788_362 : StackLang.HolProg 64 :=
.call (some (rawBody788_358, 0, 788, 14)) (Sum.inl 728) (some (rawBody788_361, 788, 15))

def rawBody788_363 : StackLang.HolProg 64 :=
.seq rawBody788_349 rawBody788_362

def rawBody788_364 : StackLang.HolProg 64 :=
.seq rawBody788_348 rawBody788_363

def rawBody788_365 : StackLang.HolProg 64 :=
.seq rawBody788_347 rawBody788_364

def rawBody788_366 : StackLang.HolProg 64 :=
.seq rawBody788_328 rawBody788_365

def rawBody788_367 : StackLang.HolProg 64 :=
.seq rawBody788_325 rawBody788_366

def rawBody788_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody788_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3658#64)

def rawBody788_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_373 : StackLang.HolProg 64 :=
.seq rawBody788_371 rawBody788_372

def rawBody788_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody788_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody788_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody788_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 788 17

def rawBody788_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody788_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody788_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody788_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody788_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_384 : StackLang.HolProg 64 :=
.seq rawBody788_382 rawBody788_383

def rawBody788_385 : StackLang.HolProg 64 :=
.seq rawBody788_381 rawBody788_384

def rawBody788_386 : StackLang.HolProg 64 :=
.seq rawBody788_380 rawBody788_385

def rawBody788_387 : StackLang.HolProg 64 :=
.seq rawBody788_379 rawBody788_386

def rawBody788_388 : StackLang.HolProg 64 :=
.seq rawBody788_378 rawBody788_387

def rawBody788_389 : StackLang.HolProg 64 :=
.seq rawBody788_377 rawBody788_388

def rawBody788_390 : StackLang.HolProg 64 :=
.seq rawBody788_376 rawBody788_389

def rawBody788_391 : StackLang.HolProg 64 :=
.seq rawBody788_375 rawBody788_390

def rawBody788_392 : StackLang.HolProg 64 :=
.seq rawBody788_374 rawBody788_391

def rawBody788_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody788_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody788_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody788_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody788_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody788_400 : StackLang.HolProg 64 :=
.seq rawBody788_398 rawBody788_399

def rawBody788_401 : StackLang.HolProg 64 :=
.seq rawBody788_397 rawBody788_400

def rawBody788_402 : StackLang.HolProg 64 :=
.seq rawBody788_396 rawBody788_401

def rawBody788_403 : StackLang.HolProg 64 :=
.seq rawBody788_395 rawBody788_402

def rawBody788_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody788_405 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody788_406 : StackLang.HolProg 64 :=
.seq rawBody788_404 rawBody788_405

def rawBody788_407 : StackLang.HolProg 64 :=
.call (some (rawBody788_403, 0, 788, 16)) (Sum.inl 70) (some (rawBody788_406, 788, 17))

def rawBody788_408 : StackLang.HolProg 64 :=
.seq rawBody788_394 rawBody788_407

def rawBody788_409 : StackLang.HolProg 64 :=
.seq rawBody788_393 rawBody788_408

def rawBody788_410 : StackLang.HolProg 64 :=
.seq rawBody788_392 rawBody788_409

def rawBody788_411 : StackLang.HolProg 64 :=
.seq rawBody788_373 rawBody788_410

def rawBody788_412 : StackLang.HolProg 64 :=
.seq rawBody788_370 rawBody788_411

def rawBody788_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody788_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody788_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody788_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody788_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody788_418 : StackLang.HolProg 64 :=
.seq rawBody788_416 rawBody788_417

def rawBody788_419 : StackLang.HolProg 64 :=
.seq rawBody788_415 rawBody788_418

def rawBody788_420 : StackLang.HolProg 64 :=
.seq rawBody788_414 rawBody788_419

def rawBody788_421 : StackLang.HolProg 64 :=
.seq rawBody788_413 rawBody788_420

def rawBody788_422 : StackLang.HolProg 64 :=
.seq rawBody788_412 rawBody788_421

def rawBody788_423 : StackLang.HolProg 64 :=
.seq rawBody788_369 rawBody788_422

def rawBody788_424 : StackLang.HolProg 64 :=
.seq rawBody788_368 rawBody788_423

def rawBody788_425 : StackLang.HolProg 64 :=
.seq rawBody788_367 rawBody788_424

def rawBody788_426 : StackLang.HolProg 64 :=
.seq rawBody788_324 rawBody788_425

def rawBody788_427 : StackLang.HolProg 64 :=
.seq rawBody788_323 rawBody788_426

def rawBody788_428 : StackLang.HolProg 64 :=
.seq rawBody788_322 rawBody788_427

def rawBody788_429 : StackLang.HolProg 64 :=
.seq rawBody788_321 rawBody788_428

def rawBody788_430 : StackLang.HolProg 64 :=
.seq rawBody788_320 rawBody788_429

def rawBody788_431 : StackLang.HolProg 64 :=
.seq rawBody788_319 rawBody788_430

def rawBody788_432 : StackLang.HolProg 64 :=
.seq rawBody788_318 rawBody788_431

def rawBody788_433 : StackLang.HolProg 64 :=
.seq rawBody788_263 rawBody788_432

def rawBody788_434 : StackLang.HolProg 64 :=
.seq rawBody788_260 rawBody788_433

def rawBody788_435 : StackLang.HolProg 64 :=
.seq rawBody788_259 rawBody788_434

def rawBody788_436 : StackLang.HolProg 64 :=
.seq rawBody788_258 rawBody788_435

def rawBody788_437 : StackLang.HolProg 64 :=
.seq rawBody788_257 rawBody788_436

def rawBody788_438 : StackLang.HolProg 64 :=
.seq rawBody788_256 rawBody788_437

def rawBody788_439 : StackLang.HolProg 64 :=
.seq rawBody788_255 rawBody788_438

def rawBody788_440 : StackLang.HolProg 64 :=
.seq rawBody788_208 rawBody788_439

def rawBody788_441 : StackLang.HolProg 64 :=
.seq rawBody788_205 rawBody788_440

def rawBody788_442 : StackLang.HolProg 64 :=
.seq rawBody788_204 rawBody788_441

def rawBody788_443 : StackLang.HolProg 64 :=
.seq rawBody788_203 rawBody788_442

def rawBody788_444 : StackLang.HolProg 64 :=
.seq rawBody788_202 rawBody788_443

def rawBody788_445 : StackLang.HolProg 64 :=
.seq rawBody788_201 rawBody788_444

def rawBody788_446 : StackLang.HolProg 64 :=
.seq rawBody788_200 rawBody788_445

def rawBody788_447 : StackLang.HolProg 64 :=
.seq rawBody788_153 rawBody788_446

def rawBody788_448 : StackLang.HolProg 64 :=
.seq rawBody788_148 rawBody788_447

def rawBody788_449 : StackLang.HolProg 64 :=
.seq rawBody788_147 rawBody788_448

def rawBody788_450 : StackLang.HolProg 64 :=
.seq rawBody788_100 rawBody788_449

def rawBody788_451 : StackLang.HolProg 64 :=
.seq rawBody788_97 rawBody788_450

def rawBody788_452 : StackLang.HolProg 64 :=
.seq rawBody788_96 rawBody788_451

def rawBody788_453 : StackLang.HolProg 64 :=
.seq rawBody788_51 rawBody788_452

def rawBody788_454 : StackLang.HolProg 64 :=
.seq rawBody788_50 rawBody788_453

def rawBody788_455 : StackLang.HolProg 64 :=
.seq rawBody788_49 rawBody788_454

def rawBody788_456 : StackLang.HolProg 64 :=
.seq rawBody788_48 rawBody788_455

def rawBody788_457 : StackLang.HolProg 64 :=
.seq rawBody788_5 rawBody788_456

def rawBody788_458 : StackLang.HolProg 64 :=
.seq rawBody788_0 rawBody788_457

def raw788 : StackLang.HolProg 64 := rawBody788_458
theorem raw788_eq : StackRawCall.compTop RawInfo.rawInfo (function788 (.list [])).1 = raw788 := by
  kernel_rfl
#print axioms raw788_eq
end InitECandidate.Proofs.BackendStages
