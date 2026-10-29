import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw578
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody578_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody578_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody578_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody578_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2023#64)

def AllocBody578_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_7 : StackLang.HolProg 64 :=
.seq AllocBody578_5 AllocBody578_6

def AllocBody578_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody578_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody578_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 3

def AllocBody578_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody578_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody578_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody578_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody578_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_18 : StackLang.HolProg 64 :=
.seq AllocBody578_16 AllocBody578_17

def AllocBody578_19 : StackLang.HolProg 64 :=
.seq AllocBody578_15 AllocBody578_18

def AllocBody578_20 : StackLang.HolProg 64 :=
.seq AllocBody578_14 AllocBody578_19

def AllocBody578_21 : StackLang.HolProg 64 :=
.seq AllocBody578_13 AllocBody578_20

def AllocBody578_22 : StackLang.HolProg 64 :=
.seq AllocBody578_12 AllocBody578_21

def AllocBody578_23 : StackLang.HolProg 64 :=
.seq AllocBody578_11 AllocBody578_22

def AllocBody578_24 : StackLang.HolProg 64 :=
.seq AllocBody578_10 AllocBody578_23

def AllocBody578_25 : StackLang.HolProg 64 :=
.seq AllocBody578_9 AllocBody578_24

def AllocBody578_26 : StackLang.HolProg 64 :=
.seq AllocBody578_8 AllocBody578_25

def AllocBody578_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody578_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody578_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody578_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_34 : StackLang.HolProg 64 :=
.seq AllocBody578_32 AllocBody578_33

def AllocBody578_35 : StackLang.HolProg 64 :=
.seq AllocBody578_31 AllocBody578_34

def AllocBody578_36 : StackLang.HolProg 64 :=
.seq AllocBody578_30 AllocBody578_35

def AllocBody578_37 : StackLang.HolProg 64 :=
.seq AllocBody578_29 AllocBody578_36

def AllocBody578_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody578_40 : StackLang.HolProg 64 :=
.seq AllocBody578_38 AllocBody578_39

def AllocBody578_41 : StackLang.HolProg 64 :=
.call (some (AllocBody578_37, 0, 578, 2)) (Sum.inl 470) (some (AllocBody578_40, 578, 3))

def AllocBody578_42 : StackLang.HolProg 64 :=
.seq AllocBody578_28 AllocBody578_41

def AllocBody578_43 : StackLang.HolProg 64 :=
.seq AllocBody578_27 AllocBody578_42

def AllocBody578_44 : StackLang.HolProg 64 :=
.seq AllocBody578_26 AllocBody578_43

def AllocBody578_45 : StackLang.HolProg 64 :=
.seq AllocBody578_7 AllocBody578_44

def AllocBody578_46 : StackLang.HolProg 64 :=
.seq AllocBody578_4 AllocBody578_45

def AllocBody578_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody578_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2024#64)

def AllocBody578_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_52 : StackLang.HolProg 64 :=
.seq AllocBody578_50 AllocBody578_51

def AllocBody578_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody578_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody578_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 5

def AllocBody578_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody578_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody578_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody578_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody578_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_63 : StackLang.HolProg 64 :=
.seq AllocBody578_61 AllocBody578_62

def AllocBody578_64 : StackLang.HolProg 64 :=
.seq AllocBody578_60 AllocBody578_63

def AllocBody578_65 : StackLang.HolProg 64 :=
.seq AllocBody578_59 AllocBody578_64

def AllocBody578_66 : StackLang.HolProg 64 :=
.seq AllocBody578_58 AllocBody578_65

def AllocBody578_67 : StackLang.HolProg 64 :=
.seq AllocBody578_57 AllocBody578_66

def AllocBody578_68 : StackLang.HolProg 64 :=
.seq AllocBody578_56 AllocBody578_67

def AllocBody578_69 : StackLang.HolProg 64 :=
.seq AllocBody578_55 AllocBody578_68

def AllocBody578_70 : StackLang.HolProg 64 :=
.seq AllocBody578_54 AllocBody578_69

def AllocBody578_71 : StackLang.HolProg 64 :=
.seq AllocBody578_53 AllocBody578_70

def AllocBody578_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody578_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody578_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody578_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody578_79 : StackLang.HolProg 64 :=
.seq AllocBody578_77 AllocBody578_78

def AllocBody578_80 : StackLang.HolProg 64 :=
.seq AllocBody578_76 AllocBody578_79

def AllocBody578_81 : StackLang.HolProg 64 :=
.seq AllocBody578_75 AllocBody578_80

def AllocBody578_82 : StackLang.HolProg 64 :=
.seq AllocBody578_74 AllocBody578_81

def AllocBody578_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody578_85 : StackLang.HolProg 64 :=
.seq AllocBody578_83 AllocBody578_84

def AllocBody578_86 : StackLang.HolProg 64 :=
.call (some (AllocBody578_82, 0, 578, 4)) (Sum.inl 572) (some (AllocBody578_85, 578, 5))

def AllocBody578_87 : StackLang.HolProg 64 :=
.seq AllocBody578_73 AllocBody578_86

def AllocBody578_88 : StackLang.HolProg 64 :=
.seq AllocBody578_72 AllocBody578_87

def AllocBody578_89 : StackLang.HolProg 64 :=
.seq AllocBody578_71 AllocBody578_88

def AllocBody578_90 : StackLang.HolProg 64 :=
.seq AllocBody578_52 AllocBody578_89

def AllocBody578_91 : StackLang.HolProg 64 :=
.seq AllocBody578_49 AllocBody578_90

def AllocBody578_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody578_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def AllocBody578_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2025#64)

def AllocBody578_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_99 : StackLang.HolProg 64 :=
.seq AllocBody578_97 AllocBody578_98

def AllocBody578_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody578_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody578_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 7

def AllocBody578_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody578_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody578_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody578_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody578_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_110 : StackLang.HolProg 64 :=
.seq AllocBody578_108 AllocBody578_109

def AllocBody578_111 : StackLang.HolProg 64 :=
.seq AllocBody578_107 AllocBody578_110

def AllocBody578_112 : StackLang.HolProg 64 :=
.seq AllocBody578_106 AllocBody578_111

def AllocBody578_113 : StackLang.HolProg 64 :=
.seq AllocBody578_105 AllocBody578_112

def AllocBody578_114 : StackLang.HolProg 64 :=
.seq AllocBody578_104 AllocBody578_113

def AllocBody578_115 : StackLang.HolProg 64 :=
.seq AllocBody578_103 AllocBody578_114

def AllocBody578_116 : StackLang.HolProg 64 :=
.seq AllocBody578_102 AllocBody578_115

def AllocBody578_117 : StackLang.HolProg 64 :=
.seq AllocBody578_101 AllocBody578_116

def AllocBody578_118 : StackLang.HolProg 64 :=
.seq AllocBody578_100 AllocBody578_117

def AllocBody578_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody578_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody578_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody578_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_126 : StackLang.HolProg 64 :=
.seq AllocBody578_124 AllocBody578_125

def AllocBody578_127 : StackLang.HolProg 64 :=
.seq AllocBody578_123 AllocBody578_126

def AllocBody578_128 : StackLang.HolProg 64 :=
.seq AllocBody578_122 AllocBody578_127

def AllocBody578_129 : StackLang.HolProg 64 :=
.seq AllocBody578_121 AllocBody578_128

def AllocBody578_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody578_132 : StackLang.HolProg 64 :=
.seq AllocBody578_130 AllocBody578_131

def AllocBody578_133 : StackLang.HolProg 64 :=
.call (some (AllocBody578_129, 0, 578, 6)) (Sum.inl 477) (some (AllocBody578_132, 578, 7))

def AllocBody578_134 : StackLang.HolProg 64 :=
.seq AllocBody578_120 AllocBody578_133

def AllocBody578_135 : StackLang.HolProg 64 :=
.seq AllocBody578_119 AllocBody578_134

def AllocBody578_136 : StackLang.HolProg 64 :=
.seq AllocBody578_118 AllocBody578_135

def AllocBody578_137 : StackLang.HolProg 64 :=
.seq AllocBody578_99 AllocBody578_136

def AllocBody578_138 : StackLang.HolProg 64 :=
.seq AllocBody578_96 AllocBody578_137

def AllocBody578_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody578_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody578_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2026#64)

def AllocBody578_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_145 : StackLang.HolProg 64 :=
.seq AllocBody578_143 AllocBody578_144

def AllocBody578_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody578_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody578_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody578_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 9

def AllocBody578_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody578_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody578_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody578_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody578_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_156 : StackLang.HolProg 64 :=
.seq AllocBody578_154 AllocBody578_155

def AllocBody578_157 : StackLang.HolProg 64 :=
.seq AllocBody578_153 AllocBody578_156

def AllocBody578_158 : StackLang.HolProg 64 :=
.seq AllocBody578_152 AllocBody578_157

def AllocBody578_159 : StackLang.HolProg 64 :=
.seq AllocBody578_151 AllocBody578_158

def AllocBody578_160 : StackLang.HolProg 64 :=
.seq AllocBody578_150 AllocBody578_159

def AllocBody578_161 : StackLang.HolProg 64 :=
.seq AllocBody578_149 AllocBody578_160

def AllocBody578_162 : StackLang.HolProg 64 :=
.seq AllocBody578_148 AllocBody578_161

def AllocBody578_163 : StackLang.HolProg 64 :=
.seq AllocBody578_147 AllocBody578_162

def AllocBody578_164 : StackLang.HolProg 64 :=
.seq AllocBody578_146 AllocBody578_163

def AllocBody578_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody578_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody578_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody578_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody578_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody578_172 : StackLang.HolProg 64 :=
.seq AllocBody578_170 AllocBody578_171

def AllocBody578_173 : StackLang.HolProg 64 :=
.seq AllocBody578_169 AllocBody578_172

def AllocBody578_174 : StackLang.HolProg 64 :=
.seq AllocBody578_168 AllocBody578_173

def AllocBody578_175 : StackLang.HolProg 64 :=
.seq AllocBody578_167 AllocBody578_174

def AllocBody578_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody578_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody578_178 : StackLang.HolProg 64 :=
.seq AllocBody578_176 AllocBody578_177

def AllocBody578_179 : StackLang.HolProg 64 :=
.call (some (AllocBody578_175, 0, 578, 8)) (Sum.inl 490) (some (AllocBody578_178, 578, 9))

def AllocBody578_180 : StackLang.HolProg 64 :=
.seq AllocBody578_166 AllocBody578_179

def AllocBody578_181 : StackLang.HolProg 64 :=
.seq AllocBody578_165 AllocBody578_180

def AllocBody578_182 : StackLang.HolProg 64 :=
.seq AllocBody578_164 AllocBody578_181

def AllocBody578_183 : StackLang.HolProg 64 :=
.seq AllocBody578_145 AllocBody578_182

def AllocBody578_184 : StackLang.HolProg 64 :=
.seq AllocBody578_142 AllocBody578_183

def AllocBody578_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody578_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody578_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody578_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody578_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody578_190 : StackLang.HolProg 64 :=
.seq AllocBody578_188 AllocBody578_189

def AllocBody578_191 : StackLang.HolProg 64 :=
.seq AllocBody578_187 AllocBody578_190

def AllocBody578_192 : StackLang.HolProg 64 :=
.seq AllocBody578_186 AllocBody578_191

def AllocBody578_193 : StackLang.HolProg 64 :=
.seq AllocBody578_185 AllocBody578_192

def AllocBody578_194 : StackLang.HolProg 64 :=
.seq AllocBody578_184 AllocBody578_193

def AllocBody578_195 : StackLang.HolProg 64 :=
.seq AllocBody578_141 AllocBody578_194

def AllocBody578_196 : StackLang.HolProg 64 :=
.seq AllocBody578_140 AllocBody578_195

def AllocBody578_197 : StackLang.HolProg 64 :=
.seq AllocBody578_139 AllocBody578_196

def AllocBody578_198 : StackLang.HolProg 64 :=
.seq AllocBody578_138 AllocBody578_197

def AllocBody578_199 : StackLang.HolProg 64 :=
.seq AllocBody578_95 AllocBody578_198

def AllocBody578_200 : StackLang.HolProg 64 :=
.seq AllocBody578_94 AllocBody578_199

def AllocBody578_201 : StackLang.HolProg 64 :=
.seq AllocBody578_93 AllocBody578_200

def AllocBody578_202 : StackLang.HolProg 64 :=
.seq AllocBody578_92 AllocBody578_201

def AllocBody578_203 : StackLang.HolProg 64 :=
.seq AllocBody578_91 AllocBody578_202

def AllocBody578_204 : StackLang.HolProg 64 :=
.seq AllocBody578_48 AllocBody578_203

def AllocBody578_205 : StackLang.HolProg 64 :=
.seq AllocBody578_47 AllocBody578_204

def AllocBody578_206 : StackLang.HolProg 64 :=
.seq AllocBody578_46 AllocBody578_205

def AllocBody578_207 : StackLang.HolProg 64 :=
.seq AllocBody578_3 AllocBody578_206

def AllocBody578_208 : StackLang.HolProg 64 :=
.seq AllocBody578_2 AllocBody578_207

def AllocBody578_209 : StackLang.HolProg 64 :=
.seq AllocBody578_1 AllocBody578_208

def AllocBody578_210 : StackLang.HolProg 64 :=
.seq AllocBody578_0 AllocBody578_209

def Alloc578 : Nat × StackLang.HolProg 64 := (578, AllocBody578_210)
theorem Alloc578_eq : StackAlloc.progComp (578, raw578) = Alloc578 := by
  kernel_rfl
#print axioms Alloc578_eq
end InitECandidate.Proofs.BackendStages
