import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function757
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody757_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody757_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody757_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody757_3 : StackLang.HolProg 64 :=
.seq rawBody757_1 rawBody757_2

def rawBody757_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3374#64)

def rawBody757_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_7 : StackLang.HolProg 64 :=
.seq rawBody757_5 rawBody757_6

def rawBody757_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody757_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody757_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 3

def rawBody757_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody757_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody757_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody757_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody757_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_18 : StackLang.HolProg 64 :=
.seq rawBody757_16 rawBody757_17

def rawBody757_19 : StackLang.HolProg 64 :=
.seq rawBody757_15 rawBody757_18

def rawBody757_20 : StackLang.HolProg 64 :=
.seq rawBody757_14 rawBody757_19

def rawBody757_21 : StackLang.HolProg 64 :=
.seq rawBody757_13 rawBody757_20

def rawBody757_22 : StackLang.HolProg 64 :=
.seq rawBody757_12 rawBody757_21

def rawBody757_23 : StackLang.HolProg 64 :=
.seq rawBody757_11 rawBody757_22

def rawBody757_24 : StackLang.HolProg 64 :=
.seq rawBody757_10 rawBody757_23

def rawBody757_25 : StackLang.HolProg 64 :=
.seq rawBody757_9 rawBody757_24

def rawBody757_26 : StackLang.HolProg 64 :=
.seq rawBody757_8 rawBody757_25

def rawBody757_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody757_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody757_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody757_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody757_34 : StackLang.HolProg 64 :=
.seq rawBody757_32 rawBody757_33

def rawBody757_35 : StackLang.HolProg 64 :=
.seq rawBody757_31 rawBody757_34

def rawBody757_36 : StackLang.HolProg 64 :=
.seq rawBody757_30 rawBody757_35

def rawBody757_37 : StackLang.HolProg 64 :=
.seq rawBody757_29 rawBody757_36

def rawBody757_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody757_40 : StackLang.HolProg 64 :=
.seq rawBody757_38 rawBody757_39

def rawBody757_41 : StackLang.HolProg 64 :=
.call (some (rawBody757_37, 0, 757, 2)) (Sum.inl 69) (some (rawBody757_40, 757, 3))

def rawBody757_42 : StackLang.HolProg 64 :=
.seq rawBody757_28 rawBody757_41

def rawBody757_43 : StackLang.HolProg 64 :=
.seq rawBody757_27 rawBody757_42

def rawBody757_44 : StackLang.HolProg 64 :=
.seq rawBody757_26 rawBody757_43

def rawBody757_45 : StackLang.HolProg 64 :=
.seq rawBody757_7 rawBody757_44

def rawBody757_46 : StackLang.HolProg 64 :=
.seq rawBody757_4 rawBody757_45

def rawBody757_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody757_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 576#64)

def rawBody757_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody757_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3375#64)

def rawBody757_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_53 : StackLang.HolProg 64 :=
.seq rawBody757_51 rawBody757_52

def rawBody757_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody757_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody757_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 5

def rawBody757_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody757_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody757_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody757_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody757_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_64 : StackLang.HolProg 64 :=
.seq rawBody757_62 rawBody757_63

def rawBody757_65 : StackLang.HolProg 64 :=
.seq rawBody757_61 rawBody757_64

def rawBody757_66 : StackLang.HolProg 64 :=
.seq rawBody757_60 rawBody757_65

def rawBody757_67 : StackLang.HolProg 64 :=
.seq rawBody757_59 rawBody757_66

def rawBody757_68 : StackLang.HolProg 64 :=
.seq rawBody757_58 rawBody757_67

def rawBody757_69 : StackLang.HolProg 64 :=
.seq rawBody757_57 rawBody757_68

def rawBody757_70 : StackLang.HolProg 64 :=
.seq rawBody757_56 rawBody757_69

def rawBody757_71 : StackLang.HolProg 64 :=
.seq rawBody757_55 rawBody757_70

def rawBody757_72 : StackLang.HolProg 64 :=
.seq rawBody757_54 rawBody757_71

def rawBody757_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody757_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody757_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody757_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody757_80 : StackLang.HolProg 64 :=
.seq rawBody757_78 rawBody757_79

def rawBody757_81 : StackLang.HolProg 64 :=
.seq rawBody757_77 rawBody757_80

def rawBody757_82 : StackLang.HolProg 64 :=
.seq rawBody757_76 rawBody757_81

def rawBody757_83 : StackLang.HolProg 64 :=
.seq rawBody757_75 rawBody757_82

def rawBody757_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_85 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody757_86 : StackLang.HolProg 64 :=
.seq rawBody757_84 rawBody757_85

def rawBody757_87 : StackLang.HolProg 64 :=
.call (some (rawBody757_83, 0, 757, 4)) (Sum.inl 68) (some (rawBody757_86, 757, 5))

def rawBody757_88 : StackLang.HolProg 64 :=
.seq rawBody757_74 rawBody757_87

def rawBody757_89 : StackLang.HolProg 64 :=
.seq rawBody757_73 rawBody757_88

def rawBody757_90 : StackLang.HolProg 64 :=
.seq rawBody757_72 rawBody757_89

def rawBody757_91 : StackLang.HolProg 64 :=
.seq rawBody757_53 rawBody757_90

def rawBody757_92 : StackLang.HolProg 64 :=
.seq rawBody757_50 rawBody757_91

def rawBody757_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody757_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody757_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody757_96 : StackLang.HolProg 64 :=
.seq rawBody757_94 rawBody757_95

def rawBody757_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3376#64)

def rawBody757_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_100 : StackLang.HolProg 64 :=
.seq rawBody757_98 rawBody757_99

def rawBody757_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody757_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody757_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 7

def rawBody757_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody757_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody757_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody757_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody757_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_111 : StackLang.HolProg 64 :=
.seq rawBody757_109 rawBody757_110

def rawBody757_112 : StackLang.HolProg 64 :=
.seq rawBody757_108 rawBody757_111

def rawBody757_113 : StackLang.HolProg 64 :=
.seq rawBody757_107 rawBody757_112

def rawBody757_114 : StackLang.HolProg 64 :=
.seq rawBody757_106 rawBody757_113

def rawBody757_115 : StackLang.HolProg 64 :=
.seq rawBody757_105 rawBody757_114

def rawBody757_116 : StackLang.HolProg 64 :=
.seq rawBody757_104 rawBody757_115

def rawBody757_117 : StackLang.HolProg 64 :=
.seq rawBody757_103 rawBody757_116

def rawBody757_118 : StackLang.HolProg 64 :=
.seq rawBody757_102 rawBody757_117

def rawBody757_119 : StackLang.HolProg 64 :=
.seq rawBody757_101 rawBody757_118

def rawBody757_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody757_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody757_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody757_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody757_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody757_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody757_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody757_130 : StackLang.HolProg 64 :=
.seq rawBody757_128 rawBody757_129

def rawBody757_131 : StackLang.HolProg 64 :=
.seq rawBody757_127 rawBody757_130

def rawBody757_132 : StackLang.HolProg 64 :=
.seq rawBody757_126 rawBody757_131

def rawBody757_133 : StackLang.HolProg 64 :=
.seq rawBody757_125 rawBody757_132

def rawBody757_134 : StackLang.HolProg 64 :=
.seq rawBody757_124 rawBody757_133

def rawBody757_135 : StackLang.HolProg 64 :=
.seq rawBody757_123 rawBody757_134

def rawBody757_136 : StackLang.HolProg 64 :=
.seq rawBody757_122 rawBody757_135

def rawBody757_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody757_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody757_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody757_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody757_141 : StackLang.HolProg 64 :=
.seq rawBody757_139 rawBody757_140

def rawBody757_142 : StackLang.HolProg 64 :=
.seq rawBody757_138 rawBody757_141

def rawBody757_143 : StackLang.HolProg 64 :=
.seq rawBody757_137 rawBody757_142

def rawBody757_144 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody757_145 : StackLang.HolProg 64 :=
.seq rawBody757_143 rawBody757_144

def rawBody757_146 : StackLang.HolProg 64 :=
.call (some (rawBody757_136, 0, 757, 6)) (Sum.inl 756) (some (rawBody757_145, 757, 7))

def rawBody757_147 : StackLang.HolProg 64 :=
.seq rawBody757_121 rawBody757_146

def rawBody757_148 : StackLang.HolProg 64 :=
.seq rawBody757_120 rawBody757_147

def rawBody757_149 : StackLang.HolProg 64 :=
.seq rawBody757_119 rawBody757_148

def rawBody757_150 : StackLang.HolProg 64 :=
.seq rawBody757_100 rawBody757_149

def rawBody757_151 : StackLang.HolProg 64 :=
.seq rawBody757_97 rawBody757_150

def rawBody757_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody757_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody757_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 576#64)

def rawBody757_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3377#64)

def rawBody757_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_159 : StackLang.HolProg 64 :=
.seq rawBody757_157 rawBody757_158

def rawBody757_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody757_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody757_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 9

def rawBody757_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody757_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody757_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody757_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody757_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_170 : StackLang.HolProg 64 :=
.seq rawBody757_168 rawBody757_169

def rawBody757_171 : StackLang.HolProg 64 :=
.seq rawBody757_167 rawBody757_170

def rawBody757_172 : StackLang.HolProg 64 :=
.seq rawBody757_166 rawBody757_171

def rawBody757_173 : StackLang.HolProg 64 :=
.seq rawBody757_165 rawBody757_172

def rawBody757_174 : StackLang.HolProg 64 :=
.seq rawBody757_164 rawBody757_173

def rawBody757_175 : StackLang.HolProg 64 :=
.seq rawBody757_163 rawBody757_174

def rawBody757_176 : StackLang.HolProg 64 :=
.seq rawBody757_162 rawBody757_175

def rawBody757_177 : StackLang.HolProg 64 :=
.seq rawBody757_161 rawBody757_176

def rawBody757_178 : StackLang.HolProg 64 :=
.seq rawBody757_160 rawBody757_177

def rawBody757_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody757_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody757_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody757_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody757_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody757_187 : StackLang.HolProg 64 :=
.seq rawBody757_185 rawBody757_186

def rawBody757_188 : StackLang.HolProg 64 :=
.seq rawBody757_184 rawBody757_187

def rawBody757_189 : StackLang.HolProg 64 :=
.seq rawBody757_183 rawBody757_188

def rawBody757_190 : StackLang.HolProg 64 :=
.seq rawBody757_182 rawBody757_189

def rawBody757_191 : StackLang.HolProg 64 :=
.seq rawBody757_181 rawBody757_190

def rawBody757_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody757_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody757_194 : StackLang.HolProg 64 :=
.seq rawBody757_192 rawBody757_193

def rawBody757_195 : StackLang.HolProg 64 :=
.call (some (rawBody757_191, 0, 757, 8)) (Sum.inl 79) (some (rawBody757_194, 757, 9))

def rawBody757_196 : StackLang.HolProg 64 :=
.seq rawBody757_180 rawBody757_195

def rawBody757_197 : StackLang.HolProg 64 :=
.seq rawBody757_179 rawBody757_196

def rawBody757_198 : StackLang.HolProg 64 :=
.seq rawBody757_178 rawBody757_197

def rawBody757_199 : StackLang.HolProg 64 :=
.seq rawBody757_159 rawBody757_198

def rawBody757_200 : StackLang.HolProg 64 :=
.seq rawBody757_156 rawBody757_199

def rawBody757_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody757_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody757_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody757_204 : StackLang.HolProg 64 :=
.seq rawBody757_202 rawBody757_203

def rawBody757_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3378#64)

def rawBody757_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_208 : StackLang.HolProg 64 :=
.seq rawBody757_206 rawBody757_207

def rawBody757_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody757_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody757_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody757_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 757 11

def rawBody757_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody757_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody757_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody757_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody757_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_219 : StackLang.HolProg 64 :=
.seq rawBody757_217 rawBody757_218

def rawBody757_220 : StackLang.HolProg 64 :=
.seq rawBody757_216 rawBody757_219

def rawBody757_221 : StackLang.HolProg 64 :=
.seq rawBody757_215 rawBody757_220

def rawBody757_222 : StackLang.HolProg 64 :=
.seq rawBody757_214 rawBody757_221

def rawBody757_223 : StackLang.HolProg 64 :=
.seq rawBody757_213 rawBody757_222

def rawBody757_224 : StackLang.HolProg 64 :=
.seq rawBody757_212 rawBody757_223

def rawBody757_225 : StackLang.HolProg 64 :=
.seq rawBody757_211 rawBody757_224

def rawBody757_226 : StackLang.HolProg 64 :=
.seq rawBody757_210 rawBody757_225

def rawBody757_227 : StackLang.HolProg 64 :=
.seq rawBody757_209 rawBody757_226

def rawBody757_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody757_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody757_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody757_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody757_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody757_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody757_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody757_236 : StackLang.HolProg 64 :=
.seq rawBody757_234 rawBody757_235

def rawBody757_237 : StackLang.HolProg 64 :=
.seq rawBody757_233 rawBody757_236

def rawBody757_238 : StackLang.HolProg 64 :=
.seq rawBody757_232 rawBody757_237

def rawBody757_239 : StackLang.HolProg 64 :=
.seq rawBody757_231 rawBody757_238

def rawBody757_240 : StackLang.HolProg 64 :=
.seq rawBody757_230 rawBody757_239

def rawBody757_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody757_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def rawBody757_243 : StackLang.HolProg 64 :=
.seq rawBody757_241 rawBody757_242

def rawBody757_244 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody757_245 : StackLang.HolProg 64 :=
.seq rawBody757_243 rawBody757_244

def rawBody757_246 : StackLang.HolProg 64 :=
.call (some (rawBody757_240, 0, 757, 10)) (Sum.inl 70) (some (rawBody757_245, 757, 11))

def rawBody757_247 : StackLang.HolProg 64 :=
.seq rawBody757_229 rawBody757_246

def rawBody757_248 : StackLang.HolProg 64 :=
.seq rawBody757_228 rawBody757_247

def rawBody757_249 : StackLang.HolProg 64 :=
.seq rawBody757_227 rawBody757_248

def rawBody757_250 : StackLang.HolProg 64 :=
.seq rawBody757_208 rawBody757_249

def rawBody757_251 : StackLang.HolProg 64 :=
.seq rawBody757_205 rawBody757_250

def rawBody757_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody757_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody757_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody757_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody757_256 : StackLang.HolProg 64 :=
.seq rawBody757_254 rawBody757_255

def rawBody757_257 : StackLang.HolProg 64 :=
.seq rawBody757_253 rawBody757_256

def rawBody757_258 : StackLang.HolProg 64 :=
.seq rawBody757_252 rawBody757_257

def rawBody757_259 : StackLang.HolProg 64 :=
.seq rawBody757_251 rawBody757_258

def rawBody757_260 : StackLang.HolProg 64 :=
.seq rawBody757_204 rawBody757_259

def rawBody757_261 : StackLang.HolProg 64 :=
.seq rawBody757_201 rawBody757_260

def rawBody757_262 : StackLang.HolProg 64 :=
.seq rawBody757_200 rawBody757_261

def rawBody757_263 : StackLang.HolProg 64 :=
.seq rawBody757_155 rawBody757_262

def rawBody757_264 : StackLang.HolProg 64 :=
.seq rawBody757_154 rawBody757_263

def rawBody757_265 : StackLang.HolProg 64 :=
.seq rawBody757_153 rawBody757_264

def rawBody757_266 : StackLang.HolProg 64 :=
.seq rawBody757_152 rawBody757_265

def rawBody757_267 : StackLang.HolProg 64 :=
.seq rawBody757_151 rawBody757_266

def rawBody757_268 : StackLang.HolProg 64 :=
.seq rawBody757_96 rawBody757_267

def rawBody757_269 : StackLang.HolProg 64 :=
.seq rawBody757_93 rawBody757_268

def rawBody757_270 : StackLang.HolProg 64 :=
.seq rawBody757_92 rawBody757_269

def rawBody757_271 : StackLang.HolProg 64 :=
.seq rawBody757_49 rawBody757_270

def rawBody757_272 : StackLang.HolProg 64 :=
.seq rawBody757_48 rawBody757_271

def rawBody757_273 : StackLang.HolProg 64 :=
.seq rawBody757_47 rawBody757_272

def rawBody757_274 : StackLang.HolProg 64 :=
.seq rawBody757_46 rawBody757_273

def rawBody757_275 : StackLang.HolProg 64 :=
.seq rawBody757_3 rawBody757_274

def rawBody757_276 : StackLang.HolProg 64 :=
.seq rawBody757_0 rawBody757_275

def raw757 : StackLang.HolProg 64 := rawBody757_276
theorem raw757_eq : StackRawCall.compTop RawInfo.rawInfo (function757 (.list [])).1 = raw757 := by
  kernel_rfl
#print axioms raw757_eq
end InitECandidate.Proofs.BackendStages
