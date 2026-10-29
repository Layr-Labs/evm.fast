import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw579
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody579_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody579_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody579_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody579_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2027#64)

def AllocBody579_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_7 : StackLang.HolProg 64 :=
.seq AllocBody579_5 AllocBody579_6

def AllocBody579_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody579_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody579_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 3

def AllocBody579_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody579_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody579_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody579_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody579_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_18 : StackLang.HolProg 64 :=
.seq AllocBody579_16 AllocBody579_17

def AllocBody579_19 : StackLang.HolProg 64 :=
.seq AllocBody579_15 AllocBody579_18

def AllocBody579_20 : StackLang.HolProg 64 :=
.seq AllocBody579_14 AllocBody579_19

def AllocBody579_21 : StackLang.HolProg 64 :=
.seq AllocBody579_13 AllocBody579_20

def AllocBody579_22 : StackLang.HolProg 64 :=
.seq AllocBody579_12 AllocBody579_21

def AllocBody579_23 : StackLang.HolProg 64 :=
.seq AllocBody579_11 AllocBody579_22

def AllocBody579_24 : StackLang.HolProg 64 :=
.seq AllocBody579_10 AllocBody579_23

def AllocBody579_25 : StackLang.HolProg 64 :=
.seq AllocBody579_9 AllocBody579_24

def AllocBody579_26 : StackLang.HolProg 64 :=
.seq AllocBody579_8 AllocBody579_25

def AllocBody579_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody579_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody579_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody579_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_34 : StackLang.HolProg 64 :=
.seq AllocBody579_32 AllocBody579_33

def AllocBody579_35 : StackLang.HolProg 64 :=
.seq AllocBody579_31 AllocBody579_34

def AllocBody579_36 : StackLang.HolProg 64 :=
.seq AllocBody579_30 AllocBody579_35

def AllocBody579_37 : StackLang.HolProg 64 :=
.seq AllocBody579_29 AllocBody579_36

def AllocBody579_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody579_40 : StackLang.HolProg 64 :=
.seq AllocBody579_38 AllocBody579_39

def AllocBody579_41 : StackLang.HolProg 64 :=
.call (some (AllocBody579_37, 0, 579, 2)) (Sum.inl 470) (some (AllocBody579_40, 579, 3))

def AllocBody579_42 : StackLang.HolProg 64 :=
.seq AllocBody579_28 AllocBody579_41

def AllocBody579_43 : StackLang.HolProg 64 :=
.seq AllocBody579_27 AllocBody579_42

def AllocBody579_44 : StackLang.HolProg 64 :=
.seq AllocBody579_26 AllocBody579_43

def AllocBody579_45 : StackLang.HolProg 64 :=
.seq AllocBody579_7 AllocBody579_44

def AllocBody579_46 : StackLang.HolProg 64 :=
.seq AllocBody579_4 AllocBody579_45

def AllocBody579_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody579_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2028#64)

def AllocBody579_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_52 : StackLang.HolProg 64 :=
.seq AllocBody579_50 AllocBody579_51

def AllocBody579_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody579_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody579_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 5

def AllocBody579_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody579_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody579_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody579_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody579_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_63 : StackLang.HolProg 64 :=
.seq AllocBody579_61 AllocBody579_62

def AllocBody579_64 : StackLang.HolProg 64 :=
.seq AllocBody579_60 AllocBody579_63

def AllocBody579_65 : StackLang.HolProg 64 :=
.seq AllocBody579_59 AllocBody579_64

def AllocBody579_66 : StackLang.HolProg 64 :=
.seq AllocBody579_58 AllocBody579_65

def AllocBody579_67 : StackLang.HolProg 64 :=
.seq AllocBody579_57 AllocBody579_66

def AllocBody579_68 : StackLang.HolProg 64 :=
.seq AllocBody579_56 AllocBody579_67

def AllocBody579_69 : StackLang.HolProg 64 :=
.seq AllocBody579_55 AllocBody579_68

def AllocBody579_70 : StackLang.HolProg 64 :=
.seq AllocBody579_54 AllocBody579_69

def AllocBody579_71 : StackLang.HolProg 64 :=
.seq AllocBody579_53 AllocBody579_70

def AllocBody579_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody579_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody579_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody579_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody579_79 : StackLang.HolProg 64 :=
.seq AllocBody579_77 AllocBody579_78

def AllocBody579_80 : StackLang.HolProg 64 :=
.seq AllocBody579_76 AllocBody579_79

def AllocBody579_81 : StackLang.HolProg 64 :=
.seq AllocBody579_75 AllocBody579_80

def AllocBody579_82 : StackLang.HolProg 64 :=
.seq AllocBody579_74 AllocBody579_81

def AllocBody579_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody579_85 : StackLang.HolProg 64 :=
.seq AllocBody579_83 AllocBody579_84

def AllocBody579_86 : StackLang.HolProg 64 :=
.call (some (AllocBody579_82, 0, 579, 4)) (Sum.inl 572) (some (AllocBody579_85, 579, 5))

def AllocBody579_87 : StackLang.HolProg 64 :=
.seq AllocBody579_73 AllocBody579_86

def AllocBody579_88 : StackLang.HolProg 64 :=
.seq AllocBody579_72 AllocBody579_87

def AllocBody579_89 : StackLang.HolProg 64 :=
.seq AllocBody579_71 AllocBody579_88

def AllocBody579_90 : StackLang.HolProg 64 :=
.seq AllocBody579_52 AllocBody579_89

def AllocBody579_91 : StackLang.HolProg 64 :=
.seq AllocBody579_49 AllocBody579_90

def AllocBody579_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody579_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def AllocBody579_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2029#64)

def AllocBody579_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_99 : StackLang.HolProg 64 :=
.seq AllocBody579_97 AllocBody579_98

def AllocBody579_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody579_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody579_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 7

def AllocBody579_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody579_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody579_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody579_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody579_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_110 : StackLang.HolProg 64 :=
.seq AllocBody579_108 AllocBody579_109

def AllocBody579_111 : StackLang.HolProg 64 :=
.seq AllocBody579_107 AllocBody579_110

def AllocBody579_112 : StackLang.HolProg 64 :=
.seq AllocBody579_106 AllocBody579_111

def AllocBody579_113 : StackLang.HolProg 64 :=
.seq AllocBody579_105 AllocBody579_112

def AllocBody579_114 : StackLang.HolProg 64 :=
.seq AllocBody579_104 AllocBody579_113

def AllocBody579_115 : StackLang.HolProg 64 :=
.seq AllocBody579_103 AllocBody579_114

def AllocBody579_116 : StackLang.HolProg 64 :=
.seq AllocBody579_102 AllocBody579_115

def AllocBody579_117 : StackLang.HolProg 64 :=
.seq AllocBody579_101 AllocBody579_116

def AllocBody579_118 : StackLang.HolProg 64 :=
.seq AllocBody579_100 AllocBody579_117

def AllocBody579_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody579_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody579_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody579_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_126 : StackLang.HolProg 64 :=
.seq AllocBody579_124 AllocBody579_125

def AllocBody579_127 : StackLang.HolProg 64 :=
.seq AllocBody579_123 AllocBody579_126

def AllocBody579_128 : StackLang.HolProg 64 :=
.seq AllocBody579_122 AllocBody579_127

def AllocBody579_129 : StackLang.HolProg 64 :=
.seq AllocBody579_121 AllocBody579_128

def AllocBody579_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody579_132 : StackLang.HolProg 64 :=
.seq AllocBody579_130 AllocBody579_131

def AllocBody579_133 : StackLang.HolProg 64 :=
.call (some (AllocBody579_129, 0, 579, 6)) (Sum.inl 477) (some (AllocBody579_132, 579, 7))

def AllocBody579_134 : StackLang.HolProg 64 :=
.seq AllocBody579_120 AllocBody579_133

def AllocBody579_135 : StackLang.HolProg 64 :=
.seq AllocBody579_119 AllocBody579_134

def AllocBody579_136 : StackLang.HolProg 64 :=
.seq AllocBody579_118 AllocBody579_135

def AllocBody579_137 : StackLang.HolProg 64 :=
.seq AllocBody579_99 AllocBody579_136

def AllocBody579_138 : StackLang.HolProg 64 :=
.seq AllocBody579_96 AllocBody579_137

def AllocBody579_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody579_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody579_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2030#64)

def AllocBody579_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_145 : StackLang.HolProg 64 :=
.seq AllocBody579_143 AllocBody579_144

def AllocBody579_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody579_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody579_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody579_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 579 9

def AllocBody579_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody579_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody579_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody579_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody579_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_156 : StackLang.HolProg 64 :=
.seq AllocBody579_154 AllocBody579_155

def AllocBody579_157 : StackLang.HolProg 64 :=
.seq AllocBody579_153 AllocBody579_156

def AllocBody579_158 : StackLang.HolProg 64 :=
.seq AllocBody579_152 AllocBody579_157

def AllocBody579_159 : StackLang.HolProg 64 :=
.seq AllocBody579_151 AllocBody579_158

def AllocBody579_160 : StackLang.HolProg 64 :=
.seq AllocBody579_150 AllocBody579_159

def AllocBody579_161 : StackLang.HolProg 64 :=
.seq AllocBody579_149 AllocBody579_160

def AllocBody579_162 : StackLang.HolProg 64 :=
.seq AllocBody579_148 AllocBody579_161

def AllocBody579_163 : StackLang.HolProg 64 :=
.seq AllocBody579_147 AllocBody579_162

def AllocBody579_164 : StackLang.HolProg 64 :=
.seq AllocBody579_146 AllocBody579_163

def AllocBody579_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody579_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody579_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody579_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody579_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody579_172 : StackLang.HolProg 64 :=
.seq AllocBody579_170 AllocBody579_171

def AllocBody579_173 : StackLang.HolProg 64 :=
.seq AllocBody579_169 AllocBody579_172

def AllocBody579_174 : StackLang.HolProg 64 :=
.seq AllocBody579_168 AllocBody579_173

def AllocBody579_175 : StackLang.HolProg 64 :=
.seq AllocBody579_167 AllocBody579_174

def AllocBody579_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody579_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody579_178 : StackLang.HolProg 64 :=
.seq AllocBody579_176 AllocBody579_177

def AllocBody579_179 : StackLang.HolProg 64 :=
.call (some (AllocBody579_175, 0, 579, 8)) (Sum.inl 490) (some (AllocBody579_178, 579, 9))

def AllocBody579_180 : StackLang.HolProg 64 :=
.seq AllocBody579_166 AllocBody579_179

def AllocBody579_181 : StackLang.HolProg 64 :=
.seq AllocBody579_165 AllocBody579_180

def AllocBody579_182 : StackLang.HolProg 64 :=
.seq AllocBody579_164 AllocBody579_181

def AllocBody579_183 : StackLang.HolProg 64 :=
.seq AllocBody579_145 AllocBody579_182

def AllocBody579_184 : StackLang.HolProg 64 :=
.seq AllocBody579_142 AllocBody579_183

def AllocBody579_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody579_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody579_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody579_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody579_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody579_190 : StackLang.HolProg 64 :=
.seq AllocBody579_188 AllocBody579_189

def AllocBody579_191 : StackLang.HolProg 64 :=
.seq AllocBody579_187 AllocBody579_190

def AllocBody579_192 : StackLang.HolProg 64 :=
.seq AllocBody579_186 AllocBody579_191

def AllocBody579_193 : StackLang.HolProg 64 :=
.seq AllocBody579_185 AllocBody579_192

def AllocBody579_194 : StackLang.HolProg 64 :=
.seq AllocBody579_184 AllocBody579_193

def AllocBody579_195 : StackLang.HolProg 64 :=
.seq AllocBody579_141 AllocBody579_194

def AllocBody579_196 : StackLang.HolProg 64 :=
.seq AllocBody579_140 AllocBody579_195

def AllocBody579_197 : StackLang.HolProg 64 :=
.seq AllocBody579_139 AllocBody579_196

def AllocBody579_198 : StackLang.HolProg 64 :=
.seq AllocBody579_138 AllocBody579_197

def AllocBody579_199 : StackLang.HolProg 64 :=
.seq AllocBody579_95 AllocBody579_198

def AllocBody579_200 : StackLang.HolProg 64 :=
.seq AllocBody579_94 AllocBody579_199

def AllocBody579_201 : StackLang.HolProg 64 :=
.seq AllocBody579_93 AllocBody579_200

def AllocBody579_202 : StackLang.HolProg 64 :=
.seq AllocBody579_92 AllocBody579_201

def AllocBody579_203 : StackLang.HolProg 64 :=
.seq AllocBody579_91 AllocBody579_202

def AllocBody579_204 : StackLang.HolProg 64 :=
.seq AllocBody579_48 AllocBody579_203

def AllocBody579_205 : StackLang.HolProg 64 :=
.seq AllocBody579_47 AllocBody579_204

def AllocBody579_206 : StackLang.HolProg 64 :=
.seq AllocBody579_46 AllocBody579_205

def AllocBody579_207 : StackLang.HolProg 64 :=
.seq AllocBody579_3 AllocBody579_206

def AllocBody579_208 : StackLang.HolProg 64 :=
.seq AllocBody579_2 AllocBody579_207

def AllocBody579_209 : StackLang.HolProg 64 :=
.seq AllocBody579_1 AllocBody579_208

def AllocBody579_210 : StackLang.HolProg 64 :=
.seq AllocBody579_0 AllocBody579_209

def Alloc579 : Nat × StackLang.HolProg 64 := (579, AllocBody579_210)
theorem Alloc579_eq : StackAlloc.progComp (579, raw579) = Alloc579 := by
  kernel_rfl
#print axioms Alloc579_eq
end InitECandidate.Proofs.BackendStages
