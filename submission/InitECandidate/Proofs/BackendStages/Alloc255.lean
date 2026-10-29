import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw255
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody255_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody255_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody255_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody255_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody255_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 6

def AllocBody255_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def AllocBody255_6 : StackLang.HolProg 64 :=
.seq AllocBody255_4 AllocBody255_5

def AllocBody255_7 : StackLang.HolProg 64 :=
.seq AllocBody255_3 AllocBody255_6

def AllocBody255_8 : StackLang.HolProg 64 :=
.seq AllocBody255_2 AllocBody255_7

def AllocBody255_9 : StackLang.HolProg 64 :=
.seq AllocBody255_1 AllocBody255_8

def AllocBody255_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 533#64)

def AllocBody255_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody255_13 : StackLang.HolProg 64 :=
.seq AllocBody255_11 AllocBody255_12

def AllocBody255_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody255_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody255_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody255_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 3

def AllocBody255_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody255_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody255_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody255_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody255_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody255_24 : StackLang.HolProg 64 :=
.seq AllocBody255_22 AllocBody255_23

def AllocBody255_25 : StackLang.HolProg 64 :=
.seq AllocBody255_21 AllocBody255_24

def AllocBody255_26 : StackLang.HolProg 64 :=
.seq AllocBody255_20 AllocBody255_25

def AllocBody255_27 : StackLang.HolProg 64 :=
.seq AllocBody255_19 AllocBody255_26

def AllocBody255_28 : StackLang.HolProg 64 :=
.seq AllocBody255_18 AllocBody255_27

def AllocBody255_29 : StackLang.HolProg 64 :=
.seq AllocBody255_17 AllocBody255_28

def AllocBody255_30 : StackLang.HolProg 64 :=
.seq AllocBody255_16 AllocBody255_29

def AllocBody255_31 : StackLang.HolProg 64 :=
.seq AllocBody255_15 AllocBody255_30

def AllocBody255_32 : StackLang.HolProg 64 :=
.seq AllocBody255_14 AllocBody255_31

def AllocBody255_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody255_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody255_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody255_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody255_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody255_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody255_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody255_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody255_43 : StackLang.HolProg 64 :=
.seq AllocBody255_41 AllocBody255_42

def AllocBody255_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody255_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody255_46 : StackLang.HolProg 64 :=
.seq AllocBody255_44 AllocBody255_45

def AllocBody255_47 : StackLang.HolProg 64 :=
.seq AllocBody255_43 AllocBody255_46

def AllocBody255_48 : StackLang.HolProg 64 :=
.seq AllocBody255_40 AllocBody255_47

def AllocBody255_49 : StackLang.HolProg 64 :=
.seq AllocBody255_39 AllocBody255_48

def AllocBody255_50 : StackLang.HolProg 64 :=
.seq AllocBody255_38 AllocBody255_49

def AllocBody255_51 : StackLang.HolProg 64 :=
.seq AllocBody255_37 AllocBody255_50

def AllocBody255_52 : StackLang.HolProg 64 :=
.seq AllocBody255_36 AllocBody255_51

def AllocBody255_53 : StackLang.HolProg 64 :=
.seq AllocBody255_35 AllocBody255_52

def AllocBody255_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody255_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody255_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody255_57 : StackLang.HolProg 64 :=
.seq AllocBody255_55 AllocBody255_56

def AllocBody255_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody255_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody255_60 : StackLang.HolProg 64 :=
.seq AllocBody255_58 AllocBody255_59

def AllocBody255_61 : StackLang.HolProg 64 :=
.seq AllocBody255_57 AllocBody255_60

def AllocBody255_62 : StackLang.HolProg 64 :=
.seq AllocBody255_54 AllocBody255_61

def AllocBody255_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody255_64 : StackLang.HolProg 64 :=
.seq AllocBody255_62 AllocBody255_63

def AllocBody255_65 : StackLang.HolProg 64 :=
.call (some (AllocBody255_53, 0, 255, 2)) (Sum.inl 251) (some (AllocBody255_64, 255, 3))

def AllocBody255_66 : StackLang.HolProg 64 :=
.seq AllocBody255_34 AllocBody255_65

def AllocBody255_67 : StackLang.HolProg 64 :=
.seq AllocBody255_33 AllocBody255_66

def AllocBody255_68 : StackLang.HolProg 64 :=
.seq AllocBody255_32 AllocBody255_67

def AllocBody255_69 : StackLang.HolProg 64 :=
.seq AllocBody255_13 AllocBody255_68

def AllocBody255_70 : StackLang.HolProg 64 :=
.seq AllocBody255_10 AllocBody255_69

def AllocBody255_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody255_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody255_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody255_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody255_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 70#64)

def AllocBody255_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def AllocBody255_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def AllocBody255_86 : StackLang.HolProg 64 :=
.seq AllocBody255_84 AllocBody255_85

def AllocBody255_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody255_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def AllocBody255_89 : StackLang.HolProg 64 :=
.seq AllocBody255_87 AllocBody255_88

def AllocBody255_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody255_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody255_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def AllocBody255_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody255_94 : StackLang.HolProg 64 :=
.seq AllocBody255_92 AllocBody255_93

def AllocBody255_95 : StackLang.HolProg 64 :=
.seq AllocBody255_91 AllocBody255_94

def AllocBody255_96 : StackLang.HolProg 64 :=
.seq AllocBody255_90 AllocBody255_95

def AllocBody255_97 : StackLang.HolProg 64 :=
.seq AllocBody255_89 AllocBody255_96

def AllocBody255_98 : StackLang.HolProg 64 :=
.seq AllocBody255_86 AllocBody255_97

def AllocBody255_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 534#64)

def AllocBody255_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody255_102 : StackLang.HolProg 64 :=
.seq AllocBody255_100 AllocBody255_101

def AllocBody255_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody255_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody255_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody255_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 255 5

def AllocBody255_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody255_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody255_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody255_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody255_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody255_113 : StackLang.HolProg 64 :=
.seq AllocBody255_111 AllocBody255_112

def AllocBody255_114 : StackLang.HolProg 64 :=
.seq AllocBody255_110 AllocBody255_113

def AllocBody255_115 : StackLang.HolProg 64 :=
.seq AllocBody255_109 AllocBody255_114

def AllocBody255_116 : StackLang.HolProg 64 :=
.seq AllocBody255_108 AllocBody255_115

def AllocBody255_117 : StackLang.HolProg 64 :=
.seq AllocBody255_107 AllocBody255_116

def AllocBody255_118 : StackLang.HolProg 64 :=
.seq AllocBody255_106 AllocBody255_117

def AllocBody255_119 : StackLang.HolProg 64 :=
.seq AllocBody255_105 AllocBody255_118

def AllocBody255_120 : StackLang.HolProg 64 :=
.seq AllocBody255_104 AllocBody255_119

def AllocBody255_121 : StackLang.HolProg 64 :=
.seq AllocBody255_103 AllocBody255_120

def AllocBody255_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody255_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody255_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody255_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody255_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody255_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody255_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody255_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody255_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody255_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody255_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody255_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody255_136 : StackLang.HolProg 64 :=
.seq AllocBody255_134 AllocBody255_135

def AllocBody255_137 : StackLang.HolProg 64 :=
.seq AllocBody255_133 AllocBody255_136

def AllocBody255_138 : StackLang.HolProg 64 :=
.seq AllocBody255_132 AllocBody255_137

def AllocBody255_139 : StackLang.HolProg 64 :=
.seq AllocBody255_131 AllocBody255_138

def AllocBody255_140 : StackLang.HolProg 64 :=
.seq AllocBody255_130 AllocBody255_139

def AllocBody255_141 : StackLang.HolProg 64 :=
.seq AllocBody255_129 AllocBody255_140

def AllocBody255_142 : StackLang.HolProg 64 :=
.seq AllocBody255_128 AllocBody255_141

def AllocBody255_143 : StackLang.HolProg 64 :=
.seq AllocBody255_127 AllocBody255_142

def AllocBody255_144 : StackLang.HolProg 64 :=
.seq AllocBody255_126 AllocBody255_143

def AllocBody255_145 : StackLang.HolProg 64 :=
.seq AllocBody255_125 AllocBody255_144

def AllocBody255_146 : StackLang.HolProg 64 :=
.seq AllocBody255_124 AllocBody255_145

def AllocBody255_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody255_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody255_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody255_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody255_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody255_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody255_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody255_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody255_155 : StackLang.HolProg 64 :=
.seq AllocBody255_153 AllocBody255_154

def AllocBody255_156 : StackLang.HolProg 64 :=
.seq AllocBody255_152 AllocBody255_155

def AllocBody255_157 : StackLang.HolProg 64 :=
.seq AllocBody255_151 AllocBody255_156

def AllocBody255_158 : StackLang.HolProg 64 :=
.seq AllocBody255_150 AllocBody255_157

def AllocBody255_159 : StackLang.HolProg 64 :=
.seq AllocBody255_149 AllocBody255_158

def AllocBody255_160 : StackLang.HolProg 64 :=
.seq AllocBody255_148 AllocBody255_159

def AllocBody255_161 : StackLang.HolProg 64 :=
.seq AllocBody255_147 AllocBody255_160

def AllocBody255_162 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody255_163 : StackLang.HolProg 64 :=
.seq AllocBody255_161 AllocBody255_162

def AllocBody255_164 : StackLang.HolProg 64 :=
.call (some (AllocBody255_146, 0, 255, 4)) (Sum.inl 245) (some (AllocBody255_163, 255, 5))

def AllocBody255_165 : StackLang.HolProg 64 :=
.seq AllocBody255_123 AllocBody255_164

def AllocBody255_166 : StackLang.HolProg 64 :=
.seq AllocBody255_122 AllocBody255_165

def AllocBody255_167 : StackLang.HolProg 64 :=
.seq AllocBody255_121 AllocBody255_166

def AllocBody255_168 : StackLang.HolProg 64 :=
.seq AllocBody255_102 AllocBody255_167

def AllocBody255_169 : StackLang.HolProg 64 :=
.seq AllocBody255_99 AllocBody255_168

def AllocBody255_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_172 : StackLang.HolProg 64 :=
.seq AllocBody255_170 AllocBody255_171

def AllocBody255_173 : StackLang.HolProg 64 :=
.seq AllocBody255_169 AllocBody255_172

def AllocBody255_174 : StackLang.HolProg 64 :=
.seq AllocBody255_98 AllocBody255_173

def AllocBody255_175 : StackLang.HolProg 64 :=
.seq AllocBody255_83 AllocBody255_174

def AllocBody255_176 : StackLang.HolProg 64 :=
.seq AllocBody255_82 AllocBody255_175

def AllocBody255_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 8

def AllocBody255_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody255_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody255_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 6

def AllocBody255_182 : StackLang.HolProg 64 :=
.seq AllocBody255_180 AllocBody255_181

def AllocBody255_183 : StackLang.HolProg 64 :=
.seq AllocBody255_179 AllocBody255_182

def AllocBody255_184 : StackLang.HolProg 64 :=
.seq AllocBody255_178 AllocBody255_183

def AllocBody255_185 : StackLang.HolProg 64 :=
.seq AllocBody255_177 AllocBody255_184

def AllocBody255_186 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody255_176 AllocBody255_185

def AllocBody255_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody255_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody255_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 5

def AllocBody255_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def AllocBody255_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 6

def AllocBody255_194 : StackLang.HolProg 64 :=
.seq AllocBody255_192 AllocBody255_193

def AllocBody255_195 : StackLang.HolProg 64 :=
.seq AllocBody255_191 AllocBody255_194

def AllocBody255_196 : StackLang.HolProg 64 :=
.seq AllocBody255_190 AllocBody255_195

def AllocBody255_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody255_198 : StackLang.HolProg 64 :=
.seq AllocBody255_196 AllocBody255_197

def AllocBody255_199 : StackLang.HolProg 64 :=
.seq AllocBody255_189 AllocBody255_198

def AllocBody255_200 : StackLang.HolProg 64 :=
.seq AllocBody255_188 AllocBody255_199

def AllocBody255_201 : StackLang.HolProg 64 :=
.seq AllocBody255_187 AllocBody255_200

def AllocBody255_202 : StackLang.HolProg 64 :=
.seq AllocBody255_186 AllocBody255_201

def AllocBody255_203 : StackLang.HolProg 64 :=
.seq AllocBody255_81 AllocBody255_202

def AllocBody255_204 : StackLang.HolProg 64 :=
.seq AllocBody255_80 AllocBody255_203

def AllocBody255_205 : StackLang.HolProg 64 :=
.seq AllocBody255_79 AllocBody255_204

def AllocBody255_206 : StackLang.HolProg 64 :=
.seq AllocBody255_78 AllocBody255_205

def AllocBody255_207 : StackLang.HolProg 64 :=
.seq AllocBody255_77 AllocBody255_206

def AllocBody255_208 : StackLang.HolProg 64 :=
.seq AllocBody255_76 AllocBody255_207

def AllocBody255_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody255_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody255_212 : StackLang.HolProg 64 :=
.seq AllocBody255_210 AllocBody255_211

def AllocBody255_213 : StackLang.HolProg 64 :=
.seq AllocBody255_209 AllocBody255_212

def AllocBody255_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody255_208 AllocBody255_213

def AllocBody255_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 8

def AllocBody255_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody255_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 7

def AllocBody255_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 6

def AllocBody255_220 : StackLang.HolProg 64 :=
.seq AllocBody255_218 AllocBody255_219

def AllocBody255_221 : StackLang.HolProg 64 :=
.seq AllocBody255_217 AllocBody255_220

def AllocBody255_222 : StackLang.HolProg 64 :=
.seq AllocBody255_216 AllocBody255_221

def AllocBody255_223 : StackLang.HolProg 64 :=
.seq AllocBody255_215 AllocBody255_222

def AllocBody255_224 : StackLang.HolProg 64 :=
.seq AllocBody255_214 AllocBody255_223

def AllocBody255_225 : StackLang.HolProg 64 :=
.seq AllocBody255_75 AllocBody255_224

def AllocBody255_226 : StackLang.HolProg 64 :=
.loop AllocBody255_225

def AllocBody255_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody255_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody255_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 8

def AllocBody255_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody255_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody255_232 : StackLang.HolProg 64 :=
.seq AllocBody255_230 AllocBody255_231

def AllocBody255_233 : StackLang.HolProg 64 :=
.seq AllocBody255_229 AllocBody255_232

def AllocBody255_234 : StackLang.HolProg 64 :=
.seq AllocBody255_228 AllocBody255_233

def AllocBody255_235 : StackLang.HolProg 64 :=
.seq AllocBody255_227 AllocBody255_234

def AllocBody255_236 : StackLang.HolProg 64 :=
.seq AllocBody255_226 AllocBody255_235

def AllocBody255_237 : StackLang.HolProg 64 :=
.seq AllocBody255_74 AllocBody255_236

def AllocBody255_238 : StackLang.HolProg 64 :=
.seq AllocBody255_73 AllocBody255_237

def AllocBody255_239 : StackLang.HolProg 64 :=
.seq AllocBody255_72 AllocBody255_238

def AllocBody255_240 : StackLang.HolProg 64 :=
.seq AllocBody255_71 AllocBody255_239

def AllocBody255_241 : StackLang.HolProg 64 :=
.seq AllocBody255_70 AllocBody255_240

def AllocBody255_242 : StackLang.HolProg 64 :=
.seq AllocBody255_9 AllocBody255_241

def AllocBody255_243 : StackLang.HolProg 64 :=
.seq AllocBody255_0 AllocBody255_242

def Alloc255 : Nat × StackLang.HolProg 64 := (255, AllocBody255_243)
theorem Alloc255_eq : StackAlloc.progComp (255, raw255) = Alloc255 := by
  kernel_rfl
#print axioms Alloc255_eq
end InitECandidate.Proofs.BackendStages
