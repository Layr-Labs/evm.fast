import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw642
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody642_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def AllocBody642_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody642_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2619#64)

def AllocBody642_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody642_5 : StackLang.HolProg 64 :=
.seq AllocBody642_3 AllocBody642_4

def AllocBody642_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody642_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody642_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody642_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 3

def AllocBody642_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody642_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody642_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody642_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody642_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody642_16 : StackLang.HolProg 64 :=
.seq AllocBody642_14 AllocBody642_15

def AllocBody642_17 : StackLang.HolProg 64 :=
.seq AllocBody642_13 AllocBody642_16

def AllocBody642_18 : StackLang.HolProg 64 :=
.seq AllocBody642_12 AllocBody642_17

def AllocBody642_19 : StackLang.HolProg 64 :=
.seq AllocBody642_11 AllocBody642_18

def AllocBody642_20 : StackLang.HolProg 64 :=
.seq AllocBody642_10 AllocBody642_19

def AllocBody642_21 : StackLang.HolProg 64 :=
.seq AllocBody642_9 AllocBody642_20

def AllocBody642_22 : StackLang.HolProg 64 :=
.seq AllocBody642_8 AllocBody642_21

def AllocBody642_23 : StackLang.HolProg 64 :=
.seq AllocBody642_7 AllocBody642_22

def AllocBody642_24 : StackLang.HolProg 64 :=
.seq AllocBody642_6 AllocBody642_23

def AllocBody642_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody642_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody642_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody642_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody642_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody642_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody642_33 : StackLang.HolProg 64 :=
.seq AllocBody642_31 AllocBody642_32

def AllocBody642_34 : StackLang.HolProg 64 :=
.seq AllocBody642_30 AllocBody642_33

def AllocBody642_35 : StackLang.HolProg 64 :=
.seq AllocBody642_29 AllocBody642_34

def AllocBody642_36 : StackLang.HolProg 64 :=
.seq AllocBody642_28 AllocBody642_35

def AllocBody642_37 : StackLang.HolProg 64 :=
.seq AllocBody642_27 AllocBody642_36

def AllocBody642_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody642_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody642_40 : StackLang.HolProg 64 :=
.seq AllocBody642_38 AllocBody642_39

def AllocBody642_41 : StackLang.HolProg 64 :=
.call (some (AllocBody642_37, 0, 642, 2)) (Sum.inl 115) (some (AllocBody642_40, 642, 3))

def AllocBody642_42 : StackLang.HolProg 64 :=
.seq AllocBody642_26 AllocBody642_41

def AllocBody642_43 : StackLang.HolProg 64 :=
.seq AllocBody642_25 AllocBody642_42

def AllocBody642_44 : StackLang.HolProg 64 :=
.seq AllocBody642_24 AllocBody642_43

def AllocBody642_45 : StackLang.HolProg 64 :=
.seq AllocBody642_5 AllocBody642_44

def AllocBody642_46 : StackLang.HolProg 64 :=
.seq AllocBody642_2 AllocBody642_45

def AllocBody642_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody642_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody642_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody642_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody642_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody642_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody642_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody642_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody642_60 : StackLang.HolProg 64 :=
.seq AllocBody642_58 AllocBody642_59

def AllocBody642_61 : StackLang.HolProg 64 :=
.seq AllocBody642_57 AllocBody642_60

def AllocBody642_62 : StackLang.HolProg 64 :=
.seq AllocBody642_56 AllocBody642_61

def AllocBody642_63 : StackLang.HolProg 64 :=
.seq AllocBody642_55 AllocBody642_62

def AllocBody642_64 : StackLang.HolProg 64 :=
.seq AllocBody642_54 AllocBody642_63

def AllocBody642_65 : StackLang.HolProg 64 :=
.seq AllocBody642_53 AllocBody642_64

def AllocBody642_66 : StackLang.HolProg 64 :=
.seq AllocBody642_52 AllocBody642_65

def AllocBody642_67 : StackLang.HolProg 64 :=
.seq AllocBody642_51 AllocBody642_66

def AllocBody642_68 : StackLang.HolProg 64 :=
.seq AllocBody642_50 AllocBody642_67

def AllocBody642_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_70 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody642_68 AllocBody642_69

def AllocBody642_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody642_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody642_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody642_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody642_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def AllocBody642_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def AllocBody642_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def AllocBody642_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody642_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody642_83 : StackLang.HolProg 64 :=
.seq AllocBody642_81 AllocBody642_82

def AllocBody642_84 : StackLang.HolProg 64 :=
.seq AllocBody642_80 AllocBody642_83

def AllocBody642_85 : StackLang.HolProg 64 :=
.seq AllocBody642_79 AllocBody642_84

def AllocBody642_86 : StackLang.HolProg 64 :=
.seq AllocBody642_78 AllocBody642_85

def AllocBody642_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2620#64)

def AllocBody642_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody642_90 : StackLang.HolProg 64 :=
.seq AllocBody642_88 AllocBody642_89

def AllocBody642_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody642_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody642_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody642_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 5

def AllocBody642_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody642_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody642_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody642_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody642_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody642_101 : StackLang.HolProg 64 :=
.seq AllocBody642_99 AllocBody642_100

def AllocBody642_102 : StackLang.HolProg 64 :=
.seq AllocBody642_98 AllocBody642_101

def AllocBody642_103 : StackLang.HolProg 64 :=
.seq AllocBody642_97 AllocBody642_102

def AllocBody642_104 : StackLang.HolProg 64 :=
.seq AllocBody642_96 AllocBody642_103

def AllocBody642_105 : StackLang.HolProg 64 :=
.seq AllocBody642_95 AllocBody642_104

def AllocBody642_106 : StackLang.HolProg 64 :=
.seq AllocBody642_94 AllocBody642_105

def AllocBody642_107 : StackLang.HolProg 64 :=
.seq AllocBody642_93 AllocBody642_106

def AllocBody642_108 : StackLang.HolProg 64 :=
.seq AllocBody642_92 AllocBody642_107

def AllocBody642_109 : StackLang.HolProg 64 :=
.seq AllocBody642_91 AllocBody642_108

def AllocBody642_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody642_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody642_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody642_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody642_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody642_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody642_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody642_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody642_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody642_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody642_122 : StackLang.HolProg 64 :=
.seq AllocBody642_120 AllocBody642_121

def AllocBody642_123 : StackLang.HolProg 64 :=
.seq AllocBody642_119 AllocBody642_122

def AllocBody642_124 : StackLang.HolProg 64 :=
.seq AllocBody642_118 AllocBody642_123

def AllocBody642_125 : StackLang.HolProg 64 :=
.seq AllocBody642_117 AllocBody642_124

def AllocBody642_126 : StackLang.HolProg 64 :=
.seq AllocBody642_116 AllocBody642_125

def AllocBody642_127 : StackLang.HolProg 64 :=
.seq AllocBody642_115 AllocBody642_126

def AllocBody642_128 : StackLang.HolProg 64 :=
.seq AllocBody642_114 AllocBody642_127

def AllocBody642_129 : StackLang.HolProg 64 :=
.seq AllocBody642_113 AllocBody642_128

def AllocBody642_130 : StackLang.HolProg 64 :=
.seq AllocBody642_112 AllocBody642_129

def AllocBody642_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def AllocBody642_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody642_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 3

def AllocBody642_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 2

def AllocBody642_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def AllocBody642_136 : StackLang.HolProg 64 :=
.seq AllocBody642_134 AllocBody642_135

def AllocBody642_137 : StackLang.HolProg 64 :=
.seq AllocBody642_133 AllocBody642_136

def AllocBody642_138 : StackLang.HolProg 64 :=
.seq AllocBody642_132 AllocBody642_137

def AllocBody642_139 : StackLang.HolProg 64 :=
.seq AllocBody642_131 AllocBody642_138

def AllocBody642_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody642_141 : StackLang.HolProg 64 :=
.seq AllocBody642_139 AllocBody642_140

def AllocBody642_142 : StackLang.HolProg 64 :=
.call (some (AllocBody642_130, 0, 642, 4)) (Sum.inl 106) (some (AllocBody642_141, 642, 5))

def AllocBody642_143 : StackLang.HolProg 64 :=
.seq AllocBody642_111 AllocBody642_142

def AllocBody642_144 : StackLang.HolProg 64 :=
.seq AllocBody642_110 AllocBody642_143

def AllocBody642_145 : StackLang.HolProg 64 :=
.seq AllocBody642_109 AllocBody642_144

def AllocBody642_146 : StackLang.HolProg 64 :=
.seq AllocBody642_90 AllocBody642_145

def AllocBody642_147 : StackLang.HolProg 64 :=
.seq AllocBody642_87 AllocBody642_146

def AllocBody642_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody642_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody642_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def AllocBody642_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody642_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def AllocBody642_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def AllocBody642_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody642_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def AllocBody642_161 : StackLang.HolProg 64 :=
.seq AllocBody642_159 AllocBody642_160

def AllocBody642_162 : StackLang.HolProg 64 :=
.seq AllocBody642_158 AllocBody642_161

def AllocBody642_163 : StackLang.HolProg 64 :=
.seq AllocBody642_157 AllocBody642_162

def AllocBody642_164 : StackLang.HolProg 64 :=
.seq AllocBody642_156 AllocBody642_163

def AllocBody642_165 : StackLang.HolProg 64 :=
.seq AllocBody642_155 AllocBody642_164

def AllocBody642_166 : StackLang.HolProg 64 :=
.seq AllocBody642_154 AllocBody642_165

def AllocBody642_167 : StackLang.HolProg 64 :=
.seq AllocBody642_153 AllocBody642_166

def AllocBody642_168 : StackLang.HolProg 64 :=
.seq AllocBody642_152 AllocBody642_167

def AllocBody642_169 : StackLang.HolProg 64 :=
.seq AllocBody642_151 AllocBody642_168

def AllocBody642_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody642_171 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody642_169 AllocBody642_170

def AllocBody642_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody642_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody642_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def AllocBody642_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody642_177 : StackLang.HolProg 64 :=
.seq AllocBody642_175 AllocBody642_176

def AllocBody642_178 : StackLang.HolProg 64 :=
.seq AllocBody642_174 AllocBody642_177

def AllocBody642_179 : StackLang.HolProg 64 :=
.seq AllocBody642_173 AllocBody642_178

def AllocBody642_180 : StackLang.HolProg 64 :=
.seq AllocBody642_172 AllocBody642_179

def AllocBody642_181 : StackLang.HolProg 64 :=
.seq AllocBody642_171 AllocBody642_180

def AllocBody642_182 : StackLang.HolProg 64 :=
.seq AllocBody642_150 AllocBody642_181

def AllocBody642_183 : StackLang.HolProg 64 :=
.seq AllocBody642_149 AllocBody642_182

def AllocBody642_184 : StackLang.HolProg 64 :=
.seq AllocBody642_148 AllocBody642_183

def AllocBody642_185 : StackLang.HolProg 64 :=
.seq AllocBody642_147 AllocBody642_184

def AllocBody642_186 : StackLang.HolProg 64 :=
.seq AllocBody642_86 AllocBody642_185

def AllocBody642_187 : StackLang.HolProg 64 :=
.seq AllocBody642_77 AllocBody642_186

def AllocBody642_188 : StackLang.HolProg 64 :=
.seq AllocBody642_76 AllocBody642_187

def AllocBody642_189 : StackLang.HolProg 64 :=
.seq AllocBody642_75 AllocBody642_188

def AllocBody642_190 : StackLang.HolProg 64 :=
.seq AllocBody642_74 AllocBody642_189

def AllocBody642_191 : StackLang.HolProg 64 :=
.seq AllocBody642_73 AllocBody642_190

def AllocBody642_192 : StackLang.HolProg 64 :=
.seq AllocBody642_72 AllocBody642_191

def AllocBody642_193 : StackLang.HolProg 64 :=
.seq AllocBody642_71 AllocBody642_192

def AllocBody642_194 : StackLang.HolProg 64 :=
.seq AllocBody642_70 AllocBody642_193

def AllocBody642_195 : StackLang.HolProg 64 :=
.seq AllocBody642_49 AllocBody642_194

def AllocBody642_196 : StackLang.HolProg 64 :=
.seq AllocBody642_48 AllocBody642_195

def AllocBody642_197 : StackLang.HolProg 64 :=
.seq AllocBody642_47 AllocBody642_196

def AllocBody642_198 : StackLang.HolProg 64 :=
.seq AllocBody642_46 AllocBody642_197

def AllocBody642_199 : StackLang.HolProg 64 :=
.seq AllocBody642_1 AllocBody642_198

def AllocBody642_200 : StackLang.HolProg 64 :=
.seq AllocBody642_0 AllocBody642_199

def Alloc642 : Nat × StackLang.HolProg 64 := (642, AllocBody642_200)
theorem Alloc642_eq : StackAlloc.progComp (642, raw642) = Alloc642 := by
  kernel_rfl
#print axioms Alloc642_eq
end InitECandidate.Proofs.BackendStages
