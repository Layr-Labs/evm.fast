import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function620
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody620_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody620_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody620_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def rawBody620_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def rawBody620_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody620_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 4

def rawBody620_6 : StackLang.HolProg 64 :=
.seq rawBody620_4 rawBody620_5

def rawBody620_7 : StackLang.HolProg 64 :=
.seq rawBody620_3 rawBody620_6

def rawBody620_8 : StackLang.HolProg 64 :=
.seq rawBody620_2 rawBody620_7

def rawBody620_9 : StackLang.HolProg 64 :=
.seq rawBody620_1 rawBody620_8

def rawBody620_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2429#64)

def rawBody620_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_13 : StackLang.HolProg 64 :=
.seq rawBody620_11 rawBody620_12

def rawBody620_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody620_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody620_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 3

def rawBody620_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody620_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody620_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody620_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody620_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_24 : StackLang.HolProg 64 :=
.seq rawBody620_22 rawBody620_23

def rawBody620_25 : StackLang.HolProg 64 :=
.seq rawBody620_21 rawBody620_24

def rawBody620_26 : StackLang.HolProg 64 :=
.seq rawBody620_20 rawBody620_25

def rawBody620_27 : StackLang.HolProg 64 :=
.seq rawBody620_19 rawBody620_26

def rawBody620_28 : StackLang.HolProg 64 :=
.seq rawBody620_18 rawBody620_27

def rawBody620_29 : StackLang.HolProg 64 :=
.seq rawBody620_17 rawBody620_28

def rawBody620_30 : StackLang.HolProg 64 :=
.seq rawBody620_16 rawBody620_29

def rawBody620_31 : StackLang.HolProg 64 :=
.seq rawBody620_15 rawBody620_30

def rawBody620_32 : StackLang.HolProg 64 :=
.seq rawBody620_14 rawBody620_31

def rawBody620_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody620_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody620_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody620_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody620_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody620_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody620_42 : StackLang.HolProg 64 :=
.seq rawBody620_40 rawBody620_41

def rawBody620_43 : StackLang.HolProg 64 :=
.seq rawBody620_39 rawBody620_42

def rawBody620_44 : StackLang.HolProg 64 :=
.seq rawBody620_38 rawBody620_43

def rawBody620_45 : StackLang.HolProg 64 :=
.seq rawBody620_37 rawBody620_44

def rawBody620_46 : StackLang.HolProg 64 :=
.seq rawBody620_36 rawBody620_45

def rawBody620_47 : StackLang.HolProg 64 :=
.seq rawBody620_35 rawBody620_46

def rawBody620_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def rawBody620_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody620_50 : StackLang.HolProg 64 :=
.seq rawBody620_48 rawBody620_49

def rawBody620_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody620_52 : StackLang.HolProg 64 :=
.seq rawBody620_50 rawBody620_51

def rawBody620_53 : StackLang.HolProg 64 :=
.call (some (rawBody620_47, 0, 620, 2)) (Sum.inl 102) (some (rawBody620_52, 620, 3))

def rawBody620_54 : StackLang.HolProg 64 :=
.seq rawBody620_34 rawBody620_53

def rawBody620_55 : StackLang.HolProg 64 :=
.seq rawBody620_33 rawBody620_54

def rawBody620_56 : StackLang.HolProg 64 :=
.seq rawBody620_32 rawBody620_55

def rawBody620_57 : StackLang.HolProg 64 :=
.seq rawBody620_13 rawBody620_56

def rawBody620_58 : StackLang.HolProg 64 :=
.seq rawBody620_10 rawBody620_57

def rawBody620_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody620_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody620_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2300#64)

def rawBody620_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody620_66 : StackLang.HolProg 64 :=
.seq rawBody620_64 rawBody620_65

def rawBody620_67 : StackLang.HolProg 64 :=
.seq rawBody620_63 rawBody620_66

def rawBody620_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody620_70 : StackLang.HolProg 64 :=
.seq rawBody620_68 rawBody620_69

def rawBody620_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody620_67 rawBody620_70

def rawBody620_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody620_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody620_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody620_76 : StackLang.HolProg 64 :=
.seq rawBody620_74 rawBody620_75

def rawBody620_77 : StackLang.HolProg 64 :=
.seq rawBody620_73 rawBody620_76

def rawBody620_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2430#64)

def rawBody620_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_81 : StackLang.HolProg 64 :=
.seq rawBody620_79 rawBody620_80

def rawBody620_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody620_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody620_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 5

def rawBody620_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody620_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody620_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody620_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody620_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_92 : StackLang.HolProg 64 :=
.seq rawBody620_90 rawBody620_91

def rawBody620_93 : StackLang.HolProg 64 :=
.seq rawBody620_89 rawBody620_92

def rawBody620_94 : StackLang.HolProg 64 :=
.seq rawBody620_88 rawBody620_93

def rawBody620_95 : StackLang.HolProg 64 :=
.seq rawBody620_87 rawBody620_94

def rawBody620_96 : StackLang.HolProg 64 :=
.seq rawBody620_86 rawBody620_95

def rawBody620_97 : StackLang.HolProg 64 :=
.seq rawBody620_85 rawBody620_96

def rawBody620_98 : StackLang.HolProg 64 :=
.seq rawBody620_84 rawBody620_97

def rawBody620_99 : StackLang.HolProg 64 :=
.seq rawBody620_83 rawBody620_98

def rawBody620_100 : StackLang.HolProg 64 :=
.seq rawBody620_82 rawBody620_99

def rawBody620_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody620_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody620_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody620_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody620_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody620_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody620_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody620_111 : StackLang.HolProg 64 :=
.seq rawBody620_109 rawBody620_110

def rawBody620_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody620_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody620_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody620_115 : StackLang.HolProg 64 :=
.seq rawBody620_113 rawBody620_114

def rawBody620_116 : StackLang.HolProg 64 :=
.seq rawBody620_112 rawBody620_115

def rawBody620_117 : StackLang.HolProg 64 :=
.seq rawBody620_111 rawBody620_116

def rawBody620_118 : StackLang.HolProg 64 :=
.seq rawBody620_108 rawBody620_117

def rawBody620_119 : StackLang.HolProg 64 :=
.seq rawBody620_107 rawBody620_118

def rawBody620_120 : StackLang.HolProg 64 :=
.seq rawBody620_106 rawBody620_119

def rawBody620_121 : StackLang.HolProg 64 :=
.seq rawBody620_105 rawBody620_120

def rawBody620_122 : StackLang.HolProg 64 :=
.seq rawBody620_104 rawBody620_121

def rawBody620_123 : StackLang.HolProg 64 :=
.seq rawBody620_103 rawBody620_122

def rawBody620_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def rawBody620_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody620_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody620_127 : StackLang.HolProg 64 :=
.seq rawBody620_125 rawBody620_126

def rawBody620_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody620_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 2

def rawBody620_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody620_131 : StackLang.HolProg 64 :=
.seq rawBody620_129 rawBody620_130

def rawBody620_132 : StackLang.HolProg 64 :=
.seq rawBody620_128 rawBody620_131

def rawBody620_133 : StackLang.HolProg 64 :=
.seq rawBody620_127 rawBody620_132

def rawBody620_134 : StackLang.HolProg 64 :=
.seq rawBody620_124 rawBody620_133

def rawBody620_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody620_136 : StackLang.HolProg 64 :=
.seq rawBody620_134 rawBody620_135

def rawBody620_137 : StackLang.HolProg 64 :=
.call (some (rawBody620_123, 0, 620, 4)) (Sum.inl 463) (some (rawBody620_136, 620, 5))

def rawBody620_138 : StackLang.HolProg 64 :=
.seq rawBody620_102 rawBody620_137

def rawBody620_139 : StackLang.HolProg 64 :=
.seq rawBody620_101 rawBody620_138

def rawBody620_140 : StackLang.HolProg 64 :=
.seq rawBody620_100 rawBody620_139

def rawBody620_141 : StackLang.HolProg 64 :=
.seq rawBody620_81 rawBody620_140

def rawBody620_142 : StackLang.HolProg 64 :=
.seq rawBody620_78 rawBody620_141

def rawBody620_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody620_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody620_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody620_149 : StackLang.HolProg 64 :=
.seq rawBody620_147 rawBody620_148

def rawBody620_150 : StackLang.HolProg 64 :=
.seq rawBody620_146 rawBody620_149

def rawBody620_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2431#64)

def rawBody620_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_154 : StackLang.HolProg 64 :=
.seq rawBody620_152 rawBody620_153

def rawBody620_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody620_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody620_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 7

def rawBody620_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody620_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody620_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody620_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody620_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_165 : StackLang.HolProg 64 :=
.seq rawBody620_163 rawBody620_164

def rawBody620_166 : StackLang.HolProg 64 :=
.seq rawBody620_162 rawBody620_165

def rawBody620_167 : StackLang.HolProg 64 :=
.seq rawBody620_161 rawBody620_166

def rawBody620_168 : StackLang.HolProg 64 :=
.seq rawBody620_160 rawBody620_167

def rawBody620_169 : StackLang.HolProg 64 :=
.seq rawBody620_159 rawBody620_168

def rawBody620_170 : StackLang.HolProg 64 :=
.seq rawBody620_158 rawBody620_169

def rawBody620_171 : StackLang.HolProg 64 :=
.seq rawBody620_157 rawBody620_170

def rawBody620_172 : StackLang.HolProg 64 :=
.seq rawBody620_156 rawBody620_171

def rawBody620_173 : StackLang.HolProg 64 :=
.seq rawBody620_155 rawBody620_172

def rawBody620_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody620_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody620_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody620_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody620_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody620_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody620_183 : StackLang.HolProg 64 :=
.seq rawBody620_181 rawBody620_182

def rawBody620_184 : StackLang.HolProg 64 :=
.seq rawBody620_180 rawBody620_183

def rawBody620_185 : StackLang.HolProg 64 :=
.seq rawBody620_179 rawBody620_184

def rawBody620_186 : StackLang.HolProg 64 :=
.seq rawBody620_178 rawBody620_185

def rawBody620_187 : StackLang.HolProg 64 :=
.seq rawBody620_177 rawBody620_186

def rawBody620_188 : StackLang.HolProg 64 :=
.seq rawBody620_176 rawBody620_187

def rawBody620_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def rawBody620_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody620_191 : StackLang.HolProg 64 :=
.seq rawBody620_189 rawBody620_190

def rawBody620_192 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody620_193 : StackLang.HolProg 64 :=
.seq rawBody620_191 rawBody620_192

def rawBody620_194 : StackLang.HolProg 64 :=
.call (some (rawBody620_188, 0, 620, 6)) (Sum.inl 463) (some (rawBody620_193, 620, 7))

def rawBody620_195 : StackLang.HolProg 64 :=
.seq rawBody620_175 rawBody620_194

def rawBody620_196 : StackLang.HolProg 64 :=
.seq rawBody620_174 rawBody620_195

def rawBody620_197 : StackLang.HolProg 64 :=
.seq rawBody620_173 rawBody620_196

def rawBody620_198 : StackLang.HolProg 64 :=
.seq rawBody620_154 rawBody620_197

def rawBody620_199 : StackLang.HolProg 64 :=
.seq rawBody620_151 rawBody620_198

def rawBody620_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody620_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def rawBody620_203 : StackLang.HolProg 64 :=
.seq rawBody620_201 rawBody620_202

def rawBody620_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2432#64)

def rawBody620_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_207 : StackLang.HolProg 64 :=
.seq rawBody620_205 rawBody620_206

def rawBody620_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody620_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody620_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody620_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 620 9

def rawBody620_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody620_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody620_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody620_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody620_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_218 : StackLang.HolProg 64 :=
.seq rawBody620_216 rawBody620_217

def rawBody620_219 : StackLang.HolProg 64 :=
.seq rawBody620_215 rawBody620_218

def rawBody620_220 : StackLang.HolProg 64 :=
.seq rawBody620_214 rawBody620_219

def rawBody620_221 : StackLang.HolProg 64 :=
.seq rawBody620_213 rawBody620_220

def rawBody620_222 : StackLang.HolProg 64 :=
.seq rawBody620_212 rawBody620_221

def rawBody620_223 : StackLang.HolProg 64 :=
.seq rawBody620_211 rawBody620_222

def rawBody620_224 : StackLang.HolProg 64 :=
.seq rawBody620_210 rawBody620_223

def rawBody620_225 : StackLang.HolProg 64 :=
.seq rawBody620_209 rawBody620_224

def rawBody620_226 : StackLang.HolProg 64 :=
.seq rawBody620_208 rawBody620_225

def rawBody620_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody620_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody620_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody620_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody620_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody620_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody620_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody620_236 : StackLang.HolProg 64 :=
.seq rawBody620_234 rawBody620_235

def rawBody620_237 : StackLang.HolProg 64 :=
.seq rawBody620_233 rawBody620_236

def rawBody620_238 : StackLang.HolProg 64 :=
.seq rawBody620_232 rawBody620_237

def rawBody620_239 : StackLang.HolProg 64 :=
.seq rawBody620_231 rawBody620_238

def rawBody620_240 : StackLang.HolProg 64 :=
.seq rawBody620_230 rawBody620_239

def rawBody620_241 : StackLang.HolProg 64 :=
.seq rawBody620_229 rawBody620_240

def rawBody620_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def rawBody620_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody620_244 : StackLang.HolProg 64 :=
.seq rawBody620_242 rawBody620_243

def rawBody620_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody620_246 : StackLang.HolProg 64 :=
.seq rawBody620_244 rawBody620_245

def rawBody620_247 : StackLang.HolProg 64 :=
.call (some (rawBody620_241, 0, 620, 8)) (Sum.inl 463) (some (rawBody620_246, 620, 9))

def rawBody620_248 : StackLang.HolProg 64 :=
.seq rawBody620_228 rawBody620_247

def rawBody620_249 : StackLang.HolProg 64 :=
.seq rawBody620_227 rawBody620_248

def rawBody620_250 : StackLang.HolProg 64 :=
.seq rawBody620_226 rawBody620_249

def rawBody620_251 : StackLang.HolProg 64 :=
.seq rawBody620_207 rawBody620_250

def rawBody620_252 : StackLang.HolProg 64 :=
.seq rawBody620_204 rawBody620_251

def rawBody620_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody620_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody620_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody620_257 : StackLang.HolProg 64 :=
.seq rawBody620_255 rawBody620_256

def rawBody620_258 : StackLang.HolProg 64 :=
.seq rawBody620_254 rawBody620_257

def rawBody620_259 : StackLang.HolProg 64 :=
.seq rawBody620_253 rawBody620_258

def rawBody620_260 : StackLang.HolProg 64 :=
.seq rawBody620_252 rawBody620_259

def rawBody620_261 : StackLang.HolProg 64 :=
.seq rawBody620_203 rawBody620_260

def rawBody620_262 : StackLang.HolProg 64 :=
.seq rawBody620_200 rawBody620_261

def rawBody620_263 : StackLang.HolProg 64 :=
.seq rawBody620_199 rawBody620_262

def rawBody620_264 : StackLang.HolProg 64 :=
.seq rawBody620_150 rawBody620_263

def rawBody620_265 : StackLang.HolProg 64 :=
.seq rawBody620_145 rawBody620_264

def rawBody620_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 5

def rawBody620_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def rawBody620_268 : StackLang.HolProg 64 :=
.seq rawBody620_266 rawBody620_267

def rawBody620_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody620_265 rawBody620_268

def rawBody620_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody620_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody620_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody620_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody620_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody620_282 : StackLang.HolProg 64 :=
.seq rawBody620_280 rawBody620_281

def rawBody620_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_285 : StackLang.HolProg 64 :=
.seq rawBody620_283 rawBody620_284

def rawBody620_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody620_282 rawBody620_285

def rawBody620_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody620_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody620_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody620_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody620_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody620_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 7

def rawBody620_295 : StackLang.HolProg 64 :=
.seq rawBody620_293 rawBody620_294

def rawBody620_296 : StackLang.HolProg 64 :=
.seq rawBody620_292 rawBody620_295

def rawBody620_297 : StackLang.HolProg 64 :=
.seq rawBody620_291 rawBody620_296

def rawBody620_298 : StackLang.HolProg 64 :=
.seq rawBody620_290 rawBody620_297

def rawBody620_299 : StackLang.HolProg 64 :=
.seq rawBody620_289 rawBody620_298

def rawBody620_300 : StackLang.HolProg 64 :=
.seq rawBody620_288 rawBody620_299

def rawBody620_301 : StackLang.HolProg 64 :=
.seq rawBody620_287 rawBody620_300

def rawBody620_302 : StackLang.HolProg 64 :=
.seq rawBody620_286 rawBody620_301

def rawBody620_303 : StackLang.HolProg 64 :=
.seq rawBody620_279 rawBody620_302

def rawBody620_304 : StackLang.HolProg 64 :=
.seq rawBody620_278 rawBody620_303

def rawBody620_305 : StackLang.HolProg 64 :=
.seq rawBody620_277 rawBody620_304

def rawBody620_306 : StackLang.HolProg 64 :=
.seq rawBody620_276 rawBody620_305

def rawBody620_307 : StackLang.HolProg 64 :=
.seq rawBody620_275 rawBody620_306

def rawBody620_308 : StackLang.HolProg 64 :=
.seq rawBody620_274 rawBody620_307

def rawBody620_309 : StackLang.HolProg 64 :=
.seq rawBody620_273 rawBody620_308

def rawBody620_310 : StackLang.HolProg 64 :=
.seq rawBody620_272 rawBody620_309

def rawBody620_311 : StackLang.HolProg 64 :=
.seq rawBody620_271 rawBody620_310

def rawBody620_312 : StackLang.HolProg 64 :=
.seq rawBody620_270 rawBody620_311

def rawBody620_313 : StackLang.HolProg 64 :=
.seq rawBody620_269 rawBody620_312

def rawBody620_314 : StackLang.HolProg 64 :=
.seq rawBody620_144 rawBody620_313

def rawBody620_315 : StackLang.HolProg 64 :=
.seq rawBody620_143 rawBody620_314

def rawBody620_316 : StackLang.HolProg 64 :=
.seq rawBody620_142 rawBody620_315

def rawBody620_317 : StackLang.HolProg 64 :=
.seq rawBody620_77 rawBody620_316

def rawBody620_318 : StackLang.HolProg 64 :=
.seq rawBody620_72 rawBody620_317

def rawBody620_319 : StackLang.HolProg 64 :=
.seq rawBody620_71 rawBody620_318

def rawBody620_320 : StackLang.HolProg 64 :=
.seq rawBody620_62 rawBody620_319

def rawBody620_321 : StackLang.HolProg 64 :=
.seq rawBody620_61 rawBody620_320

def rawBody620_322 : StackLang.HolProg 64 :=
.seq rawBody620_60 rawBody620_321

def rawBody620_323 : StackLang.HolProg 64 :=
.seq rawBody620_59 rawBody620_322

def rawBody620_324 : StackLang.HolProg 64 :=
.seq rawBody620_58 rawBody620_323

def rawBody620_325 : StackLang.HolProg 64 :=
.seq rawBody620_9 rawBody620_324

def rawBody620_326 : StackLang.HolProg 64 :=
.seq rawBody620_0 rawBody620_325

def raw620 : StackLang.HolProg 64 := rawBody620_326
theorem raw620_eq : StackRawCall.compTop RawInfo.rawInfo (function620 (.list [])).1 = raw620 := by
  kernel_rfl
#print axioms raw620_eq
end InitECandidate.Proofs.BackendStages
