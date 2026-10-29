import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw202
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody202_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody202_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody202_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 252#64)

def AllocBody202_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody202_5 : StackLang.HolProg 64 :=
.seq AllocBody202_3 AllocBody202_4

def AllocBody202_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody202_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody202_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody202_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 3

def AllocBody202_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody202_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody202_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody202_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody202_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody202_16 : StackLang.HolProg 64 :=
.seq AllocBody202_14 AllocBody202_15

def AllocBody202_17 : StackLang.HolProg 64 :=
.seq AllocBody202_13 AllocBody202_16

def AllocBody202_18 : StackLang.HolProg 64 :=
.seq AllocBody202_12 AllocBody202_17

def AllocBody202_19 : StackLang.HolProg 64 :=
.seq AllocBody202_11 AllocBody202_18

def AllocBody202_20 : StackLang.HolProg 64 :=
.seq AllocBody202_10 AllocBody202_19

def AllocBody202_21 : StackLang.HolProg 64 :=
.seq AllocBody202_9 AllocBody202_20

def AllocBody202_22 : StackLang.HolProg 64 :=
.seq AllocBody202_8 AllocBody202_21

def AllocBody202_23 : StackLang.HolProg 64 :=
.seq AllocBody202_7 AllocBody202_22

def AllocBody202_24 : StackLang.HolProg 64 :=
.seq AllocBody202_6 AllocBody202_23

def AllocBody202_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody202_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody202_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody202_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody202_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody202_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody202_33 : StackLang.HolProg 64 :=
.seq AllocBody202_31 AllocBody202_32

def AllocBody202_34 : StackLang.HolProg 64 :=
.seq AllocBody202_30 AllocBody202_33

def AllocBody202_35 : StackLang.HolProg 64 :=
.seq AllocBody202_29 AllocBody202_34

def AllocBody202_36 : StackLang.HolProg 64 :=
.seq AllocBody202_28 AllocBody202_35

def AllocBody202_37 : StackLang.HolProg 64 :=
.seq AllocBody202_27 AllocBody202_36

def AllocBody202_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody202_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody202_40 : StackLang.HolProg 64 :=
.seq AllocBody202_38 AllocBody202_39

def AllocBody202_41 : StackLang.HolProg 64 :=
.call (some (AllocBody202_37, 0, 202, 2)) (Sum.inl 115) (some (AllocBody202_40, 202, 3))

def AllocBody202_42 : StackLang.HolProg 64 :=
.seq AllocBody202_26 AllocBody202_41

def AllocBody202_43 : StackLang.HolProg 64 :=
.seq AllocBody202_25 AllocBody202_42

def AllocBody202_44 : StackLang.HolProg 64 :=
.seq AllocBody202_24 AllocBody202_43

def AllocBody202_45 : StackLang.HolProg 64 :=
.seq AllocBody202_5 AllocBody202_44

def AllocBody202_46 : StackLang.HolProg 64 :=
.seq AllocBody202_2 AllocBody202_45

def AllocBody202_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody202_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody202_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody202_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody202_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody202_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody202_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody202_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody202_60 : StackLang.HolProg 64 :=
.seq AllocBody202_58 AllocBody202_59

def AllocBody202_61 : StackLang.HolProg 64 :=
.seq AllocBody202_57 AllocBody202_60

def AllocBody202_62 : StackLang.HolProg 64 :=
.seq AllocBody202_56 AllocBody202_61

def AllocBody202_63 : StackLang.HolProg 64 :=
.seq AllocBody202_55 AllocBody202_62

def AllocBody202_64 : StackLang.HolProg 64 :=
.seq AllocBody202_54 AllocBody202_63

def AllocBody202_65 : StackLang.HolProg 64 :=
.seq AllocBody202_53 AllocBody202_64

def AllocBody202_66 : StackLang.HolProg 64 :=
.seq AllocBody202_52 AllocBody202_65

def AllocBody202_67 : StackLang.HolProg 64 :=
.seq AllocBody202_51 AllocBody202_66

def AllocBody202_68 : StackLang.HolProg 64 :=
.seq AllocBody202_50 AllocBody202_67

def AllocBody202_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody202_68 AllocBody202_69

def AllocBody202_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody202_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody202_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody202_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody202_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody202_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody202_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody202_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody202_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody202_83 : StackLang.HolProg 64 :=
.seq AllocBody202_81 AllocBody202_82

def AllocBody202_84 : StackLang.HolProg 64 :=
.seq AllocBody202_80 AllocBody202_83

def AllocBody202_85 : StackLang.HolProg 64 :=
.seq AllocBody202_79 AllocBody202_84

def AllocBody202_86 : StackLang.HolProg 64 :=
.seq AllocBody202_78 AllocBody202_85

def AllocBody202_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 253#64)

def AllocBody202_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody202_90 : StackLang.HolProg 64 :=
.seq AllocBody202_88 AllocBody202_89

def AllocBody202_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody202_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody202_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody202_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 5

def AllocBody202_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody202_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody202_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody202_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody202_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody202_101 : StackLang.HolProg 64 :=
.seq AllocBody202_99 AllocBody202_100

def AllocBody202_102 : StackLang.HolProg 64 :=
.seq AllocBody202_98 AllocBody202_101

def AllocBody202_103 : StackLang.HolProg 64 :=
.seq AllocBody202_97 AllocBody202_102

def AllocBody202_104 : StackLang.HolProg 64 :=
.seq AllocBody202_96 AllocBody202_103

def AllocBody202_105 : StackLang.HolProg 64 :=
.seq AllocBody202_95 AllocBody202_104

def AllocBody202_106 : StackLang.HolProg 64 :=
.seq AllocBody202_94 AllocBody202_105

def AllocBody202_107 : StackLang.HolProg 64 :=
.seq AllocBody202_93 AllocBody202_106

def AllocBody202_108 : StackLang.HolProg 64 :=
.seq AllocBody202_92 AllocBody202_107

def AllocBody202_109 : StackLang.HolProg 64 :=
.seq AllocBody202_91 AllocBody202_108

def AllocBody202_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody202_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody202_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody202_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody202_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody202_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody202_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody202_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody202_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody202_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody202_122 : StackLang.HolProg 64 :=
.seq AllocBody202_120 AllocBody202_121

def AllocBody202_123 : StackLang.HolProg 64 :=
.seq AllocBody202_119 AllocBody202_122

def AllocBody202_124 : StackLang.HolProg 64 :=
.seq AllocBody202_118 AllocBody202_123

def AllocBody202_125 : StackLang.HolProg 64 :=
.seq AllocBody202_117 AllocBody202_124

def AllocBody202_126 : StackLang.HolProg 64 :=
.seq AllocBody202_116 AllocBody202_125

def AllocBody202_127 : StackLang.HolProg 64 :=
.seq AllocBody202_115 AllocBody202_126

def AllocBody202_128 : StackLang.HolProg 64 :=
.seq AllocBody202_114 AllocBody202_127

def AllocBody202_129 : StackLang.HolProg 64 :=
.seq AllocBody202_113 AllocBody202_128

def AllocBody202_130 : StackLang.HolProg 64 :=
.seq AllocBody202_112 AllocBody202_129

def AllocBody202_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody202_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody202_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody202_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody202_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody202_136 : StackLang.HolProg 64 :=
.seq AllocBody202_134 AllocBody202_135

def AllocBody202_137 : StackLang.HolProg 64 :=
.seq AllocBody202_133 AllocBody202_136

def AllocBody202_138 : StackLang.HolProg 64 :=
.seq AllocBody202_132 AllocBody202_137

def AllocBody202_139 : StackLang.HolProg 64 :=
.seq AllocBody202_131 AllocBody202_138

def AllocBody202_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody202_141 : StackLang.HolProg 64 :=
.seq AllocBody202_139 AllocBody202_140

def AllocBody202_142 : StackLang.HolProg 64 :=
.call (some (AllocBody202_130, 0, 202, 4)) (Sum.inl 106) (some (AllocBody202_141, 202, 5))

def AllocBody202_143 : StackLang.HolProg 64 :=
.seq AllocBody202_111 AllocBody202_142

def AllocBody202_144 : StackLang.HolProg 64 :=
.seq AllocBody202_110 AllocBody202_143

def AllocBody202_145 : StackLang.HolProg 64 :=
.seq AllocBody202_109 AllocBody202_144

def AllocBody202_146 : StackLang.HolProg 64 :=
.seq AllocBody202_90 AllocBody202_145

def AllocBody202_147 : StackLang.HolProg 64 :=
.seq AllocBody202_87 AllocBody202_146

def AllocBody202_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody202_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody202_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def AllocBody202_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def AllocBody202_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def AllocBody202_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def AllocBody202_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody202_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody202_161 : StackLang.HolProg 64 :=
.seq AllocBody202_159 AllocBody202_160

def AllocBody202_162 : StackLang.HolProg 64 :=
.seq AllocBody202_158 AllocBody202_161

def AllocBody202_163 : StackLang.HolProg 64 :=
.seq AllocBody202_157 AllocBody202_162

def AllocBody202_164 : StackLang.HolProg 64 :=
.seq AllocBody202_156 AllocBody202_163

def AllocBody202_165 : StackLang.HolProg 64 :=
.seq AllocBody202_155 AllocBody202_164

def AllocBody202_166 : StackLang.HolProg 64 :=
.seq AllocBody202_154 AllocBody202_165

def AllocBody202_167 : StackLang.HolProg 64 :=
.seq AllocBody202_153 AllocBody202_166

def AllocBody202_168 : StackLang.HolProg 64 :=
.seq AllocBody202_152 AllocBody202_167

def AllocBody202_169 : StackLang.HolProg 64 :=
.seq AllocBody202_151 AllocBody202_168

def AllocBody202_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody202_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody202_169 AllocBody202_170

def AllocBody202_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody202_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody202_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody202_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody202_177 : StackLang.HolProg 64 :=
.seq AllocBody202_175 AllocBody202_176

def AllocBody202_178 : StackLang.HolProg 64 :=
.seq AllocBody202_174 AllocBody202_177

def AllocBody202_179 : StackLang.HolProg 64 :=
.seq AllocBody202_173 AllocBody202_178

def AllocBody202_180 : StackLang.HolProg 64 :=
.seq AllocBody202_172 AllocBody202_179

def AllocBody202_181 : StackLang.HolProg 64 :=
.seq AllocBody202_171 AllocBody202_180

def AllocBody202_182 : StackLang.HolProg 64 :=
.seq AllocBody202_150 AllocBody202_181

def AllocBody202_183 : StackLang.HolProg 64 :=
.seq AllocBody202_149 AllocBody202_182

def AllocBody202_184 : StackLang.HolProg 64 :=
.seq AllocBody202_148 AllocBody202_183

def AllocBody202_185 : StackLang.HolProg 64 :=
.seq AllocBody202_147 AllocBody202_184

def AllocBody202_186 : StackLang.HolProg 64 :=
.seq AllocBody202_86 AllocBody202_185

def AllocBody202_187 : StackLang.HolProg 64 :=
.seq AllocBody202_77 AllocBody202_186

def AllocBody202_188 : StackLang.HolProg 64 :=
.seq AllocBody202_76 AllocBody202_187

def AllocBody202_189 : StackLang.HolProg 64 :=
.seq AllocBody202_75 AllocBody202_188

def AllocBody202_190 : StackLang.HolProg 64 :=
.seq AllocBody202_74 AllocBody202_189

def AllocBody202_191 : StackLang.HolProg 64 :=
.seq AllocBody202_73 AllocBody202_190

def AllocBody202_192 : StackLang.HolProg 64 :=
.seq AllocBody202_72 AllocBody202_191

def AllocBody202_193 : StackLang.HolProg 64 :=
.seq AllocBody202_71 AllocBody202_192

def AllocBody202_194 : StackLang.HolProg 64 :=
.seq AllocBody202_70 AllocBody202_193

def AllocBody202_195 : StackLang.HolProg 64 :=
.seq AllocBody202_49 AllocBody202_194

def AllocBody202_196 : StackLang.HolProg 64 :=
.seq AllocBody202_48 AllocBody202_195

def AllocBody202_197 : StackLang.HolProg 64 :=
.seq AllocBody202_47 AllocBody202_196

def AllocBody202_198 : StackLang.HolProg 64 :=
.seq AllocBody202_46 AllocBody202_197

def AllocBody202_199 : StackLang.HolProg 64 :=
.seq AllocBody202_1 AllocBody202_198

def AllocBody202_200 : StackLang.HolProg 64 :=
.seq AllocBody202_0 AllocBody202_199

def Alloc202 : Nat × StackLang.HolProg 64 := (202, AllocBody202_200)
theorem Alloc202_eq : StackAlloc.progComp (202, raw202) = Alloc202 := by
  kernel_rfl
#print axioms Alloc202_eq
end InitECandidate.Proofs.BackendStages
