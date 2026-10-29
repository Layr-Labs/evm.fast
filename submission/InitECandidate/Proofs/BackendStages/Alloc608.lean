import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw608
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody608_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody608_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody608_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 5

def AllocBody608_3 : StackLang.HolProg 64 :=
.seq AllocBody608_1 AllocBody608_2

def AllocBody608_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2335#64)

def AllocBody608_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_7 : StackLang.HolProg 64 :=
.seq AllocBody608_5 AllocBody608_6

def AllocBody608_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 3

def AllocBody608_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_18 : StackLang.HolProg 64 :=
.seq AllocBody608_16 AllocBody608_17

def AllocBody608_19 : StackLang.HolProg 64 :=
.seq AllocBody608_15 AllocBody608_18

def AllocBody608_20 : StackLang.HolProg 64 :=
.seq AllocBody608_14 AllocBody608_19

def AllocBody608_21 : StackLang.HolProg 64 :=
.seq AllocBody608_13 AllocBody608_20

def AllocBody608_22 : StackLang.HolProg 64 :=
.seq AllocBody608_12 AllocBody608_21

def AllocBody608_23 : StackLang.HolProg 64 :=
.seq AllocBody608_11 AllocBody608_22

def AllocBody608_24 : StackLang.HolProg 64 :=
.seq AllocBody608_10 AllocBody608_23

def AllocBody608_25 : StackLang.HolProg 64 :=
.seq AllocBody608_9 AllocBody608_24

def AllocBody608_26 : StackLang.HolProg 64 :=
.seq AllocBody608_8 AllocBody608_25

def AllocBody608_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody608_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody608_35 : StackLang.HolProg 64 :=
.seq AllocBody608_33 AllocBody608_34

def AllocBody608_36 : StackLang.HolProg 64 :=
.seq AllocBody608_32 AllocBody608_35

def AllocBody608_37 : StackLang.HolProg 64 :=
.seq AllocBody608_31 AllocBody608_36

def AllocBody608_38 : StackLang.HolProg 64 :=
.seq AllocBody608_30 AllocBody608_37

def AllocBody608_39 : StackLang.HolProg 64 :=
.seq AllocBody608_29 AllocBody608_38

def AllocBody608_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody608_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_42 : StackLang.HolProg 64 :=
.seq AllocBody608_40 AllocBody608_41

def AllocBody608_43 : StackLang.HolProg 64 :=
.call (some (AllocBody608_39, 0, 608, 2)) (Sum.inl 390) (some (AllocBody608_42, 608, 3))

def AllocBody608_44 : StackLang.HolProg 64 :=
.seq AllocBody608_28 AllocBody608_43

def AllocBody608_45 : StackLang.HolProg 64 :=
.seq AllocBody608_27 AllocBody608_44

def AllocBody608_46 : StackLang.HolProg 64 :=
.seq AllocBody608_26 AllocBody608_45

def AllocBody608_47 : StackLang.HolProg 64 :=
.seq AllocBody608_7 AllocBody608_46

def AllocBody608_48 : StackLang.HolProg 64 :=
.seq AllocBody608_4 AllocBody608_47

def AllocBody608_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def AllocBody608_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody608_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody608_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody608_55 : StackLang.HolProg 64 :=
.seq AllocBody608_53 AllocBody608_54

def AllocBody608_56 : StackLang.HolProg 64 :=
.seq AllocBody608_52 AllocBody608_55

def AllocBody608_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2336#64)

def AllocBody608_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_60 : StackLang.HolProg 64 :=
.seq AllocBody608_58 AllocBody608_59

def AllocBody608_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 5

def AllocBody608_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_71 : StackLang.HolProg 64 :=
.seq AllocBody608_69 AllocBody608_70

def AllocBody608_72 : StackLang.HolProg 64 :=
.seq AllocBody608_68 AllocBody608_71

def AllocBody608_73 : StackLang.HolProg 64 :=
.seq AllocBody608_67 AllocBody608_72

def AllocBody608_74 : StackLang.HolProg 64 :=
.seq AllocBody608_66 AllocBody608_73

def AllocBody608_75 : StackLang.HolProg 64 :=
.seq AllocBody608_65 AllocBody608_74

def AllocBody608_76 : StackLang.HolProg 64 :=
.seq AllocBody608_64 AllocBody608_75

def AllocBody608_77 : StackLang.HolProg 64 :=
.seq AllocBody608_63 AllocBody608_76

def AllocBody608_78 : StackLang.HolProg 64 :=
.seq AllocBody608_62 AllocBody608_77

def AllocBody608_79 : StackLang.HolProg 64 :=
.seq AllocBody608_61 AllocBody608_78

def AllocBody608_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody608_87 : StackLang.HolProg 64 :=
.seq AllocBody608_85 AllocBody608_86

def AllocBody608_88 : StackLang.HolProg 64 :=
.seq AllocBody608_84 AllocBody608_87

def AllocBody608_89 : StackLang.HolProg 64 :=
.seq AllocBody608_83 AllocBody608_88

def AllocBody608_90 : StackLang.HolProg 64 :=
.seq AllocBody608_82 AllocBody608_89

def AllocBody608_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody608_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_93 : StackLang.HolProg 64 :=
.seq AllocBody608_91 AllocBody608_92

def AllocBody608_94 : StackLang.HolProg 64 :=
.call (some (AllocBody608_90, 0, 608, 4)) (Sum.inl 421) (some (AllocBody608_93, 608, 5))

def AllocBody608_95 : StackLang.HolProg 64 :=
.seq AllocBody608_81 AllocBody608_94

def AllocBody608_96 : StackLang.HolProg 64 :=
.seq AllocBody608_80 AllocBody608_95

def AllocBody608_97 : StackLang.HolProg 64 :=
.seq AllocBody608_79 AllocBody608_96

def AllocBody608_98 : StackLang.HolProg 64 :=
.seq AllocBody608_60 AllocBody608_97

def AllocBody608_99 : StackLang.HolProg 64 :=
.seq AllocBody608_57 AllocBody608_98

def AllocBody608_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody608_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody608_103 : StackLang.HolProg 64 :=
.seq AllocBody608_101 AllocBody608_102

def AllocBody608_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2337#64)

def AllocBody608_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_107 : StackLang.HolProg 64 :=
.seq AllocBody608_105 AllocBody608_106

def AllocBody608_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 7

def AllocBody608_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_118 : StackLang.HolProg 64 :=
.seq AllocBody608_116 AllocBody608_117

def AllocBody608_119 : StackLang.HolProg 64 :=
.seq AllocBody608_115 AllocBody608_118

def AllocBody608_120 : StackLang.HolProg 64 :=
.seq AllocBody608_114 AllocBody608_119

def AllocBody608_121 : StackLang.HolProg 64 :=
.seq AllocBody608_113 AllocBody608_120

def AllocBody608_122 : StackLang.HolProg 64 :=
.seq AllocBody608_112 AllocBody608_121

def AllocBody608_123 : StackLang.HolProg 64 :=
.seq AllocBody608_111 AllocBody608_122

def AllocBody608_124 : StackLang.HolProg 64 :=
.seq AllocBody608_110 AllocBody608_123

def AllocBody608_125 : StackLang.HolProg 64 :=
.seq AllocBody608_109 AllocBody608_124

def AllocBody608_126 : StackLang.HolProg 64 :=
.seq AllocBody608_108 AllocBody608_125

def AllocBody608_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody608_134 : StackLang.HolProg 64 :=
.seq AllocBody608_132 AllocBody608_133

def AllocBody608_135 : StackLang.HolProg 64 :=
.seq AllocBody608_131 AllocBody608_134

def AllocBody608_136 : StackLang.HolProg 64 :=
.seq AllocBody608_130 AllocBody608_135

def AllocBody608_137 : StackLang.HolProg 64 :=
.seq AllocBody608_129 AllocBody608_136

def AllocBody608_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody608_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_140 : StackLang.HolProg 64 :=
.seq AllocBody608_138 AllocBody608_139

def AllocBody608_141 : StackLang.HolProg 64 :=
.call (some (AllocBody608_137, 0, 608, 6)) (Sum.inl 425) (some (AllocBody608_140, 608, 7))

def AllocBody608_142 : StackLang.HolProg 64 :=
.seq AllocBody608_128 AllocBody608_141

def AllocBody608_143 : StackLang.HolProg 64 :=
.seq AllocBody608_127 AllocBody608_142

def AllocBody608_144 : StackLang.HolProg 64 :=
.seq AllocBody608_126 AllocBody608_143

def AllocBody608_145 : StackLang.HolProg 64 :=
.seq AllocBody608_107 AllocBody608_144

def AllocBody608_146 : StackLang.HolProg 64 :=
.seq AllocBody608_104 AllocBody608_145

def AllocBody608_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody608_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2338#64)

def AllocBody608_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_152 : StackLang.HolProg 64 :=
.seq AllocBody608_150 AllocBody608_151

def AllocBody608_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 9

def AllocBody608_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_163 : StackLang.HolProg 64 :=
.seq AllocBody608_161 AllocBody608_162

def AllocBody608_164 : StackLang.HolProg 64 :=
.seq AllocBody608_160 AllocBody608_163

def AllocBody608_165 : StackLang.HolProg 64 :=
.seq AllocBody608_159 AllocBody608_164

def AllocBody608_166 : StackLang.HolProg 64 :=
.seq AllocBody608_158 AllocBody608_165

def AllocBody608_167 : StackLang.HolProg 64 :=
.seq AllocBody608_157 AllocBody608_166

def AllocBody608_168 : StackLang.HolProg 64 :=
.seq AllocBody608_156 AllocBody608_167

def AllocBody608_169 : StackLang.HolProg 64 :=
.seq AllocBody608_155 AllocBody608_168

def AllocBody608_170 : StackLang.HolProg 64 :=
.seq AllocBody608_154 AllocBody608_169

def AllocBody608_171 : StackLang.HolProg 64 :=
.seq AllocBody608_153 AllocBody608_170

def AllocBody608_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody608_179 : StackLang.HolProg 64 :=
.seq AllocBody608_177 AllocBody608_178

def AllocBody608_180 : StackLang.HolProg 64 :=
.seq AllocBody608_176 AllocBody608_179

def AllocBody608_181 : StackLang.HolProg 64 :=
.seq AllocBody608_175 AllocBody608_180

def AllocBody608_182 : StackLang.HolProg 64 :=
.seq AllocBody608_174 AllocBody608_181

def AllocBody608_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody608_184 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_185 : StackLang.HolProg 64 :=
.seq AllocBody608_183 AllocBody608_184

def AllocBody608_186 : StackLang.HolProg 64 :=
.call (some (AllocBody608_182, 0, 608, 8)) (Sum.inl 430) (some (AllocBody608_185, 608, 9))

def AllocBody608_187 : StackLang.HolProg 64 :=
.seq AllocBody608_173 AllocBody608_186

def AllocBody608_188 : StackLang.HolProg 64 :=
.seq AllocBody608_172 AllocBody608_187

def AllocBody608_189 : StackLang.HolProg 64 :=
.seq AllocBody608_171 AllocBody608_188

def AllocBody608_190 : StackLang.HolProg 64 :=
.seq AllocBody608_152 AllocBody608_189

def AllocBody608_191 : StackLang.HolProg 64 :=
.seq AllocBody608_149 AllocBody608_190

def AllocBody608_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody608_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody608_195 : StackLang.HolProg 64 :=
.seq AllocBody608_193 AllocBody608_194

def AllocBody608_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2339#64)

def AllocBody608_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_199 : StackLang.HolProg 64 :=
.seq AllocBody608_197 AllocBody608_198

def AllocBody608_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 11

def AllocBody608_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_210 : StackLang.HolProg 64 :=
.seq AllocBody608_208 AllocBody608_209

def AllocBody608_211 : StackLang.HolProg 64 :=
.seq AllocBody608_207 AllocBody608_210

def AllocBody608_212 : StackLang.HolProg 64 :=
.seq AllocBody608_206 AllocBody608_211

def AllocBody608_213 : StackLang.HolProg 64 :=
.seq AllocBody608_205 AllocBody608_212

def AllocBody608_214 : StackLang.HolProg 64 :=
.seq AllocBody608_204 AllocBody608_213

def AllocBody608_215 : StackLang.HolProg 64 :=
.seq AllocBody608_203 AllocBody608_214

def AllocBody608_216 : StackLang.HolProg 64 :=
.seq AllocBody608_202 AllocBody608_215

def AllocBody608_217 : StackLang.HolProg 64 :=
.seq AllocBody608_201 AllocBody608_216

def AllocBody608_218 : StackLang.HolProg 64 :=
.seq AllocBody608_200 AllocBody608_217

def AllocBody608_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody608_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody608_227 : StackLang.HolProg 64 :=
.seq AllocBody608_225 AllocBody608_226

def AllocBody608_228 : StackLang.HolProg 64 :=
.seq AllocBody608_224 AllocBody608_227

def AllocBody608_229 : StackLang.HolProg 64 :=
.seq AllocBody608_223 AllocBody608_228

def AllocBody608_230 : StackLang.HolProg 64 :=
.seq AllocBody608_222 AllocBody608_229

def AllocBody608_231 : StackLang.HolProg 64 :=
.seq AllocBody608_221 AllocBody608_230

def AllocBody608_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 5

def AllocBody608_233 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_234 : StackLang.HolProg 64 :=
.seq AllocBody608_232 AllocBody608_233

def AllocBody608_235 : StackLang.HolProg 64 :=
.call (some (AllocBody608_231, 0, 608, 10)) (Sum.inl 606) (some (AllocBody608_234, 608, 11))

def AllocBody608_236 : StackLang.HolProg 64 :=
.seq AllocBody608_220 AllocBody608_235

def AllocBody608_237 : StackLang.HolProg 64 :=
.seq AllocBody608_219 AllocBody608_236

def AllocBody608_238 : StackLang.HolProg 64 :=
.seq AllocBody608_218 AllocBody608_237

def AllocBody608_239 : StackLang.HolProg 64 :=
.seq AllocBody608_199 AllocBody608_238

def AllocBody608_240 : StackLang.HolProg 64 :=
.seq AllocBody608_196 AllocBody608_239

def AllocBody608_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def AllocBody608_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody608_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody608_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody608_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody608_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody608_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def AllocBody608_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody608_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody608_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody608_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody608_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 4

def AllocBody608_258 : StackLang.HolProg 64 :=
.seq AllocBody608_256 AllocBody608_257

def AllocBody608_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody608_260 : StackLang.HolProg 64 :=
.seq AllocBody608_258 AllocBody608_259

def AllocBody608_261 : StackLang.HolProg 64 :=
.seq AllocBody608_255 AllocBody608_260

def AllocBody608_262 : StackLang.HolProg 64 :=
.seq AllocBody608_254 AllocBody608_261

def AllocBody608_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2340#64)

def AllocBody608_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_266 : StackLang.HolProg 64 :=
.seq AllocBody608_264 AllocBody608_265

def AllocBody608_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 19

def AllocBody608_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_277 : StackLang.HolProg 64 :=
.seq AllocBody608_275 AllocBody608_276

def AllocBody608_278 : StackLang.HolProg 64 :=
.seq AllocBody608_274 AllocBody608_277

def AllocBody608_279 : StackLang.HolProg 64 :=
.seq AllocBody608_273 AllocBody608_278

def AllocBody608_280 : StackLang.HolProg 64 :=
.seq AllocBody608_272 AllocBody608_279

def AllocBody608_281 : StackLang.HolProg 64 :=
.seq AllocBody608_271 AllocBody608_280

def AllocBody608_282 : StackLang.HolProg 64 :=
.seq AllocBody608_270 AllocBody608_281

def AllocBody608_283 : StackLang.HolProg 64 :=
.seq AllocBody608_269 AllocBody608_282

def AllocBody608_284 : StackLang.HolProg 64 :=
.seq AllocBody608_268 AllocBody608_283

def AllocBody608_285 : StackLang.HolProg 64 :=
.seq AllocBody608_267 AllocBody608_284

def AllocBody608_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody608_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody608_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody608_295 : StackLang.HolProg 64 :=
.seq AllocBody608_293 AllocBody608_294

def AllocBody608_296 : StackLang.HolProg 64 :=
.seq AllocBody608_292 AllocBody608_295

def AllocBody608_297 : StackLang.HolProg 64 :=
.seq AllocBody608_291 AllocBody608_296

def AllocBody608_298 : StackLang.HolProg 64 :=
.seq AllocBody608_290 AllocBody608_297

def AllocBody608_299 : StackLang.HolProg 64 :=
.seq AllocBody608_289 AllocBody608_298

def AllocBody608_300 : StackLang.HolProg 64 :=
.seq AllocBody608_288 AllocBody608_299

def AllocBody608_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def AllocBody608_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_304 : StackLang.HolProg 64 :=
.seq AllocBody608_302 AllocBody608_303

def AllocBody608_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def AllocBody608_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody608_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody608_309 : StackLang.HolProg 64 :=
.seq AllocBody608_307 AllocBody608_308

def AllocBody608_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2341#64)

def AllocBody608_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_313 : StackLang.HolProg 64 :=
.seq AllocBody608_311 AllocBody608_312

def AllocBody608_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 14

def AllocBody608_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_324 : StackLang.HolProg 64 :=
.seq AllocBody608_322 AllocBody608_323

def AllocBody608_325 : StackLang.HolProg 64 :=
.seq AllocBody608_321 AllocBody608_324

def AllocBody608_326 : StackLang.HolProg 64 :=
.seq AllocBody608_320 AllocBody608_325

def AllocBody608_327 : StackLang.HolProg 64 :=
.seq AllocBody608_319 AllocBody608_326

def AllocBody608_328 : StackLang.HolProg 64 :=
.seq AllocBody608_318 AllocBody608_327

def AllocBody608_329 : StackLang.HolProg 64 :=
.seq AllocBody608_317 AllocBody608_328

def AllocBody608_330 : StackLang.HolProg 64 :=
.seq AllocBody608_316 AllocBody608_329

def AllocBody608_331 : StackLang.HolProg 64 :=
.seq AllocBody608_315 AllocBody608_330

def AllocBody608_332 : StackLang.HolProg 64 :=
.seq AllocBody608_314 AllocBody608_331

def AllocBody608_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_340 : StackLang.HolProg 64 :=
.seq AllocBody608_338 AllocBody608_339

def AllocBody608_341 : StackLang.HolProg 64 :=
.seq AllocBody608_337 AllocBody608_340

def AllocBody608_342 : StackLang.HolProg 64 :=
.seq AllocBody608_336 AllocBody608_341

def AllocBody608_343 : StackLang.HolProg 64 :=
.seq AllocBody608_335 AllocBody608_342

def AllocBody608_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_345 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_346 : StackLang.HolProg 64 :=
.seq AllocBody608_344 AllocBody608_345

def AllocBody608_347 : StackLang.HolProg 64 :=
.call (some (AllocBody608_343, 0, 608, 13)) (Sum.inl 391) (some (AllocBody608_346, 608, 14))

def AllocBody608_348 : StackLang.HolProg 64 :=
.seq AllocBody608_334 AllocBody608_347

def AllocBody608_349 : StackLang.HolProg 64 :=
.seq AllocBody608_333 AllocBody608_348

def AllocBody608_350 : StackLang.HolProg 64 :=
.seq AllocBody608_332 AllocBody608_349

def AllocBody608_351 : StackLang.HolProg 64 :=
.seq AllocBody608_313 AllocBody608_350

def AllocBody608_352 : StackLang.HolProg 64 :=
.seq AllocBody608_310 AllocBody608_351

def AllocBody608_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2342#64)

def AllocBody608_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_358 : StackLang.HolProg 64 :=
.seq AllocBody608_356 AllocBody608_357

def AllocBody608_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 16

def AllocBody608_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_369 : StackLang.HolProg 64 :=
.seq AllocBody608_367 AllocBody608_368

def AllocBody608_370 : StackLang.HolProg 64 :=
.seq AllocBody608_366 AllocBody608_369

def AllocBody608_371 : StackLang.HolProg 64 :=
.seq AllocBody608_365 AllocBody608_370

def AllocBody608_372 : StackLang.HolProg 64 :=
.seq AllocBody608_364 AllocBody608_371

def AllocBody608_373 : StackLang.HolProg 64 :=
.seq AllocBody608_363 AllocBody608_372

def AllocBody608_374 : StackLang.HolProg 64 :=
.seq AllocBody608_362 AllocBody608_373

def AllocBody608_375 : StackLang.HolProg 64 :=
.seq AllocBody608_361 AllocBody608_374

def AllocBody608_376 : StackLang.HolProg 64 :=
.seq AllocBody608_360 AllocBody608_375

def AllocBody608_377 : StackLang.HolProg 64 :=
.seq AllocBody608_359 AllocBody608_376

def AllocBody608_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody608_385 : StackLang.HolProg 64 :=
.seq AllocBody608_383 AllocBody608_384

def AllocBody608_386 : StackLang.HolProg 64 :=
.seq AllocBody608_382 AllocBody608_385

def AllocBody608_387 : StackLang.HolProg 64 :=
.seq AllocBody608_381 AllocBody608_386

def AllocBody608_388 : StackLang.HolProg 64 :=
.seq AllocBody608_380 AllocBody608_387

def AllocBody608_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody608_390 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_391 : StackLang.HolProg 64 :=
.seq AllocBody608_389 AllocBody608_390

def AllocBody608_392 : StackLang.HolProg 64 :=
.call (some (AllocBody608_388, 0, 608, 15)) (Sum.inl 474) (some (AllocBody608_391, 608, 16))

def AllocBody608_393 : StackLang.HolProg 64 :=
.seq AllocBody608_379 AllocBody608_392

def AllocBody608_394 : StackLang.HolProg 64 :=
.seq AllocBody608_378 AllocBody608_393

def AllocBody608_395 : StackLang.HolProg 64 :=
.seq AllocBody608_377 AllocBody608_394

def AllocBody608_396 : StackLang.HolProg 64 :=
.seq AllocBody608_358 AllocBody608_395

def AllocBody608_397 : StackLang.HolProg 64 :=
.seq AllocBody608_355 AllocBody608_396

def AllocBody608_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody608_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2343#64)

def AllocBody608_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_403 : StackLang.HolProg 64 :=
.seq AllocBody608_401 AllocBody608_402

def AllocBody608_404 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 18

def AllocBody608_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_414 : StackLang.HolProg 64 :=
.seq AllocBody608_412 AllocBody608_413

def AllocBody608_415 : StackLang.HolProg 64 :=
.seq AllocBody608_411 AllocBody608_414

def AllocBody608_416 : StackLang.HolProg 64 :=
.seq AllocBody608_410 AllocBody608_415

def AllocBody608_417 : StackLang.HolProg 64 :=
.seq AllocBody608_409 AllocBody608_416

def AllocBody608_418 : StackLang.HolProg 64 :=
.seq AllocBody608_408 AllocBody608_417

def AllocBody608_419 : StackLang.HolProg 64 :=
.seq AllocBody608_407 AllocBody608_418

def AllocBody608_420 : StackLang.HolProg 64 :=
.seq AllocBody608_406 AllocBody608_419

def AllocBody608_421 : StackLang.HolProg 64 :=
.seq AllocBody608_405 AllocBody608_420

def AllocBody608_422 : StackLang.HolProg 64 :=
.seq AllocBody608_404 AllocBody608_421

def AllocBody608_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody608_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody608_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody608_432 : StackLang.HolProg 64 :=
.seq AllocBody608_430 AllocBody608_431

def AllocBody608_433 : StackLang.HolProg 64 :=
.seq AllocBody608_429 AllocBody608_432

def AllocBody608_434 : StackLang.HolProg 64 :=
.seq AllocBody608_428 AllocBody608_433

def AllocBody608_435 : StackLang.HolProg 64 :=
.seq AllocBody608_427 AllocBody608_434

def AllocBody608_436 : StackLang.HolProg 64 :=
.seq AllocBody608_426 AllocBody608_435

def AllocBody608_437 : StackLang.HolProg 64 :=
.seq AllocBody608_425 AllocBody608_436

def AllocBody608_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def AllocBody608_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody608_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody608_441 : StackLang.HolProg 64 :=
.seq AllocBody608_439 AllocBody608_440

def AllocBody608_442 : StackLang.HolProg 64 :=
.seq AllocBody608_438 AllocBody608_441

def AllocBody608_443 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_444 : StackLang.HolProg 64 :=
.seq AllocBody608_442 AllocBody608_443

def AllocBody608_445 : StackLang.HolProg 64 :=
.call (some (AllocBody608_437, 0, 608, 17)) (Sum.inl 604) (some (AllocBody608_444, 608, 18))

def AllocBody608_446 : StackLang.HolProg 64 :=
.seq AllocBody608_424 AllocBody608_445

def AllocBody608_447 : StackLang.HolProg 64 :=
.seq AllocBody608_423 AllocBody608_446

def AllocBody608_448 : StackLang.HolProg 64 :=
.seq AllocBody608_422 AllocBody608_447

def AllocBody608_449 : StackLang.HolProg 64 :=
.seq AllocBody608_403 AllocBody608_448

def AllocBody608_450 : StackLang.HolProg 64 :=
.seq AllocBody608_400 AllocBody608_449

def AllocBody608_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody608_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody608_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody608_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody608_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def AllocBody608_457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody608_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody608_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody608_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def AllocBody608_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody608_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody608_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody608_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody608_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody608_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def AllocBody608_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody608_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody608_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_472 : StackLang.HolProg 64 :=
.seq AllocBody608_470 AllocBody608_471

def AllocBody608_473 : StackLang.HolProg 64 :=
.seq AllocBody608_469 AllocBody608_472

def AllocBody608_474 : StackLang.HolProg 64 :=
.seq AllocBody608_468 AllocBody608_473

def AllocBody608_475 : StackLang.HolProg 64 :=
.seq AllocBody608_467 AllocBody608_474

def AllocBody608_476 : StackLang.HolProg 64 :=
.seq AllocBody608_466 AllocBody608_475

def AllocBody608_477 : StackLang.HolProg 64 :=
.seq AllocBody608_465 AllocBody608_476

def AllocBody608_478 : StackLang.HolProg 64 :=
.seq AllocBody608_464 AllocBody608_477

def AllocBody608_479 : StackLang.HolProg 64 :=
.seq AllocBody608_463 AllocBody608_478

def AllocBody608_480 : StackLang.HolProg 64 :=
.seq AllocBody608_462 AllocBody608_479

def AllocBody608_481 : StackLang.HolProg 64 :=
.seq AllocBody608_461 AllocBody608_480

def AllocBody608_482 : StackLang.HolProg 64 :=
.seq AllocBody608_460 AllocBody608_481

def AllocBody608_483 : StackLang.HolProg 64 :=
.seq AllocBody608_459 AllocBody608_482

def AllocBody608_484 : StackLang.HolProg 64 :=
.seq AllocBody608_458 AllocBody608_483

def AllocBody608_485 : StackLang.HolProg 64 :=
.seq AllocBody608_457 AllocBody608_484

def AllocBody608_486 : StackLang.HolProg 64 :=
.seq AllocBody608_456 AllocBody608_485

def AllocBody608_487 : StackLang.HolProg 64 :=
.seq AllocBody608_455 AllocBody608_486

def AllocBody608_488 : StackLang.HolProg 64 :=
.seq AllocBody608_454 AllocBody608_487

def AllocBody608_489 : StackLang.HolProg 64 :=
.seq AllocBody608_453 AllocBody608_488

def AllocBody608_490 : StackLang.HolProg 64 :=
.seq AllocBody608_452 AllocBody608_489

def AllocBody608_491 : StackLang.HolProg 64 :=
.seq AllocBody608_451 AllocBody608_490

def AllocBody608_492 : StackLang.HolProg 64 :=
.seq AllocBody608_450 AllocBody608_491

def AllocBody608_493 : StackLang.HolProg 64 :=
.seq AllocBody608_399 AllocBody608_492

def AllocBody608_494 : StackLang.HolProg 64 :=
.seq AllocBody608_398 AllocBody608_493

def AllocBody608_495 : StackLang.HolProg 64 :=
.seq AllocBody608_397 AllocBody608_494

def AllocBody608_496 : StackLang.HolProg 64 :=
.seq AllocBody608_354 AllocBody608_495

def AllocBody608_497 : StackLang.HolProg 64 :=
.seq AllocBody608_353 AllocBody608_496

def AllocBody608_498 : StackLang.HolProg 64 :=
.seq AllocBody608_352 AllocBody608_497

def AllocBody608_499 : StackLang.HolProg 64 :=
.seq AllocBody608_309 AllocBody608_498

def AllocBody608_500 : StackLang.HolProg 64 :=
.seq AllocBody608_306 AllocBody608_499

def AllocBody608_501 : StackLang.HolProg 64 :=
.seq AllocBody608_305 AllocBody608_500

def AllocBody608_502 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) AllocBody608_304 AllocBody608_501

def AllocBody608_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_505 : StackLang.HolProg 64 :=
.seq AllocBody608_503 AllocBody608_504

def AllocBody608_506 : StackLang.HolProg 64 :=
.seq AllocBody608_502 AllocBody608_505

def AllocBody608_507 : StackLang.HolProg 64 :=
.seq AllocBody608_301 AllocBody608_506

def AllocBody608_508 : StackLang.HolProg 64 :=
.call (some (AllocBody608_300, 0, 608, 12)) (Sum.inl 607) (some (AllocBody608_507, 608, 19))

def AllocBody608_509 : StackLang.HolProg 64 :=
.seq AllocBody608_287 AllocBody608_508

def AllocBody608_510 : StackLang.HolProg 64 :=
.seq AllocBody608_286 AllocBody608_509

def AllocBody608_511 : StackLang.HolProg 64 :=
.seq AllocBody608_285 AllocBody608_510

def AllocBody608_512 : StackLang.HolProg 64 :=
.seq AllocBody608_266 AllocBody608_511

def AllocBody608_513 : StackLang.HolProg 64 :=
.seq AllocBody608_263 AllocBody608_512

def AllocBody608_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody608_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody608_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody608_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def AllocBody608_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody608_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody608_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody608_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def AllocBody608_524 : StackLang.HolProg 64 :=
.seq AllocBody608_522 AllocBody608_523

def AllocBody608_525 : StackLang.HolProg 64 :=
.seq AllocBody608_521 AllocBody608_524

def AllocBody608_526 : StackLang.HolProg 64 :=
.seq AllocBody608_520 AllocBody608_525

def AllocBody608_527 : StackLang.HolProg 64 :=
.seq AllocBody608_519 AllocBody608_526

def AllocBody608_528 : StackLang.HolProg 64 :=
.seq AllocBody608_518 AllocBody608_527

def AllocBody608_529 : StackLang.HolProg 64 :=
.seq AllocBody608_517 AllocBody608_528

def AllocBody608_530 : StackLang.HolProg 64 :=
.seq AllocBody608_516 AllocBody608_529

def AllocBody608_531 : StackLang.HolProg 64 :=
.seq AllocBody608_515 AllocBody608_530

def AllocBody608_532 : StackLang.HolProg 64 :=
.seq AllocBody608_514 AllocBody608_531

def AllocBody608_533 : StackLang.HolProg 64 :=
.seq AllocBody608_513 AllocBody608_532

def AllocBody608_534 : StackLang.HolProg 64 :=
.seq AllocBody608_262 AllocBody608_533

def AllocBody608_535 : StackLang.HolProg 64 :=
.seq AllocBody608_253 AllocBody608_534

def AllocBody608_536 : StackLang.HolProg 64 :=
.seq AllocBody608_252 AllocBody608_535

def AllocBody608_537 : StackLang.HolProg 64 :=
.seq AllocBody608_251 AllocBody608_536

def AllocBody608_538 : StackLang.HolProg 64 :=
.seq AllocBody608_250 AllocBody608_537

def AllocBody608_539 : StackLang.HolProg 64 :=
.seq AllocBody608_249 AllocBody608_538

def AllocBody608_540 : StackLang.HolProg 64 :=
.seq AllocBody608_248 AllocBody608_539

def AllocBody608_541 : StackLang.HolProg 64 :=
.seq AllocBody608_247 AllocBody608_540

def AllocBody608_542 : StackLang.HolProg 64 :=
.seq AllocBody608_246 AllocBody608_541

def AllocBody608_543 : StackLang.HolProg 64 :=
.seq AllocBody608_245 AllocBody608_542

def AllocBody608_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody608_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody608_546 : StackLang.HolProg 64 :=
.seq AllocBody608_544 AllocBody608_545

def AllocBody608_547 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody608_543 AllocBody608_546

def AllocBody608_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody608_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2344#64)

def AllocBody608_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_554 : StackLang.HolProg 64 :=
.seq AllocBody608_552 AllocBody608_553

def AllocBody608_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody608_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody608_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody608_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 21

def AllocBody608_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody608_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody608_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody608_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody608_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_565 : StackLang.HolProg 64 :=
.seq AllocBody608_563 AllocBody608_564

def AllocBody608_566 : StackLang.HolProg 64 :=
.seq AllocBody608_562 AllocBody608_565

def AllocBody608_567 : StackLang.HolProg 64 :=
.seq AllocBody608_561 AllocBody608_566

def AllocBody608_568 : StackLang.HolProg 64 :=
.seq AllocBody608_560 AllocBody608_567

def AllocBody608_569 : StackLang.HolProg 64 :=
.seq AllocBody608_559 AllocBody608_568

def AllocBody608_570 : StackLang.HolProg 64 :=
.seq AllocBody608_558 AllocBody608_569

def AllocBody608_571 : StackLang.HolProg 64 :=
.seq AllocBody608_557 AllocBody608_570

def AllocBody608_572 : StackLang.HolProg 64 :=
.seq AllocBody608_556 AllocBody608_571

def AllocBody608_573 : StackLang.HolProg 64 :=
.seq AllocBody608_555 AllocBody608_572

def AllocBody608_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody608_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody608_577 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody608_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody608_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody608_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody608_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody608_582 : StackLang.HolProg 64 :=
.seq AllocBody608_580 AllocBody608_581

def AllocBody608_583 : StackLang.HolProg 64 :=
.seq AllocBody608_579 AllocBody608_582

def AllocBody608_584 : StackLang.HolProg 64 :=
.seq AllocBody608_578 AllocBody608_583

def AllocBody608_585 : StackLang.HolProg 64 :=
.seq AllocBody608_577 AllocBody608_584

def AllocBody608_586 : StackLang.HolProg 64 :=
.seq AllocBody608_576 AllocBody608_585

def AllocBody608_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody608_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 5

def AllocBody608_589 : StackLang.HolProg 64 :=
.seq AllocBody608_587 AllocBody608_588

def AllocBody608_590 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody608_591 : StackLang.HolProg 64 :=
.seq AllocBody608_589 AllocBody608_590

def AllocBody608_592 : StackLang.HolProg 64 :=
.call (some (AllocBody608_586, 0, 608, 20)) (Sum.inl 391) (some (AllocBody608_591, 608, 21))

def AllocBody608_593 : StackLang.HolProg 64 :=
.seq AllocBody608_575 AllocBody608_592

def AllocBody608_594 : StackLang.HolProg 64 :=
.seq AllocBody608_574 AllocBody608_593

def AllocBody608_595 : StackLang.HolProg 64 :=
.seq AllocBody608_573 AllocBody608_594

def AllocBody608_596 : StackLang.HolProg 64 :=
.seq AllocBody608_554 AllocBody608_595

def AllocBody608_597 : StackLang.HolProg 64 :=
.seq AllocBody608_551 AllocBody608_596

def AllocBody608_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody608_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody608_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody608_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody608_602 : StackLang.HolProg 64 :=
.seq AllocBody608_600 AllocBody608_601

def AllocBody608_603 : StackLang.HolProg 64 :=
.seq AllocBody608_599 AllocBody608_602

def AllocBody608_604 : StackLang.HolProg 64 :=
.seq AllocBody608_598 AllocBody608_603

def AllocBody608_605 : StackLang.HolProg 64 :=
.seq AllocBody608_597 AllocBody608_604

def AllocBody608_606 : StackLang.HolProg 64 :=
.seq AllocBody608_550 AllocBody608_605

def AllocBody608_607 : StackLang.HolProg 64 :=
.seq AllocBody608_549 AllocBody608_606

def AllocBody608_608 : StackLang.HolProg 64 :=
.seq AllocBody608_548 AllocBody608_607

def AllocBody608_609 : StackLang.HolProg 64 :=
.seq AllocBody608_547 AllocBody608_608

def AllocBody608_610 : StackLang.HolProg 64 :=
.seq AllocBody608_244 AllocBody608_609

def AllocBody608_611 : StackLang.HolProg 64 :=
.seq AllocBody608_243 AllocBody608_610

def AllocBody608_612 : StackLang.HolProg 64 :=
.seq AllocBody608_242 AllocBody608_611

def AllocBody608_613 : StackLang.HolProg 64 :=
.seq AllocBody608_241 AllocBody608_612

def AllocBody608_614 : StackLang.HolProg 64 :=
.seq AllocBody608_240 AllocBody608_613

def AllocBody608_615 : StackLang.HolProg 64 :=
.seq AllocBody608_195 AllocBody608_614

def AllocBody608_616 : StackLang.HolProg 64 :=
.seq AllocBody608_192 AllocBody608_615

def AllocBody608_617 : StackLang.HolProg 64 :=
.seq AllocBody608_191 AllocBody608_616

def AllocBody608_618 : StackLang.HolProg 64 :=
.seq AllocBody608_148 AllocBody608_617

def AllocBody608_619 : StackLang.HolProg 64 :=
.seq AllocBody608_147 AllocBody608_618

def AllocBody608_620 : StackLang.HolProg 64 :=
.seq AllocBody608_146 AllocBody608_619

def AllocBody608_621 : StackLang.HolProg 64 :=
.seq AllocBody608_103 AllocBody608_620

def AllocBody608_622 : StackLang.HolProg 64 :=
.seq AllocBody608_100 AllocBody608_621

def AllocBody608_623 : StackLang.HolProg 64 :=
.seq AllocBody608_99 AllocBody608_622

def AllocBody608_624 : StackLang.HolProg 64 :=
.seq AllocBody608_56 AllocBody608_623

def AllocBody608_625 : StackLang.HolProg 64 :=
.seq AllocBody608_51 AllocBody608_624

def AllocBody608_626 : StackLang.HolProg 64 :=
.seq AllocBody608_50 AllocBody608_625

def AllocBody608_627 : StackLang.HolProg 64 :=
.seq AllocBody608_49 AllocBody608_626

def AllocBody608_628 : StackLang.HolProg 64 :=
.seq AllocBody608_48 AllocBody608_627

def AllocBody608_629 : StackLang.HolProg 64 :=
.seq AllocBody608_3 AllocBody608_628

def AllocBody608_630 : StackLang.HolProg 64 :=
.seq AllocBody608_0 AllocBody608_629

def Alloc608 : Nat × StackLang.HolProg 64 := (608, AllocBody608_630)
theorem Alloc608_eq : StackAlloc.progComp (608, raw608) = Alloc608 := by
  kernel_rfl
#print axioms Alloc608_eq
end InitECandidate.Proofs.BackendStages
