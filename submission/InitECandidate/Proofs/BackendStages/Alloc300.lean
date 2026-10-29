import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw300
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody300_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 10

def AllocBody300_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def AllocBody300_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody300_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody300_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 7

def AllocBody300_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody300_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody300_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody300_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 9

def AllocBody300_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody300_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody300_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 6

def AllocBody300_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody300_14 : StackLang.HolProg 64 :=
.seq AllocBody300_12 AllocBody300_13

def AllocBody300_15 : StackLang.HolProg 64 :=
.seq AllocBody300_11 AllocBody300_14

def AllocBody300_16 : StackLang.HolProg 64 :=
.seq AllocBody300_10 AllocBody300_15

def AllocBody300_17 : StackLang.HolProg 64 :=
.seq AllocBody300_9 AllocBody300_16

def AllocBody300_18 : StackLang.HolProg 64 :=
.seq AllocBody300_8 AllocBody300_17

def AllocBody300_19 : StackLang.HolProg 64 :=
.seq AllocBody300_7 AllocBody300_18

def AllocBody300_20 : StackLang.HolProg 64 :=
.seq AllocBody300_6 AllocBody300_19

def AllocBody300_21 : StackLang.HolProg 64 :=
.seq AllocBody300_5 AllocBody300_20

def AllocBody300_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 806#64)

def AllocBody300_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_25 : StackLang.HolProg 64 :=
.seq AllocBody300_23 AllocBody300_24

def AllocBody300_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody300_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody300_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 5

def AllocBody300_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody300_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody300_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_36 : StackLang.HolProg 64 :=
.seq AllocBody300_34 AllocBody300_35

def AllocBody300_37 : StackLang.HolProg 64 :=
.seq AllocBody300_33 AllocBody300_36

def AllocBody300_38 : StackLang.HolProg 64 :=
.seq AllocBody300_32 AllocBody300_37

def AllocBody300_39 : StackLang.HolProg 64 :=
.seq AllocBody300_31 AllocBody300_38

def AllocBody300_40 : StackLang.HolProg 64 :=
.seq AllocBody300_30 AllocBody300_39

def AllocBody300_41 : StackLang.HolProg 64 :=
.seq AllocBody300_29 AllocBody300_40

def AllocBody300_42 : StackLang.HolProg 64 :=
.seq AllocBody300_28 AllocBody300_41

def AllocBody300_43 : StackLang.HolProg 64 :=
.seq AllocBody300_27 AllocBody300_42

def AllocBody300_44 : StackLang.HolProg 64 :=
.seq AllocBody300_26 AllocBody300_43

def AllocBody300_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody300_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody300_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def AllocBody300_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody300_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody300_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody300_55 : StackLang.HolProg 64 :=
.seq AllocBody300_53 AllocBody300_54

def AllocBody300_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 7

def AllocBody300_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody300_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 6

def AllocBody300_59 : StackLang.HolProg 64 :=
.seq AllocBody300_57 AllocBody300_58

def AllocBody300_60 : StackLang.HolProg 64 :=
.seq AllocBody300_56 AllocBody300_59

def AllocBody300_61 : StackLang.HolProg 64 :=
.seq AllocBody300_55 AllocBody300_60

def AllocBody300_62 : StackLang.HolProg 64 :=
.seq AllocBody300_52 AllocBody300_61

def AllocBody300_63 : StackLang.HolProg 64 :=
.seq AllocBody300_51 AllocBody300_62

def AllocBody300_64 : StackLang.HolProg 64 :=
.seq AllocBody300_50 AllocBody300_63

def AllocBody300_65 : StackLang.HolProg 64 :=
.seq AllocBody300_49 AllocBody300_64

def AllocBody300_66 : StackLang.HolProg 64 :=
.seq AllocBody300_48 AllocBody300_65

def AllocBody300_67 : StackLang.HolProg 64 :=
.seq AllocBody300_47 AllocBody300_66

def AllocBody300_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 23 3

def AllocBody300_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody300_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody300_71 : StackLang.HolProg 64 :=
.seq AllocBody300_69 AllocBody300_70

def AllocBody300_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody300_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def AllocBody300_74 : StackLang.HolProg 64 :=
.seq AllocBody300_72 AllocBody300_73

def AllocBody300_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody300_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody300_77 : StackLang.HolProg 64 :=
.seq AllocBody300_75 AllocBody300_76

def AllocBody300_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody300_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody300_80 : StackLang.HolProg 64 :=
.seq AllocBody300_78 AllocBody300_79

def AllocBody300_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 23 8

def AllocBody300_82 : StackLang.HolProg 64 :=
.seq AllocBody300_80 AllocBody300_81

def AllocBody300_83 : StackLang.HolProg 64 :=
.seq AllocBody300_77 AllocBody300_82

def AllocBody300_84 : StackLang.HolProg 64 :=
.seq AllocBody300_74 AllocBody300_83

def AllocBody300_85 : StackLang.HolProg 64 :=
.seq AllocBody300_71 AllocBody300_84

def AllocBody300_86 : StackLang.HolProg 64 :=
.seq AllocBody300_68 AllocBody300_85

def AllocBody300_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_88 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody300_89 : StackLang.HolProg 64 :=
.seq AllocBody300_87 AllocBody300_88

def AllocBody300_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def AllocBody300_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody300_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_94 : StackLang.HolProg 64 :=
.seq AllocBody300_92 AllocBody300_93

def AllocBody300_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody300_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody300_97 : StackLang.HolProg 64 :=
.seq AllocBody300_95 AllocBody300_96

def AllocBody300_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody300_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_100 : StackLang.HolProg 64 :=
.seq AllocBody300_98 AllocBody300_99

def AllocBody300_101 : StackLang.HolProg 64 :=
.seq AllocBody300_97 AllocBody300_100

def AllocBody300_102 : StackLang.HolProg 64 :=
.seq AllocBody300_94 AllocBody300_101

def AllocBody300_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 807#64)

def AllocBody300_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_106 : StackLang.HolProg 64 :=
.seq AllocBody300_104 AllocBody300_105

def AllocBody300_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody300_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody300_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 4

def AllocBody300_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody300_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody300_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_117 : StackLang.HolProg 64 :=
.seq AllocBody300_115 AllocBody300_116

def AllocBody300_118 : StackLang.HolProg 64 :=
.seq AllocBody300_114 AllocBody300_117

def AllocBody300_119 : StackLang.HolProg 64 :=
.seq AllocBody300_113 AllocBody300_118

def AllocBody300_120 : StackLang.HolProg 64 :=
.seq AllocBody300_112 AllocBody300_119

def AllocBody300_121 : StackLang.HolProg 64 :=
.seq AllocBody300_111 AllocBody300_120

def AllocBody300_122 : StackLang.HolProg 64 :=
.seq AllocBody300_110 AllocBody300_121

def AllocBody300_123 : StackLang.HolProg 64 :=
.seq AllocBody300_109 AllocBody300_122

def AllocBody300_124 : StackLang.HolProg 64 :=
.seq AllocBody300_108 AllocBody300_123

def AllocBody300_125 : StackLang.HolProg 64 :=
.seq AllocBody300_107 AllocBody300_124

def AllocBody300_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody300_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody300_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def AllocBody300_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody300_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody300_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody300_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody300_137 : StackLang.HolProg 64 :=
.seq AllocBody300_135 AllocBody300_136

def AllocBody300_138 : StackLang.HolProg 64 :=
.seq AllocBody300_134 AllocBody300_137

def AllocBody300_139 : StackLang.HolProg 64 :=
.seq AllocBody300_133 AllocBody300_138

def AllocBody300_140 : StackLang.HolProg 64 :=
.seq AllocBody300_132 AllocBody300_139

def AllocBody300_141 : StackLang.HolProg 64 :=
.seq AllocBody300_131 AllocBody300_140

def AllocBody300_142 : StackLang.HolProg 64 :=
.seq AllocBody300_130 AllocBody300_141

def AllocBody300_143 : StackLang.HolProg 64 :=
.seq AllocBody300_129 AllocBody300_142

def AllocBody300_144 : StackLang.HolProg 64 :=
.seq AllocBody300_128 AllocBody300_143

def AllocBody300_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 9

def AllocBody300_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 8

def AllocBody300_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody300_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 6

def AllocBody300_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 5

def AllocBody300_150 : StackLang.HolProg 64 :=
.seq AllocBody300_148 AllocBody300_149

def AllocBody300_151 : StackLang.HolProg 64 :=
.seq AllocBody300_147 AllocBody300_150

def AllocBody300_152 : StackLang.HolProg 64 :=
.seq AllocBody300_146 AllocBody300_151

def AllocBody300_153 : StackLang.HolProg 64 :=
.seq AllocBody300_145 AllocBody300_152

def AllocBody300_154 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody300_155 : StackLang.HolProg 64 :=
.seq AllocBody300_153 AllocBody300_154

def AllocBody300_156 : StackLang.HolProg 64 :=
.call (some (AllocBody300_144, 0, 300, 3)) (Sum.inl 286) (some (AllocBody300_155, 300, 4))

def AllocBody300_157 : StackLang.HolProg 64 :=
.seq AllocBody300_127 AllocBody300_156

def AllocBody300_158 : StackLang.HolProg 64 :=
.seq AllocBody300_126 AllocBody300_157

def AllocBody300_159 : StackLang.HolProg 64 :=
.seq AllocBody300_125 AllocBody300_158

def AllocBody300_160 : StackLang.HolProg 64 :=
.seq AllocBody300_106 AllocBody300_159

def AllocBody300_161 : StackLang.HolProg 64 :=
.seq AllocBody300_103 AllocBody300_160

def AllocBody300_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_164 : StackLang.HolProg 64 :=
.seq AllocBody300_162 AllocBody300_163

def AllocBody300_165 : StackLang.HolProg 64 :=
.seq AllocBody300_161 AllocBody300_164

def AllocBody300_166 : StackLang.HolProg 64 :=
.seq AllocBody300_102 AllocBody300_165

def AllocBody300_167 : StackLang.HolProg 64 :=
.seq AllocBody300_91 AllocBody300_166

def AllocBody300_168 : StackLang.HolProg 64 :=
.seq AllocBody300_90 AllocBody300_167

def AllocBody300_169 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) AllocBody300_89 AllocBody300_168

def AllocBody300_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody300_173 : StackLang.HolProg 64 :=
.seq AllocBody300_171 AllocBody300_172

def AllocBody300_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody300_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody300_176 : StackLang.HolProg 64 :=
.seq AllocBody300_174 AllocBody300_175

def AllocBody300_177 : StackLang.HolProg 64 :=
.seq AllocBody300_173 AllocBody300_176

def AllocBody300_178 : StackLang.HolProg 64 :=
.seq AllocBody300_170 AllocBody300_177

def AllocBody300_179 : StackLang.HolProg 64 :=
.seq AllocBody300_169 AllocBody300_178

def AllocBody300_180 : StackLang.HolProg 64 :=
.seq AllocBody300_86 AllocBody300_179

def AllocBody300_181 : StackLang.HolProg 64 :=
.call (some (AllocBody300_67, 0, 300, 2)) (Sum.inl 161) (some (AllocBody300_180, 300, 5))

def AllocBody300_182 : StackLang.HolProg 64 :=
.seq AllocBody300_46 AllocBody300_181

def AllocBody300_183 : StackLang.HolProg 64 :=
.seq AllocBody300_45 AllocBody300_182

def AllocBody300_184 : StackLang.HolProg 64 :=
.seq AllocBody300_44 AllocBody300_183

def AllocBody300_185 : StackLang.HolProg 64 :=
.seq AllocBody300_25 AllocBody300_184

def AllocBody300_186 : StackLang.HolProg 64 :=
.seq AllocBody300_22 AllocBody300_185

def AllocBody300_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody300_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody300_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody300_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody300_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody300_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody300_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody300_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody300_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody300_201 : StackLang.HolProg 64 :=
.seq AllocBody300_199 AllocBody300_200

def AllocBody300_202 : StackLang.HolProg 64 :=
.seq AllocBody300_198 AllocBody300_201

def AllocBody300_203 : StackLang.HolProg 64 :=
.seq AllocBody300_197 AllocBody300_202

def AllocBody300_204 : StackLang.HolProg 64 :=
.seq AllocBody300_196 AllocBody300_203

def AllocBody300_205 : StackLang.HolProg 64 :=
.seq AllocBody300_195 AllocBody300_204

def AllocBody300_206 : StackLang.HolProg 64 :=
.seq AllocBody300_194 AllocBody300_205

def AllocBody300_207 : StackLang.HolProg 64 :=
.seq AllocBody300_193 AllocBody300_206

def AllocBody300_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody300_207 AllocBody300_208

def AllocBody300_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def AllocBody300_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 10#64)

def AllocBody300_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def AllocBody300_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 808#64)

def AllocBody300_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_220 : StackLang.HolProg 64 :=
.seq AllocBody300_218 AllocBody300_219

def AllocBody300_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody300_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody300_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 7

def AllocBody300_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody300_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody300_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_231 : StackLang.HolProg 64 :=
.seq AllocBody300_229 AllocBody300_230

def AllocBody300_232 : StackLang.HolProg 64 :=
.seq AllocBody300_228 AllocBody300_231

def AllocBody300_233 : StackLang.HolProg 64 :=
.seq AllocBody300_227 AllocBody300_232

def AllocBody300_234 : StackLang.HolProg 64 :=
.seq AllocBody300_226 AllocBody300_233

def AllocBody300_235 : StackLang.HolProg 64 :=
.seq AllocBody300_225 AllocBody300_234

def AllocBody300_236 : StackLang.HolProg 64 :=
.seq AllocBody300_224 AllocBody300_235

def AllocBody300_237 : StackLang.HolProg 64 :=
.seq AllocBody300_223 AllocBody300_236

def AllocBody300_238 : StackLang.HolProg 64 :=
.seq AllocBody300_222 AllocBody300_237

def AllocBody300_239 : StackLang.HolProg 64 :=
.seq AllocBody300_221 AllocBody300_238

def AllocBody300_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody300_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody300_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody300_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody300_248 : StackLang.HolProg 64 :=
.seq AllocBody300_246 AllocBody300_247

def AllocBody300_249 : StackLang.HolProg 64 :=
.seq AllocBody300_245 AllocBody300_248

def AllocBody300_250 : StackLang.HolProg 64 :=
.seq AllocBody300_244 AllocBody300_249

def AllocBody300_251 : StackLang.HolProg 64 :=
.seq AllocBody300_243 AllocBody300_250

def AllocBody300_252 : StackLang.HolProg 64 :=
.seq AllocBody300_242 AllocBody300_251

def AllocBody300_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody300_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody300_255 : StackLang.HolProg 64 :=
.seq AllocBody300_253 AllocBody300_254

def AllocBody300_256 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody300_257 : StackLang.HolProg 64 :=
.seq AllocBody300_255 AllocBody300_256

def AllocBody300_258 : StackLang.HolProg 64 :=
.call (some (AllocBody300_252, 0, 300, 6)) (Sum.inl 286) (some (AllocBody300_257, 300, 7))

def AllocBody300_259 : StackLang.HolProg 64 :=
.seq AllocBody300_241 AllocBody300_258

def AllocBody300_260 : StackLang.HolProg 64 :=
.seq AllocBody300_240 AllocBody300_259

def AllocBody300_261 : StackLang.HolProg 64 :=
.seq AllocBody300_239 AllocBody300_260

def AllocBody300_262 : StackLang.HolProg 64 :=
.seq AllocBody300_220 AllocBody300_261

def AllocBody300_263 : StackLang.HolProg 64 :=
.seq AllocBody300_217 AllocBody300_262

def AllocBody300_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_266 : StackLang.HolProg 64 :=
.seq AllocBody300_264 AllocBody300_265

def AllocBody300_267 : StackLang.HolProg 64 :=
.seq AllocBody300_263 AllocBody300_266

def AllocBody300_268 : StackLang.HolProg 64 :=
.seq AllocBody300_216 AllocBody300_267

def AllocBody300_269 : StackLang.HolProg 64 :=
.seq AllocBody300_215 AllocBody300_268

def AllocBody300_270 : StackLang.HolProg 64 :=
.seq AllocBody300_214 AllocBody300_269

def AllocBody300_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 9

def AllocBody300_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 8

def AllocBody300_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 7

def AllocBody300_275 : StackLang.HolProg 64 :=
.seq AllocBody300_273 AllocBody300_274

def AllocBody300_276 : StackLang.HolProg 64 :=
.seq AllocBody300_272 AllocBody300_275

def AllocBody300_277 : StackLang.HolProg 64 :=
.seq AllocBody300_271 AllocBody300_276

def AllocBody300_278 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody300_270 AllocBody300_277

def AllocBody300_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody300_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 8

def AllocBody300_282 : StackLang.HolProg 64 :=
.seq AllocBody300_280 AllocBody300_281

def AllocBody300_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 809#64)

def AllocBody300_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_286 : StackLang.HolProg 64 :=
.seq AllocBody300_284 AllocBody300_285

def AllocBody300_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody300_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody300_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 9

def AllocBody300_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody300_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody300_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_297 : StackLang.HolProg 64 :=
.seq AllocBody300_295 AllocBody300_296

def AllocBody300_298 : StackLang.HolProg 64 :=
.seq AllocBody300_294 AllocBody300_297

def AllocBody300_299 : StackLang.HolProg 64 :=
.seq AllocBody300_293 AllocBody300_298

def AllocBody300_300 : StackLang.HolProg 64 :=
.seq AllocBody300_292 AllocBody300_299

def AllocBody300_301 : StackLang.HolProg 64 :=
.seq AllocBody300_291 AllocBody300_300

def AllocBody300_302 : StackLang.HolProg 64 :=
.seq AllocBody300_290 AllocBody300_301

def AllocBody300_303 : StackLang.HolProg 64 :=
.seq AllocBody300_289 AllocBody300_302

def AllocBody300_304 : StackLang.HolProg 64 :=
.seq AllocBody300_288 AllocBody300_303

def AllocBody300_305 : StackLang.HolProg 64 :=
.seq AllocBody300_287 AllocBody300_304

def AllocBody300_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody300_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody300_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody300_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody300_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody300_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody300_316 : StackLang.HolProg 64 :=
.seq AllocBody300_314 AllocBody300_315

def AllocBody300_317 : StackLang.HolProg 64 :=
.seq AllocBody300_313 AllocBody300_316

def AllocBody300_318 : StackLang.HolProg 64 :=
.seq AllocBody300_312 AllocBody300_317

def AllocBody300_319 : StackLang.HolProg 64 :=
.seq AllocBody300_311 AllocBody300_318

def AllocBody300_320 : StackLang.HolProg 64 :=
.seq AllocBody300_310 AllocBody300_319

def AllocBody300_321 : StackLang.HolProg 64 :=
.seq AllocBody300_309 AllocBody300_320

def AllocBody300_322 : StackLang.HolProg 64 :=
.seq AllocBody300_308 AllocBody300_321

def AllocBody300_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 8

def AllocBody300_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody300_325 : StackLang.HolProg 64 :=
.seq AllocBody300_323 AllocBody300_324

def AllocBody300_326 : StackLang.HolProg 64 :=
.call (some (AllocBody300_322, 0, 300, 8)) (Sum.inl 294) (some (AllocBody300_325, 300, 9))

def AllocBody300_327 : StackLang.HolProg 64 :=
.seq AllocBody300_307 AllocBody300_326

def AllocBody300_328 : StackLang.HolProg 64 :=
.seq AllocBody300_306 AllocBody300_327

def AllocBody300_329 : StackLang.HolProg 64 :=
.seq AllocBody300_305 AllocBody300_328

def AllocBody300_330 : StackLang.HolProg 64 :=
.seq AllocBody300_286 AllocBody300_329

def AllocBody300_331 : StackLang.HolProg 64 :=
.seq AllocBody300_283 AllocBody300_330

def AllocBody300_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody300_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody300_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 810#64)

def AllocBody300_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_340 : StackLang.HolProg 64 :=
.seq AllocBody300_338 AllocBody300_339

def AllocBody300_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody300_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody300_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody300_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 300 11

def AllocBody300_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody300_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody300_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody300_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody300_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_351 : StackLang.HolProg 64 :=
.seq AllocBody300_349 AllocBody300_350

def AllocBody300_352 : StackLang.HolProg 64 :=
.seq AllocBody300_348 AllocBody300_351

def AllocBody300_353 : StackLang.HolProg 64 :=
.seq AllocBody300_347 AllocBody300_352

def AllocBody300_354 : StackLang.HolProg 64 :=
.seq AllocBody300_346 AllocBody300_353

def AllocBody300_355 : StackLang.HolProg 64 :=
.seq AllocBody300_345 AllocBody300_354

def AllocBody300_356 : StackLang.HolProg 64 :=
.seq AllocBody300_344 AllocBody300_355

def AllocBody300_357 : StackLang.HolProg 64 :=
.seq AllocBody300_343 AllocBody300_356

def AllocBody300_358 : StackLang.HolProg 64 :=
.seq AllocBody300_342 AllocBody300_357

def AllocBody300_359 : StackLang.HolProg 64 :=
.seq AllocBody300_341 AllocBody300_358

def AllocBody300_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody300_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody300_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody300_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody300_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody300_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody300_368 : StackLang.HolProg 64 :=
.seq AllocBody300_366 AllocBody300_367

def AllocBody300_369 : StackLang.HolProg 64 :=
.seq AllocBody300_365 AllocBody300_368

def AllocBody300_370 : StackLang.HolProg 64 :=
.seq AllocBody300_364 AllocBody300_369

def AllocBody300_371 : StackLang.HolProg 64 :=
.seq AllocBody300_363 AllocBody300_370

def AllocBody300_372 : StackLang.HolProg 64 :=
.seq AllocBody300_362 AllocBody300_371

def AllocBody300_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody300_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody300_375 : StackLang.HolProg 64 :=
.seq AllocBody300_373 AllocBody300_374

def AllocBody300_376 : StackLang.HolProg 64 :=
.call (some (AllocBody300_372, 0, 300, 10)) (Sum.inl 295) (some (AllocBody300_375, 300, 11))

def AllocBody300_377 : StackLang.HolProg 64 :=
.seq AllocBody300_361 AllocBody300_376

def AllocBody300_378 : StackLang.HolProg 64 :=
.seq AllocBody300_360 AllocBody300_377

def AllocBody300_379 : StackLang.HolProg 64 :=
.seq AllocBody300_359 AllocBody300_378

def AllocBody300_380 : StackLang.HolProg 64 :=
.seq AllocBody300_340 AllocBody300_379

def AllocBody300_381 : StackLang.HolProg 64 :=
.seq AllocBody300_337 AllocBody300_380

def AllocBody300_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody300_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody300_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody300_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody300_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def AllocBody300_390 : StackLang.HolProg 64 :=
.seq AllocBody300_388 AllocBody300_389

def AllocBody300_391 : StackLang.HolProg 64 :=
.seq AllocBody300_387 AllocBody300_390

def AllocBody300_392 : StackLang.HolProg 64 :=
.seq AllocBody300_386 AllocBody300_391

def AllocBody300_393 : StackLang.HolProg 64 :=
.seq AllocBody300_385 AllocBody300_392

def AllocBody300_394 : StackLang.HolProg 64 :=
.seq AllocBody300_384 AllocBody300_393

def AllocBody300_395 : StackLang.HolProg 64 :=
.seq AllocBody300_383 AllocBody300_394

def AllocBody300_396 : StackLang.HolProg 64 :=
.seq AllocBody300_382 AllocBody300_395

def AllocBody300_397 : StackLang.HolProg 64 :=
.seq AllocBody300_381 AllocBody300_396

def AllocBody300_398 : StackLang.HolProg 64 :=
.seq AllocBody300_336 AllocBody300_397

def AllocBody300_399 : StackLang.HolProg 64 :=
.seq AllocBody300_335 AllocBody300_398

def AllocBody300_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 9

def AllocBody300_401 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody300_399 AllocBody300_400

def AllocBody300_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody300_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody300_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody300_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody300_408 : StackLang.HolProg 64 :=
.seq AllocBody300_406 AllocBody300_407

def AllocBody300_409 : StackLang.HolProg 64 :=
.seq AllocBody300_405 AllocBody300_408

def AllocBody300_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody300_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 10

def AllocBody300_412 : StackLang.HolProg 64 :=
.seq AllocBody300_410 AllocBody300_411

def AllocBody300_413 : StackLang.HolProg 64 :=
.seq AllocBody300_409 AllocBody300_412

def AllocBody300_414 : StackLang.HolProg 64 :=
.seq AllocBody300_404 AllocBody300_413

def AllocBody300_415 : StackLang.HolProg 64 :=
.seq AllocBody300_403 AllocBody300_414

def AllocBody300_416 : StackLang.HolProg 64 :=
.seq AllocBody300_402 AllocBody300_415

def AllocBody300_417 : StackLang.HolProg 64 :=
.seq AllocBody300_401 AllocBody300_416

def AllocBody300_418 : StackLang.HolProg 64 :=
.seq AllocBody300_334 AllocBody300_417

def AllocBody300_419 : StackLang.HolProg 64 :=
.seq AllocBody300_333 AllocBody300_418

def AllocBody300_420 : StackLang.HolProg 64 :=
.seq AllocBody300_332 AllocBody300_419

def AllocBody300_421 : StackLang.HolProg 64 :=
.seq AllocBody300_331 AllocBody300_420

def AllocBody300_422 : StackLang.HolProg 64 :=
.seq AllocBody300_282 AllocBody300_421

def AllocBody300_423 : StackLang.HolProg 64 :=
.seq AllocBody300_279 AllocBody300_422

def AllocBody300_424 : StackLang.HolProg 64 :=
.seq AllocBody300_278 AllocBody300_423

def AllocBody300_425 : StackLang.HolProg 64 :=
.seq AllocBody300_213 AllocBody300_424

def AllocBody300_426 : StackLang.HolProg 64 :=
.seq AllocBody300_212 AllocBody300_425

def AllocBody300_427 : StackLang.HolProg 64 :=
.seq AllocBody300_211 AllocBody300_426

def AllocBody300_428 : StackLang.HolProg 64 :=
.seq AllocBody300_210 AllocBody300_427

def AllocBody300_429 : StackLang.HolProg 64 :=
.seq AllocBody300_209 AllocBody300_428

def AllocBody300_430 : StackLang.HolProg 64 :=
.seq AllocBody300_192 AllocBody300_429

def AllocBody300_431 : StackLang.HolProg 64 :=
.seq AllocBody300_191 AllocBody300_430

def AllocBody300_432 : StackLang.HolProg 64 :=
.seq AllocBody300_190 AllocBody300_431

def AllocBody300_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_434 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody300_432 AllocBody300_433

def AllocBody300_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody300_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody300_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody300_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody300_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody300_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody300_442 : StackLang.HolProg 64 :=
.seq AllocBody300_440 AllocBody300_441

def AllocBody300_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 10

def AllocBody300_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def AllocBody300_445 : StackLang.HolProg 64 :=
.seq AllocBody300_443 AllocBody300_444

def AllocBody300_446 : StackLang.HolProg 64 :=
.seq AllocBody300_442 AllocBody300_445

def AllocBody300_447 : StackLang.HolProg 64 :=
.seq AllocBody300_439 AllocBody300_446

def AllocBody300_448 : StackLang.HolProg 64 :=
.seq AllocBody300_438 AllocBody300_447

def AllocBody300_449 : StackLang.HolProg 64 :=
.seq AllocBody300_437 AllocBody300_448

def AllocBody300_450 : StackLang.HolProg 64 :=
.seq AllocBody300_436 AllocBody300_449

def AllocBody300_451 : StackLang.HolProg 64 :=
.seq AllocBody300_435 AllocBody300_450

def AllocBody300_452 : StackLang.HolProg 64 :=
.seq AllocBody300_434 AllocBody300_451

def AllocBody300_453 : StackLang.HolProg 64 :=
.seq AllocBody300_189 AllocBody300_452

def AllocBody300_454 : StackLang.HolProg 64 :=
.seq AllocBody300_188 AllocBody300_453

def AllocBody300_455 : StackLang.HolProg 64 :=
.seq AllocBody300_187 AllocBody300_454

def AllocBody300_456 : StackLang.HolProg 64 :=
.seq AllocBody300_186 AllocBody300_455

def AllocBody300_457 : StackLang.HolProg 64 :=
.seq AllocBody300_21 AllocBody300_456

def AllocBody300_458 : StackLang.HolProg 64 :=
.seq AllocBody300_4 AllocBody300_457

def AllocBody300_459 : StackLang.HolProg 64 :=
.seq AllocBody300_3 AllocBody300_458

def AllocBody300_460 : StackLang.HolProg 64 :=
.seq AllocBody300_2 AllocBody300_459

def AllocBody300_461 : StackLang.HolProg 64 :=
.seq AllocBody300_1 AllocBody300_460

def AllocBody300_462 : StackLang.HolProg 64 :=
.seq AllocBody300_0 AllocBody300_461

def Alloc300 : Nat × StackLang.HolProg 64 := (300, AllocBody300_462)
theorem Alloc300_eq : StackAlloc.progComp (300, raw300) = Alloc300 := by
  kernel_rfl
#print axioms Alloc300_eq
end InitECandidate.Proofs.BackendStages
