import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw573
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody573_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody573_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def AllocBody573_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody573_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1992#64)

def AllocBody573_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_7 : StackLang.HolProg 64 :=
.seq AllocBody573_5 AllocBody573_6

def AllocBody573_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody573_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody573_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 3

def AllocBody573_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody573_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody573_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody573_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody573_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_18 : StackLang.HolProg 64 :=
.seq AllocBody573_16 AllocBody573_17

def AllocBody573_19 : StackLang.HolProg 64 :=
.seq AllocBody573_15 AllocBody573_18

def AllocBody573_20 : StackLang.HolProg 64 :=
.seq AllocBody573_14 AllocBody573_19

def AllocBody573_21 : StackLang.HolProg 64 :=
.seq AllocBody573_13 AllocBody573_20

def AllocBody573_22 : StackLang.HolProg 64 :=
.seq AllocBody573_12 AllocBody573_21

def AllocBody573_23 : StackLang.HolProg 64 :=
.seq AllocBody573_11 AllocBody573_22

def AllocBody573_24 : StackLang.HolProg 64 :=
.seq AllocBody573_10 AllocBody573_23

def AllocBody573_25 : StackLang.HolProg 64 :=
.seq AllocBody573_9 AllocBody573_24

def AllocBody573_26 : StackLang.HolProg 64 :=
.seq AllocBody573_8 AllocBody573_25

def AllocBody573_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody573_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody573_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody573_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_34 : StackLang.HolProg 64 :=
.seq AllocBody573_32 AllocBody573_33

def AllocBody573_35 : StackLang.HolProg 64 :=
.seq AllocBody573_31 AllocBody573_34

def AllocBody573_36 : StackLang.HolProg 64 :=
.seq AllocBody573_30 AllocBody573_35

def AllocBody573_37 : StackLang.HolProg 64 :=
.seq AllocBody573_29 AllocBody573_36

def AllocBody573_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody573_40 : StackLang.HolProg 64 :=
.seq AllocBody573_38 AllocBody573_39

def AllocBody573_41 : StackLang.HolProg 64 :=
.call (some (AllocBody573_37, 0, 573, 2)) (Sum.inl 470) (some (AllocBody573_40, 573, 3))

def AllocBody573_42 : StackLang.HolProg 64 :=
.seq AllocBody573_28 AllocBody573_41

def AllocBody573_43 : StackLang.HolProg 64 :=
.seq AllocBody573_27 AllocBody573_42

def AllocBody573_44 : StackLang.HolProg 64 :=
.seq AllocBody573_26 AllocBody573_43

def AllocBody573_45 : StackLang.HolProg 64 :=
.seq AllocBody573_7 AllocBody573_44

def AllocBody573_46 : StackLang.HolProg 64 :=
.seq AllocBody573_4 AllocBody573_45

def AllocBody573_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody573_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1993#64)

def AllocBody573_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_52 : StackLang.HolProg 64 :=
.seq AllocBody573_50 AllocBody573_51

def AllocBody573_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody573_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody573_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 5

def AllocBody573_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody573_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody573_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody573_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody573_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_63 : StackLang.HolProg 64 :=
.seq AllocBody573_61 AllocBody573_62

def AllocBody573_64 : StackLang.HolProg 64 :=
.seq AllocBody573_60 AllocBody573_63

def AllocBody573_65 : StackLang.HolProg 64 :=
.seq AllocBody573_59 AllocBody573_64

def AllocBody573_66 : StackLang.HolProg 64 :=
.seq AllocBody573_58 AllocBody573_65

def AllocBody573_67 : StackLang.HolProg 64 :=
.seq AllocBody573_57 AllocBody573_66

def AllocBody573_68 : StackLang.HolProg 64 :=
.seq AllocBody573_56 AllocBody573_67

def AllocBody573_69 : StackLang.HolProg 64 :=
.seq AllocBody573_55 AllocBody573_68

def AllocBody573_70 : StackLang.HolProg 64 :=
.seq AllocBody573_54 AllocBody573_69

def AllocBody573_71 : StackLang.HolProg 64 :=
.seq AllocBody573_53 AllocBody573_70

def AllocBody573_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody573_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody573_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody573_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody573_79 : StackLang.HolProg 64 :=
.seq AllocBody573_77 AllocBody573_78

def AllocBody573_80 : StackLang.HolProg 64 :=
.seq AllocBody573_76 AllocBody573_79

def AllocBody573_81 : StackLang.HolProg 64 :=
.seq AllocBody573_75 AllocBody573_80

def AllocBody573_82 : StackLang.HolProg 64 :=
.seq AllocBody573_74 AllocBody573_81

def AllocBody573_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_84 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody573_85 : StackLang.HolProg 64 :=
.seq AllocBody573_83 AllocBody573_84

def AllocBody573_86 : StackLang.HolProg 64 :=
.call (some (AllocBody573_82, 0, 573, 4)) (Sum.inl 572) (some (AllocBody573_85, 573, 5))

def AllocBody573_87 : StackLang.HolProg 64 :=
.seq AllocBody573_73 AllocBody573_86

def AllocBody573_88 : StackLang.HolProg 64 :=
.seq AllocBody573_72 AllocBody573_87

def AllocBody573_89 : StackLang.HolProg 64 :=
.seq AllocBody573_71 AllocBody573_88

def AllocBody573_90 : StackLang.HolProg 64 :=
.seq AllocBody573_52 AllocBody573_89

def AllocBody573_91 : StackLang.HolProg 64 :=
.seq AllocBody573_49 AllocBody573_90

def AllocBody573_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody573_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody573_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def AllocBody573_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def AllocBody573_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 72#64))

def AllocBody573_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1994#64)

def AllocBody573_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_105 : StackLang.HolProg 64 :=
.seq AllocBody573_103 AllocBody573_104

def AllocBody573_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody573_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody573_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 7

def AllocBody573_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody573_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody573_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody573_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody573_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_116 : StackLang.HolProg 64 :=
.seq AllocBody573_114 AllocBody573_115

def AllocBody573_117 : StackLang.HolProg 64 :=
.seq AllocBody573_113 AllocBody573_116

def AllocBody573_118 : StackLang.HolProg 64 :=
.seq AllocBody573_112 AllocBody573_117

def AllocBody573_119 : StackLang.HolProg 64 :=
.seq AllocBody573_111 AllocBody573_118

def AllocBody573_120 : StackLang.HolProg 64 :=
.seq AllocBody573_110 AllocBody573_119

def AllocBody573_121 : StackLang.HolProg 64 :=
.seq AllocBody573_109 AllocBody573_120

def AllocBody573_122 : StackLang.HolProg 64 :=
.seq AllocBody573_108 AllocBody573_121

def AllocBody573_123 : StackLang.HolProg 64 :=
.seq AllocBody573_107 AllocBody573_122

def AllocBody573_124 : StackLang.HolProg 64 :=
.seq AllocBody573_106 AllocBody573_123

def AllocBody573_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody573_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody573_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody573_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_132 : StackLang.HolProg 64 :=
.seq AllocBody573_130 AllocBody573_131

def AllocBody573_133 : StackLang.HolProg 64 :=
.seq AllocBody573_129 AllocBody573_132

def AllocBody573_134 : StackLang.HolProg 64 :=
.seq AllocBody573_128 AllocBody573_133

def AllocBody573_135 : StackLang.HolProg 64 :=
.seq AllocBody573_127 AllocBody573_134

def AllocBody573_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody573_138 : StackLang.HolProg 64 :=
.seq AllocBody573_136 AllocBody573_137

def AllocBody573_139 : StackLang.HolProg 64 :=
.call (some (AllocBody573_135, 0, 573, 6)) (Sum.inl 476) (some (AllocBody573_138, 573, 7))

def AllocBody573_140 : StackLang.HolProg 64 :=
.seq AllocBody573_126 AllocBody573_139

def AllocBody573_141 : StackLang.HolProg 64 :=
.seq AllocBody573_125 AllocBody573_140

def AllocBody573_142 : StackLang.HolProg 64 :=
.seq AllocBody573_124 AllocBody573_141

def AllocBody573_143 : StackLang.HolProg 64 :=
.seq AllocBody573_105 AllocBody573_142

def AllocBody573_144 : StackLang.HolProg 64 :=
.seq AllocBody573_102 AllocBody573_143

def AllocBody573_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody573_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody573_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1995#64)

def AllocBody573_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_151 : StackLang.HolProg 64 :=
.seq AllocBody573_149 AllocBody573_150

def AllocBody573_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody573_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody573_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody573_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 573 9

def AllocBody573_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody573_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody573_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody573_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody573_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_162 : StackLang.HolProg 64 :=
.seq AllocBody573_160 AllocBody573_161

def AllocBody573_163 : StackLang.HolProg 64 :=
.seq AllocBody573_159 AllocBody573_162

def AllocBody573_164 : StackLang.HolProg 64 :=
.seq AllocBody573_158 AllocBody573_163

def AllocBody573_165 : StackLang.HolProg 64 :=
.seq AllocBody573_157 AllocBody573_164

def AllocBody573_166 : StackLang.HolProg 64 :=
.seq AllocBody573_156 AllocBody573_165

def AllocBody573_167 : StackLang.HolProg 64 :=
.seq AllocBody573_155 AllocBody573_166

def AllocBody573_168 : StackLang.HolProg 64 :=
.seq AllocBody573_154 AllocBody573_167

def AllocBody573_169 : StackLang.HolProg 64 :=
.seq AllocBody573_153 AllocBody573_168

def AllocBody573_170 : StackLang.HolProg 64 :=
.seq AllocBody573_152 AllocBody573_169

def AllocBody573_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody573_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody573_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody573_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody573_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody573_178 : StackLang.HolProg 64 :=
.seq AllocBody573_176 AllocBody573_177

def AllocBody573_179 : StackLang.HolProg 64 :=
.seq AllocBody573_175 AllocBody573_178

def AllocBody573_180 : StackLang.HolProg 64 :=
.seq AllocBody573_174 AllocBody573_179

def AllocBody573_181 : StackLang.HolProg 64 :=
.seq AllocBody573_173 AllocBody573_180

def AllocBody573_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody573_183 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody573_184 : StackLang.HolProg 64 :=
.seq AllocBody573_182 AllocBody573_183

def AllocBody573_185 : StackLang.HolProg 64 :=
.call (some (AllocBody573_181, 0, 573, 8)) (Sum.inl 490) (some (AllocBody573_184, 573, 9))

def AllocBody573_186 : StackLang.HolProg 64 :=
.seq AllocBody573_172 AllocBody573_185

def AllocBody573_187 : StackLang.HolProg 64 :=
.seq AllocBody573_171 AllocBody573_186

def AllocBody573_188 : StackLang.HolProg 64 :=
.seq AllocBody573_170 AllocBody573_187

def AllocBody573_189 : StackLang.HolProg 64 :=
.seq AllocBody573_151 AllocBody573_188

def AllocBody573_190 : StackLang.HolProg 64 :=
.seq AllocBody573_148 AllocBody573_189

def AllocBody573_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody573_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody573_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody573_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody573_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody573_196 : StackLang.HolProg 64 :=
.seq AllocBody573_194 AllocBody573_195

def AllocBody573_197 : StackLang.HolProg 64 :=
.seq AllocBody573_193 AllocBody573_196

def AllocBody573_198 : StackLang.HolProg 64 :=
.seq AllocBody573_192 AllocBody573_197

def AllocBody573_199 : StackLang.HolProg 64 :=
.seq AllocBody573_191 AllocBody573_198

def AllocBody573_200 : StackLang.HolProg 64 :=
.seq AllocBody573_190 AllocBody573_199

def AllocBody573_201 : StackLang.HolProg 64 :=
.seq AllocBody573_147 AllocBody573_200

def AllocBody573_202 : StackLang.HolProg 64 :=
.seq AllocBody573_146 AllocBody573_201

def AllocBody573_203 : StackLang.HolProg 64 :=
.seq AllocBody573_145 AllocBody573_202

def AllocBody573_204 : StackLang.HolProg 64 :=
.seq AllocBody573_144 AllocBody573_203

def AllocBody573_205 : StackLang.HolProg 64 :=
.seq AllocBody573_101 AllocBody573_204

def AllocBody573_206 : StackLang.HolProg 64 :=
.seq AllocBody573_100 AllocBody573_205

def AllocBody573_207 : StackLang.HolProg 64 :=
.seq AllocBody573_99 AllocBody573_206

def AllocBody573_208 : StackLang.HolProg 64 :=
.seq AllocBody573_98 AllocBody573_207

def AllocBody573_209 : StackLang.HolProg 64 :=
.seq AllocBody573_97 AllocBody573_208

def AllocBody573_210 : StackLang.HolProg 64 :=
.seq AllocBody573_96 AllocBody573_209

def AllocBody573_211 : StackLang.HolProg 64 :=
.seq AllocBody573_95 AllocBody573_210

def AllocBody573_212 : StackLang.HolProg 64 :=
.seq AllocBody573_94 AllocBody573_211

def AllocBody573_213 : StackLang.HolProg 64 :=
.seq AllocBody573_93 AllocBody573_212

def AllocBody573_214 : StackLang.HolProg 64 :=
.seq AllocBody573_92 AllocBody573_213

def AllocBody573_215 : StackLang.HolProg 64 :=
.seq AllocBody573_91 AllocBody573_214

def AllocBody573_216 : StackLang.HolProg 64 :=
.seq AllocBody573_48 AllocBody573_215

def AllocBody573_217 : StackLang.HolProg 64 :=
.seq AllocBody573_47 AllocBody573_216

def AllocBody573_218 : StackLang.HolProg 64 :=
.seq AllocBody573_46 AllocBody573_217

def AllocBody573_219 : StackLang.HolProg 64 :=
.seq AllocBody573_3 AllocBody573_218

def AllocBody573_220 : StackLang.HolProg 64 :=
.seq AllocBody573_2 AllocBody573_219

def AllocBody573_221 : StackLang.HolProg 64 :=
.seq AllocBody573_1 AllocBody573_220

def AllocBody573_222 : StackLang.HolProg 64 :=
.seq AllocBody573_0 AllocBody573_221

def Alloc573 : Nat × StackLang.HolProg 64 := (573, AllocBody573_222)
theorem Alloc573_eq : StackAlloc.progComp (573, raw573) = Alloc573 := by
  kernel_rfl
#print axioms Alloc573_eq
end InitECandidate.Proofs.BackendStages
