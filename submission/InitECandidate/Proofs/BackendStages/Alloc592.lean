import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw592
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody592_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody592_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def AllocBody592_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody592_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody592_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody592_5 : StackLang.HolProg 64 :=
.seq AllocBody592_3 AllocBody592_4

def AllocBody592_6 : StackLang.HolProg 64 :=
.seq AllocBody592_2 AllocBody592_5

def AllocBody592_7 : StackLang.HolProg 64 :=
.seq AllocBody592_1 AllocBody592_6

def AllocBody592_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2128#64)

def AllocBody592_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_11 : StackLang.HolProg 64 :=
.seq AllocBody592_9 AllocBody592_10

def AllocBody592_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody592_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody592_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 3

def AllocBody592_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody592_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody592_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody592_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody592_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_22 : StackLang.HolProg 64 :=
.seq AllocBody592_20 AllocBody592_21

def AllocBody592_23 : StackLang.HolProg 64 :=
.seq AllocBody592_19 AllocBody592_22

def AllocBody592_24 : StackLang.HolProg 64 :=
.seq AllocBody592_18 AllocBody592_23

def AllocBody592_25 : StackLang.HolProg 64 :=
.seq AllocBody592_17 AllocBody592_24

def AllocBody592_26 : StackLang.HolProg 64 :=
.seq AllocBody592_16 AllocBody592_25

def AllocBody592_27 : StackLang.HolProg 64 :=
.seq AllocBody592_15 AllocBody592_26

def AllocBody592_28 : StackLang.HolProg 64 :=
.seq AllocBody592_14 AllocBody592_27

def AllocBody592_29 : StackLang.HolProg 64 :=
.seq AllocBody592_13 AllocBody592_28

def AllocBody592_30 : StackLang.HolProg 64 :=
.seq AllocBody592_12 AllocBody592_29

def AllocBody592_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody592_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody592_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody592_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody592_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody592_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody592_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody592_41 : StackLang.HolProg 64 :=
.seq AllocBody592_39 AllocBody592_40

def AllocBody592_42 : StackLang.HolProg 64 :=
.seq AllocBody592_38 AllocBody592_41

def AllocBody592_43 : StackLang.HolProg 64 :=
.seq AllocBody592_37 AllocBody592_42

def AllocBody592_44 : StackLang.HolProg 64 :=
.seq AllocBody592_36 AllocBody592_43

def AllocBody592_45 : StackLang.HolProg 64 :=
.seq AllocBody592_35 AllocBody592_44

def AllocBody592_46 : StackLang.HolProg 64 :=
.seq AllocBody592_34 AllocBody592_45

def AllocBody592_47 : StackLang.HolProg 64 :=
.seq AllocBody592_33 AllocBody592_46

def AllocBody592_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody592_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def AllocBody592_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody592_51 : StackLang.HolProg 64 :=
.seq AllocBody592_49 AllocBody592_50

def AllocBody592_52 : StackLang.HolProg 64 :=
.seq AllocBody592_48 AllocBody592_51

def AllocBody592_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody592_54 : StackLang.HolProg 64 :=
.seq AllocBody592_52 AllocBody592_53

def AllocBody592_55 : StackLang.HolProg 64 :=
.call (some (AllocBody592_47, 0, 592, 2)) (Sum.inl 407) (some (AllocBody592_54, 592, 3))

def AllocBody592_56 : StackLang.HolProg 64 :=
.seq AllocBody592_32 AllocBody592_55

def AllocBody592_57 : StackLang.HolProg 64 :=
.seq AllocBody592_31 AllocBody592_56

def AllocBody592_58 : StackLang.HolProg 64 :=
.seq AllocBody592_30 AllocBody592_57

def AllocBody592_59 : StackLang.HolProg 64 :=
.seq AllocBody592_11 AllocBody592_58

def AllocBody592_60 : StackLang.HolProg 64 :=
.seq AllocBody592_8 AllocBody592_59

def AllocBody592_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def AllocBody592_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody592_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2129#64)

def AllocBody592_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_68 : StackLang.HolProg 64 :=
.seq AllocBody592_66 AllocBody592_67

def AllocBody592_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody592_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody592_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 5

def AllocBody592_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody592_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody592_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody592_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody592_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_79 : StackLang.HolProg 64 :=
.seq AllocBody592_77 AllocBody592_78

def AllocBody592_80 : StackLang.HolProg 64 :=
.seq AllocBody592_76 AllocBody592_79

def AllocBody592_81 : StackLang.HolProg 64 :=
.seq AllocBody592_75 AllocBody592_80

def AllocBody592_82 : StackLang.HolProg 64 :=
.seq AllocBody592_74 AllocBody592_81

def AllocBody592_83 : StackLang.HolProg 64 :=
.seq AllocBody592_73 AllocBody592_82

def AllocBody592_84 : StackLang.HolProg 64 :=
.seq AllocBody592_72 AllocBody592_83

def AllocBody592_85 : StackLang.HolProg 64 :=
.seq AllocBody592_71 AllocBody592_84

def AllocBody592_86 : StackLang.HolProg 64 :=
.seq AllocBody592_70 AllocBody592_85

def AllocBody592_87 : StackLang.HolProg 64 :=
.seq AllocBody592_69 AllocBody592_86

def AllocBody592_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody592_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody592_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody592_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody592_95 : StackLang.HolProg 64 :=
.seq AllocBody592_93 AllocBody592_94

def AllocBody592_96 : StackLang.HolProg 64 :=
.seq AllocBody592_92 AllocBody592_95

def AllocBody592_97 : StackLang.HolProg 64 :=
.seq AllocBody592_91 AllocBody592_96

def AllocBody592_98 : StackLang.HolProg 64 :=
.seq AllocBody592_90 AllocBody592_97

def AllocBody592_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_100 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody592_101 : StackLang.HolProg 64 :=
.seq AllocBody592_99 AllocBody592_100

def AllocBody592_102 : StackLang.HolProg 64 :=
.call (some (AllocBody592_98, 0, 592, 4)) (Sum.inl 408) (some (AllocBody592_101, 592, 5))

def AllocBody592_103 : StackLang.HolProg 64 :=
.seq AllocBody592_89 AllocBody592_102

def AllocBody592_104 : StackLang.HolProg 64 :=
.seq AllocBody592_88 AllocBody592_103

def AllocBody592_105 : StackLang.HolProg 64 :=
.seq AllocBody592_87 AllocBody592_104

def AllocBody592_106 : StackLang.HolProg 64 :=
.seq AllocBody592_68 AllocBody592_105

def AllocBody592_107 : StackLang.HolProg 64 :=
.seq AllocBody592_65 AllocBody592_106

def AllocBody592_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody592_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody592_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2130#64)

def AllocBody592_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_116 : StackLang.HolProg 64 :=
.seq AllocBody592_114 AllocBody592_115

def AllocBody592_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody592_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody592_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody592_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 592 7

def AllocBody592_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody592_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody592_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody592_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody592_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_127 : StackLang.HolProg 64 :=
.seq AllocBody592_125 AllocBody592_126

def AllocBody592_128 : StackLang.HolProg 64 :=
.seq AllocBody592_124 AllocBody592_127

def AllocBody592_129 : StackLang.HolProg 64 :=
.seq AllocBody592_123 AllocBody592_128

def AllocBody592_130 : StackLang.HolProg 64 :=
.seq AllocBody592_122 AllocBody592_129

def AllocBody592_131 : StackLang.HolProg 64 :=
.seq AllocBody592_121 AllocBody592_130

def AllocBody592_132 : StackLang.HolProg 64 :=
.seq AllocBody592_120 AllocBody592_131

def AllocBody592_133 : StackLang.HolProg 64 :=
.seq AllocBody592_119 AllocBody592_132

def AllocBody592_134 : StackLang.HolProg 64 :=
.seq AllocBody592_118 AllocBody592_133

def AllocBody592_135 : StackLang.HolProg 64 :=
.seq AllocBody592_117 AllocBody592_134

def AllocBody592_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody592_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody592_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody592_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody592_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody592_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody592_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody592_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody592_146 : StackLang.HolProg 64 :=
.seq AllocBody592_144 AllocBody592_145

def AllocBody592_147 : StackLang.HolProg 64 :=
.seq AllocBody592_143 AllocBody592_146

def AllocBody592_148 : StackLang.HolProg 64 :=
.seq AllocBody592_142 AllocBody592_147

def AllocBody592_149 : StackLang.HolProg 64 :=
.seq AllocBody592_141 AllocBody592_148

def AllocBody592_150 : StackLang.HolProg 64 :=
.seq AllocBody592_140 AllocBody592_149

def AllocBody592_151 : StackLang.HolProg 64 :=
.seq AllocBody592_139 AllocBody592_150

def AllocBody592_152 : StackLang.HolProg 64 :=
.seq AllocBody592_138 AllocBody592_151

def AllocBody592_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody592_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody592_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody592_156 : StackLang.HolProg 64 :=
.seq AllocBody592_154 AllocBody592_155

def AllocBody592_157 : StackLang.HolProg 64 :=
.seq AllocBody592_153 AllocBody592_156

def AllocBody592_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody592_159 : StackLang.HolProg 64 :=
.seq AllocBody592_157 AllocBody592_158

def AllocBody592_160 : StackLang.HolProg 64 :=
.call (some (AllocBody592_152, 0, 592, 6)) (Sum.inl 468) (some (AllocBody592_159, 592, 7))

def AllocBody592_161 : StackLang.HolProg 64 :=
.seq AllocBody592_137 AllocBody592_160

def AllocBody592_162 : StackLang.HolProg 64 :=
.seq AllocBody592_136 AllocBody592_161

def AllocBody592_163 : StackLang.HolProg 64 :=
.seq AllocBody592_135 AllocBody592_162

def AllocBody592_164 : StackLang.HolProg 64 :=
.seq AllocBody592_116 AllocBody592_163

def AllocBody592_165 : StackLang.HolProg 64 :=
.seq AllocBody592_113 AllocBody592_164

def AllocBody592_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody592_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody592_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody592_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody592_174 : StackLang.HolProg 64 :=
.seq AllocBody592_172 AllocBody592_173

def AllocBody592_175 : StackLang.HolProg 64 :=
.seq AllocBody592_171 AllocBody592_174

def AllocBody592_176 : StackLang.HolProg 64 :=
.seq AllocBody592_170 AllocBody592_175

def AllocBody592_177 : StackLang.HolProg 64 :=
.seq AllocBody592_169 AllocBody592_176

def AllocBody592_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody592_177 AllocBody592_178

def AllocBody592_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_183 : StackLang.HolProg 64 :=
.seq AllocBody592_181 AllocBody592_182

def AllocBody592_184 : StackLang.HolProg 64 :=
.seq AllocBody592_180 AllocBody592_183

def AllocBody592_185 : StackLang.HolProg 64 :=
.seq AllocBody592_179 AllocBody592_184

def AllocBody592_186 : StackLang.HolProg 64 :=
.seq AllocBody592_168 AllocBody592_185

def AllocBody592_187 : StackLang.HolProg 64 :=
.seq AllocBody592_167 AllocBody592_186

def AllocBody592_188 : StackLang.HolProg 64 :=
.seq AllocBody592_166 AllocBody592_187

def AllocBody592_189 : StackLang.HolProg 64 :=
.seq AllocBody592_165 AllocBody592_188

def AllocBody592_190 : StackLang.HolProg 64 :=
.seq AllocBody592_112 AllocBody592_189

def AllocBody592_191 : StackLang.HolProg 64 :=
.seq AllocBody592_111 AllocBody592_190

def AllocBody592_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def AllocBody592_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody592_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody592_196 : StackLang.HolProg 64 :=
.seq AllocBody592_194 AllocBody592_195

def AllocBody592_197 : StackLang.HolProg 64 :=
.seq AllocBody592_193 AllocBody592_196

def AllocBody592_198 : StackLang.HolProg 64 :=
.seq AllocBody592_192 AllocBody592_197

def AllocBody592_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody592_191 AllocBody592_198

def AllocBody592_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody592_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def AllocBody592_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody592_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody592_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody592_210 : StackLang.HolProg 64 :=
.seq AllocBody592_208 AllocBody592_209

def AllocBody592_211 : StackLang.HolProg 64 :=
.seq AllocBody592_207 AllocBody592_210

def AllocBody592_212 : StackLang.HolProg 64 :=
.seq AllocBody592_206 AllocBody592_211

def AllocBody592_213 : StackLang.HolProg 64 :=
.seq AllocBody592_205 AllocBody592_212

def AllocBody592_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_215 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody592_213 AllocBody592_214

def AllocBody592_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody592_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody592_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody592_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody592_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody592_222 : StackLang.HolProg 64 :=
.seq AllocBody592_220 AllocBody592_221

def AllocBody592_223 : StackLang.HolProg 64 :=
.seq AllocBody592_219 AllocBody592_222

def AllocBody592_224 : StackLang.HolProg 64 :=
.seq AllocBody592_218 AllocBody592_223

def AllocBody592_225 : StackLang.HolProg 64 :=
.seq AllocBody592_217 AllocBody592_224

def AllocBody592_226 : StackLang.HolProg 64 :=
.seq AllocBody592_216 AllocBody592_225

def AllocBody592_227 : StackLang.HolProg 64 :=
.seq AllocBody592_215 AllocBody592_226

def AllocBody592_228 : StackLang.HolProg 64 :=
.seq AllocBody592_204 AllocBody592_227

def AllocBody592_229 : StackLang.HolProg 64 :=
.seq AllocBody592_203 AllocBody592_228

def AllocBody592_230 : StackLang.HolProg 64 :=
.seq AllocBody592_202 AllocBody592_229

def AllocBody592_231 : StackLang.HolProg 64 :=
.seq AllocBody592_201 AllocBody592_230

def AllocBody592_232 : StackLang.HolProg 64 :=
.seq AllocBody592_200 AllocBody592_231

def AllocBody592_233 : StackLang.HolProg 64 :=
.seq AllocBody592_199 AllocBody592_232

def AllocBody592_234 : StackLang.HolProg 64 :=
.seq AllocBody592_110 AllocBody592_233

def AllocBody592_235 : StackLang.HolProg 64 :=
.seq AllocBody592_109 AllocBody592_234

def AllocBody592_236 : StackLang.HolProg 64 :=
.seq AllocBody592_108 AllocBody592_235

def AllocBody592_237 : StackLang.HolProg 64 :=
.seq AllocBody592_107 AllocBody592_236

def AllocBody592_238 : StackLang.HolProg 64 :=
.seq AllocBody592_64 AllocBody592_237

def AllocBody592_239 : StackLang.HolProg 64 :=
.seq AllocBody592_63 AllocBody592_238

def AllocBody592_240 : StackLang.HolProg 64 :=
.seq AllocBody592_62 AllocBody592_239

def AllocBody592_241 : StackLang.HolProg 64 :=
.seq AllocBody592_61 AllocBody592_240

def AllocBody592_242 : StackLang.HolProg 64 :=
.seq AllocBody592_60 AllocBody592_241

def AllocBody592_243 : StackLang.HolProg 64 :=
.seq AllocBody592_7 AllocBody592_242

def AllocBody592_244 : StackLang.HolProg 64 :=
.seq AllocBody592_0 AllocBody592_243

def Alloc592 : Nat × StackLang.HolProg 64 := (592, AllocBody592_244)
theorem Alloc592_eq : StackAlloc.progComp (592, raw592) = Alloc592 := by
  kernel_rfl
#print axioms Alloc592_eq
end InitECandidate.Proofs.BackendStages
