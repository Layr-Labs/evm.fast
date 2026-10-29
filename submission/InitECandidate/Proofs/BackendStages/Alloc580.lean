import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw580
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody580_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody580_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody580_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody580_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2031#64)

def AllocBody580_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_7 : StackLang.HolProg 64 :=
.seq AllocBody580_5 AllocBody580_6

def AllocBody580_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody580_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody580_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 3

def AllocBody580_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody580_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody580_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody580_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody580_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_18 : StackLang.HolProg 64 :=
.seq AllocBody580_16 AllocBody580_17

def AllocBody580_19 : StackLang.HolProg 64 :=
.seq AllocBody580_15 AllocBody580_18

def AllocBody580_20 : StackLang.HolProg 64 :=
.seq AllocBody580_14 AllocBody580_19

def AllocBody580_21 : StackLang.HolProg 64 :=
.seq AllocBody580_13 AllocBody580_20

def AllocBody580_22 : StackLang.HolProg 64 :=
.seq AllocBody580_12 AllocBody580_21

def AllocBody580_23 : StackLang.HolProg 64 :=
.seq AllocBody580_11 AllocBody580_22

def AllocBody580_24 : StackLang.HolProg 64 :=
.seq AllocBody580_10 AllocBody580_23

def AllocBody580_25 : StackLang.HolProg 64 :=
.seq AllocBody580_9 AllocBody580_24

def AllocBody580_26 : StackLang.HolProg 64 :=
.seq AllocBody580_8 AllocBody580_25

def AllocBody580_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody580_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody580_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody580_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_34 : StackLang.HolProg 64 :=
.seq AllocBody580_32 AllocBody580_33

def AllocBody580_35 : StackLang.HolProg 64 :=
.seq AllocBody580_31 AllocBody580_34

def AllocBody580_36 : StackLang.HolProg 64 :=
.seq AllocBody580_30 AllocBody580_35

def AllocBody580_37 : StackLang.HolProg 64 :=
.seq AllocBody580_29 AllocBody580_36

def AllocBody580_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody580_40 : StackLang.HolProg 64 :=
.seq AllocBody580_38 AllocBody580_39

def AllocBody580_41 : StackLang.HolProg 64 :=
.call (some (AllocBody580_37, 0, 580, 2)) (Sum.inl 470) (some (AllocBody580_40, 580, 3))

def AllocBody580_42 : StackLang.HolProg 64 :=
.seq AllocBody580_28 AllocBody580_41

def AllocBody580_43 : StackLang.HolProg 64 :=
.seq AllocBody580_27 AllocBody580_42

def AllocBody580_44 : StackLang.HolProg 64 :=
.seq AllocBody580_26 AllocBody580_43

def AllocBody580_45 : StackLang.HolProg 64 :=
.seq AllocBody580_7 AllocBody580_44

def AllocBody580_46 : StackLang.HolProg 64 :=
.seq AllocBody580_4 AllocBody580_45

def AllocBody580_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody580_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2032#64)

def AllocBody580_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_52 : StackLang.HolProg 64 :=
.seq AllocBody580_50 AllocBody580_51

def AllocBody580_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody580_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody580_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 5

def AllocBody580_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody580_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody580_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody580_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody580_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_63 : StackLang.HolProg 64 :=
.seq AllocBody580_61 AllocBody580_62

def AllocBody580_64 : StackLang.HolProg 64 :=
.seq AllocBody580_60 AllocBody580_63

def AllocBody580_65 : StackLang.HolProg 64 :=
.seq AllocBody580_59 AllocBody580_64

def AllocBody580_66 : StackLang.HolProg 64 :=
.seq AllocBody580_58 AllocBody580_65

def AllocBody580_67 : StackLang.HolProg 64 :=
.seq AllocBody580_57 AllocBody580_66

def AllocBody580_68 : StackLang.HolProg 64 :=
.seq AllocBody580_56 AllocBody580_67

def AllocBody580_69 : StackLang.HolProg 64 :=
.seq AllocBody580_55 AllocBody580_68

def AllocBody580_70 : StackLang.HolProg 64 :=
.seq AllocBody580_54 AllocBody580_69

def AllocBody580_71 : StackLang.HolProg 64 :=
.seq AllocBody580_53 AllocBody580_70

def AllocBody580_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody580_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody580_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody580_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody580_79 : StackLang.HolProg 64 :=
.seq AllocBody580_77 AllocBody580_78

def AllocBody580_80 : StackLang.HolProg 64 :=
.seq AllocBody580_76 AllocBody580_79

def AllocBody580_81 : StackLang.HolProg 64 :=
.seq AllocBody580_75 AllocBody580_80

def AllocBody580_82 : StackLang.HolProg 64 :=
.seq AllocBody580_74 AllocBody580_81

def AllocBody580_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody580_85 : StackLang.HolProg 64 :=
.seq AllocBody580_83 AllocBody580_84

def AllocBody580_86 : StackLang.HolProg 64 :=
.call (some (AllocBody580_82, 0, 580, 4)) (Sum.inl 572) (some (AllocBody580_85, 580, 5))

def AllocBody580_87 : StackLang.HolProg 64 :=
.seq AllocBody580_73 AllocBody580_86

def AllocBody580_88 : StackLang.HolProg 64 :=
.seq AllocBody580_72 AllocBody580_87

def AllocBody580_89 : StackLang.HolProg 64 :=
.seq AllocBody580_71 AllocBody580_88

def AllocBody580_90 : StackLang.HolProg 64 :=
.seq AllocBody580_52 AllocBody580_89

def AllocBody580_91 : StackLang.HolProg 64 :=
.seq AllocBody580_49 AllocBody580_90

def AllocBody580_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody580_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody580_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2033#64)

def AllocBody580_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_99 : StackLang.HolProg 64 :=
.seq AllocBody580_97 AllocBody580_98

def AllocBody580_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody580_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody580_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 7

def AllocBody580_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody580_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody580_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody580_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody580_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_110 : StackLang.HolProg 64 :=
.seq AllocBody580_108 AllocBody580_109

def AllocBody580_111 : StackLang.HolProg 64 :=
.seq AllocBody580_107 AllocBody580_110

def AllocBody580_112 : StackLang.HolProg 64 :=
.seq AllocBody580_106 AllocBody580_111

def AllocBody580_113 : StackLang.HolProg 64 :=
.seq AllocBody580_105 AllocBody580_112

def AllocBody580_114 : StackLang.HolProg 64 :=
.seq AllocBody580_104 AllocBody580_113

def AllocBody580_115 : StackLang.HolProg 64 :=
.seq AllocBody580_103 AllocBody580_114

def AllocBody580_116 : StackLang.HolProg 64 :=
.seq AllocBody580_102 AllocBody580_115

def AllocBody580_117 : StackLang.HolProg 64 :=
.seq AllocBody580_101 AllocBody580_116

def AllocBody580_118 : StackLang.HolProg 64 :=
.seq AllocBody580_100 AllocBody580_117

def AllocBody580_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody580_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody580_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody580_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_126 : StackLang.HolProg 64 :=
.seq AllocBody580_124 AllocBody580_125

def AllocBody580_127 : StackLang.HolProg 64 :=
.seq AllocBody580_123 AllocBody580_126

def AllocBody580_128 : StackLang.HolProg 64 :=
.seq AllocBody580_122 AllocBody580_127

def AllocBody580_129 : StackLang.HolProg 64 :=
.seq AllocBody580_121 AllocBody580_128

def AllocBody580_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody580_132 : StackLang.HolProg 64 :=
.seq AllocBody580_130 AllocBody580_131

def AllocBody580_133 : StackLang.HolProg 64 :=
.call (some (AllocBody580_129, 0, 580, 6)) (Sum.inl 477) (some (AllocBody580_132, 580, 7))

def AllocBody580_134 : StackLang.HolProg 64 :=
.seq AllocBody580_120 AllocBody580_133

def AllocBody580_135 : StackLang.HolProg 64 :=
.seq AllocBody580_119 AllocBody580_134

def AllocBody580_136 : StackLang.HolProg 64 :=
.seq AllocBody580_118 AllocBody580_135

def AllocBody580_137 : StackLang.HolProg 64 :=
.seq AllocBody580_99 AllocBody580_136

def AllocBody580_138 : StackLang.HolProg 64 :=
.seq AllocBody580_96 AllocBody580_137

def AllocBody580_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody580_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody580_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2034#64)

def AllocBody580_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_145 : StackLang.HolProg 64 :=
.seq AllocBody580_143 AllocBody580_144

def AllocBody580_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody580_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody580_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody580_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 580 9

def AllocBody580_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody580_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody580_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody580_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody580_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_156 : StackLang.HolProg 64 :=
.seq AllocBody580_154 AllocBody580_155

def AllocBody580_157 : StackLang.HolProg 64 :=
.seq AllocBody580_153 AllocBody580_156

def AllocBody580_158 : StackLang.HolProg 64 :=
.seq AllocBody580_152 AllocBody580_157

def AllocBody580_159 : StackLang.HolProg 64 :=
.seq AllocBody580_151 AllocBody580_158

def AllocBody580_160 : StackLang.HolProg 64 :=
.seq AllocBody580_150 AllocBody580_159

def AllocBody580_161 : StackLang.HolProg 64 :=
.seq AllocBody580_149 AllocBody580_160

def AllocBody580_162 : StackLang.HolProg 64 :=
.seq AllocBody580_148 AllocBody580_161

def AllocBody580_163 : StackLang.HolProg 64 :=
.seq AllocBody580_147 AllocBody580_162

def AllocBody580_164 : StackLang.HolProg 64 :=
.seq AllocBody580_146 AllocBody580_163

def AllocBody580_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody580_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody580_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody580_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody580_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody580_172 : StackLang.HolProg 64 :=
.seq AllocBody580_170 AllocBody580_171

def AllocBody580_173 : StackLang.HolProg 64 :=
.seq AllocBody580_169 AllocBody580_172

def AllocBody580_174 : StackLang.HolProg 64 :=
.seq AllocBody580_168 AllocBody580_173

def AllocBody580_175 : StackLang.HolProg 64 :=
.seq AllocBody580_167 AllocBody580_174

def AllocBody580_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody580_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody580_178 : StackLang.HolProg 64 :=
.seq AllocBody580_176 AllocBody580_177

def AllocBody580_179 : StackLang.HolProg 64 :=
.call (some (AllocBody580_175, 0, 580, 8)) (Sum.inl 490) (some (AllocBody580_178, 580, 9))

def AllocBody580_180 : StackLang.HolProg 64 :=
.seq AllocBody580_166 AllocBody580_179

def AllocBody580_181 : StackLang.HolProg 64 :=
.seq AllocBody580_165 AllocBody580_180

def AllocBody580_182 : StackLang.HolProg 64 :=
.seq AllocBody580_164 AllocBody580_181

def AllocBody580_183 : StackLang.HolProg 64 :=
.seq AllocBody580_145 AllocBody580_182

def AllocBody580_184 : StackLang.HolProg 64 :=
.seq AllocBody580_142 AllocBody580_183

def AllocBody580_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody580_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody580_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody580_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody580_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody580_190 : StackLang.HolProg 64 :=
.seq AllocBody580_188 AllocBody580_189

def AllocBody580_191 : StackLang.HolProg 64 :=
.seq AllocBody580_187 AllocBody580_190

def AllocBody580_192 : StackLang.HolProg 64 :=
.seq AllocBody580_186 AllocBody580_191

def AllocBody580_193 : StackLang.HolProg 64 :=
.seq AllocBody580_185 AllocBody580_192

def AllocBody580_194 : StackLang.HolProg 64 :=
.seq AllocBody580_184 AllocBody580_193

def AllocBody580_195 : StackLang.HolProg 64 :=
.seq AllocBody580_141 AllocBody580_194

def AllocBody580_196 : StackLang.HolProg 64 :=
.seq AllocBody580_140 AllocBody580_195

def AllocBody580_197 : StackLang.HolProg 64 :=
.seq AllocBody580_139 AllocBody580_196

def AllocBody580_198 : StackLang.HolProg 64 :=
.seq AllocBody580_138 AllocBody580_197

def AllocBody580_199 : StackLang.HolProg 64 :=
.seq AllocBody580_95 AllocBody580_198

def AllocBody580_200 : StackLang.HolProg 64 :=
.seq AllocBody580_94 AllocBody580_199

def AllocBody580_201 : StackLang.HolProg 64 :=
.seq AllocBody580_93 AllocBody580_200

def AllocBody580_202 : StackLang.HolProg 64 :=
.seq AllocBody580_92 AllocBody580_201

def AllocBody580_203 : StackLang.HolProg 64 :=
.seq AllocBody580_91 AllocBody580_202

def AllocBody580_204 : StackLang.HolProg 64 :=
.seq AllocBody580_48 AllocBody580_203

def AllocBody580_205 : StackLang.HolProg 64 :=
.seq AllocBody580_47 AllocBody580_204

def AllocBody580_206 : StackLang.HolProg 64 :=
.seq AllocBody580_46 AllocBody580_205

def AllocBody580_207 : StackLang.HolProg 64 :=
.seq AllocBody580_3 AllocBody580_206

def AllocBody580_208 : StackLang.HolProg 64 :=
.seq AllocBody580_2 AllocBody580_207

def AllocBody580_209 : StackLang.HolProg 64 :=
.seq AllocBody580_1 AllocBody580_208

def AllocBody580_210 : StackLang.HolProg 64 :=
.seq AllocBody580_0 AllocBody580_209

def Alloc580 : Nat × StackLang.HolProg 64 := (580, AllocBody580_210)
theorem Alloc580_eq : StackAlloc.progComp (580, raw580) = Alloc580 := by
  kernel_rfl
#print axioms Alloc580_eq
end InitECandidate.Proofs.BackendStages
