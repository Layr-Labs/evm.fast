import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw710
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody710_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody710_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody710_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3152#64)

def AllocBody710_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody710_5 : StackLang.HolProg 64 :=
.seq AllocBody710_3 AllocBody710_4

def AllocBody710_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody710_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody710_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody710_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 3

def AllocBody710_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody710_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody710_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody710_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody710_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody710_16 : StackLang.HolProg 64 :=
.seq AllocBody710_14 AllocBody710_15

def AllocBody710_17 : StackLang.HolProg 64 :=
.seq AllocBody710_13 AllocBody710_16

def AllocBody710_18 : StackLang.HolProg 64 :=
.seq AllocBody710_12 AllocBody710_17

def AllocBody710_19 : StackLang.HolProg 64 :=
.seq AllocBody710_11 AllocBody710_18

def AllocBody710_20 : StackLang.HolProg 64 :=
.seq AllocBody710_10 AllocBody710_19

def AllocBody710_21 : StackLang.HolProg 64 :=
.seq AllocBody710_9 AllocBody710_20

def AllocBody710_22 : StackLang.HolProg 64 :=
.seq AllocBody710_8 AllocBody710_21

def AllocBody710_23 : StackLang.HolProg 64 :=
.seq AllocBody710_7 AllocBody710_22

def AllocBody710_24 : StackLang.HolProg 64 :=
.seq AllocBody710_6 AllocBody710_23

def AllocBody710_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody710_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody710_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody710_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody710_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody710_32 : StackLang.HolProg 64 :=
.seq AllocBody710_30 AllocBody710_31

def AllocBody710_33 : StackLang.HolProg 64 :=
.seq AllocBody710_29 AllocBody710_32

def AllocBody710_34 : StackLang.HolProg 64 :=
.seq AllocBody710_28 AllocBody710_33

def AllocBody710_35 : StackLang.HolProg 64 :=
.seq AllocBody710_27 AllocBody710_34

def AllocBody710_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody710_38 : StackLang.HolProg 64 :=
.seq AllocBody710_36 AllocBody710_37

def AllocBody710_39 : StackLang.HolProg 64 :=
.call (some (AllocBody710_35, 0, 710, 2)) (Sum.inl 708) (some (AllocBody710_38, 710, 3))

def AllocBody710_40 : StackLang.HolProg 64 :=
.seq AllocBody710_26 AllocBody710_39

def AllocBody710_41 : StackLang.HolProg 64 :=
.seq AllocBody710_25 AllocBody710_40

def AllocBody710_42 : StackLang.HolProg 64 :=
.seq AllocBody710_24 AllocBody710_41

def AllocBody710_43 : StackLang.HolProg 64 :=
.seq AllocBody710_5 AllocBody710_42

def AllocBody710_44 : StackLang.HolProg 64 :=
.seq AllocBody710_2 AllocBody710_43

def AllocBody710_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody710_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody710_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def AllocBody710_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def AllocBody710_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def AllocBody710_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def AllocBody710_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def AllocBody710_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def AllocBody710_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 6

def AllocBody710_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 5

def AllocBody710_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 4

def AllocBody710_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 3

def AllocBody710_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody710_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody710_59 : StackLang.HolProg 64 :=
.seq AllocBody710_57 AllocBody710_58

def AllocBody710_60 : StackLang.HolProg 64 :=
.seq AllocBody710_56 AllocBody710_59

def AllocBody710_61 : StackLang.HolProg 64 :=
.seq AllocBody710_55 AllocBody710_60

def AllocBody710_62 : StackLang.HolProg 64 :=
.seq AllocBody710_54 AllocBody710_61

def AllocBody710_63 : StackLang.HolProg 64 :=
.seq AllocBody710_53 AllocBody710_62

def AllocBody710_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3153#64)

def AllocBody710_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody710_67 : StackLang.HolProg 64 :=
.seq AllocBody710_65 AllocBody710_66

def AllocBody710_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody710_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody710_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody710_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 710 5

def AllocBody710_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody710_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody710_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody710_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody710_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody710_78 : StackLang.HolProg 64 :=
.seq AllocBody710_76 AllocBody710_77

def AllocBody710_79 : StackLang.HolProg 64 :=
.seq AllocBody710_75 AllocBody710_78

def AllocBody710_80 : StackLang.HolProg 64 :=
.seq AllocBody710_74 AllocBody710_79

def AllocBody710_81 : StackLang.HolProg 64 :=
.seq AllocBody710_73 AllocBody710_80

def AllocBody710_82 : StackLang.HolProg 64 :=
.seq AllocBody710_72 AllocBody710_81

def AllocBody710_83 : StackLang.HolProg 64 :=
.seq AllocBody710_71 AllocBody710_82

def AllocBody710_84 : StackLang.HolProg 64 :=
.seq AllocBody710_70 AllocBody710_83

def AllocBody710_85 : StackLang.HolProg 64 :=
.seq AllocBody710_69 AllocBody710_84

def AllocBody710_86 : StackLang.HolProg 64 :=
.seq AllocBody710_68 AllocBody710_85

def AllocBody710_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody710_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody710_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody710_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody710_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody710_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody710_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def AllocBody710_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def AllocBody710_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody710_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody710_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def AllocBody710_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 1

def AllocBody710_101 : StackLang.HolProg 64 :=
.seq AllocBody710_99 AllocBody710_100

def AllocBody710_102 : StackLang.HolProg 64 :=
.seq AllocBody710_98 AllocBody710_101

def AllocBody710_103 : StackLang.HolProg 64 :=
.seq AllocBody710_97 AllocBody710_102

def AllocBody710_104 : StackLang.HolProg 64 :=
.seq AllocBody710_96 AllocBody710_103

def AllocBody710_105 : StackLang.HolProg 64 :=
.seq AllocBody710_95 AllocBody710_104

def AllocBody710_106 : StackLang.HolProg 64 :=
.seq AllocBody710_94 AllocBody710_105

def AllocBody710_107 : StackLang.HolProg 64 :=
.seq AllocBody710_93 AllocBody710_106

def AllocBody710_108 : StackLang.HolProg 64 :=
.seq AllocBody710_92 AllocBody710_107

def AllocBody710_109 : StackLang.HolProg 64 :=
.seq AllocBody710_91 AllocBody710_108

def AllocBody710_110 : StackLang.HolProg 64 :=
.seq AllocBody710_90 AllocBody710_109

def AllocBody710_111 : StackLang.HolProg 64 :=
.seq AllocBody710_89 AllocBody710_110

def AllocBody710_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 7

def AllocBody710_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def AllocBody710_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 5

def AllocBody710_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 4

def AllocBody710_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def AllocBody710_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 2

def AllocBody710_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 1

def AllocBody710_119 : StackLang.HolProg 64 :=
.seq AllocBody710_117 AllocBody710_118

def AllocBody710_120 : StackLang.HolProg 64 :=
.seq AllocBody710_116 AllocBody710_119

def AllocBody710_121 : StackLang.HolProg 64 :=
.seq AllocBody710_115 AllocBody710_120

def AllocBody710_122 : StackLang.HolProg 64 :=
.seq AllocBody710_114 AllocBody710_121

def AllocBody710_123 : StackLang.HolProg 64 :=
.seq AllocBody710_113 AllocBody710_122

def AllocBody710_124 : StackLang.HolProg 64 :=
.seq AllocBody710_112 AllocBody710_123

def AllocBody710_125 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody710_126 : StackLang.HolProg 64 :=
.seq AllocBody710_124 AllocBody710_125

def AllocBody710_127 : StackLang.HolProg 64 :=
.call (some (AllocBody710_111, 0, 710, 4)) (Sum.inl 709) (some (AllocBody710_126, 710, 5))

def AllocBody710_128 : StackLang.HolProg 64 :=
.seq AllocBody710_88 AllocBody710_127

def AllocBody710_129 : StackLang.HolProg 64 :=
.seq AllocBody710_87 AllocBody710_128

def AllocBody710_130 : StackLang.HolProg 64 :=
.seq AllocBody710_86 AllocBody710_129

def AllocBody710_131 : StackLang.HolProg 64 :=
.seq AllocBody710_67 AllocBody710_130

def AllocBody710_132 : StackLang.HolProg 64 :=
.seq AllocBody710_64 AllocBody710_131

def AllocBody710_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody710_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody710_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody710_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def AllocBody710_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody710_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody710_140 : StackLang.HolProg 64 :=
.seq AllocBody710_138 AllocBody710_139

def AllocBody710_141 : StackLang.HolProg 64 :=
.seq AllocBody710_137 AllocBody710_140

def AllocBody710_142 : StackLang.HolProg 64 :=
.seq AllocBody710_136 AllocBody710_141

def AllocBody710_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody710_144 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody710_142 AllocBody710_143

def AllocBody710_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody710_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody710_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody710_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody710_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody710_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody710_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody710_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody710_153 : StackLang.HolProg 64 :=
.seq AllocBody710_151 AllocBody710_152

def AllocBody710_154 : StackLang.HolProg 64 :=
.seq AllocBody710_150 AllocBody710_153

def AllocBody710_155 : StackLang.HolProg 64 :=
.seq AllocBody710_149 AllocBody710_154

def AllocBody710_156 : StackLang.HolProg 64 :=
.seq AllocBody710_148 AllocBody710_155

def AllocBody710_157 : StackLang.HolProg 64 :=
.seq AllocBody710_147 AllocBody710_156

def AllocBody710_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody710_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody710_160 : StackLang.HolProg 64 :=
.seq AllocBody710_158 AllocBody710_159

def AllocBody710_161 : StackLang.HolProg 64 :=
.seq AllocBody710_157 AllocBody710_160

def AllocBody710_162 : StackLang.HolProg 64 :=
.seq AllocBody710_146 AllocBody710_161

def AllocBody710_163 : StackLang.HolProg 64 :=
.seq AllocBody710_145 AllocBody710_162

def AllocBody710_164 : StackLang.HolProg 64 :=
.seq AllocBody710_144 AllocBody710_163

def AllocBody710_165 : StackLang.HolProg 64 :=
.seq AllocBody710_135 AllocBody710_164

def AllocBody710_166 : StackLang.HolProg 64 :=
.seq AllocBody710_134 AllocBody710_165

def AllocBody710_167 : StackLang.HolProg 64 :=
.seq AllocBody710_133 AllocBody710_166

def AllocBody710_168 : StackLang.HolProg 64 :=
.seq AllocBody710_132 AllocBody710_167

def AllocBody710_169 : StackLang.HolProg 64 :=
.seq AllocBody710_63 AllocBody710_168

def AllocBody710_170 : StackLang.HolProg 64 :=
.seq AllocBody710_52 AllocBody710_169

def AllocBody710_171 : StackLang.HolProg 64 :=
.seq AllocBody710_51 AllocBody710_170

def AllocBody710_172 : StackLang.HolProg 64 :=
.seq AllocBody710_50 AllocBody710_171

def AllocBody710_173 : StackLang.HolProg 64 :=
.seq AllocBody710_49 AllocBody710_172

def AllocBody710_174 : StackLang.HolProg 64 :=
.seq AllocBody710_48 AllocBody710_173

def AllocBody710_175 : StackLang.HolProg 64 :=
.seq AllocBody710_47 AllocBody710_174

def AllocBody710_176 : StackLang.HolProg 64 :=
.seq AllocBody710_46 AllocBody710_175

def AllocBody710_177 : StackLang.HolProg 64 :=
.seq AllocBody710_45 AllocBody710_176

def AllocBody710_178 : StackLang.HolProg 64 :=
.seq AllocBody710_44 AllocBody710_177

def AllocBody710_179 : StackLang.HolProg 64 :=
.seq AllocBody710_1 AllocBody710_178

def AllocBody710_180 : StackLang.HolProg 64 :=
.seq AllocBody710_0 AllocBody710_179

def Alloc710 : Nat × StackLang.HolProg 64 := (710, AllocBody710_180)
theorem Alloc710_eq : StackAlloc.progComp (710, raw710) = Alloc710 := by
  kernel_rfl
#print axioms Alloc710_eq
end InitECandidate.Proofs.BackendStages
