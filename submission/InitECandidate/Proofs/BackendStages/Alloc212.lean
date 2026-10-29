import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw212
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody212_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def AllocBody212_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def AllocBody212_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def AllocBody212_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 11

def AllocBody212_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 10

def AllocBody212_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody212_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def AllocBody212_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody212_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody212_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 5

def AllocBody212_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody212_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody212_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def AllocBody212_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody212_14 : StackLang.HolProg 64 :=
.seq AllocBody212_12 AllocBody212_13

def AllocBody212_15 : StackLang.HolProg 64 :=
.seq AllocBody212_11 AllocBody212_14

def AllocBody212_16 : StackLang.HolProg 64 :=
.seq AllocBody212_10 AllocBody212_15

def AllocBody212_17 : StackLang.HolProg 64 :=
.seq AllocBody212_9 AllocBody212_16

def AllocBody212_18 : StackLang.HolProg 64 :=
.seq AllocBody212_8 AllocBody212_17

def AllocBody212_19 : StackLang.HolProg 64 :=
.seq AllocBody212_7 AllocBody212_18

def AllocBody212_20 : StackLang.HolProg 64 :=
.seq AllocBody212_6 AllocBody212_19

def AllocBody212_21 : StackLang.HolProg 64 :=
.seq AllocBody212_5 AllocBody212_20

def AllocBody212_22 : StackLang.HolProg 64 :=
.seq AllocBody212_4 AllocBody212_21

def AllocBody212_23 : StackLang.HolProg 64 :=
.seq AllocBody212_3 AllocBody212_22

def AllocBody212_24 : StackLang.HolProg 64 :=
.seq AllocBody212_2 AllocBody212_23

def AllocBody212_25 : StackLang.HolProg 64 :=
.seq AllocBody212_1 AllocBody212_24

def AllocBody212_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 271#64)

def AllocBody212_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_29 : StackLang.HolProg 64 :=
.seq AllocBody212_27 AllocBody212_28

def AllocBody212_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody212_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody212_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 3

def AllocBody212_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody212_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody212_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody212_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody212_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_40 : StackLang.HolProg 64 :=
.seq AllocBody212_38 AllocBody212_39

def AllocBody212_41 : StackLang.HolProg 64 :=
.seq AllocBody212_37 AllocBody212_40

def AllocBody212_42 : StackLang.HolProg 64 :=
.seq AllocBody212_36 AllocBody212_41

def AllocBody212_43 : StackLang.HolProg 64 :=
.seq AllocBody212_35 AllocBody212_42

def AllocBody212_44 : StackLang.HolProg 64 :=
.seq AllocBody212_34 AllocBody212_43

def AllocBody212_45 : StackLang.HolProg 64 :=
.seq AllocBody212_33 AllocBody212_44

def AllocBody212_46 : StackLang.HolProg 64 :=
.seq AllocBody212_32 AllocBody212_45

def AllocBody212_47 : StackLang.HolProg 64 :=
.seq AllocBody212_31 AllocBody212_46

def AllocBody212_48 : StackLang.HolProg 64 :=
.seq AllocBody212_30 AllocBody212_47

def AllocBody212_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody212_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody212_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody212_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody212_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody212_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody212_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody212_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody212_60 : StackLang.HolProg 64 :=
.seq AllocBody212_58 AllocBody212_59

def AllocBody212_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody212_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody212_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody212_64 : StackLang.HolProg 64 :=
.seq AllocBody212_62 AllocBody212_63

def AllocBody212_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody212_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody212_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody212_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody212_69 : StackLang.HolProg 64 :=
.seq AllocBody212_67 AllocBody212_68

def AllocBody212_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody212_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody212_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody212_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody212_74 : StackLang.HolProg 64 :=
.seq AllocBody212_72 AllocBody212_73

def AllocBody212_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody212_76 : StackLang.HolProg 64 :=
.seq AllocBody212_74 AllocBody212_75

def AllocBody212_77 : StackLang.HolProg 64 :=
.seq AllocBody212_71 AllocBody212_76

def AllocBody212_78 : StackLang.HolProg 64 :=
.seq AllocBody212_70 AllocBody212_77

def AllocBody212_79 : StackLang.HolProg 64 :=
.seq AllocBody212_69 AllocBody212_78

def AllocBody212_80 : StackLang.HolProg 64 :=
.seq AllocBody212_66 AllocBody212_79

def AllocBody212_81 : StackLang.HolProg 64 :=
.seq AllocBody212_65 AllocBody212_80

def AllocBody212_82 : StackLang.HolProg 64 :=
.seq AllocBody212_64 AllocBody212_81

def AllocBody212_83 : StackLang.HolProg 64 :=
.seq AllocBody212_61 AllocBody212_82

def AllocBody212_84 : StackLang.HolProg 64 :=
.seq AllocBody212_60 AllocBody212_83

def AllocBody212_85 : StackLang.HolProg 64 :=
.seq AllocBody212_57 AllocBody212_84

def AllocBody212_86 : StackLang.HolProg 64 :=
.seq AllocBody212_56 AllocBody212_85

def AllocBody212_87 : StackLang.HolProg 64 :=
.seq AllocBody212_55 AllocBody212_86

def AllocBody212_88 : StackLang.HolProg 64 :=
.seq AllocBody212_54 AllocBody212_87

def AllocBody212_89 : StackLang.HolProg 64 :=
.seq AllocBody212_53 AllocBody212_88

def AllocBody212_90 : StackLang.HolProg 64 :=
.seq AllocBody212_52 AllocBody212_89

def AllocBody212_91 : StackLang.HolProg 64 :=
.seq AllocBody212_51 AllocBody212_90

def AllocBody212_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody212_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 11

def AllocBody212_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody212_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody212_96 : StackLang.HolProg 64 :=
.seq AllocBody212_94 AllocBody212_95

def AllocBody212_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def AllocBody212_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody212_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody212_100 : StackLang.HolProg 64 :=
.seq AllocBody212_98 AllocBody212_99

def AllocBody212_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 7

def AllocBody212_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody212_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody212_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody212_105 : StackLang.HolProg 64 :=
.seq AllocBody212_103 AllocBody212_104

def AllocBody212_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody212_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody212_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody212_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody212_110 : StackLang.HolProg 64 :=
.seq AllocBody212_108 AllocBody212_109

def AllocBody212_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody212_112 : StackLang.HolProg 64 :=
.seq AllocBody212_110 AllocBody212_111

def AllocBody212_113 : StackLang.HolProg 64 :=
.seq AllocBody212_107 AllocBody212_112

def AllocBody212_114 : StackLang.HolProg 64 :=
.seq AllocBody212_106 AllocBody212_113

def AllocBody212_115 : StackLang.HolProg 64 :=
.seq AllocBody212_105 AllocBody212_114

def AllocBody212_116 : StackLang.HolProg 64 :=
.seq AllocBody212_102 AllocBody212_115

def AllocBody212_117 : StackLang.HolProg 64 :=
.seq AllocBody212_101 AllocBody212_116

def AllocBody212_118 : StackLang.HolProg 64 :=
.seq AllocBody212_100 AllocBody212_117

def AllocBody212_119 : StackLang.HolProg 64 :=
.seq AllocBody212_97 AllocBody212_118

def AllocBody212_120 : StackLang.HolProg 64 :=
.seq AllocBody212_96 AllocBody212_119

def AllocBody212_121 : StackLang.HolProg 64 :=
.seq AllocBody212_93 AllocBody212_120

def AllocBody212_122 : StackLang.HolProg 64 :=
.seq AllocBody212_92 AllocBody212_121

def AllocBody212_123 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody212_124 : StackLang.HolProg 64 :=
.seq AllocBody212_122 AllocBody212_123

def AllocBody212_125 : StackLang.HolProg 64 :=
.call (some (AllocBody212_91, 0, 212, 2)) (Sum.inl 106) (some (AllocBody212_124, 212, 3))

def AllocBody212_126 : StackLang.HolProg 64 :=
.seq AllocBody212_50 AllocBody212_125

def AllocBody212_127 : StackLang.HolProg 64 :=
.seq AllocBody212_49 AllocBody212_126

def AllocBody212_128 : StackLang.HolProg 64 :=
.seq AllocBody212_48 AllocBody212_127

def AllocBody212_129 : StackLang.HolProg 64 :=
.seq AllocBody212_29 AllocBody212_128

def AllocBody212_130 : StackLang.HolProg 64 :=
.seq AllocBody212_26 AllocBody212_129

def AllocBody212_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody212_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 10

def AllocBody212_134 : StackLang.HolProg 64 :=
.seq AllocBody212_132 AllocBody212_133

def AllocBody212_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 272#64)

def AllocBody212_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_138 : StackLang.HolProg 64 :=
.seq AllocBody212_136 AllocBody212_137

def AllocBody212_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody212_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody212_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 5

def AllocBody212_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody212_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody212_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody212_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody212_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_149 : StackLang.HolProg 64 :=
.seq AllocBody212_147 AllocBody212_148

def AllocBody212_150 : StackLang.HolProg 64 :=
.seq AllocBody212_146 AllocBody212_149

def AllocBody212_151 : StackLang.HolProg 64 :=
.seq AllocBody212_145 AllocBody212_150

def AllocBody212_152 : StackLang.HolProg 64 :=
.seq AllocBody212_144 AllocBody212_151

def AllocBody212_153 : StackLang.HolProg 64 :=
.seq AllocBody212_143 AllocBody212_152

def AllocBody212_154 : StackLang.HolProg 64 :=
.seq AllocBody212_142 AllocBody212_153

def AllocBody212_155 : StackLang.HolProg 64 :=
.seq AllocBody212_141 AllocBody212_154

def AllocBody212_156 : StackLang.HolProg 64 :=
.seq AllocBody212_140 AllocBody212_155

def AllocBody212_157 : StackLang.HolProg 64 :=
.seq AllocBody212_139 AllocBody212_156

def AllocBody212_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody212_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody212_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody212_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody212_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody212_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def AllocBody212_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody212_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody212_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody212_170 : StackLang.HolProg 64 :=
.seq AllocBody212_168 AllocBody212_169

def AllocBody212_171 : StackLang.HolProg 64 :=
.seq AllocBody212_167 AllocBody212_170

def AllocBody212_172 : StackLang.HolProg 64 :=
.seq AllocBody212_166 AllocBody212_171

def AllocBody212_173 : StackLang.HolProg 64 :=
.seq AllocBody212_165 AllocBody212_172

def AllocBody212_174 : StackLang.HolProg 64 :=
.seq AllocBody212_164 AllocBody212_173

def AllocBody212_175 : StackLang.HolProg 64 :=
.seq AllocBody212_163 AllocBody212_174

def AllocBody212_176 : StackLang.HolProg 64 :=
.seq AllocBody212_162 AllocBody212_175

def AllocBody212_177 : StackLang.HolProg 64 :=
.seq AllocBody212_161 AllocBody212_176

def AllocBody212_178 : StackLang.HolProg 64 :=
.seq AllocBody212_160 AllocBody212_177

def AllocBody212_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody212_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 11

def AllocBody212_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 10

def AllocBody212_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 9

def AllocBody212_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 8

def AllocBody212_184 : StackLang.HolProg 64 :=
.seq AllocBody212_182 AllocBody212_183

def AllocBody212_185 : StackLang.HolProg 64 :=
.seq AllocBody212_181 AllocBody212_184

def AllocBody212_186 : StackLang.HolProg 64 :=
.seq AllocBody212_180 AllocBody212_185

def AllocBody212_187 : StackLang.HolProg 64 :=
.seq AllocBody212_179 AllocBody212_186

def AllocBody212_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody212_189 : StackLang.HolProg 64 :=
.seq AllocBody212_187 AllocBody212_188

def AllocBody212_190 : StackLang.HolProg 64 :=
.call (some (AllocBody212_178, 0, 212, 4)) (Sum.inl 117) (some (AllocBody212_189, 212, 5))

def AllocBody212_191 : StackLang.HolProg 64 :=
.seq AllocBody212_159 AllocBody212_190

def AllocBody212_192 : StackLang.HolProg 64 :=
.seq AllocBody212_158 AllocBody212_191

def AllocBody212_193 : StackLang.HolProg 64 :=
.seq AllocBody212_157 AllocBody212_192

def AllocBody212_194 : StackLang.HolProg 64 :=
.seq AllocBody212_138 AllocBody212_193

def AllocBody212_195 : StackLang.HolProg 64 :=
.seq AllocBody212_135 AllocBody212_194

def AllocBody212_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody212_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody212_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 273#64)

def AllocBody212_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_204 : StackLang.HolProg 64 :=
.seq AllocBody212_202 AllocBody212_203

def AllocBody212_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody212_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody212_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody212_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 212 7

def AllocBody212_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody212_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody212_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody212_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody212_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_215 : StackLang.HolProg 64 :=
.seq AllocBody212_213 AllocBody212_214

def AllocBody212_216 : StackLang.HolProg 64 :=
.seq AllocBody212_212 AllocBody212_215

def AllocBody212_217 : StackLang.HolProg 64 :=
.seq AllocBody212_211 AllocBody212_216

def AllocBody212_218 : StackLang.HolProg 64 :=
.seq AllocBody212_210 AllocBody212_217

def AllocBody212_219 : StackLang.HolProg 64 :=
.seq AllocBody212_209 AllocBody212_218

def AllocBody212_220 : StackLang.HolProg 64 :=
.seq AllocBody212_208 AllocBody212_219

def AllocBody212_221 : StackLang.HolProg 64 :=
.seq AllocBody212_207 AllocBody212_220

def AllocBody212_222 : StackLang.HolProg 64 :=
.seq AllocBody212_206 AllocBody212_221

def AllocBody212_223 : StackLang.HolProg 64 :=
.seq AllocBody212_205 AllocBody212_222

def AllocBody212_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody212_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody212_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody212_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody212_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody212_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody212_232 : StackLang.HolProg 64 :=
.seq AllocBody212_230 AllocBody212_231

def AllocBody212_233 : StackLang.HolProg 64 :=
.seq AllocBody212_229 AllocBody212_232

def AllocBody212_234 : StackLang.HolProg 64 :=
.seq AllocBody212_228 AllocBody212_233

def AllocBody212_235 : StackLang.HolProg 64 :=
.seq AllocBody212_227 AllocBody212_234

def AllocBody212_236 : StackLang.HolProg 64 :=
.seq AllocBody212_226 AllocBody212_235

def AllocBody212_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody212_238 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody212_239 : StackLang.HolProg 64 :=
.seq AllocBody212_237 AllocBody212_238

def AllocBody212_240 : StackLang.HolProg 64 :=
.call (some (AllocBody212_236, 0, 212, 6)) (Sum.inl 116) (some (AllocBody212_239, 212, 7))

def AllocBody212_241 : StackLang.HolProg 64 :=
.seq AllocBody212_225 AllocBody212_240

def AllocBody212_242 : StackLang.HolProg 64 :=
.seq AllocBody212_224 AllocBody212_241

def AllocBody212_243 : StackLang.HolProg 64 :=
.seq AllocBody212_223 AllocBody212_242

def AllocBody212_244 : StackLang.HolProg 64 :=
.seq AllocBody212_204 AllocBody212_243

def AllocBody212_245 : StackLang.HolProg 64 :=
.seq AllocBody212_201 AllocBody212_244

def AllocBody212_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody212_248 : StackLang.HolProg 64 :=
.seq AllocBody212_246 AllocBody212_247

def AllocBody212_249 : StackLang.HolProg 64 :=
.seq AllocBody212_245 AllocBody212_248

def AllocBody212_250 : StackLang.HolProg 64 :=
.seq AllocBody212_200 AllocBody212_249

def AllocBody212_251 : StackLang.HolProg 64 :=
.seq AllocBody212_199 AllocBody212_250

def AllocBody212_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody212_254 : StackLang.HolProg 64 :=
.seq AllocBody212_252 AllocBody212_253

def AllocBody212_255 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody212_251 AllocBody212_254

def AllocBody212_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody212_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody212_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def AllocBody212_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody212_260 : StackLang.HolProg 64 :=
.seq AllocBody212_258 AllocBody212_259

def AllocBody212_261 : StackLang.HolProg 64 :=
.seq AllocBody212_257 AllocBody212_260

def AllocBody212_262 : StackLang.HolProg 64 :=
.seq AllocBody212_256 AllocBody212_261

def AllocBody212_263 : StackLang.HolProg 64 :=
.seq AllocBody212_255 AllocBody212_262

def AllocBody212_264 : StackLang.HolProg 64 :=
.seq AllocBody212_198 AllocBody212_263

def AllocBody212_265 : StackLang.HolProg 64 :=
.seq AllocBody212_197 AllocBody212_264

def AllocBody212_266 : StackLang.HolProg 64 :=
.seq AllocBody212_196 AllocBody212_265

def AllocBody212_267 : StackLang.HolProg 64 :=
.seq AllocBody212_195 AllocBody212_266

def AllocBody212_268 : StackLang.HolProg 64 :=
.seq AllocBody212_134 AllocBody212_267

def AllocBody212_269 : StackLang.HolProg 64 :=
.seq AllocBody212_131 AllocBody212_268

def AllocBody212_270 : StackLang.HolProg 64 :=
.seq AllocBody212_130 AllocBody212_269

def AllocBody212_271 : StackLang.HolProg 64 :=
.seq AllocBody212_25 AllocBody212_270

def AllocBody212_272 : StackLang.HolProg 64 :=
.seq AllocBody212_0 AllocBody212_271

def Alloc212 : Nat × StackLang.HolProg 64 := (212, AllocBody212_272)
theorem Alloc212_eq : StackAlloc.progComp (212, raw212) = Alloc212 := by
  kernel_rfl
#print axioms Alloc212_eq
end InitECandidate.Proofs.BackendStages
