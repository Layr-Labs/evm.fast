import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw712
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody712_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody712_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody712_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody712_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody712_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody712_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody712_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody712_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody712_8 : StackLang.HolProg 64 :=
.seq AllocBody712_6 AllocBody712_7

def AllocBody712_9 : StackLang.HolProg 64 :=
.seq AllocBody712_5 AllocBody712_8

def AllocBody712_10 : StackLang.HolProg 64 :=
.seq AllocBody712_4 AllocBody712_9

def AllocBody712_11 : StackLang.HolProg 64 :=
.seq AllocBody712_3 AllocBody712_10

def AllocBody712_12 : StackLang.HolProg 64 :=
.seq AllocBody712_2 AllocBody712_11

def AllocBody712_13 : StackLang.HolProg 64 :=
.seq AllocBody712_1 AllocBody712_12

def AllocBody712_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3156#64)

def AllocBody712_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody712_17 : StackLang.HolProg 64 :=
.seq AllocBody712_15 AllocBody712_16

def AllocBody712_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody712_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody712_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody712_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 3

def AllocBody712_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody712_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody712_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody712_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody712_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody712_28 : StackLang.HolProg 64 :=
.seq AllocBody712_26 AllocBody712_27

def AllocBody712_29 : StackLang.HolProg 64 :=
.seq AllocBody712_25 AllocBody712_28

def AllocBody712_30 : StackLang.HolProg 64 :=
.seq AllocBody712_24 AllocBody712_29

def AllocBody712_31 : StackLang.HolProg 64 :=
.seq AllocBody712_23 AllocBody712_30

def AllocBody712_32 : StackLang.HolProg 64 :=
.seq AllocBody712_22 AllocBody712_31

def AllocBody712_33 : StackLang.HolProg 64 :=
.seq AllocBody712_21 AllocBody712_32

def AllocBody712_34 : StackLang.HolProg 64 :=
.seq AllocBody712_20 AllocBody712_33

def AllocBody712_35 : StackLang.HolProg 64 :=
.seq AllocBody712_19 AllocBody712_34

def AllocBody712_36 : StackLang.HolProg 64 :=
.seq AllocBody712_18 AllocBody712_35

def AllocBody712_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody712_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody712_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody712_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody712_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody712_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 7

def AllocBody712_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody712_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody712_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody712_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody712_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def AllocBody712_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody712_51 : StackLang.HolProg 64 :=
.seq AllocBody712_49 AllocBody712_50

def AllocBody712_52 : StackLang.HolProg 64 :=
.seq AllocBody712_48 AllocBody712_51

def AllocBody712_53 : StackLang.HolProg 64 :=
.seq AllocBody712_47 AllocBody712_52

def AllocBody712_54 : StackLang.HolProg 64 :=
.seq AllocBody712_46 AllocBody712_53

def AllocBody712_55 : StackLang.HolProg 64 :=
.seq AllocBody712_45 AllocBody712_54

def AllocBody712_56 : StackLang.HolProg 64 :=
.seq AllocBody712_44 AllocBody712_55

def AllocBody712_57 : StackLang.HolProg 64 :=
.seq AllocBody712_43 AllocBody712_56

def AllocBody712_58 : StackLang.HolProg 64 :=
.seq AllocBody712_42 AllocBody712_57

def AllocBody712_59 : StackLang.HolProg 64 :=
.seq AllocBody712_41 AllocBody712_58

def AllocBody712_60 : StackLang.HolProg 64 :=
.seq AllocBody712_40 AllocBody712_59

def AllocBody712_61 : StackLang.HolProg 64 :=
.seq AllocBody712_39 AllocBody712_60

def AllocBody712_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 7

def AllocBody712_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 6

def AllocBody712_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody712_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 4

def AllocBody712_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody712_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def AllocBody712_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody712_69 : StackLang.HolProg 64 :=
.seq AllocBody712_67 AllocBody712_68

def AllocBody712_70 : StackLang.HolProg 64 :=
.seq AllocBody712_66 AllocBody712_69

def AllocBody712_71 : StackLang.HolProg 64 :=
.seq AllocBody712_65 AllocBody712_70

def AllocBody712_72 : StackLang.HolProg 64 :=
.seq AllocBody712_64 AllocBody712_71

def AllocBody712_73 : StackLang.HolProg 64 :=
.seq AllocBody712_63 AllocBody712_72

def AllocBody712_74 : StackLang.HolProg 64 :=
.seq AllocBody712_62 AllocBody712_73

def AllocBody712_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody712_76 : StackLang.HolProg 64 :=
.seq AllocBody712_74 AllocBody712_75

def AllocBody712_77 : StackLang.HolProg 64 :=
.call (some (AllocBody712_61, 0, 712, 2)) (Sum.inl 705) (some (AllocBody712_76, 712, 3))

def AllocBody712_78 : StackLang.HolProg 64 :=
.seq AllocBody712_38 AllocBody712_77

def AllocBody712_79 : StackLang.HolProg 64 :=
.seq AllocBody712_37 AllocBody712_78

def AllocBody712_80 : StackLang.HolProg 64 :=
.seq AllocBody712_36 AllocBody712_79

def AllocBody712_81 : StackLang.HolProg 64 :=
.seq AllocBody712_17 AllocBody712_80

def AllocBody712_82 : StackLang.HolProg 64 :=
.seq AllocBody712_14 AllocBody712_81

def AllocBody712_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody712_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody712_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody712_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody712_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody712_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody712_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody712_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody712_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody712_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody712_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 13

def AllocBody712_96 : StackLang.HolProg 64 :=
.seq AllocBody712_94 AllocBody712_95

def AllocBody712_97 : StackLang.HolProg 64 :=
.seq AllocBody712_93 AllocBody712_96

def AllocBody712_98 : StackLang.HolProg 64 :=
.seq AllocBody712_92 AllocBody712_97

def AllocBody712_99 : StackLang.HolProg 64 :=
.seq AllocBody712_91 AllocBody712_98

def AllocBody712_100 : StackLang.HolProg 64 :=
.seq AllocBody712_90 AllocBody712_99

def AllocBody712_101 : StackLang.HolProg 64 :=
.seq AllocBody712_89 AllocBody712_100

def AllocBody712_102 : StackLang.HolProg 64 :=
.seq AllocBody712_88 AllocBody712_101

def AllocBody712_103 : StackLang.HolProg 64 :=
.seq AllocBody712_87 AllocBody712_102

def AllocBody712_104 : StackLang.HolProg 64 :=
.seq AllocBody712_86 AllocBody712_103

def AllocBody712_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody712_104 AllocBody712_105

def AllocBody712_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody712_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody712_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1873798617647539866#64)

def AllocBody712_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 5412103778470702295#64)

def AllocBody712_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 7239337960414712511#64)

def AllocBody712_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 7435674573564081700#64)

def AllocBody712_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 2210141511517208575#64)

def AllocBody712_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13402431016077863595#64)

def AllocBody712_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 7

def AllocBody712_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3157#64)

def AllocBody712_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody712_120 : StackLang.HolProg 64 :=
.seq AllocBody712_118 AllocBody712_119

def AllocBody712_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody712_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody712_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody712_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 712 5

def AllocBody712_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody712_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody712_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody712_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody712_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody712_131 : StackLang.HolProg 64 :=
.seq AllocBody712_129 AllocBody712_130

def AllocBody712_132 : StackLang.HolProg 64 :=
.seq AllocBody712_128 AllocBody712_131

def AllocBody712_133 : StackLang.HolProg 64 :=
.seq AllocBody712_127 AllocBody712_132

def AllocBody712_134 : StackLang.HolProg 64 :=
.seq AllocBody712_126 AllocBody712_133

def AllocBody712_135 : StackLang.HolProg 64 :=
.seq AllocBody712_125 AllocBody712_134

def AllocBody712_136 : StackLang.HolProg 64 :=
.seq AllocBody712_124 AllocBody712_135

def AllocBody712_137 : StackLang.HolProg 64 :=
.seq AllocBody712_123 AllocBody712_136

def AllocBody712_138 : StackLang.HolProg 64 :=
.seq AllocBody712_122 AllocBody712_137

def AllocBody712_139 : StackLang.HolProg 64 :=
.seq AllocBody712_121 AllocBody712_138

def AllocBody712_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody712_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody712_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody712_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody712_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody712_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody712_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody712_148 : StackLang.HolProg 64 :=
.seq AllocBody712_146 AllocBody712_147

def AllocBody712_149 : StackLang.HolProg 64 :=
.seq AllocBody712_145 AllocBody712_148

def AllocBody712_150 : StackLang.HolProg 64 :=
.seq AllocBody712_144 AllocBody712_149

def AllocBody712_151 : StackLang.HolProg 64 :=
.seq AllocBody712_143 AllocBody712_150

def AllocBody712_152 : StackLang.HolProg 64 :=
.seq AllocBody712_142 AllocBody712_151

def AllocBody712_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody712_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody712_155 : StackLang.HolProg 64 :=
.seq AllocBody712_153 AllocBody712_154

def AllocBody712_156 : StackLang.HolProg 64 :=
.call (some (AllocBody712_152, 0, 712, 4)) (Sum.inl 709) (some (AllocBody712_155, 712, 5))

def AllocBody712_157 : StackLang.HolProg 64 :=
.seq AllocBody712_141 AllocBody712_156

def AllocBody712_158 : StackLang.HolProg 64 :=
.seq AllocBody712_140 AllocBody712_157

def AllocBody712_159 : StackLang.HolProg 64 :=
.seq AllocBody712_139 AllocBody712_158

def AllocBody712_160 : StackLang.HolProg 64 :=
.seq AllocBody712_120 AllocBody712_159

def AllocBody712_161 : StackLang.HolProg 64 :=
.seq AllocBody712_117 AllocBody712_160

def AllocBody712_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody712_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody712_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody712_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody712_166 : StackLang.HolProg 64 :=
.seq AllocBody712_164 AllocBody712_165

def AllocBody712_167 : StackLang.HolProg 64 :=
.seq AllocBody712_163 AllocBody712_166

def AllocBody712_168 : StackLang.HolProg 64 :=
.seq AllocBody712_162 AllocBody712_167

def AllocBody712_169 : StackLang.HolProg 64 :=
.seq AllocBody712_161 AllocBody712_168

def AllocBody712_170 : StackLang.HolProg 64 :=
.seq AllocBody712_116 AllocBody712_169

def AllocBody712_171 : StackLang.HolProg 64 :=
.seq AllocBody712_115 AllocBody712_170

def AllocBody712_172 : StackLang.HolProg 64 :=
.seq AllocBody712_114 AllocBody712_171

def AllocBody712_173 : StackLang.HolProg 64 :=
.seq AllocBody712_113 AllocBody712_172

def AllocBody712_174 : StackLang.HolProg 64 :=
.seq AllocBody712_112 AllocBody712_173

def AllocBody712_175 : StackLang.HolProg 64 :=
.seq AllocBody712_111 AllocBody712_174

def AllocBody712_176 : StackLang.HolProg 64 :=
.seq AllocBody712_110 AllocBody712_175

def AllocBody712_177 : StackLang.HolProg 64 :=
.seq AllocBody712_109 AllocBody712_176

def AllocBody712_178 : StackLang.HolProg 64 :=
.seq AllocBody712_108 AllocBody712_177

def AllocBody712_179 : StackLang.HolProg 64 :=
.seq AllocBody712_107 AllocBody712_178

def AllocBody712_180 : StackLang.HolProg 64 :=
.seq AllocBody712_106 AllocBody712_179

def AllocBody712_181 : StackLang.HolProg 64 :=
.seq AllocBody712_85 AllocBody712_180

def AllocBody712_182 : StackLang.HolProg 64 :=
.seq AllocBody712_84 AllocBody712_181

def AllocBody712_183 : StackLang.HolProg 64 :=
.seq AllocBody712_83 AllocBody712_182

def AllocBody712_184 : StackLang.HolProg 64 :=
.seq AllocBody712_82 AllocBody712_183

def AllocBody712_185 : StackLang.HolProg 64 :=
.seq AllocBody712_13 AllocBody712_184

def AllocBody712_186 : StackLang.HolProg 64 :=
.seq AllocBody712_0 AllocBody712_185

def Alloc712 : Nat × StackLang.HolProg 64 := (712, AllocBody712_186)
theorem Alloc712_eq : StackAlloc.progComp (712, raw712) = Alloc712 := by
  kernel_rfl
#print axioms Alloc712_eq
end InitECandidate.Proofs.BackendStages
