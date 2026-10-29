import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw320
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody320_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody320_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody320_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody320_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody320_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 1

def AllocBody320_5 : StackLang.HolProg 64 :=
.seq AllocBody320_3 AllocBody320_4

def AllocBody320_6 : StackLang.HolProg 64 :=
.seq AllocBody320_2 AllocBody320_5

def AllocBody320_7 : StackLang.HolProg 64 :=
.seq AllocBody320_1 AllocBody320_6

def AllocBody320_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 896#64)

def AllocBody320_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_11 : StackLang.HolProg 64 :=
.seq AllocBody320_9 AllocBody320_10

def AllocBody320_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody320_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody320_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 3

def AllocBody320_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody320_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody320_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody320_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody320_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_22 : StackLang.HolProg 64 :=
.seq AllocBody320_20 AllocBody320_21

def AllocBody320_23 : StackLang.HolProg 64 :=
.seq AllocBody320_19 AllocBody320_22

def AllocBody320_24 : StackLang.HolProg 64 :=
.seq AllocBody320_18 AllocBody320_23

def AllocBody320_25 : StackLang.HolProg 64 :=
.seq AllocBody320_17 AllocBody320_24

def AllocBody320_26 : StackLang.HolProg 64 :=
.seq AllocBody320_16 AllocBody320_25

def AllocBody320_27 : StackLang.HolProg 64 :=
.seq AllocBody320_15 AllocBody320_26

def AllocBody320_28 : StackLang.HolProg 64 :=
.seq AllocBody320_14 AllocBody320_27

def AllocBody320_29 : StackLang.HolProg 64 :=
.seq AllocBody320_13 AllocBody320_28

def AllocBody320_30 : StackLang.HolProg 64 :=
.seq AllocBody320_12 AllocBody320_29

def AllocBody320_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody320_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody320_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody320_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody320_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody320_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody320_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody320_41 : StackLang.HolProg 64 :=
.seq AllocBody320_39 AllocBody320_40

def AllocBody320_42 : StackLang.HolProg 64 :=
.seq AllocBody320_38 AllocBody320_41

def AllocBody320_43 : StackLang.HolProg 64 :=
.seq AllocBody320_37 AllocBody320_42

def AllocBody320_44 : StackLang.HolProg 64 :=
.seq AllocBody320_36 AllocBody320_43

def AllocBody320_45 : StackLang.HolProg 64 :=
.seq AllocBody320_35 AllocBody320_44

def AllocBody320_46 : StackLang.HolProg 64 :=
.seq AllocBody320_34 AllocBody320_45

def AllocBody320_47 : StackLang.HolProg 64 :=
.seq AllocBody320_33 AllocBody320_46

def AllocBody320_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody320_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def AllocBody320_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody320_51 : StackLang.HolProg 64 :=
.seq AllocBody320_49 AllocBody320_50

def AllocBody320_52 : StackLang.HolProg 64 :=
.seq AllocBody320_48 AllocBody320_51

def AllocBody320_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody320_54 : StackLang.HolProg 64 :=
.seq AllocBody320_52 AllocBody320_53

def AllocBody320_55 : StackLang.HolProg 64 :=
.call (some (AllocBody320_47, 0, 320, 2)) (Sum.inl 310) (some (AllocBody320_54, 320, 3))

def AllocBody320_56 : StackLang.HolProg 64 :=
.seq AllocBody320_32 AllocBody320_55

def AllocBody320_57 : StackLang.HolProg 64 :=
.seq AllocBody320_31 AllocBody320_56

def AllocBody320_58 : StackLang.HolProg 64 :=
.seq AllocBody320_30 AllocBody320_57

def AllocBody320_59 : StackLang.HolProg 64 :=
.seq AllocBody320_11 AllocBody320_58

def AllocBody320_60 : StackLang.HolProg 64 :=
.seq AllocBody320_8 AllocBody320_59

def AllocBody320_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody320_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody320_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 1#64)

def AllocBody320_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_68 : StackLang.HolProg 64 :=
.seq AllocBody320_66 AllocBody320_67

def AllocBody320_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody320_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_71 : StackLang.HolProg 64 :=
.seq AllocBody320_69 AllocBody320_70

def AllocBody320_72 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody320_68 AllocBody320_71

def AllocBody320_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody320_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody320_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_78 : StackLang.HolProg 64 :=
.seq AllocBody320_76 AllocBody320_77

def AllocBody320_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody320_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_81 : StackLang.HolProg 64 :=
.seq AllocBody320_79 AllocBody320_80

def AllocBody320_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody320_78 AllocBody320_81

def AllocBody320_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody320_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody320_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody320_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody320_90 : StackLang.HolProg 64 :=
.seq AllocBody320_88 AllocBody320_89

def AllocBody320_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody320_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody320_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 897#64)

def AllocBody320_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_96 : StackLang.HolProg 64 :=
.seq AllocBody320_94 AllocBody320_95

def AllocBody320_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody320_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody320_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 5

def AllocBody320_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody320_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody320_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody320_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody320_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_107 : StackLang.HolProg 64 :=
.seq AllocBody320_105 AllocBody320_106

def AllocBody320_108 : StackLang.HolProg 64 :=
.seq AllocBody320_104 AllocBody320_107

def AllocBody320_109 : StackLang.HolProg 64 :=
.seq AllocBody320_103 AllocBody320_108

def AllocBody320_110 : StackLang.HolProg 64 :=
.seq AllocBody320_102 AllocBody320_109

def AllocBody320_111 : StackLang.HolProg 64 :=
.seq AllocBody320_101 AllocBody320_110

def AllocBody320_112 : StackLang.HolProg 64 :=
.seq AllocBody320_100 AllocBody320_111

def AllocBody320_113 : StackLang.HolProg 64 :=
.seq AllocBody320_99 AllocBody320_112

def AllocBody320_114 : StackLang.HolProg 64 :=
.seq AllocBody320_98 AllocBody320_113

def AllocBody320_115 : StackLang.HolProg 64 :=
.seq AllocBody320_97 AllocBody320_114

def AllocBody320_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody320_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody320_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody320_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody320_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody320_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody320_125 : StackLang.HolProg 64 :=
.seq AllocBody320_123 AllocBody320_124

def AllocBody320_126 : StackLang.HolProg 64 :=
.seq AllocBody320_122 AllocBody320_125

def AllocBody320_127 : StackLang.HolProg 64 :=
.seq AllocBody320_121 AllocBody320_126

def AllocBody320_128 : StackLang.HolProg 64 :=
.seq AllocBody320_120 AllocBody320_127

def AllocBody320_129 : StackLang.HolProg 64 :=
.seq AllocBody320_119 AllocBody320_128

def AllocBody320_130 : StackLang.HolProg 64 :=
.seq AllocBody320_118 AllocBody320_129

def AllocBody320_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody320_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody320_133 : StackLang.HolProg 64 :=
.seq AllocBody320_131 AllocBody320_132

def AllocBody320_134 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody320_135 : StackLang.HolProg 64 :=
.seq AllocBody320_133 AllocBody320_134

def AllocBody320_136 : StackLang.HolProg 64 :=
.call (some (AllocBody320_130, 0, 320, 4)) (Sum.inl 319) (some (AllocBody320_135, 320, 5))

def AllocBody320_137 : StackLang.HolProg 64 :=
.seq AllocBody320_117 AllocBody320_136

def AllocBody320_138 : StackLang.HolProg 64 :=
.seq AllocBody320_116 AllocBody320_137

def AllocBody320_139 : StackLang.HolProg 64 :=
.seq AllocBody320_115 AllocBody320_138

def AllocBody320_140 : StackLang.HolProg 64 :=
.seq AllocBody320_96 AllocBody320_139

def AllocBody320_141 : StackLang.HolProg 64 :=
.seq AllocBody320_93 AllocBody320_140

def AllocBody320_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_144 : StackLang.HolProg 64 :=
.seq AllocBody320_142 AllocBody320_143

def AllocBody320_145 : StackLang.HolProg 64 :=
.seq AllocBody320_141 AllocBody320_144

def AllocBody320_146 : StackLang.HolProg 64 :=
.seq AllocBody320_92 AllocBody320_145

def AllocBody320_147 : StackLang.HolProg 64 :=
.seq AllocBody320_91 AllocBody320_146

def AllocBody320_148 : StackLang.HolProg 64 :=
.seq AllocBody320_90 AllocBody320_147

def AllocBody320_149 : StackLang.HolProg 64 :=
.seq AllocBody320_87 AllocBody320_148

def AllocBody320_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody320_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody320_153 : StackLang.HolProg 64 :=
.seq AllocBody320_151 AllocBody320_152

def AllocBody320_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody320_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody320_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 898#64)

def AllocBody320_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_159 : StackLang.HolProg 64 :=
.seq AllocBody320_157 AllocBody320_158

def AllocBody320_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody320_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody320_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody320_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 320 7

def AllocBody320_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody320_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody320_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody320_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody320_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_170 : StackLang.HolProg 64 :=
.seq AllocBody320_168 AllocBody320_169

def AllocBody320_171 : StackLang.HolProg 64 :=
.seq AllocBody320_167 AllocBody320_170

def AllocBody320_172 : StackLang.HolProg 64 :=
.seq AllocBody320_166 AllocBody320_171

def AllocBody320_173 : StackLang.HolProg 64 :=
.seq AllocBody320_165 AllocBody320_172

def AllocBody320_174 : StackLang.HolProg 64 :=
.seq AllocBody320_164 AllocBody320_173

def AllocBody320_175 : StackLang.HolProg 64 :=
.seq AllocBody320_163 AllocBody320_174

def AllocBody320_176 : StackLang.HolProg 64 :=
.seq AllocBody320_162 AllocBody320_175

def AllocBody320_177 : StackLang.HolProg 64 :=
.seq AllocBody320_161 AllocBody320_176

def AllocBody320_178 : StackLang.HolProg 64 :=
.seq AllocBody320_160 AllocBody320_177

def AllocBody320_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody320_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody320_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody320_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody320_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody320_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody320_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody320_188 : StackLang.HolProg 64 :=
.seq AllocBody320_186 AllocBody320_187

def AllocBody320_189 : StackLang.HolProg 64 :=
.seq AllocBody320_185 AllocBody320_188

def AllocBody320_190 : StackLang.HolProg 64 :=
.seq AllocBody320_184 AllocBody320_189

def AllocBody320_191 : StackLang.HolProg 64 :=
.seq AllocBody320_183 AllocBody320_190

def AllocBody320_192 : StackLang.HolProg 64 :=
.seq AllocBody320_182 AllocBody320_191

def AllocBody320_193 : StackLang.HolProg 64 :=
.seq AllocBody320_181 AllocBody320_192

def AllocBody320_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody320_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody320_196 : StackLang.HolProg 64 :=
.seq AllocBody320_194 AllocBody320_195

def AllocBody320_197 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody320_198 : StackLang.HolProg 64 :=
.seq AllocBody320_196 AllocBody320_197

def AllocBody320_199 : StackLang.HolProg 64 :=
.call (some (AllocBody320_193, 0, 320, 6)) (Sum.inl 315) (some (AllocBody320_198, 320, 7))

def AllocBody320_200 : StackLang.HolProg 64 :=
.seq AllocBody320_180 AllocBody320_199

def AllocBody320_201 : StackLang.HolProg 64 :=
.seq AllocBody320_179 AllocBody320_200

def AllocBody320_202 : StackLang.HolProg 64 :=
.seq AllocBody320_178 AllocBody320_201

def AllocBody320_203 : StackLang.HolProg 64 :=
.seq AllocBody320_159 AllocBody320_202

def AllocBody320_204 : StackLang.HolProg 64 :=
.seq AllocBody320_156 AllocBody320_203

def AllocBody320_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_207 : StackLang.HolProg 64 :=
.seq AllocBody320_205 AllocBody320_206

def AllocBody320_208 : StackLang.HolProg 64 :=
.seq AllocBody320_204 AllocBody320_207

def AllocBody320_209 : StackLang.HolProg 64 :=
.seq AllocBody320_155 AllocBody320_208

def AllocBody320_210 : StackLang.HolProg 64 :=
.seq AllocBody320_154 AllocBody320_209

def AllocBody320_211 : StackLang.HolProg 64 :=
.seq AllocBody320_153 AllocBody320_210

def AllocBody320_212 : StackLang.HolProg 64 :=
.seq AllocBody320_150 AllocBody320_211

def AllocBody320_213 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 8 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody320_149 AllocBody320_212

def AllocBody320_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody320_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody320_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody320_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody320_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody320_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody320_221 : StackLang.HolProg 64 :=
.seq AllocBody320_219 AllocBody320_220

def AllocBody320_222 : StackLang.HolProg 64 :=
.seq AllocBody320_218 AllocBody320_221

def AllocBody320_223 : StackLang.HolProg 64 :=
.seq AllocBody320_217 AllocBody320_222

def AllocBody320_224 : StackLang.HolProg 64 :=
.seq AllocBody320_216 AllocBody320_223

def AllocBody320_225 : StackLang.HolProg 64 :=
.seq AllocBody320_215 AllocBody320_224

def AllocBody320_226 : StackLang.HolProg 64 :=
.seq AllocBody320_214 AllocBody320_225

def AllocBody320_227 : StackLang.HolProg 64 :=
.seq AllocBody320_213 AllocBody320_226

def AllocBody320_228 : StackLang.HolProg 64 :=
.seq AllocBody320_86 AllocBody320_227

def AllocBody320_229 : StackLang.HolProg 64 :=
.seq AllocBody320_85 AllocBody320_228

def AllocBody320_230 : StackLang.HolProg 64 :=
.seq AllocBody320_84 AllocBody320_229

def AllocBody320_231 : StackLang.HolProg 64 :=
.seq AllocBody320_83 AllocBody320_230

def AllocBody320_232 : StackLang.HolProg 64 :=
.seq AllocBody320_82 AllocBody320_231

def AllocBody320_233 : StackLang.HolProg 64 :=
.seq AllocBody320_75 AllocBody320_232

def AllocBody320_234 : StackLang.HolProg 64 :=
.seq AllocBody320_74 AllocBody320_233

def AllocBody320_235 : StackLang.HolProg 64 :=
.seq AllocBody320_73 AllocBody320_234

def AllocBody320_236 : StackLang.HolProg 64 :=
.seq AllocBody320_72 AllocBody320_235

def AllocBody320_237 : StackLang.HolProg 64 :=
.seq AllocBody320_65 AllocBody320_236

def AllocBody320_238 : StackLang.HolProg 64 :=
.seq AllocBody320_64 AllocBody320_237

def AllocBody320_239 : StackLang.HolProg 64 :=
.seq AllocBody320_63 AllocBody320_238

def AllocBody320_240 : StackLang.HolProg 64 :=
.seq AllocBody320_62 AllocBody320_239

def AllocBody320_241 : StackLang.HolProg 64 :=
.seq AllocBody320_61 AllocBody320_240

def AllocBody320_242 : StackLang.HolProg 64 :=
.seq AllocBody320_60 AllocBody320_241

def AllocBody320_243 : StackLang.HolProg 64 :=
.seq AllocBody320_7 AllocBody320_242

def AllocBody320_244 : StackLang.HolProg 64 :=
.seq AllocBody320_0 AllocBody320_243

def Alloc320 : Nat × StackLang.HolProg 64 := (320, AllocBody320_244)
theorem Alloc320_eq : StackAlloc.progComp (320, raw320) = Alloc320 := by
  kernel_rfl
#print axioms Alloc320_eq
end InitECandidate.Proofs.BackendStages
