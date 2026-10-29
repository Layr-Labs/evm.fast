import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function578
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody578_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody578_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody578_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody578_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2023#64)

def rawBody578_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_7 : StackLang.HolProg 64 :=
.seq rawBody578_5 rawBody578_6

def rawBody578_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody578_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody578_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 3

def rawBody578_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody578_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody578_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody578_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody578_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_18 : StackLang.HolProg 64 :=
.seq rawBody578_16 rawBody578_17

def rawBody578_19 : StackLang.HolProg 64 :=
.seq rawBody578_15 rawBody578_18

def rawBody578_20 : StackLang.HolProg 64 :=
.seq rawBody578_14 rawBody578_19

def rawBody578_21 : StackLang.HolProg 64 :=
.seq rawBody578_13 rawBody578_20

def rawBody578_22 : StackLang.HolProg 64 :=
.seq rawBody578_12 rawBody578_21

def rawBody578_23 : StackLang.HolProg 64 :=
.seq rawBody578_11 rawBody578_22

def rawBody578_24 : StackLang.HolProg 64 :=
.seq rawBody578_10 rawBody578_23

def rawBody578_25 : StackLang.HolProg 64 :=
.seq rawBody578_9 rawBody578_24

def rawBody578_26 : StackLang.HolProg 64 :=
.seq rawBody578_8 rawBody578_25

def rawBody578_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody578_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody578_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody578_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_34 : StackLang.HolProg 64 :=
.seq rawBody578_32 rawBody578_33

def rawBody578_35 : StackLang.HolProg 64 :=
.seq rawBody578_31 rawBody578_34

def rawBody578_36 : StackLang.HolProg 64 :=
.seq rawBody578_30 rawBody578_35

def rawBody578_37 : StackLang.HolProg 64 :=
.seq rawBody578_29 rawBody578_36

def rawBody578_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody578_40 : StackLang.HolProg 64 :=
.seq rawBody578_38 rawBody578_39

def rawBody578_41 : StackLang.HolProg 64 :=
.call (some (rawBody578_37, 0, 578, 2)) (Sum.inl 470) (some (rawBody578_40, 578, 3))

def rawBody578_42 : StackLang.HolProg 64 :=
.seq rawBody578_28 rawBody578_41

def rawBody578_43 : StackLang.HolProg 64 :=
.seq rawBody578_27 rawBody578_42

def rawBody578_44 : StackLang.HolProg 64 :=
.seq rawBody578_26 rawBody578_43

def rawBody578_45 : StackLang.HolProg 64 :=
.seq rawBody578_7 rawBody578_44

def rawBody578_46 : StackLang.HolProg 64 :=
.seq rawBody578_4 rawBody578_45

def rawBody578_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody578_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2024#64)

def rawBody578_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_52 : StackLang.HolProg 64 :=
.seq rawBody578_50 rawBody578_51

def rawBody578_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody578_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody578_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 5

def rawBody578_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody578_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody578_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody578_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody578_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_63 : StackLang.HolProg 64 :=
.seq rawBody578_61 rawBody578_62

def rawBody578_64 : StackLang.HolProg 64 :=
.seq rawBody578_60 rawBody578_63

def rawBody578_65 : StackLang.HolProg 64 :=
.seq rawBody578_59 rawBody578_64

def rawBody578_66 : StackLang.HolProg 64 :=
.seq rawBody578_58 rawBody578_65

def rawBody578_67 : StackLang.HolProg 64 :=
.seq rawBody578_57 rawBody578_66

def rawBody578_68 : StackLang.HolProg 64 :=
.seq rawBody578_56 rawBody578_67

def rawBody578_69 : StackLang.HolProg 64 :=
.seq rawBody578_55 rawBody578_68

def rawBody578_70 : StackLang.HolProg 64 :=
.seq rawBody578_54 rawBody578_69

def rawBody578_71 : StackLang.HolProg 64 :=
.seq rawBody578_53 rawBody578_70

def rawBody578_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody578_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody578_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody578_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody578_79 : StackLang.HolProg 64 :=
.seq rawBody578_77 rawBody578_78

def rawBody578_80 : StackLang.HolProg 64 :=
.seq rawBody578_76 rawBody578_79

def rawBody578_81 : StackLang.HolProg 64 :=
.seq rawBody578_75 rawBody578_80

def rawBody578_82 : StackLang.HolProg 64 :=
.seq rawBody578_74 rawBody578_81

def rawBody578_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody578_85 : StackLang.HolProg 64 :=
.seq rawBody578_83 rawBody578_84

def rawBody578_86 : StackLang.HolProg 64 :=
.call (some (rawBody578_82, 0, 578, 4)) (Sum.inl 572) (some (rawBody578_85, 578, 5))

def rawBody578_87 : StackLang.HolProg 64 :=
.seq rawBody578_73 rawBody578_86

def rawBody578_88 : StackLang.HolProg 64 :=
.seq rawBody578_72 rawBody578_87

def rawBody578_89 : StackLang.HolProg 64 :=
.seq rawBody578_71 rawBody578_88

def rawBody578_90 : StackLang.HolProg 64 :=
.seq rawBody578_52 rawBody578_89

def rawBody578_91 : StackLang.HolProg 64 :=
.seq rawBody578_49 rawBody578_90

def rawBody578_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody578_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 80#64))

def rawBody578_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2025#64)

def rawBody578_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_99 : StackLang.HolProg 64 :=
.seq rawBody578_97 rawBody578_98

def rawBody578_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody578_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody578_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 7

def rawBody578_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody578_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody578_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody578_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody578_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_110 : StackLang.HolProg 64 :=
.seq rawBody578_108 rawBody578_109

def rawBody578_111 : StackLang.HolProg 64 :=
.seq rawBody578_107 rawBody578_110

def rawBody578_112 : StackLang.HolProg 64 :=
.seq rawBody578_106 rawBody578_111

def rawBody578_113 : StackLang.HolProg 64 :=
.seq rawBody578_105 rawBody578_112

def rawBody578_114 : StackLang.HolProg 64 :=
.seq rawBody578_104 rawBody578_113

def rawBody578_115 : StackLang.HolProg 64 :=
.seq rawBody578_103 rawBody578_114

def rawBody578_116 : StackLang.HolProg 64 :=
.seq rawBody578_102 rawBody578_115

def rawBody578_117 : StackLang.HolProg 64 :=
.seq rawBody578_101 rawBody578_116

def rawBody578_118 : StackLang.HolProg 64 :=
.seq rawBody578_100 rawBody578_117

def rawBody578_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody578_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody578_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody578_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_126 : StackLang.HolProg 64 :=
.seq rawBody578_124 rawBody578_125

def rawBody578_127 : StackLang.HolProg 64 :=
.seq rawBody578_123 rawBody578_126

def rawBody578_128 : StackLang.HolProg 64 :=
.seq rawBody578_122 rawBody578_127

def rawBody578_129 : StackLang.HolProg 64 :=
.seq rawBody578_121 rawBody578_128

def rawBody578_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody578_132 : StackLang.HolProg 64 :=
.seq rawBody578_130 rawBody578_131

def rawBody578_133 : StackLang.HolProg 64 :=
.call (some (rawBody578_129, 0, 578, 6)) (Sum.inl 477) (some (rawBody578_132, 578, 7))

def rawBody578_134 : StackLang.HolProg 64 :=
.seq rawBody578_120 rawBody578_133

def rawBody578_135 : StackLang.HolProg 64 :=
.seq rawBody578_119 rawBody578_134

def rawBody578_136 : StackLang.HolProg 64 :=
.seq rawBody578_118 rawBody578_135

def rawBody578_137 : StackLang.HolProg 64 :=
.seq rawBody578_99 rawBody578_136

def rawBody578_138 : StackLang.HolProg 64 :=
.seq rawBody578_96 rawBody578_137

def rawBody578_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody578_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody578_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2026#64)

def rawBody578_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_145 : StackLang.HolProg 64 :=
.seq rawBody578_143 rawBody578_144

def rawBody578_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody578_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody578_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody578_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 578 9

def rawBody578_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody578_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody578_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody578_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody578_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_156 : StackLang.HolProg 64 :=
.seq rawBody578_154 rawBody578_155

def rawBody578_157 : StackLang.HolProg 64 :=
.seq rawBody578_153 rawBody578_156

def rawBody578_158 : StackLang.HolProg 64 :=
.seq rawBody578_152 rawBody578_157

def rawBody578_159 : StackLang.HolProg 64 :=
.seq rawBody578_151 rawBody578_158

def rawBody578_160 : StackLang.HolProg 64 :=
.seq rawBody578_150 rawBody578_159

def rawBody578_161 : StackLang.HolProg 64 :=
.seq rawBody578_149 rawBody578_160

def rawBody578_162 : StackLang.HolProg 64 :=
.seq rawBody578_148 rawBody578_161

def rawBody578_163 : StackLang.HolProg 64 :=
.seq rawBody578_147 rawBody578_162

def rawBody578_164 : StackLang.HolProg 64 :=
.seq rawBody578_146 rawBody578_163

def rawBody578_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody578_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody578_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody578_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody578_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody578_172 : StackLang.HolProg 64 :=
.seq rawBody578_170 rawBody578_171

def rawBody578_173 : StackLang.HolProg 64 :=
.seq rawBody578_169 rawBody578_172

def rawBody578_174 : StackLang.HolProg 64 :=
.seq rawBody578_168 rawBody578_173

def rawBody578_175 : StackLang.HolProg 64 :=
.seq rawBody578_167 rawBody578_174

def rawBody578_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody578_177 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody578_178 : StackLang.HolProg 64 :=
.seq rawBody578_176 rawBody578_177

def rawBody578_179 : StackLang.HolProg 64 :=
.call (some (rawBody578_175, 0, 578, 8)) (Sum.inl 490) (some (rawBody578_178, 578, 9))

def rawBody578_180 : StackLang.HolProg 64 :=
.seq rawBody578_166 rawBody578_179

def rawBody578_181 : StackLang.HolProg 64 :=
.seq rawBody578_165 rawBody578_180

def rawBody578_182 : StackLang.HolProg 64 :=
.seq rawBody578_164 rawBody578_181

def rawBody578_183 : StackLang.HolProg 64 :=
.seq rawBody578_145 rawBody578_182

def rawBody578_184 : StackLang.HolProg 64 :=
.seq rawBody578_142 rawBody578_183

def rawBody578_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody578_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody578_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody578_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody578_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody578_190 : StackLang.HolProg 64 :=
.seq rawBody578_188 rawBody578_189

def rawBody578_191 : StackLang.HolProg 64 :=
.seq rawBody578_187 rawBody578_190

def rawBody578_192 : StackLang.HolProg 64 :=
.seq rawBody578_186 rawBody578_191

def rawBody578_193 : StackLang.HolProg 64 :=
.seq rawBody578_185 rawBody578_192

def rawBody578_194 : StackLang.HolProg 64 :=
.seq rawBody578_184 rawBody578_193

def rawBody578_195 : StackLang.HolProg 64 :=
.seq rawBody578_141 rawBody578_194

def rawBody578_196 : StackLang.HolProg 64 :=
.seq rawBody578_140 rawBody578_195

def rawBody578_197 : StackLang.HolProg 64 :=
.seq rawBody578_139 rawBody578_196

def rawBody578_198 : StackLang.HolProg 64 :=
.seq rawBody578_138 rawBody578_197

def rawBody578_199 : StackLang.HolProg 64 :=
.seq rawBody578_95 rawBody578_198

def rawBody578_200 : StackLang.HolProg 64 :=
.seq rawBody578_94 rawBody578_199

def rawBody578_201 : StackLang.HolProg 64 :=
.seq rawBody578_93 rawBody578_200

def rawBody578_202 : StackLang.HolProg 64 :=
.seq rawBody578_92 rawBody578_201

def rawBody578_203 : StackLang.HolProg 64 :=
.seq rawBody578_91 rawBody578_202

def rawBody578_204 : StackLang.HolProg 64 :=
.seq rawBody578_48 rawBody578_203

def rawBody578_205 : StackLang.HolProg 64 :=
.seq rawBody578_47 rawBody578_204

def rawBody578_206 : StackLang.HolProg 64 :=
.seq rawBody578_46 rawBody578_205

def rawBody578_207 : StackLang.HolProg 64 :=
.seq rawBody578_3 rawBody578_206

def rawBody578_208 : StackLang.HolProg 64 :=
.seq rawBody578_2 rawBody578_207

def rawBody578_209 : StackLang.HolProg 64 :=
.seq rawBody578_1 rawBody578_208

def rawBody578_210 : StackLang.HolProg 64 :=
.seq rawBody578_0 rawBody578_209

def raw578 : StackLang.HolProg 64 := rawBody578_210
theorem raw578_eq : StackRawCall.compTop RawInfo.rawInfo (function578 (.list [])).1 = raw578 := by
  kernel_rfl
#print axioms raw578_eq
end InitECandidate.Proofs.BackendStages
