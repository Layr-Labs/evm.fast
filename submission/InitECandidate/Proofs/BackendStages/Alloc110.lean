import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw110
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody110_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody110_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody110_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 8

def AllocBody110_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody110_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def AllocBody110_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody110_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody110_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def AllocBody110_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody110_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody110_10 : StackLang.HolProg 64 :=
.seq AllocBody110_8 AllocBody110_9

def AllocBody110_11 : StackLang.HolProg 64 :=
.seq AllocBody110_7 AllocBody110_10

def AllocBody110_12 : StackLang.HolProg 64 :=
.seq AllocBody110_6 AllocBody110_11

def AllocBody110_13 : StackLang.HolProg 64 :=
.seq AllocBody110_5 AllocBody110_12

def AllocBody110_14 : StackLang.HolProg 64 :=
.seq AllocBody110_4 AllocBody110_13

def AllocBody110_15 : StackLang.HolProg 64 :=
.seq AllocBody110_3 AllocBody110_14

def AllocBody110_16 : StackLang.HolProg 64 :=
.seq AllocBody110_2 AllocBody110_15

def AllocBody110_17 : StackLang.HolProg 64 :=
.seq AllocBody110_1 AllocBody110_16

def AllocBody110_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 45#64)

def AllocBody110_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody110_21 : StackLang.HolProg 64 :=
.seq AllocBody110_19 AllocBody110_20

def AllocBody110_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody110_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody110_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody110_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 3

def AllocBody110_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody110_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody110_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody110_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody110_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody110_32 : StackLang.HolProg 64 :=
.seq AllocBody110_30 AllocBody110_31

def AllocBody110_33 : StackLang.HolProg 64 :=
.seq AllocBody110_29 AllocBody110_32

def AllocBody110_34 : StackLang.HolProg 64 :=
.seq AllocBody110_28 AllocBody110_33

def AllocBody110_35 : StackLang.HolProg 64 :=
.seq AllocBody110_27 AllocBody110_34

def AllocBody110_36 : StackLang.HolProg 64 :=
.seq AllocBody110_26 AllocBody110_35

def AllocBody110_37 : StackLang.HolProg 64 :=
.seq AllocBody110_25 AllocBody110_36

def AllocBody110_38 : StackLang.HolProg 64 :=
.seq AllocBody110_24 AllocBody110_37

def AllocBody110_39 : StackLang.HolProg 64 :=
.seq AllocBody110_23 AllocBody110_38

def AllocBody110_40 : StackLang.HolProg 64 :=
.seq AllocBody110_22 AllocBody110_39

def AllocBody110_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody110_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody110_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody110_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody110_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody110_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody110_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody110_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody110_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody110_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody110_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody110_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody110_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody110_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody110_57 : StackLang.HolProg 64 :=
.seq AllocBody110_55 AllocBody110_56

def AllocBody110_58 : StackLang.HolProg 64 :=
.seq AllocBody110_54 AllocBody110_57

def AllocBody110_59 : StackLang.HolProg 64 :=
.seq AllocBody110_53 AllocBody110_58

def AllocBody110_60 : StackLang.HolProg 64 :=
.seq AllocBody110_52 AllocBody110_59

def AllocBody110_61 : StackLang.HolProg 64 :=
.seq AllocBody110_51 AllocBody110_60

def AllocBody110_62 : StackLang.HolProg 64 :=
.seq AllocBody110_50 AllocBody110_61

def AllocBody110_63 : StackLang.HolProg 64 :=
.seq AllocBody110_49 AllocBody110_62

def AllocBody110_64 : StackLang.HolProg 64 :=
.seq AllocBody110_48 AllocBody110_63

def AllocBody110_65 : StackLang.HolProg 64 :=
.seq AllocBody110_47 AllocBody110_64

def AllocBody110_66 : StackLang.HolProg 64 :=
.seq AllocBody110_46 AllocBody110_65

def AllocBody110_67 : StackLang.HolProg 64 :=
.seq AllocBody110_45 AllocBody110_66

def AllocBody110_68 : StackLang.HolProg 64 :=
.seq AllocBody110_44 AllocBody110_67

def AllocBody110_69 : StackLang.HolProg 64 :=
.seq AllocBody110_43 AllocBody110_68

def AllocBody110_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody110_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody110_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 7

def AllocBody110_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody110_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody110_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody110_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody110_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody110_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody110_79 : StackLang.HolProg 64 :=
.seq AllocBody110_77 AllocBody110_78

def AllocBody110_80 : StackLang.HolProg 64 :=
.seq AllocBody110_76 AllocBody110_79

def AllocBody110_81 : StackLang.HolProg 64 :=
.seq AllocBody110_75 AllocBody110_80

def AllocBody110_82 : StackLang.HolProg 64 :=
.seq AllocBody110_74 AllocBody110_81

def AllocBody110_83 : StackLang.HolProg 64 :=
.seq AllocBody110_73 AllocBody110_82

def AllocBody110_84 : StackLang.HolProg 64 :=
.seq AllocBody110_72 AllocBody110_83

def AllocBody110_85 : StackLang.HolProg 64 :=
.seq AllocBody110_71 AllocBody110_84

def AllocBody110_86 : StackLang.HolProg 64 :=
.seq AllocBody110_70 AllocBody110_85

def AllocBody110_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody110_88 : StackLang.HolProg 64 :=
.seq AllocBody110_86 AllocBody110_87

def AllocBody110_89 : StackLang.HolProg 64 :=
.call (some (AllocBody110_69, 0, 110, 2)) (Sum.inl 106) (some (AllocBody110_88, 110, 3))

def AllocBody110_90 : StackLang.HolProg 64 :=
.seq AllocBody110_42 AllocBody110_89

def AllocBody110_91 : StackLang.HolProg 64 :=
.seq AllocBody110_41 AllocBody110_90

def AllocBody110_92 : StackLang.HolProg 64 :=
.seq AllocBody110_40 AllocBody110_91

def AllocBody110_93 : StackLang.HolProg 64 :=
.seq AllocBody110_21 AllocBody110_92

def AllocBody110_94 : StackLang.HolProg 64 :=
.seq AllocBody110_18 AllocBody110_93

def AllocBody110_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody110_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody110_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody110_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody110_103 : StackLang.HolProg 64 :=
.seq AllocBody110_101 AllocBody110_102

def AllocBody110_104 : StackLang.HolProg 64 :=
.seq AllocBody110_100 AllocBody110_103

def AllocBody110_105 : StackLang.HolProg 64 :=
.seq AllocBody110_99 AllocBody110_104

def AllocBody110_106 : StackLang.HolProg 64 :=
.seq AllocBody110_98 AllocBody110_105

def AllocBody110_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_108 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody110_106 AllocBody110_107

def AllocBody110_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody110_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 9

def AllocBody110_113 : StackLang.HolProg 64 :=
.seq AllocBody110_111 AllocBody110_112

def AllocBody110_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 46#64)

def AllocBody110_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody110_117 : StackLang.HolProg 64 :=
.seq AllocBody110_115 AllocBody110_116

def AllocBody110_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody110_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody110_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody110_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 110 5

def AllocBody110_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody110_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody110_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody110_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody110_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody110_128 : StackLang.HolProg 64 :=
.seq AllocBody110_126 AllocBody110_127

def AllocBody110_129 : StackLang.HolProg 64 :=
.seq AllocBody110_125 AllocBody110_128

def AllocBody110_130 : StackLang.HolProg 64 :=
.seq AllocBody110_124 AllocBody110_129

def AllocBody110_131 : StackLang.HolProg 64 :=
.seq AllocBody110_123 AllocBody110_130

def AllocBody110_132 : StackLang.HolProg 64 :=
.seq AllocBody110_122 AllocBody110_131

def AllocBody110_133 : StackLang.HolProg 64 :=
.seq AllocBody110_121 AllocBody110_132

def AllocBody110_134 : StackLang.HolProg 64 :=
.seq AllocBody110_120 AllocBody110_133

def AllocBody110_135 : StackLang.HolProg 64 :=
.seq AllocBody110_119 AllocBody110_134

def AllocBody110_136 : StackLang.HolProg 64 :=
.seq AllocBody110_118 AllocBody110_135

def AllocBody110_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody110_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody110_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody110_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody110_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody110_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody110_145 : StackLang.HolProg 64 :=
.seq AllocBody110_143 AllocBody110_144

def AllocBody110_146 : StackLang.HolProg 64 :=
.seq AllocBody110_142 AllocBody110_145

def AllocBody110_147 : StackLang.HolProg 64 :=
.seq AllocBody110_141 AllocBody110_146

def AllocBody110_148 : StackLang.HolProg 64 :=
.seq AllocBody110_140 AllocBody110_147

def AllocBody110_149 : StackLang.HolProg 64 :=
.seq AllocBody110_139 AllocBody110_148

def AllocBody110_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody110_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody110_152 : StackLang.HolProg 64 :=
.seq AllocBody110_150 AllocBody110_151

def AllocBody110_153 : StackLang.HolProg 64 :=
.call (some (AllocBody110_149, 0, 110, 4)) (Sum.inl 105) (some (AllocBody110_152, 110, 5))

def AllocBody110_154 : StackLang.HolProg 64 :=
.seq AllocBody110_138 AllocBody110_153

def AllocBody110_155 : StackLang.HolProg 64 :=
.seq AllocBody110_137 AllocBody110_154

def AllocBody110_156 : StackLang.HolProg 64 :=
.seq AllocBody110_136 AllocBody110_155

def AllocBody110_157 : StackLang.HolProg 64 :=
.seq AllocBody110_117 AllocBody110_156

def AllocBody110_158 : StackLang.HolProg 64 :=
.seq AllocBody110_114 AllocBody110_157

def AllocBody110_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody110_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody110_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody110_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody110_167 : StackLang.HolProg 64 :=
.seq AllocBody110_165 AllocBody110_166

def AllocBody110_168 : StackLang.HolProg 64 :=
.seq AllocBody110_164 AllocBody110_167

def AllocBody110_169 : StackLang.HolProg 64 :=
.seq AllocBody110_163 AllocBody110_168

def AllocBody110_170 : StackLang.HolProg 64 :=
.seq AllocBody110_162 AllocBody110_169

def AllocBody110_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody110_170 AllocBody110_171

def AllocBody110_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody110_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody110_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody110_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody110_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def AllocBody110_179 : StackLang.HolProg 64 :=
.seq AllocBody110_177 AllocBody110_178

def AllocBody110_180 : StackLang.HolProg 64 :=
.seq AllocBody110_176 AllocBody110_179

def AllocBody110_181 : StackLang.HolProg 64 :=
.seq AllocBody110_175 AllocBody110_180

def AllocBody110_182 : StackLang.HolProg 64 :=
.seq AllocBody110_174 AllocBody110_181

def AllocBody110_183 : StackLang.HolProg 64 :=
.seq AllocBody110_173 AllocBody110_182

def AllocBody110_184 : StackLang.HolProg 64 :=
.seq AllocBody110_172 AllocBody110_183

def AllocBody110_185 : StackLang.HolProg 64 :=
.seq AllocBody110_161 AllocBody110_184

def AllocBody110_186 : StackLang.HolProg 64 :=
.seq AllocBody110_160 AllocBody110_185

def AllocBody110_187 : StackLang.HolProg 64 :=
.seq AllocBody110_159 AllocBody110_186

def AllocBody110_188 : StackLang.HolProg 64 :=
.seq AllocBody110_158 AllocBody110_187

def AllocBody110_189 : StackLang.HolProg 64 :=
.seq AllocBody110_113 AllocBody110_188

def AllocBody110_190 : StackLang.HolProg 64 :=
.seq AllocBody110_110 AllocBody110_189

def AllocBody110_191 : StackLang.HolProg 64 :=
.seq AllocBody110_109 AllocBody110_190

def AllocBody110_192 : StackLang.HolProg 64 :=
.seq AllocBody110_108 AllocBody110_191

def AllocBody110_193 : StackLang.HolProg 64 :=
.seq AllocBody110_97 AllocBody110_192

def AllocBody110_194 : StackLang.HolProg 64 :=
.seq AllocBody110_96 AllocBody110_193

def AllocBody110_195 : StackLang.HolProg 64 :=
.seq AllocBody110_95 AllocBody110_194

def AllocBody110_196 : StackLang.HolProg 64 :=
.seq AllocBody110_94 AllocBody110_195

def AllocBody110_197 : StackLang.HolProg 64 :=
.seq AllocBody110_17 AllocBody110_196

def AllocBody110_198 : StackLang.HolProg 64 :=
.seq AllocBody110_0 AllocBody110_197

def Alloc110 : Nat × StackLang.HolProg 64 := (110, AllocBody110_198)
theorem Alloc110_eq : StackAlloc.progComp (110, raw110) = Alloc110 := by
  kernel_rfl
#print axioms Alloc110_eq
end InitECandidate.Proofs.BackendStages
