import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function292
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody292_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody292_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody292_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody292_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody292_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody292_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def rawBody292_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody292_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody292_8 : StackLang.HolProg 64 :=
.seq rawBody292_6 rawBody292_7

def rawBody292_9 : StackLang.HolProg 64 :=
.seq rawBody292_5 rawBody292_8

def rawBody292_10 : StackLang.HolProg 64 :=
.seq rawBody292_4 rawBody292_9

def rawBody292_11 : StackLang.HolProg 64 :=
.seq rawBody292_3 rawBody292_10

def rawBody292_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 794#64)

def rawBody292_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_15 : StackLang.HolProg 64 :=
.seq rawBody292_13 rawBody292_14

def rawBody292_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody292_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody292_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 3

def rawBody292_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody292_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody292_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody292_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody292_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_26 : StackLang.HolProg 64 :=
.seq rawBody292_24 rawBody292_25

def rawBody292_27 : StackLang.HolProg 64 :=
.seq rawBody292_23 rawBody292_26

def rawBody292_28 : StackLang.HolProg 64 :=
.seq rawBody292_22 rawBody292_27

def rawBody292_29 : StackLang.HolProg 64 :=
.seq rawBody292_21 rawBody292_28

def rawBody292_30 : StackLang.HolProg 64 :=
.seq rawBody292_20 rawBody292_29

def rawBody292_31 : StackLang.HolProg 64 :=
.seq rawBody292_19 rawBody292_30

def rawBody292_32 : StackLang.HolProg 64 :=
.seq rawBody292_18 rawBody292_31

def rawBody292_33 : StackLang.HolProg 64 :=
.seq rawBody292_17 rawBody292_32

def rawBody292_34 : StackLang.HolProg 64 :=
.seq rawBody292_16 rawBody292_33

def rawBody292_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody292_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody292_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody292_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody292_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody292_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody292_44 : StackLang.HolProg 64 :=
.seq rawBody292_42 rawBody292_43

def rawBody292_45 : StackLang.HolProg 64 :=
.seq rawBody292_41 rawBody292_44

def rawBody292_46 : StackLang.HolProg 64 :=
.seq rawBody292_40 rawBody292_45

def rawBody292_47 : StackLang.HolProg 64 :=
.seq rawBody292_39 rawBody292_46

def rawBody292_48 : StackLang.HolProg 64 :=
.seq rawBody292_38 rawBody292_47

def rawBody292_49 : StackLang.HolProg 64 :=
.seq rawBody292_37 rawBody292_48

def rawBody292_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody292_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody292_52 : StackLang.HolProg 64 :=
.seq rawBody292_50 rawBody292_51

def rawBody292_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody292_54 : StackLang.HolProg 64 :=
.seq rawBody292_52 rawBody292_53

def rawBody292_55 : StackLang.HolProg 64 :=
.call (some (rawBody292_49, 0, 292, 2)) (Sum.inl 68) (some (rawBody292_54, 292, 3))

def rawBody292_56 : StackLang.HolProg 64 :=
.seq rawBody292_36 rawBody292_55

def rawBody292_57 : StackLang.HolProg 64 :=
.seq rawBody292_35 rawBody292_56

def rawBody292_58 : StackLang.HolProg 64 :=
.seq rawBody292_34 rawBody292_57

def rawBody292_59 : StackLang.HolProg 64 :=
.seq rawBody292_15 rawBody292_58

def rawBody292_60 : StackLang.HolProg 64 :=
.seq rawBody292_12 rawBody292_59

def rawBody292_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody292_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody292_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody292_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody292_65 : StackLang.HolProg 64 :=
.seq rawBody292_63 rawBody292_64

def rawBody292_66 : StackLang.HolProg 64 :=
.seq rawBody292_62 rawBody292_65

def rawBody292_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 795#64)

def rawBody292_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_70 : StackLang.HolProg 64 :=
.seq rawBody292_68 rawBody292_69

def rawBody292_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody292_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody292_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 5

def rawBody292_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody292_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody292_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody292_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody292_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_81 : StackLang.HolProg 64 :=
.seq rawBody292_79 rawBody292_80

def rawBody292_82 : StackLang.HolProg 64 :=
.seq rawBody292_78 rawBody292_81

def rawBody292_83 : StackLang.HolProg 64 :=
.seq rawBody292_77 rawBody292_82

def rawBody292_84 : StackLang.HolProg 64 :=
.seq rawBody292_76 rawBody292_83

def rawBody292_85 : StackLang.HolProg 64 :=
.seq rawBody292_75 rawBody292_84

def rawBody292_86 : StackLang.HolProg 64 :=
.seq rawBody292_74 rawBody292_85

def rawBody292_87 : StackLang.HolProg 64 :=
.seq rawBody292_73 rawBody292_86

def rawBody292_88 : StackLang.HolProg 64 :=
.seq rawBody292_72 rawBody292_87

def rawBody292_89 : StackLang.HolProg 64 :=
.seq rawBody292_71 rawBody292_88

def rawBody292_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody292_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody292_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody292_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody292_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody292_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody292_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody292_100 : StackLang.HolProg 64 :=
.seq rawBody292_98 rawBody292_99

def rawBody292_101 : StackLang.HolProg 64 :=
.seq rawBody292_97 rawBody292_100

def rawBody292_102 : StackLang.HolProg 64 :=
.seq rawBody292_96 rawBody292_101

def rawBody292_103 : StackLang.HolProg 64 :=
.seq rawBody292_95 rawBody292_102

def rawBody292_104 : StackLang.HolProg 64 :=
.seq rawBody292_94 rawBody292_103

def rawBody292_105 : StackLang.HolProg 64 :=
.seq rawBody292_93 rawBody292_104

def rawBody292_106 : StackLang.HolProg 64 :=
.seq rawBody292_92 rawBody292_105

def rawBody292_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody292_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody292_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody292_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody292_111 : StackLang.HolProg 64 :=
.seq rawBody292_109 rawBody292_110

def rawBody292_112 : StackLang.HolProg 64 :=
.seq rawBody292_108 rawBody292_111

def rawBody292_113 : StackLang.HolProg 64 :=
.seq rawBody292_107 rawBody292_112

def rawBody292_114 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody292_115 : StackLang.HolProg 64 :=
.seq rawBody292_113 rawBody292_114

def rawBody292_116 : StackLang.HolProg 64 :=
.call (some (rawBody292_106, 0, 292, 4)) (Sum.inl 77) (some (rawBody292_115, 292, 5))

def rawBody292_117 : StackLang.HolProg 64 :=
.seq rawBody292_91 rawBody292_116

def rawBody292_118 : StackLang.HolProg 64 :=
.seq rawBody292_90 rawBody292_117

def rawBody292_119 : StackLang.HolProg 64 :=
.seq rawBody292_89 rawBody292_118

def rawBody292_120 : StackLang.HolProg 64 :=
.seq rawBody292_70 rawBody292_119

def rawBody292_121 : StackLang.HolProg 64 :=
.seq rawBody292_67 rawBody292_120

def rawBody292_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody292_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody292_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody292_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 796#64)

def rawBody292_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_129 : StackLang.HolProg 64 :=
.seq rawBody292_127 rawBody292_128

def rawBody292_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody292_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody292_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody292_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 292 7

def rawBody292_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody292_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody292_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody292_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody292_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_140 : StackLang.HolProg 64 :=
.seq rawBody292_138 rawBody292_139

def rawBody292_141 : StackLang.HolProg 64 :=
.seq rawBody292_137 rawBody292_140

def rawBody292_142 : StackLang.HolProg 64 :=
.seq rawBody292_136 rawBody292_141

def rawBody292_143 : StackLang.HolProg 64 :=
.seq rawBody292_135 rawBody292_142

def rawBody292_144 : StackLang.HolProg 64 :=
.seq rawBody292_134 rawBody292_143

def rawBody292_145 : StackLang.HolProg 64 :=
.seq rawBody292_133 rawBody292_144

def rawBody292_146 : StackLang.HolProg 64 :=
.seq rawBody292_132 rawBody292_145

def rawBody292_147 : StackLang.HolProg 64 :=
.seq rawBody292_131 rawBody292_146

def rawBody292_148 : StackLang.HolProg 64 :=
.seq rawBody292_130 rawBody292_147

def rawBody292_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody292_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody292_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody292_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody292_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody292_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody292_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody292_157 : StackLang.HolProg 64 :=
.seq rawBody292_155 rawBody292_156

def rawBody292_158 : StackLang.HolProg 64 :=
.seq rawBody292_154 rawBody292_157

def rawBody292_159 : StackLang.HolProg 64 :=
.seq rawBody292_153 rawBody292_158

def rawBody292_160 : StackLang.HolProg 64 :=
.seq rawBody292_152 rawBody292_159

def rawBody292_161 : StackLang.HolProg 64 :=
.seq rawBody292_151 rawBody292_160

def rawBody292_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody292_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 4

def rawBody292_164 : StackLang.HolProg 64 :=
.seq rawBody292_162 rawBody292_163

def rawBody292_165 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody292_166 : StackLang.HolProg 64 :=
.seq rawBody292_164 rawBody292_165

def rawBody292_167 : StackLang.HolProg 64 :=
.call (some (rawBody292_161, 0, 292, 6)) (Sum.inl 77) (some (rawBody292_166, 292, 7))

def rawBody292_168 : StackLang.HolProg 64 :=
.seq rawBody292_150 rawBody292_167

def rawBody292_169 : StackLang.HolProg 64 :=
.seq rawBody292_149 rawBody292_168

def rawBody292_170 : StackLang.HolProg 64 :=
.seq rawBody292_148 rawBody292_169

def rawBody292_171 : StackLang.HolProg 64 :=
.seq rawBody292_129 rawBody292_170

def rawBody292_172 : StackLang.HolProg 64 :=
.seq rawBody292_126 rawBody292_171

def rawBody292_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody292_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody292_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody292_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody292_177 : StackLang.HolProg 64 :=
.seq rawBody292_175 rawBody292_176

def rawBody292_178 : StackLang.HolProg 64 :=
.seq rawBody292_174 rawBody292_177

def rawBody292_179 : StackLang.HolProg 64 :=
.seq rawBody292_173 rawBody292_178

def rawBody292_180 : StackLang.HolProg 64 :=
.seq rawBody292_172 rawBody292_179

def rawBody292_181 : StackLang.HolProg 64 :=
.seq rawBody292_125 rawBody292_180

def rawBody292_182 : StackLang.HolProg 64 :=
.seq rawBody292_124 rawBody292_181

def rawBody292_183 : StackLang.HolProg 64 :=
.seq rawBody292_123 rawBody292_182

def rawBody292_184 : StackLang.HolProg 64 :=
.seq rawBody292_122 rawBody292_183

def rawBody292_185 : StackLang.HolProg 64 :=
.seq rawBody292_121 rawBody292_184

def rawBody292_186 : StackLang.HolProg 64 :=
.seq rawBody292_66 rawBody292_185

def rawBody292_187 : StackLang.HolProg 64 :=
.seq rawBody292_61 rawBody292_186

def rawBody292_188 : StackLang.HolProg 64 :=
.seq rawBody292_60 rawBody292_187

def rawBody292_189 : StackLang.HolProg 64 :=
.seq rawBody292_11 rawBody292_188

def rawBody292_190 : StackLang.HolProg 64 :=
.seq rawBody292_2 rawBody292_189

def rawBody292_191 : StackLang.HolProg 64 :=
.seq rawBody292_1 rawBody292_190

def rawBody292_192 : StackLang.HolProg 64 :=
.seq rawBody292_0 rawBody292_191

def raw292 : StackLang.HolProg 64 := rawBody292_192
theorem raw292_eq : StackRawCall.compTop RawInfo.rawInfo (function292 (.list [])).1 = raw292 := by
  kernel_rfl
#print axioms raw292_eq
end InitECandidate.Proofs.BackendStages
