import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function804
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody804_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody804_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody804_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody804_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody804_4 : StackLang.HolProg 64 :=
.seq rawBody804_2 rawBody804_3

def rawBody804_5 : StackLang.HolProg 64 :=
.seq rawBody804_1 rawBody804_4

def rawBody804_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3927#64)

def rawBody804_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_9 : StackLang.HolProg 64 :=
.seq rawBody804_7 rawBody804_8

def rawBody804_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 3

def rawBody804_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_20 : StackLang.HolProg 64 :=
.seq rawBody804_18 rawBody804_19

def rawBody804_21 : StackLang.HolProg 64 :=
.seq rawBody804_17 rawBody804_20

def rawBody804_22 : StackLang.HolProg 64 :=
.seq rawBody804_16 rawBody804_21

def rawBody804_23 : StackLang.HolProg 64 :=
.seq rawBody804_15 rawBody804_22

def rawBody804_24 : StackLang.HolProg 64 :=
.seq rawBody804_14 rawBody804_23

def rawBody804_25 : StackLang.HolProg 64 :=
.seq rawBody804_13 rawBody804_24

def rawBody804_26 : StackLang.HolProg 64 :=
.seq rawBody804_12 rawBody804_25

def rawBody804_27 : StackLang.HolProg 64 :=
.seq rawBody804_11 rawBody804_26

def rawBody804_28 : StackLang.HolProg 64 :=
.seq rawBody804_10 rawBody804_27

def rawBody804_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody804_36 : StackLang.HolProg 64 :=
.seq rawBody804_34 rawBody804_35

def rawBody804_37 : StackLang.HolProg 64 :=
.seq rawBody804_33 rawBody804_36

def rawBody804_38 : StackLang.HolProg 64 :=
.seq rawBody804_32 rawBody804_37

def rawBody804_39 : StackLang.HolProg 64 :=
.seq rawBody804_31 rawBody804_38

def rawBody804_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_42 : StackLang.HolProg 64 :=
.seq rawBody804_40 rawBody804_41

def rawBody804_43 : StackLang.HolProg 64 :=
.call (some (rawBody804_39, 0, 804, 2)) (Sum.inl 69) (some (rawBody804_42, 804, 3))

def rawBody804_44 : StackLang.HolProg 64 :=
.seq rawBody804_30 rawBody804_43

def rawBody804_45 : StackLang.HolProg 64 :=
.seq rawBody804_29 rawBody804_44

def rawBody804_46 : StackLang.HolProg 64 :=
.seq rawBody804_28 rawBody804_45

def rawBody804_47 : StackLang.HolProg 64 :=
.seq rawBody804_9 rawBody804_46

def rawBody804_48 : StackLang.HolProg 64 :=
.seq rawBody804_6 rawBody804_47

def rawBody804_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 288#64)

def rawBody804_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody804_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3928#64)

def rawBody804_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_55 : StackLang.HolProg 64 :=
.seq rawBody804_53 rawBody804_54

def rawBody804_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 5

def rawBody804_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_66 : StackLang.HolProg 64 :=
.seq rawBody804_64 rawBody804_65

def rawBody804_67 : StackLang.HolProg 64 :=
.seq rawBody804_63 rawBody804_66

def rawBody804_68 : StackLang.HolProg 64 :=
.seq rawBody804_62 rawBody804_67

def rawBody804_69 : StackLang.HolProg 64 :=
.seq rawBody804_61 rawBody804_68

def rawBody804_70 : StackLang.HolProg 64 :=
.seq rawBody804_60 rawBody804_69

def rawBody804_71 : StackLang.HolProg 64 :=
.seq rawBody804_59 rawBody804_70

def rawBody804_72 : StackLang.HolProg 64 :=
.seq rawBody804_58 rawBody804_71

def rawBody804_73 : StackLang.HolProg 64 :=
.seq rawBody804_57 rawBody804_72

def rawBody804_74 : StackLang.HolProg 64 :=
.seq rawBody804_56 rawBody804_73

def rawBody804_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody804_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_83 : StackLang.HolProg 64 :=
.seq rawBody804_81 rawBody804_82

def rawBody804_84 : StackLang.HolProg 64 :=
.seq rawBody804_80 rawBody804_83

def rawBody804_85 : StackLang.HolProg 64 :=
.seq rawBody804_79 rawBody804_84

def rawBody804_86 : StackLang.HolProg 64 :=
.seq rawBody804_78 rawBody804_85

def rawBody804_87 : StackLang.HolProg 64 :=
.seq rawBody804_77 rawBody804_86

def rawBody804_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_90 : StackLang.HolProg 64 :=
.seq rawBody804_88 rawBody804_89

def rawBody804_91 : StackLang.HolProg 64 :=
.call (some (rawBody804_87, 0, 804, 4)) (Sum.inl 68) (some (rawBody804_90, 804, 5))

def rawBody804_92 : StackLang.HolProg 64 :=
.seq rawBody804_76 rawBody804_91

def rawBody804_93 : StackLang.HolProg 64 :=
.seq rawBody804_75 rawBody804_92

def rawBody804_94 : StackLang.HolProg 64 :=
.seq rawBody804_74 rawBody804_93

def rawBody804_95 : StackLang.HolProg 64 :=
.seq rawBody804_55 rawBody804_94

def rawBody804_96 : StackLang.HolProg 64 :=
.seq rawBody804_52 rawBody804_95

def rawBody804_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody804_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody804_100 : StackLang.HolProg 64 :=
.seq rawBody804_98 rawBody804_99

def rawBody804_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3929#64)

def rawBody804_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_104 : StackLang.HolProg 64 :=
.seq rawBody804_102 rawBody804_103

def rawBody804_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 7

def rawBody804_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_115 : StackLang.HolProg 64 :=
.seq rawBody804_113 rawBody804_114

def rawBody804_116 : StackLang.HolProg 64 :=
.seq rawBody804_112 rawBody804_115

def rawBody804_117 : StackLang.HolProg 64 :=
.seq rawBody804_111 rawBody804_116

def rawBody804_118 : StackLang.HolProg 64 :=
.seq rawBody804_110 rawBody804_117

def rawBody804_119 : StackLang.HolProg 64 :=
.seq rawBody804_109 rawBody804_118

def rawBody804_120 : StackLang.HolProg 64 :=
.seq rawBody804_108 rawBody804_119

def rawBody804_121 : StackLang.HolProg 64 :=
.seq rawBody804_107 rawBody804_120

def rawBody804_122 : StackLang.HolProg 64 :=
.seq rawBody804_106 rawBody804_121

def rawBody804_123 : StackLang.HolProg 64 :=
.seq rawBody804_105 rawBody804_122

def rawBody804_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_131 : StackLang.HolProg 64 :=
.seq rawBody804_129 rawBody804_130

def rawBody804_132 : StackLang.HolProg 64 :=
.seq rawBody804_128 rawBody804_131

def rawBody804_133 : StackLang.HolProg 64 :=
.seq rawBody804_127 rawBody804_132

def rawBody804_134 : StackLang.HolProg 64 :=
.seq rawBody804_126 rawBody804_133

def rawBody804_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_136 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_137 : StackLang.HolProg 64 :=
.seq rawBody804_135 rawBody804_136

def rawBody804_138 : StackLang.HolProg 64 :=
.call (some (rawBody804_134, 0, 804, 6)) (Sum.inl 801) (some (rawBody804_137, 804, 7))

def rawBody804_139 : StackLang.HolProg 64 :=
.seq rawBody804_125 rawBody804_138

def rawBody804_140 : StackLang.HolProg 64 :=
.seq rawBody804_124 rawBody804_139

def rawBody804_141 : StackLang.HolProg 64 :=
.seq rawBody804_123 rawBody804_140

def rawBody804_142 : StackLang.HolProg 64 :=
.seq rawBody804_104 rawBody804_141

def rawBody804_143 : StackLang.HolProg 64 :=
.seq rawBody804_101 rawBody804_142

def rawBody804_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody804_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody804_147 : StackLang.HolProg 64 :=
.seq rawBody804_145 rawBody804_146

def rawBody804_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3930#64)

def rawBody804_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_151 : StackLang.HolProg 64 :=
.seq rawBody804_149 rawBody804_150

def rawBody804_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 9

def rawBody804_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_162 : StackLang.HolProg 64 :=
.seq rawBody804_160 rawBody804_161

def rawBody804_163 : StackLang.HolProg 64 :=
.seq rawBody804_159 rawBody804_162

def rawBody804_164 : StackLang.HolProg 64 :=
.seq rawBody804_158 rawBody804_163

def rawBody804_165 : StackLang.HolProg 64 :=
.seq rawBody804_157 rawBody804_164

def rawBody804_166 : StackLang.HolProg 64 :=
.seq rawBody804_156 rawBody804_165

def rawBody804_167 : StackLang.HolProg 64 :=
.seq rawBody804_155 rawBody804_166

def rawBody804_168 : StackLang.HolProg 64 :=
.seq rawBody804_154 rawBody804_167

def rawBody804_169 : StackLang.HolProg 64 :=
.seq rawBody804_153 rawBody804_168

def rawBody804_170 : StackLang.HolProg 64 :=
.seq rawBody804_152 rawBody804_169

def rawBody804_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody804_179 : StackLang.HolProg 64 :=
.seq rawBody804_177 rawBody804_178

def rawBody804_180 : StackLang.HolProg 64 :=
.seq rawBody804_176 rawBody804_179

def rawBody804_181 : StackLang.HolProg 64 :=
.seq rawBody804_175 rawBody804_180

def rawBody804_182 : StackLang.HolProg 64 :=
.seq rawBody804_174 rawBody804_181

def rawBody804_183 : StackLang.HolProg 64 :=
.seq rawBody804_173 rawBody804_182

def rawBody804_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody804_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody804_186 : StackLang.HolProg 64 :=
.seq rawBody804_184 rawBody804_185

def rawBody804_187 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_188 : StackLang.HolProg 64 :=
.seq rawBody804_186 rawBody804_187

def rawBody804_189 : StackLang.HolProg 64 :=
.call (some (rawBody804_183, 0, 804, 8)) (Sum.inl 803) (some (rawBody804_188, 804, 9))

def rawBody804_190 : StackLang.HolProg 64 :=
.seq rawBody804_172 rawBody804_189

def rawBody804_191 : StackLang.HolProg 64 :=
.seq rawBody804_171 rawBody804_190

def rawBody804_192 : StackLang.HolProg 64 :=
.seq rawBody804_170 rawBody804_191

def rawBody804_193 : StackLang.HolProg 64 :=
.seq rawBody804_151 rawBody804_192

def rawBody804_194 : StackLang.HolProg 64 :=
.seq rawBody804_148 rawBody804_193

def rawBody804_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody804_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody804_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody804_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody804_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def rawBody804_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1632#64)))

def rawBody804_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 10#64)

def rawBody804_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3931#64)

def rawBody804_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_207 : StackLang.HolProg 64 :=
.seq rawBody804_205 rawBody804_206

def rawBody804_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 11

def rawBody804_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_218 : StackLang.HolProg 64 :=
.seq rawBody804_216 rawBody804_217

def rawBody804_219 : StackLang.HolProg 64 :=
.seq rawBody804_215 rawBody804_218

def rawBody804_220 : StackLang.HolProg 64 :=
.seq rawBody804_214 rawBody804_219

def rawBody804_221 : StackLang.HolProg 64 :=
.seq rawBody804_213 rawBody804_220

def rawBody804_222 : StackLang.HolProg 64 :=
.seq rawBody804_212 rawBody804_221

def rawBody804_223 : StackLang.HolProg 64 :=
.seq rawBody804_211 rawBody804_222

def rawBody804_224 : StackLang.HolProg 64 :=
.seq rawBody804_210 rawBody804_223

def rawBody804_225 : StackLang.HolProg 64 :=
.seq rawBody804_209 rawBody804_224

def rawBody804_226 : StackLang.HolProg 64 :=
.seq rawBody804_208 rawBody804_225

def rawBody804_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody804_234 : StackLang.HolProg 64 :=
.seq rawBody804_232 rawBody804_233

def rawBody804_235 : StackLang.HolProg 64 :=
.seq rawBody804_231 rawBody804_234

def rawBody804_236 : StackLang.HolProg 64 :=
.seq rawBody804_230 rawBody804_235

def rawBody804_237 : StackLang.HolProg 64 :=
.seq rawBody804_229 rawBody804_236

def rawBody804_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody804_239 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_240 : StackLang.HolProg 64 :=
.seq rawBody804_238 rawBody804_239

def rawBody804_241 : StackLang.HolProg 64 :=
.call (some (rawBody804_237, 0, 804, 10)) (Sum.inl 784) (some (rawBody804_240, 804, 11))

def rawBody804_242 : StackLang.HolProg 64 :=
.seq rawBody804_228 rawBody804_241

def rawBody804_243 : StackLang.HolProg 64 :=
.seq rawBody804_227 rawBody804_242

def rawBody804_244 : StackLang.HolProg 64 :=
.seq rawBody804_226 rawBody804_243

def rawBody804_245 : StackLang.HolProg 64 :=
.seq rawBody804_207 rawBody804_244

def rawBody804_246 : StackLang.HolProg 64 :=
.seq rawBody804_204 rawBody804_245

def rawBody804_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody804_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3932#64)

def rawBody804_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_252 : StackLang.HolProg 64 :=
.seq rawBody804_250 rawBody804_251

def rawBody804_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody804_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody804_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody804_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 804 13

def rawBody804_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody804_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody804_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody804_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody804_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_263 : StackLang.HolProg 64 :=
.seq rawBody804_261 rawBody804_262

def rawBody804_264 : StackLang.HolProg 64 :=
.seq rawBody804_260 rawBody804_263

def rawBody804_265 : StackLang.HolProg 64 :=
.seq rawBody804_259 rawBody804_264

def rawBody804_266 : StackLang.HolProg 64 :=
.seq rawBody804_258 rawBody804_265

def rawBody804_267 : StackLang.HolProg 64 :=
.seq rawBody804_257 rawBody804_266

def rawBody804_268 : StackLang.HolProg 64 :=
.seq rawBody804_256 rawBody804_267

def rawBody804_269 : StackLang.HolProg 64 :=
.seq rawBody804_255 rawBody804_268

def rawBody804_270 : StackLang.HolProg 64 :=
.seq rawBody804_254 rawBody804_269

def rawBody804_271 : StackLang.HolProg 64 :=
.seq rawBody804_253 rawBody804_270

def rawBody804_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody804_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody804_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody804_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody804_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody804_279 : StackLang.HolProg 64 :=
.seq rawBody804_277 rawBody804_278

def rawBody804_280 : StackLang.HolProg 64 :=
.seq rawBody804_276 rawBody804_279

def rawBody804_281 : StackLang.HolProg 64 :=
.seq rawBody804_275 rawBody804_280

def rawBody804_282 : StackLang.HolProg 64 :=
.seq rawBody804_274 rawBody804_281

def rawBody804_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody804_284 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody804_285 : StackLang.HolProg 64 :=
.seq rawBody804_283 rawBody804_284

def rawBody804_286 : StackLang.HolProg 64 :=
.call (some (rawBody804_282, 0, 804, 12)) (Sum.inl 70) (some (rawBody804_285, 804, 13))

def rawBody804_287 : StackLang.HolProg 64 :=
.seq rawBody804_273 rawBody804_286

def rawBody804_288 : StackLang.HolProg 64 :=
.seq rawBody804_272 rawBody804_287

def rawBody804_289 : StackLang.HolProg 64 :=
.seq rawBody804_271 rawBody804_288

def rawBody804_290 : StackLang.HolProg 64 :=
.seq rawBody804_252 rawBody804_289

def rawBody804_291 : StackLang.HolProg 64 :=
.seq rawBody804_249 rawBody804_290

def rawBody804_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody804_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody804_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody804_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody804_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody804_297 : StackLang.HolProg 64 :=
.seq rawBody804_295 rawBody804_296

def rawBody804_298 : StackLang.HolProg 64 :=
.seq rawBody804_294 rawBody804_297

def rawBody804_299 : StackLang.HolProg 64 :=
.seq rawBody804_293 rawBody804_298

def rawBody804_300 : StackLang.HolProg 64 :=
.seq rawBody804_292 rawBody804_299

def rawBody804_301 : StackLang.HolProg 64 :=
.seq rawBody804_291 rawBody804_300

def rawBody804_302 : StackLang.HolProg 64 :=
.seq rawBody804_248 rawBody804_301

def rawBody804_303 : StackLang.HolProg 64 :=
.seq rawBody804_247 rawBody804_302

def rawBody804_304 : StackLang.HolProg 64 :=
.seq rawBody804_246 rawBody804_303

def rawBody804_305 : StackLang.HolProg 64 :=
.seq rawBody804_203 rawBody804_304

def rawBody804_306 : StackLang.HolProg 64 :=
.seq rawBody804_202 rawBody804_305

def rawBody804_307 : StackLang.HolProg 64 :=
.seq rawBody804_201 rawBody804_306

def rawBody804_308 : StackLang.HolProg 64 :=
.seq rawBody804_200 rawBody804_307

def rawBody804_309 : StackLang.HolProg 64 :=
.seq rawBody804_199 rawBody804_308

def rawBody804_310 : StackLang.HolProg 64 :=
.seq rawBody804_198 rawBody804_309

def rawBody804_311 : StackLang.HolProg 64 :=
.seq rawBody804_197 rawBody804_310

def rawBody804_312 : StackLang.HolProg 64 :=
.seq rawBody804_196 rawBody804_311

def rawBody804_313 : StackLang.HolProg 64 :=
.seq rawBody804_195 rawBody804_312

def rawBody804_314 : StackLang.HolProg 64 :=
.seq rawBody804_194 rawBody804_313

def rawBody804_315 : StackLang.HolProg 64 :=
.seq rawBody804_147 rawBody804_314

def rawBody804_316 : StackLang.HolProg 64 :=
.seq rawBody804_144 rawBody804_315

def rawBody804_317 : StackLang.HolProg 64 :=
.seq rawBody804_143 rawBody804_316

def rawBody804_318 : StackLang.HolProg 64 :=
.seq rawBody804_100 rawBody804_317

def rawBody804_319 : StackLang.HolProg 64 :=
.seq rawBody804_97 rawBody804_318

def rawBody804_320 : StackLang.HolProg 64 :=
.seq rawBody804_96 rawBody804_319

def rawBody804_321 : StackLang.HolProg 64 :=
.seq rawBody804_51 rawBody804_320

def rawBody804_322 : StackLang.HolProg 64 :=
.seq rawBody804_50 rawBody804_321

def rawBody804_323 : StackLang.HolProg 64 :=
.seq rawBody804_49 rawBody804_322

def rawBody804_324 : StackLang.HolProg 64 :=
.seq rawBody804_48 rawBody804_323

def rawBody804_325 : StackLang.HolProg 64 :=
.seq rawBody804_5 rawBody804_324

def rawBody804_326 : StackLang.HolProg 64 :=
.seq rawBody804_0 rawBody804_325

def raw804 : StackLang.HolProg 64 := rawBody804_326
theorem raw804_eq : StackRawCall.compTop RawInfo.rawInfo (function804 (.list [])).1 = raw804 := by
  kernel_rfl
#print axioms raw804_eq
end InitECandidate.Proofs.BackendStages
