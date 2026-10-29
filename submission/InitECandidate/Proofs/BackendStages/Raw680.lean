import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function680
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody680_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody680_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody680_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody680_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody680_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody680_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody680_7 : StackLang.HolProg 64 :=
.seq rawBody680_5 rawBody680_6

def rawBody680_8 : StackLang.HolProg 64 :=
.seq rawBody680_4 rawBody680_7

def rawBody680_9 : StackLang.HolProg 64 :=
.seq rawBody680_3 rawBody680_8

def rawBody680_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2794#64)

def rawBody680_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_13 : StackLang.HolProg 64 :=
.seq rawBody680_11 rawBody680_12

def rawBody680_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody680_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody680_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 3

def rawBody680_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody680_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody680_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody680_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody680_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_24 : StackLang.HolProg 64 :=
.seq rawBody680_22 rawBody680_23

def rawBody680_25 : StackLang.HolProg 64 :=
.seq rawBody680_21 rawBody680_24

def rawBody680_26 : StackLang.HolProg 64 :=
.seq rawBody680_20 rawBody680_25

def rawBody680_27 : StackLang.HolProg 64 :=
.seq rawBody680_19 rawBody680_26

def rawBody680_28 : StackLang.HolProg 64 :=
.seq rawBody680_18 rawBody680_27

def rawBody680_29 : StackLang.HolProg 64 :=
.seq rawBody680_17 rawBody680_28

def rawBody680_30 : StackLang.HolProg 64 :=
.seq rawBody680_16 rawBody680_29

def rawBody680_31 : StackLang.HolProg 64 :=
.seq rawBody680_15 rawBody680_30

def rawBody680_32 : StackLang.HolProg 64 :=
.seq rawBody680_14 rawBody680_31

def rawBody680_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody680_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody680_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody680_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody680_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody680_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody680_42 : StackLang.HolProg 64 :=
.seq rawBody680_40 rawBody680_41

def rawBody680_43 : StackLang.HolProg 64 :=
.seq rawBody680_39 rawBody680_42

def rawBody680_44 : StackLang.HolProg 64 :=
.seq rawBody680_38 rawBody680_43

def rawBody680_45 : StackLang.HolProg 64 :=
.seq rawBody680_37 rawBody680_44

def rawBody680_46 : StackLang.HolProg 64 :=
.seq rawBody680_36 rawBody680_45

def rawBody680_47 : StackLang.HolProg 64 :=
.seq rawBody680_35 rawBody680_46

def rawBody680_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody680_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody680_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody680_51 : StackLang.HolProg 64 :=
.seq rawBody680_49 rawBody680_50

def rawBody680_52 : StackLang.HolProg 64 :=
.seq rawBody680_48 rawBody680_51

def rawBody680_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody680_54 : StackLang.HolProg 64 :=
.seq rawBody680_52 rawBody680_53

def rawBody680_55 : StackLang.HolProg 64 :=
.call (some (rawBody680_47, 0, 680, 2)) (Sum.inl 679) (some (rawBody680_54, 680, 3))

def rawBody680_56 : StackLang.HolProg 64 :=
.seq rawBody680_34 rawBody680_55

def rawBody680_57 : StackLang.HolProg 64 :=
.seq rawBody680_33 rawBody680_56

def rawBody680_58 : StackLang.HolProg 64 :=
.seq rawBody680_32 rawBody680_57

def rawBody680_59 : StackLang.HolProg 64 :=
.seq rawBody680_13 rawBody680_58

def rawBody680_60 : StackLang.HolProg 64 :=
.seq rawBody680_10 rawBody680_59

def rawBody680_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody680_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody680_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody680_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody680_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody680_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody680_67 : StackLang.HolProg 64 :=
.seq rawBody680_65 rawBody680_66

def rawBody680_68 : StackLang.HolProg 64 :=
.seq rawBody680_64 rawBody680_67

def rawBody680_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2795#64)

def rawBody680_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_72 : StackLang.HolProg 64 :=
.seq rawBody680_70 rawBody680_71

def rawBody680_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody680_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody680_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 5

def rawBody680_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody680_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody680_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody680_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody680_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_83 : StackLang.HolProg 64 :=
.seq rawBody680_81 rawBody680_82

def rawBody680_84 : StackLang.HolProg 64 :=
.seq rawBody680_80 rawBody680_83

def rawBody680_85 : StackLang.HolProg 64 :=
.seq rawBody680_79 rawBody680_84

def rawBody680_86 : StackLang.HolProg 64 :=
.seq rawBody680_78 rawBody680_85

def rawBody680_87 : StackLang.HolProg 64 :=
.seq rawBody680_77 rawBody680_86

def rawBody680_88 : StackLang.HolProg 64 :=
.seq rawBody680_76 rawBody680_87

def rawBody680_89 : StackLang.HolProg 64 :=
.seq rawBody680_75 rawBody680_88

def rawBody680_90 : StackLang.HolProg 64 :=
.seq rawBody680_74 rawBody680_89

def rawBody680_91 : StackLang.HolProg 64 :=
.seq rawBody680_73 rawBody680_90

def rawBody680_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody680_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody680_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody680_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody680_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody680_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody680_101 : StackLang.HolProg 64 :=
.seq rawBody680_99 rawBody680_100

def rawBody680_102 : StackLang.HolProg 64 :=
.seq rawBody680_98 rawBody680_101

def rawBody680_103 : StackLang.HolProg 64 :=
.seq rawBody680_97 rawBody680_102

def rawBody680_104 : StackLang.HolProg 64 :=
.seq rawBody680_96 rawBody680_103

def rawBody680_105 : StackLang.HolProg 64 :=
.seq rawBody680_95 rawBody680_104

def rawBody680_106 : StackLang.HolProg 64 :=
.seq rawBody680_94 rawBody680_105

def rawBody680_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody680_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody680_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody680_110 : StackLang.HolProg 64 :=
.seq rawBody680_108 rawBody680_109

def rawBody680_111 : StackLang.HolProg 64 :=
.seq rawBody680_107 rawBody680_110

def rawBody680_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody680_113 : StackLang.HolProg 64 :=
.seq rawBody680_111 rawBody680_112

def rawBody680_114 : StackLang.HolProg 64 :=
.call (some (rawBody680_106, 0, 680, 4)) (Sum.inl 679) (some (rawBody680_113, 680, 5))

def rawBody680_115 : StackLang.HolProg 64 :=
.seq rawBody680_93 rawBody680_114

def rawBody680_116 : StackLang.HolProg 64 :=
.seq rawBody680_92 rawBody680_115

def rawBody680_117 : StackLang.HolProg 64 :=
.seq rawBody680_91 rawBody680_116

def rawBody680_118 : StackLang.HolProg 64 :=
.seq rawBody680_72 rawBody680_117

def rawBody680_119 : StackLang.HolProg 64 :=
.seq rawBody680_69 rawBody680_118

def rawBody680_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody680_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody680_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody680_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody680_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2796#64)

def rawBody680_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_129 : StackLang.HolProg 64 :=
.seq rawBody680_127 rawBody680_128

def rawBody680_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody680_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody680_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody680_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 680 7

def rawBody680_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody680_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody680_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody680_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody680_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_140 : StackLang.HolProg 64 :=
.seq rawBody680_138 rawBody680_139

def rawBody680_141 : StackLang.HolProg 64 :=
.seq rawBody680_137 rawBody680_140

def rawBody680_142 : StackLang.HolProg 64 :=
.seq rawBody680_136 rawBody680_141

def rawBody680_143 : StackLang.HolProg 64 :=
.seq rawBody680_135 rawBody680_142

def rawBody680_144 : StackLang.HolProg 64 :=
.seq rawBody680_134 rawBody680_143

def rawBody680_145 : StackLang.HolProg 64 :=
.seq rawBody680_133 rawBody680_144

def rawBody680_146 : StackLang.HolProg 64 :=
.seq rawBody680_132 rawBody680_145

def rawBody680_147 : StackLang.HolProg 64 :=
.seq rawBody680_131 rawBody680_146

def rawBody680_148 : StackLang.HolProg 64 :=
.seq rawBody680_130 rawBody680_147

def rawBody680_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody680_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody680_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody680_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody680_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody680_156 : StackLang.HolProg 64 :=
.seq rawBody680_154 rawBody680_155

def rawBody680_157 : StackLang.HolProg 64 :=
.seq rawBody680_153 rawBody680_156

def rawBody680_158 : StackLang.HolProg 64 :=
.seq rawBody680_152 rawBody680_157

def rawBody680_159 : StackLang.HolProg 64 :=
.seq rawBody680_151 rawBody680_158

def rawBody680_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody680_161 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody680_162 : StackLang.HolProg 64 :=
.seq rawBody680_160 rawBody680_161

def rawBody680_163 : StackLang.HolProg 64 :=
.call (some (rawBody680_159, 0, 680, 6)) (Sum.inl 678) (some (rawBody680_162, 680, 7))

def rawBody680_164 : StackLang.HolProg 64 :=
.seq rawBody680_150 rawBody680_163

def rawBody680_165 : StackLang.HolProg 64 :=
.seq rawBody680_149 rawBody680_164

def rawBody680_166 : StackLang.HolProg 64 :=
.seq rawBody680_148 rawBody680_165

def rawBody680_167 : StackLang.HolProg 64 :=
.seq rawBody680_129 rawBody680_166

def rawBody680_168 : StackLang.HolProg 64 :=
.seq rawBody680_126 rawBody680_167

def rawBody680_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody680_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody680_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody680_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody680_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody680_174 : StackLang.HolProg 64 :=
.seq rawBody680_172 rawBody680_173

def rawBody680_175 : StackLang.HolProg 64 :=
.seq rawBody680_171 rawBody680_174

def rawBody680_176 : StackLang.HolProg 64 :=
.seq rawBody680_170 rawBody680_175

def rawBody680_177 : StackLang.HolProg 64 :=
.seq rawBody680_169 rawBody680_176

def rawBody680_178 : StackLang.HolProg 64 :=
.seq rawBody680_168 rawBody680_177

def rawBody680_179 : StackLang.HolProg 64 :=
.seq rawBody680_125 rawBody680_178

def rawBody680_180 : StackLang.HolProg 64 :=
.seq rawBody680_124 rawBody680_179

def rawBody680_181 : StackLang.HolProg 64 :=
.seq rawBody680_123 rawBody680_180

def rawBody680_182 : StackLang.HolProg 64 :=
.seq rawBody680_122 rawBody680_181

def rawBody680_183 : StackLang.HolProg 64 :=
.seq rawBody680_121 rawBody680_182

def rawBody680_184 : StackLang.HolProg 64 :=
.seq rawBody680_120 rawBody680_183

def rawBody680_185 : StackLang.HolProg 64 :=
.seq rawBody680_119 rawBody680_184

def rawBody680_186 : StackLang.HolProg 64 :=
.seq rawBody680_68 rawBody680_185

def rawBody680_187 : StackLang.HolProg 64 :=
.seq rawBody680_63 rawBody680_186

def rawBody680_188 : StackLang.HolProg 64 :=
.seq rawBody680_62 rawBody680_187

def rawBody680_189 : StackLang.HolProg 64 :=
.seq rawBody680_61 rawBody680_188

def rawBody680_190 : StackLang.HolProg 64 :=
.seq rawBody680_60 rawBody680_189

def rawBody680_191 : StackLang.HolProg 64 :=
.seq rawBody680_9 rawBody680_190

def rawBody680_192 : StackLang.HolProg 64 :=
.seq rawBody680_2 rawBody680_191

def rawBody680_193 : StackLang.HolProg 64 :=
.seq rawBody680_1 rawBody680_192

def rawBody680_194 : StackLang.HolProg 64 :=
.seq rawBody680_0 rawBody680_193

def raw680 : StackLang.HolProg 64 := rawBody680_194
theorem raw680_eq : StackRawCall.compTop RawInfo.rawInfo (function680 (.list [])).1 = raw680 := by
  kernel_rfl
#print axioms raw680_eq
end InitECandidate.Proofs.BackendStages
