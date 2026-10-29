import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw581
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody581_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody581_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody581_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody581_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2035#64)

def AllocBody581_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_7 : StackLang.HolProg 64 :=
.seq AllocBody581_5 AllocBody581_6

def AllocBody581_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody581_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody581_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 3

def AllocBody581_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody581_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody581_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody581_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody581_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_18 : StackLang.HolProg 64 :=
.seq AllocBody581_16 AllocBody581_17

def AllocBody581_19 : StackLang.HolProg 64 :=
.seq AllocBody581_15 AllocBody581_18

def AllocBody581_20 : StackLang.HolProg 64 :=
.seq AllocBody581_14 AllocBody581_19

def AllocBody581_21 : StackLang.HolProg 64 :=
.seq AllocBody581_13 AllocBody581_20

def AllocBody581_22 : StackLang.HolProg 64 :=
.seq AllocBody581_12 AllocBody581_21

def AllocBody581_23 : StackLang.HolProg 64 :=
.seq AllocBody581_11 AllocBody581_22

def AllocBody581_24 : StackLang.HolProg 64 :=
.seq AllocBody581_10 AllocBody581_23

def AllocBody581_25 : StackLang.HolProg 64 :=
.seq AllocBody581_9 AllocBody581_24

def AllocBody581_26 : StackLang.HolProg 64 :=
.seq AllocBody581_8 AllocBody581_25

def AllocBody581_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody581_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody581_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody581_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_34 : StackLang.HolProg 64 :=
.seq AllocBody581_32 AllocBody581_33

def AllocBody581_35 : StackLang.HolProg 64 :=
.seq AllocBody581_31 AllocBody581_34

def AllocBody581_36 : StackLang.HolProg 64 :=
.seq AllocBody581_30 AllocBody581_35

def AllocBody581_37 : StackLang.HolProg 64 :=
.seq AllocBody581_29 AllocBody581_36

def AllocBody581_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody581_40 : StackLang.HolProg 64 :=
.seq AllocBody581_38 AllocBody581_39

def AllocBody581_41 : StackLang.HolProg 64 :=
.call (some (AllocBody581_37, 0, 581, 2)) (Sum.inl 470) (some (AllocBody581_40, 581, 3))

def AllocBody581_42 : StackLang.HolProg 64 :=
.seq AllocBody581_28 AllocBody581_41

def AllocBody581_43 : StackLang.HolProg 64 :=
.seq AllocBody581_27 AllocBody581_42

def AllocBody581_44 : StackLang.HolProg 64 :=
.seq AllocBody581_26 AllocBody581_43

def AllocBody581_45 : StackLang.HolProg 64 :=
.seq AllocBody581_7 AllocBody581_44

def AllocBody581_46 : StackLang.HolProg 64 :=
.seq AllocBody581_4 AllocBody581_45

def AllocBody581_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody581_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2036#64)

def AllocBody581_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_52 : StackLang.HolProg 64 :=
.seq AllocBody581_50 AllocBody581_51

def AllocBody581_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody581_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody581_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 5

def AllocBody581_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody581_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody581_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody581_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody581_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_63 : StackLang.HolProg 64 :=
.seq AllocBody581_61 AllocBody581_62

def AllocBody581_64 : StackLang.HolProg 64 :=
.seq AllocBody581_60 AllocBody581_63

def AllocBody581_65 : StackLang.HolProg 64 :=
.seq AllocBody581_59 AllocBody581_64

def AllocBody581_66 : StackLang.HolProg 64 :=
.seq AllocBody581_58 AllocBody581_65

def AllocBody581_67 : StackLang.HolProg 64 :=
.seq AllocBody581_57 AllocBody581_66

def AllocBody581_68 : StackLang.HolProg 64 :=
.seq AllocBody581_56 AllocBody581_67

def AllocBody581_69 : StackLang.HolProg 64 :=
.seq AllocBody581_55 AllocBody581_68

def AllocBody581_70 : StackLang.HolProg 64 :=
.seq AllocBody581_54 AllocBody581_69

def AllocBody581_71 : StackLang.HolProg 64 :=
.seq AllocBody581_53 AllocBody581_70

def AllocBody581_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody581_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody581_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody581_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody581_79 : StackLang.HolProg 64 :=
.seq AllocBody581_77 AllocBody581_78

def AllocBody581_80 : StackLang.HolProg 64 :=
.seq AllocBody581_76 AllocBody581_79

def AllocBody581_81 : StackLang.HolProg 64 :=
.seq AllocBody581_75 AllocBody581_80

def AllocBody581_82 : StackLang.HolProg 64 :=
.seq AllocBody581_74 AllocBody581_81

def AllocBody581_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody581_85 : StackLang.HolProg 64 :=
.seq AllocBody581_83 AllocBody581_84

def AllocBody581_86 : StackLang.HolProg 64 :=
.call (some (AllocBody581_82, 0, 581, 4)) (Sum.inl 572) (some (AllocBody581_85, 581, 5))

def AllocBody581_87 : StackLang.HolProg 64 :=
.seq AllocBody581_73 AllocBody581_86

def AllocBody581_88 : StackLang.HolProg 64 :=
.seq AllocBody581_72 AllocBody581_87

def AllocBody581_89 : StackLang.HolProg 64 :=
.seq AllocBody581_71 AllocBody581_88

def AllocBody581_90 : StackLang.HolProg 64 :=
.seq AllocBody581_52 AllocBody581_89

def AllocBody581_91 : StackLang.HolProg 64 :=
.seq AllocBody581_49 AllocBody581_90

def AllocBody581_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody581_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody581_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2037#64)

def AllocBody581_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_99 : StackLang.HolProg 64 :=
.seq AllocBody581_97 AllocBody581_98

def AllocBody581_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody581_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody581_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 7

def AllocBody581_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody581_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody581_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody581_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody581_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_110 : StackLang.HolProg 64 :=
.seq AllocBody581_108 AllocBody581_109

def AllocBody581_111 : StackLang.HolProg 64 :=
.seq AllocBody581_107 AllocBody581_110

def AllocBody581_112 : StackLang.HolProg 64 :=
.seq AllocBody581_106 AllocBody581_111

def AllocBody581_113 : StackLang.HolProg 64 :=
.seq AllocBody581_105 AllocBody581_112

def AllocBody581_114 : StackLang.HolProg 64 :=
.seq AllocBody581_104 AllocBody581_113

def AllocBody581_115 : StackLang.HolProg 64 :=
.seq AllocBody581_103 AllocBody581_114

def AllocBody581_116 : StackLang.HolProg 64 :=
.seq AllocBody581_102 AllocBody581_115

def AllocBody581_117 : StackLang.HolProg 64 :=
.seq AllocBody581_101 AllocBody581_116

def AllocBody581_118 : StackLang.HolProg 64 :=
.seq AllocBody581_100 AllocBody581_117

def AllocBody581_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody581_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody581_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody581_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_126 : StackLang.HolProg 64 :=
.seq AllocBody581_124 AllocBody581_125

def AllocBody581_127 : StackLang.HolProg 64 :=
.seq AllocBody581_123 AllocBody581_126

def AllocBody581_128 : StackLang.HolProg 64 :=
.seq AllocBody581_122 AllocBody581_127

def AllocBody581_129 : StackLang.HolProg 64 :=
.seq AllocBody581_121 AllocBody581_128

def AllocBody581_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody581_132 : StackLang.HolProg 64 :=
.seq AllocBody581_130 AllocBody581_131

def AllocBody581_133 : StackLang.HolProg 64 :=
.call (some (AllocBody581_129, 0, 581, 6)) (Sum.inl 477) (some (AllocBody581_132, 581, 7))

def AllocBody581_134 : StackLang.HolProg 64 :=
.seq AllocBody581_120 AllocBody581_133

def AllocBody581_135 : StackLang.HolProg 64 :=
.seq AllocBody581_119 AllocBody581_134

def AllocBody581_136 : StackLang.HolProg 64 :=
.seq AllocBody581_118 AllocBody581_135

def AllocBody581_137 : StackLang.HolProg 64 :=
.seq AllocBody581_99 AllocBody581_136

def AllocBody581_138 : StackLang.HolProg 64 :=
.seq AllocBody581_96 AllocBody581_137

def AllocBody581_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody581_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody581_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2038#64)

def AllocBody581_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_145 : StackLang.HolProg 64 :=
.seq AllocBody581_143 AllocBody581_144

def AllocBody581_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody581_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody581_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody581_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 581 9

def AllocBody581_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody581_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody581_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody581_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody581_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_156 : StackLang.HolProg 64 :=
.seq AllocBody581_154 AllocBody581_155

def AllocBody581_157 : StackLang.HolProg 64 :=
.seq AllocBody581_153 AllocBody581_156

def AllocBody581_158 : StackLang.HolProg 64 :=
.seq AllocBody581_152 AllocBody581_157

def AllocBody581_159 : StackLang.HolProg 64 :=
.seq AllocBody581_151 AllocBody581_158

def AllocBody581_160 : StackLang.HolProg 64 :=
.seq AllocBody581_150 AllocBody581_159

def AllocBody581_161 : StackLang.HolProg 64 :=
.seq AllocBody581_149 AllocBody581_160

def AllocBody581_162 : StackLang.HolProg 64 :=
.seq AllocBody581_148 AllocBody581_161

def AllocBody581_163 : StackLang.HolProg 64 :=
.seq AllocBody581_147 AllocBody581_162

def AllocBody581_164 : StackLang.HolProg 64 :=
.seq AllocBody581_146 AllocBody581_163

def AllocBody581_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody581_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody581_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody581_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody581_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody581_172 : StackLang.HolProg 64 :=
.seq AllocBody581_170 AllocBody581_171

def AllocBody581_173 : StackLang.HolProg 64 :=
.seq AllocBody581_169 AllocBody581_172

def AllocBody581_174 : StackLang.HolProg 64 :=
.seq AllocBody581_168 AllocBody581_173

def AllocBody581_175 : StackLang.HolProg 64 :=
.seq AllocBody581_167 AllocBody581_174

def AllocBody581_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody581_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody581_178 : StackLang.HolProg 64 :=
.seq AllocBody581_176 AllocBody581_177

def AllocBody581_179 : StackLang.HolProg 64 :=
.call (some (AllocBody581_175, 0, 581, 8)) (Sum.inl 490) (some (AllocBody581_178, 581, 9))

def AllocBody581_180 : StackLang.HolProg 64 :=
.seq AllocBody581_166 AllocBody581_179

def AllocBody581_181 : StackLang.HolProg 64 :=
.seq AllocBody581_165 AllocBody581_180

def AllocBody581_182 : StackLang.HolProg 64 :=
.seq AllocBody581_164 AllocBody581_181

def AllocBody581_183 : StackLang.HolProg 64 :=
.seq AllocBody581_145 AllocBody581_182

def AllocBody581_184 : StackLang.HolProg 64 :=
.seq AllocBody581_142 AllocBody581_183

def AllocBody581_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody581_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody581_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody581_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody581_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody581_190 : StackLang.HolProg 64 :=
.seq AllocBody581_188 AllocBody581_189

def AllocBody581_191 : StackLang.HolProg 64 :=
.seq AllocBody581_187 AllocBody581_190

def AllocBody581_192 : StackLang.HolProg 64 :=
.seq AllocBody581_186 AllocBody581_191

def AllocBody581_193 : StackLang.HolProg 64 :=
.seq AllocBody581_185 AllocBody581_192

def AllocBody581_194 : StackLang.HolProg 64 :=
.seq AllocBody581_184 AllocBody581_193

def AllocBody581_195 : StackLang.HolProg 64 :=
.seq AllocBody581_141 AllocBody581_194

def AllocBody581_196 : StackLang.HolProg 64 :=
.seq AllocBody581_140 AllocBody581_195

def AllocBody581_197 : StackLang.HolProg 64 :=
.seq AllocBody581_139 AllocBody581_196

def AllocBody581_198 : StackLang.HolProg 64 :=
.seq AllocBody581_138 AllocBody581_197

def AllocBody581_199 : StackLang.HolProg 64 :=
.seq AllocBody581_95 AllocBody581_198

def AllocBody581_200 : StackLang.HolProg 64 :=
.seq AllocBody581_94 AllocBody581_199

def AllocBody581_201 : StackLang.HolProg 64 :=
.seq AllocBody581_93 AllocBody581_200

def AllocBody581_202 : StackLang.HolProg 64 :=
.seq AllocBody581_92 AllocBody581_201

def AllocBody581_203 : StackLang.HolProg 64 :=
.seq AllocBody581_91 AllocBody581_202

def AllocBody581_204 : StackLang.HolProg 64 :=
.seq AllocBody581_48 AllocBody581_203

def AllocBody581_205 : StackLang.HolProg 64 :=
.seq AllocBody581_47 AllocBody581_204

def AllocBody581_206 : StackLang.HolProg 64 :=
.seq AllocBody581_46 AllocBody581_205

def AllocBody581_207 : StackLang.HolProg 64 :=
.seq AllocBody581_3 AllocBody581_206

def AllocBody581_208 : StackLang.HolProg 64 :=
.seq AllocBody581_2 AllocBody581_207

def AllocBody581_209 : StackLang.HolProg 64 :=
.seq AllocBody581_1 AllocBody581_208

def AllocBody581_210 : StackLang.HolProg 64 :=
.seq AllocBody581_0 AllocBody581_209

def Alloc581 : Nat × StackLang.HolProg 64 := (581, AllocBody581_210)
theorem Alloc581_eq : StackAlloc.progComp (581, raw581) = Alloc581 := by
  kernel_rfl
#print axioms Alloc581_eq
end InitECandidate.Proofs.BackendStages
