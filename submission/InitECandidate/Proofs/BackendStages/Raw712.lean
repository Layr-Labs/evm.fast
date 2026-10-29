import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function712
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody712_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody712_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody712_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody712_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody712_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody712_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def rawBody712_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody712_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody712_8 : StackLang.HolProg 64 :=
.seq rawBody712_6 rawBody712_7

def rawBody712_9 : StackLang.HolProg 64 :=
.seq rawBody712_5 rawBody712_8

def rawBody712_10 : StackLang.HolProg 64 :=
.seq rawBody712_4 rawBody712_9

def rawBody712_11 : StackLang.HolProg 64 :=
.seq rawBody712_3 rawBody712_10

def rawBody712_12 : StackLang.HolProg 64 :=
.seq rawBody712_2 rawBody712_11

def rawBody712_13 : StackLang.HolProg 64 :=
.seq rawBody712_1 rawBody712_12

def rawBody712_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3156#64)

def rawBody712_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody712_17 : StackLang.HolProg 64 :=
.seq rawBody712_15 rawBody712_16

def rawBody712_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody712_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody712_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody712_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 3

def rawBody712_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody712_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody712_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody712_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody712_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody712_28 : StackLang.HolProg 64 :=
.seq rawBody712_26 rawBody712_27

def rawBody712_29 : StackLang.HolProg 64 :=
.seq rawBody712_25 rawBody712_28

def rawBody712_30 : StackLang.HolProg 64 :=
.seq rawBody712_24 rawBody712_29

def rawBody712_31 : StackLang.HolProg 64 :=
.seq rawBody712_23 rawBody712_30

def rawBody712_32 : StackLang.HolProg 64 :=
.seq rawBody712_22 rawBody712_31

def rawBody712_33 : StackLang.HolProg 64 :=
.seq rawBody712_21 rawBody712_32

def rawBody712_34 : StackLang.HolProg 64 :=
.seq rawBody712_20 rawBody712_33

def rawBody712_35 : StackLang.HolProg 64 :=
.seq rawBody712_19 rawBody712_34

def rawBody712_36 : StackLang.HolProg 64 :=
.seq rawBody712_18 rawBody712_35

def rawBody712_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody712_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody712_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody712_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody712_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody712_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 7

def rawBody712_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody712_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody712_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def rawBody712_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody712_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def rawBody712_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody712_51 : StackLang.HolProg 64 :=
.seq rawBody712_49 rawBody712_50

def rawBody712_52 : StackLang.HolProg 64 :=
.seq rawBody712_48 rawBody712_51

def rawBody712_53 : StackLang.HolProg 64 :=
.seq rawBody712_47 rawBody712_52

def rawBody712_54 : StackLang.HolProg 64 :=
.seq rawBody712_46 rawBody712_53

def rawBody712_55 : StackLang.HolProg 64 :=
.seq rawBody712_45 rawBody712_54

def rawBody712_56 : StackLang.HolProg 64 :=
.seq rawBody712_44 rawBody712_55

def rawBody712_57 : StackLang.HolProg 64 :=
.seq rawBody712_43 rawBody712_56

def rawBody712_58 : StackLang.HolProg 64 :=
.seq rawBody712_42 rawBody712_57

def rawBody712_59 : StackLang.HolProg 64 :=
.seq rawBody712_41 rawBody712_58

def rawBody712_60 : StackLang.HolProg 64 :=
.seq rawBody712_40 rawBody712_59

def rawBody712_61 : StackLang.HolProg 64 :=
.seq rawBody712_39 rawBody712_60

def rawBody712_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 7

def rawBody712_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def rawBody712_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody712_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def rawBody712_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody712_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def rawBody712_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody712_69 : StackLang.HolProg 64 :=
.seq rawBody712_67 rawBody712_68

def rawBody712_70 : StackLang.HolProg 64 :=
.seq rawBody712_66 rawBody712_69

def rawBody712_71 : StackLang.HolProg 64 :=
.seq rawBody712_65 rawBody712_70

def rawBody712_72 : StackLang.HolProg 64 :=
.seq rawBody712_64 rawBody712_71

def rawBody712_73 : StackLang.HolProg 64 :=
.seq rawBody712_63 rawBody712_72

def rawBody712_74 : StackLang.HolProg 64 :=
.seq rawBody712_62 rawBody712_73

def rawBody712_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody712_76 : StackLang.HolProg 64 :=
.seq rawBody712_74 rawBody712_75

def rawBody712_77 : StackLang.HolProg 64 :=
.call (some (rawBody712_61, 0, 712, 2)) (Sum.inl 705) (some (rawBody712_76, 712, 3))

def rawBody712_78 : StackLang.HolProg 64 :=
.seq rawBody712_38 rawBody712_77

def rawBody712_79 : StackLang.HolProg 64 :=
.seq rawBody712_37 rawBody712_78

def rawBody712_80 : StackLang.HolProg 64 :=
.seq rawBody712_36 rawBody712_79

def rawBody712_81 : StackLang.HolProg 64 :=
.seq rawBody712_17 rawBody712_80

def rawBody712_82 : StackLang.HolProg 64 :=
.seq rawBody712_14 rawBody712_81

def rawBody712_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody712_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody712_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody712_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody712_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody712_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody712_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody712_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody712_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody712_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody712_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def rawBody712_96 : StackLang.HolProg 64 :=
.seq rawBody712_94 rawBody712_95

def rawBody712_97 : StackLang.HolProg 64 :=
.seq rawBody712_93 rawBody712_96

def rawBody712_98 : StackLang.HolProg 64 :=
.seq rawBody712_92 rawBody712_97

def rawBody712_99 : StackLang.HolProg 64 :=
.seq rawBody712_91 rawBody712_98

def rawBody712_100 : StackLang.HolProg 64 :=
.seq rawBody712_90 rawBody712_99

def rawBody712_101 : StackLang.HolProg 64 :=
.seq rawBody712_89 rawBody712_100

def rawBody712_102 : StackLang.HolProg 64 :=
.seq rawBody712_88 rawBody712_101

def rawBody712_103 : StackLang.HolProg 64 :=
.seq rawBody712_87 rawBody712_102

def rawBody712_104 : StackLang.HolProg 64 :=
.seq rawBody712_86 rawBody712_103

def rawBody712_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody712_104 rawBody712_105

def rawBody712_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody712_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody712_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1873798617647539866#64)

def rawBody712_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 5412103778470702295#64)

def rawBody712_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7239337960414712511#64)

def rawBody712_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7435674573564081700#64)

def rawBody712_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2210141511517208575#64)

def rawBody712_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13402431016077863595#64)

def rawBody712_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 7

def rawBody712_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3157#64)

def rawBody712_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody712_120 : StackLang.HolProg 64 :=
.seq rawBody712_118 rawBody712_119

def rawBody712_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody712_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody712_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody712_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 5

def rawBody712_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody712_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody712_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody712_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody712_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody712_131 : StackLang.HolProg 64 :=
.seq rawBody712_129 rawBody712_130

def rawBody712_132 : StackLang.HolProg 64 :=
.seq rawBody712_128 rawBody712_131

def rawBody712_133 : StackLang.HolProg 64 :=
.seq rawBody712_127 rawBody712_132

def rawBody712_134 : StackLang.HolProg 64 :=
.seq rawBody712_126 rawBody712_133

def rawBody712_135 : StackLang.HolProg 64 :=
.seq rawBody712_125 rawBody712_134

def rawBody712_136 : StackLang.HolProg 64 :=
.seq rawBody712_124 rawBody712_135

def rawBody712_137 : StackLang.HolProg 64 :=
.seq rawBody712_123 rawBody712_136

def rawBody712_138 : StackLang.HolProg 64 :=
.seq rawBody712_122 rawBody712_137

def rawBody712_139 : StackLang.HolProg 64 :=
.seq rawBody712_121 rawBody712_138

def rawBody712_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody712_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody712_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody712_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody712_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody712_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody712_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody712_148 : StackLang.HolProg 64 :=
.seq rawBody712_146 rawBody712_147

def rawBody712_149 : StackLang.HolProg 64 :=
.seq rawBody712_145 rawBody712_148

def rawBody712_150 : StackLang.HolProg 64 :=
.seq rawBody712_144 rawBody712_149

def rawBody712_151 : StackLang.HolProg 64 :=
.seq rawBody712_143 rawBody712_150

def rawBody712_152 : StackLang.HolProg 64 :=
.seq rawBody712_142 rawBody712_151

def rawBody712_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def rawBody712_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody712_155 : StackLang.HolProg 64 :=
.seq rawBody712_153 rawBody712_154

def rawBody712_156 : StackLang.HolProg 64 :=
.call (some (rawBody712_152, 0, 712, 4)) (Sum.inl 709) (some (rawBody712_155, 712, 5))

def rawBody712_157 : StackLang.HolProg 64 :=
.seq rawBody712_141 rawBody712_156

def rawBody712_158 : StackLang.HolProg 64 :=
.seq rawBody712_140 rawBody712_157

def rawBody712_159 : StackLang.HolProg 64 :=
.seq rawBody712_139 rawBody712_158

def rawBody712_160 : StackLang.HolProg 64 :=
.seq rawBody712_120 rawBody712_159

def rawBody712_161 : StackLang.HolProg 64 :=
.seq rawBody712_117 rawBody712_160

def rawBody712_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody712_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody712_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody712_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody712_166 : StackLang.HolProg 64 :=
.seq rawBody712_164 rawBody712_165

def rawBody712_167 : StackLang.HolProg 64 :=
.seq rawBody712_163 rawBody712_166

def rawBody712_168 : StackLang.HolProg 64 :=
.seq rawBody712_162 rawBody712_167

def rawBody712_169 : StackLang.HolProg 64 :=
.seq rawBody712_161 rawBody712_168

def rawBody712_170 : StackLang.HolProg 64 :=
.seq rawBody712_116 rawBody712_169

def rawBody712_171 : StackLang.HolProg 64 :=
.seq rawBody712_115 rawBody712_170

def rawBody712_172 : StackLang.HolProg 64 :=
.seq rawBody712_114 rawBody712_171

def rawBody712_173 : StackLang.HolProg 64 :=
.seq rawBody712_113 rawBody712_172

def rawBody712_174 : StackLang.HolProg 64 :=
.seq rawBody712_112 rawBody712_173

def rawBody712_175 : StackLang.HolProg 64 :=
.seq rawBody712_111 rawBody712_174

def rawBody712_176 : StackLang.HolProg 64 :=
.seq rawBody712_110 rawBody712_175

def rawBody712_177 : StackLang.HolProg 64 :=
.seq rawBody712_109 rawBody712_176

def rawBody712_178 : StackLang.HolProg 64 :=
.seq rawBody712_108 rawBody712_177

def rawBody712_179 : StackLang.HolProg 64 :=
.seq rawBody712_107 rawBody712_178

def rawBody712_180 : StackLang.HolProg 64 :=
.seq rawBody712_106 rawBody712_179

def rawBody712_181 : StackLang.HolProg 64 :=
.seq rawBody712_85 rawBody712_180

def rawBody712_182 : StackLang.HolProg 64 :=
.seq rawBody712_84 rawBody712_181

def rawBody712_183 : StackLang.HolProg 64 :=
.seq rawBody712_83 rawBody712_182

def rawBody712_184 : StackLang.HolProg 64 :=
.seq rawBody712_82 rawBody712_183

def rawBody712_185 : StackLang.HolProg 64 :=
.seq rawBody712_13 rawBody712_184

def rawBody712_186 : StackLang.HolProg 64 :=
.seq rawBody712_0 rawBody712_185

def raw712 : StackLang.HolProg 64 := rawBody712_186
theorem raw712_eq : StackRawCall.compTop RawInfo.rawInfo (function712 (.list [])).1 = raw712 := by
  kernel_rfl
#print axioms raw712_eq
end InitECandidate.Proofs.BackendStages
