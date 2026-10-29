import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw774
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody774_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 14

def AllocBody774_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 9

def AllocBody774_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody774_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def AllocBody774_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody774_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 7

def AllocBody774_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody774_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 12

def AllocBody774_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody774_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 8

def AllocBody774_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody774_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 10

def AllocBody774_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody774_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 13

def AllocBody774_14 : StackLang.HolProg 64 :=
.seq AllocBody774_12 AllocBody774_13

def AllocBody774_15 : StackLang.HolProg 64 :=
.seq AllocBody774_11 AllocBody774_14

def AllocBody774_16 : StackLang.HolProg 64 :=
.seq AllocBody774_10 AllocBody774_15

def AllocBody774_17 : StackLang.HolProg 64 :=
.seq AllocBody774_9 AllocBody774_16

def AllocBody774_18 : StackLang.HolProg 64 :=
.seq AllocBody774_8 AllocBody774_17

def AllocBody774_19 : StackLang.HolProg 64 :=
.seq AllocBody774_7 AllocBody774_18

def AllocBody774_20 : StackLang.HolProg 64 :=
.seq AllocBody774_6 AllocBody774_19

def AllocBody774_21 : StackLang.HolProg 64 :=
.seq AllocBody774_5 AllocBody774_20

def AllocBody774_22 : StackLang.HolProg 64 :=
.seq AllocBody774_4 AllocBody774_21

def AllocBody774_23 : StackLang.HolProg 64 :=
.seq AllocBody774_3 AllocBody774_22

def AllocBody774_24 : StackLang.HolProg 64 :=
.seq AllocBody774_2 AllocBody774_23

def AllocBody774_25 : StackLang.HolProg 64 :=
.seq AllocBody774_1 AllocBody774_24

def AllocBody774_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3524#64)

def AllocBody774_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_29 : StackLang.HolProg 64 :=
.seq AllocBody774_27 AllocBody774_28

def AllocBody774_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody774_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody774_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 3

def AllocBody774_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody774_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody774_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody774_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody774_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_40 : StackLang.HolProg 64 :=
.seq AllocBody774_38 AllocBody774_39

def AllocBody774_41 : StackLang.HolProg 64 :=
.seq AllocBody774_37 AllocBody774_40

def AllocBody774_42 : StackLang.HolProg 64 :=
.seq AllocBody774_36 AllocBody774_41

def AllocBody774_43 : StackLang.HolProg 64 :=
.seq AllocBody774_35 AllocBody774_42

def AllocBody774_44 : StackLang.HolProg 64 :=
.seq AllocBody774_34 AllocBody774_43

def AllocBody774_45 : StackLang.HolProg 64 :=
.seq AllocBody774_33 AllocBody774_44

def AllocBody774_46 : StackLang.HolProg 64 :=
.seq AllocBody774_32 AllocBody774_45

def AllocBody774_47 : StackLang.HolProg 64 :=
.seq AllocBody774_31 AllocBody774_46

def AllocBody774_48 : StackLang.HolProg 64 :=
.seq AllocBody774_30 AllocBody774_47

def AllocBody774_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody774_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody774_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody774_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody774_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody774_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def AllocBody774_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody774_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def AllocBody774_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody774_62 : StackLang.HolProg 64 :=
.seq AllocBody774_60 AllocBody774_61

def AllocBody774_63 : StackLang.HolProg 64 :=
.seq AllocBody774_59 AllocBody774_62

def AllocBody774_64 : StackLang.HolProg 64 :=
.seq AllocBody774_58 AllocBody774_63

def AllocBody774_65 : StackLang.HolProg 64 :=
.seq AllocBody774_57 AllocBody774_64

def AllocBody774_66 : StackLang.HolProg 64 :=
.seq AllocBody774_56 AllocBody774_65

def AllocBody774_67 : StackLang.HolProg 64 :=
.seq AllocBody774_55 AllocBody774_66

def AllocBody774_68 : StackLang.HolProg 64 :=
.seq AllocBody774_54 AllocBody774_67

def AllocBody774_69 : StackLang.HolProg 64 :=
.seq AllocBody774_53 AllocBody774_68

def AllocBody774_70 : StackLang.HolProg 64 :=
.seq AllocBody774_52 AllocBody774_69

def AllocBody774_71 : StackLang.HolProg 64 :=
.seq AllocBody774_51 AllocBody774_70

def AllocBody774_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 12

def AllocBody774_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 11

def AllocBody774_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 10

def AllocBody774_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 9

def AllocBody774_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 8

def AllocBody774_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 7

def AllocBody774_78 : StackLang.HolProg 64 :=
.seq AllocBody774_76 AllocBody774_77

def AllocBody774_79 : StackLang.HolProg 64 :=
.seq AllocBody774_75 AllocBody774_78

def AllocBody774_80 : StackLang.HolProg 64 :=
.seq AllocBody774_74 AllocBody774_79

def AllocBody774_81 : StackLang.HolProg 64 :=
.seq AllocBody774_73 AllocBody774_80

def AllocBody774_82 : StackLang.HolProg 64 :=
.seq AllocBody774_72 AllocBody774_81

def AllocBody774_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody774_84 : StackLang.HolProg 64 :=
.seq AllocBody774_82 AllocBody774_83

def AllocBody774_85 : StackLang.HolProg 64 :=
.call (some (AllocBody774_71, 0, 774, 2)) (Sum.inl 715) (some (AllocBody774_84, 774, 3))

def AllocBody774_86 : StackLang.HolProg 64 :=
.seq AllocBody774_50 AllocBody774_85

def AllocBody774_87 : StackLang.HolProg 64 :=
.seq AllocBody774_49 AllocBody774_86

def AllocBody774_88 : StackLang.HolProg 64 :=
.seq AllocBody774_48 AllocBody774_87

def AllocBody774_89 : StackLang.HolProg 64 :=
.seq AllocBody774_29 AllocBody774_88

def AllocBody774_90 : StackLang.HolProg 64 :=
.seq AllocBody774_26 AllocBody774_89

def AllocBody774_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody774_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody774_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 9

def AllocBody774_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody774_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 5

def AllocBody774_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody774_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 7

def AllocBody774_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody774_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody774_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody774_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 3

def AllocBody774_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody774_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 12

def AllocBody774_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 11

def AllocBody774_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 10

def AllocBody774_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 8

def AllocBody774_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 6

def AllocBody774_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def AllocBody774_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 1

def AllocBody774_110 : StackLang.HolProg 64 :=
.seq AllocBody774_108 AllocBody774_109

def AllocBody774_111 : StackLang.HolProg 64 :=
.seq AllocBody774_107 AllocBody774_110

def AllocBody774_112 : StackLang.HolProg 64 :=
.seq AllocBody774_106 AllocBody774_111

def AllocBody774_113 : StackLang.HolProg 64 :=
.seq AllocBody774_105 AllocBody774_112

def AllocBody774_114 : StackLang.HolProg 64 :=
.seq AllocBody774_104 AllocBody774_113

def AllocBody774_115 : StackLang.HolProg 64 :=
.seq AllocBody774_103 AllocBody774_114

def AllocBody774_116 : StackLang.HolProg 64 :=
.seq AllocBody774_102 AllocBody774_115

def AllocBody774_117 : StackLang.HolProg 64 :=
.seq AllocBody774_101 AllocBody774_116

def AllocBody774_118 : StackLang.HolProg 64 :=
.seq AllocBody774_100 AllocBody774_117

def AllocBody774_119 : StackLang.HolProg 64 :=
.seq AllocBody774_99 AllocBody774_118

def AllocBody774_120 : StackLang.HolProg 64 :=
.seq AllocBody774_98 AllocBody774_119

def AllocBody774_121 : StackLang.HolProg 64 :=
.seq AllocBody774_97 AllocBody774_120

def AllocBody774_122 : StackLang.HolProg 64 :=
.seq AllocBody774_96 AllocBody774_121

def AllocBody774_123 : StackLang.HolProg 64 :=
.seq AllocBody774_95 AllocBody774_122

def AllocBody774_124 : StackLang.HolProg 64 :=
.seq AllocBody774_94 AllocBody774_123

def AllocBody774_125 : StackLang.HolProg 64 :=
.seq AllocBody774_93 AllocBody774_124

def AllocBody774_126 : StackLang.HolProg 64 :=
.seq AllocBody774_92 AllocBody774_125

def AllocBody774_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3525#64)

def AllocBody774_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_130 : StackLang.HolProg 64 :=
.seq AllocBody774_128 AllocBody774_129

def AllocBody774_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody774_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody774_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 5

def AllocBody774_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody774_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody774_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody774_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody774_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_141 : StackLang.HolProg 64 :=
.seq AllocBody774_139 AllocBody774_140

def AllocBody774_142 : StackLang.HolProg 64 :=
.seq AllocBody774_138 AllocBody774_141

def AllocBody774_143 : StackLang.HolProg 64 :=
.seq AllocBody774_137 AllocBody774_142

def AllocBody774_144 : StackLang.HolProg 64 :=
.seq AllocBody774_136 AllocBody774_143

def AllocBody774_145 : StackLang.HolProg 64 :=
.seq AllocBody774_135 AllocBody774_144

def AllocBody774_146 : StackLang.HolProg 64 :=
.seq AllocBody774_134 AllocBody774_145

def AllocBody774_147 : StackLang.HolProg 64 :=
.seq AllocBody774_133 AllocBody774_146

def AllocBody774_148 : StackLang.HolProg 64 :=
.seq AllocBody774_132 AllocBody774_147

def AllocBody774_149 : StackLang.HolProg 64 :=
.seq AllocBody774_131 AllocBody774_148

def AllocBody774_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody774_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody774_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody774_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def AllocBody774_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 11

def AllocBody774_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody774_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody774_161 : StackLang.HolProg 64 :=
.seq AllocBody774_159 AllocBody774_160

def AllocBody774_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody774_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody774_164 : StackLang.HolProg 64 :=
.seq AllocBody774_162 AllocBody774_163

def AllocBody774_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 8

def AllocBody774_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody774_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody774_168 : StackLang.HolProg 64 :=
.seq AllocBody774_166 AllocBody774_167

def AllocBody774_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody774_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody774_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody774_172 : StackLang.HolProg 64 :=
.seq AllocBody774_170 AllocBody774_171

def AllocBody774_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody774_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody774_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody774_176 : StackLang.HolProg 64 :=
.seq AllocBody774_174 AllocBody774_175

def AllocBody774_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody774_179 : StackLang.HolProg 64 :=
.seq AllocBody774_177 AllocBody774_178

def AllocBody774_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody774_181 : StackLang.HolProg 64 :=
.seq AllocBody774_179 AllocBody774_180

def AllocBody774_182 : StackLang.HolProg 64 :=
.seq AllocBody774_176 AllocBody774_181

def AllocBody774_183 : StackLang.HolProg 64 :=
.seq AllocBody774_173 AllocBody774_182

def AllocBody774_184 : StackLang.HolProg 64 :=
.seq AllocBody774_172 AllocBody774_183

def AllocBody774_185 : StackLang.HolProg 64 :=
.seq AllocBody774_169 AllocBody774_184

def AllocBody774_186 : StackLang.HolProg 64 :=
.seq AllocBody774_168 AllocBody774_185

def AllocBody774_187 : StackLang.HolProg 64 :=
.seq AllocBody774_165 AllocBody774_186

def AllocBody774_188 : StackLang.HolProg 64 :=
.seq AllocBody774_164 AllocBody774_187

def AllocBody774_189 : StackLang.HolProg 64 :=
.seq AllocBody774_161 AllocBody774_188

def AllocBody774_190 : StackLang.HolProg 64 :=
.seq AllocBody774_158 AllocBody774_189

def AllocBody774_191 : StackLang.HolProg 64 :=
.seq AllocBody774_157 AllocBody774_190

def AllocBody774_192 : StackLang.HolProg 64 :=
.seq AllocBody774_156 AllocBody774_191

def AllocBody774_193 : StackLang.HolProg 64 :=
.seq AllocBody774_155 AllocBody774_192

def AllocBody774_194 : StackLang.HolProg 64 :=
.seq AllocBody774_154 AllocBody774_193

def AllocBody774_195 : StackLang.HolProg 64 :=
.seq AllocBody774_153 AllocBody774_194

def AllocBody774_196 : StackLang.HolProg 64 :=
.seq AllocBody774_152 AllocBody774_195

def AllocBody774_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 12

def AllocBody774_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 11

def AllocBody774_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def AllocBody774_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 12

def AllocBody774_201 : StackLang.HolProg 64 :=
.seq AllocBody774_199 AllocBody774_200

def AllocBody774_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 9

def AllocBody774_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def AllocBody774_204 : StackLang.HolProg 64 :=
.seq AllocBody774_202 AllocBody774_203

def AllocBody774_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 8

def AllocBody774_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def AllocBody774_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 10

def AllocBody774_208 : StackLang.HolProg 64 :=
.seq AllocBody774_206 AllocBody774_207

def AllocBody774_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody774_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def AllocBody774_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def AllocBody774_212 : StackLang.HolProg 64 :=
.seq AllocBody774_210 AllocBody774_211

def AllocBody774_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody774_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def AllocBody774_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def AllocBody774_216 : StackLang.HolProg 64 :=
.seq AllocBody774_214 AllocBody774_215

def AllocBody774_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def AllocBody774_219 : StackLang.HolProg 64 :=
.seq AllocBody774_217 AllocBody774_218

def AllocBody774_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def AllocBody774_221 : StackLang.HolProg 64 :=
.seq AllocBody774_219 AllocBody774_220

def AllocBody774_222 : StackLang.HolProg 64 :=
.seq AllocBody774_216 AllocBody774_221

def AllocBody774_223 : StackLang.HolProg 64 :=
.seq AllocBody774_213 AllocBody774_222

def AllocBody774_224 : StackLang.HolProg 64 :=
.seq AllocBody774_212 AllocBody774_223

def AllocBody774_225 : StackLang.HolProg 64 :=
.seq AllocBody774_209 AllocBody774_224

def AllocBody774_226 : StackLang.HolProg 64 :=
.seq AllocBody774_208 AllocBody774_225

def AllocBody774_227 : StackLang.HolProg 64 :=
.seq AllocBody774_205 AllocBody774_226

def AllocBody774_228 : StackLang.HolProg 64 :=
.seq AllocBody774_204 AllocBody774_227

def AllocBody774_229 : StackLang.HolProg 64 :=
.seq AllocBody774_201 AllocBody774_228

def AllocBody774_230 : StackLang.HolProg 64 :=
.seq AllocBody774_198 AllocBody774_229

def AllocBody774_231 : StackLang.HolProg 64 :=
.seq AllocBody774_197 AllocBody774_230

def AllocBody774_232 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody774_233 : StackLang.HolProg 64 :=
.seq AllocBody774_231 AllocBody774_232

def AllocBody774_234 : StackLang.HolProg 64 :=
.call (some (AllocBody774_196, 0, 774, 4)) (Sum.inl 715) (some (AllocBody774_233, 774, 5))

def AllocBody774_235 : StackLang.HolProg 64 :=
.seq AllocBody774_151 AllocBody774_234

def AllocBody774_236 : StackLang.HolProg 64 :=
.seq AllocBody774_150 AllocBody774_235

def AllocBody774_237 : StackLang.HolProg 64 :=
.seq AllocBody774_149 AllocBody774_236

def AllocBody774_238 : StackLang.HolProg 64 :=
.seq AllocBody774_130 AllocBody774_237

def AllocBody774_239 : StackLang.HolProg 64 :=
.seq AllocBody774_127 AllocBody774_238

def AllocBody774_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody774_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody774_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3526#64)

def AllocBody774_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_245 : StackLang.HolProg 64 :=
.seq AllocBody774_243 AllocBody774_244

def AllocBody774_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody774_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody774_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 7

def AllocBody774_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody774_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody774_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody774_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody774_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_256 : StackLang.HolProg 64 :=
.seq AllocBody774_254 AllocBody774_255

def AllocBody774_257 : StackLang.HolProg 64 :=
.seq AllocBody774_253 AllocBody774_256

def AllocBody774_258 : StackLang.HolProg 64 :=
.seq AllocBody774_252 AllocBody774_257

def AllocBody774_259 : StackLang.HolProg 64 :=
.seq AllocBody774_251 AllocBody774_258

def AllocBody774_260 : StackLang.HolProg 64 :=
.seq AllocBody774_250 AllocBody774_259

def AllocBody774_261 : StackLang.HolProg 64 :=
.seq AllocBody774_249 AllocBody774_260

def AllocBody774_262 : StackLang.HolProg 64 :=
.seq AllocBody774_248 AllocBody774_261

def AllocBody774_263 : StackLang.HolProg 64 :=
.seq AllocBody774_247 AllocBody774_262

def AllocBody774_264 : StackLang.HolProg 64 :=
.seq AllocBody774_246 AllocBody774_263

def AllocBody774_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody774_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody774_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody774_272 : StackLang.HolProg 64 :=
.seq AllocBody774_270 AllocBody774_271

def AllocBody774_273 : StackLang.HolProg 64 :=
.seq AllocBody774_269 AllocBody774_272

def AllocBody774_274 : StackLang.HolProg 64 :=
.seq AllocBody774_268 AllocBody774_273

def AllocBody774_275 : StackLang.HolProg 64 :=
.seq AllocBody774_267 AllocBody774_274

def AllocBody774_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody774_278 : StackLang.HolProg 64 :=
.seq AllocBody774_276 AllocBody774_277

def AllocBody774_279 : StackLang.HolProg 64 :=
.call (some (AllocBody774_275, 0, 774, 6)) (Sum.inl 714) (some (AllocBody774_278, 774, 7))

def AllocBody774_280 : StackLang.HolProg 64 :=
.seq AllocBody774_266 AllocBody774_279

def AllocBody774_281 : StackLang.HolProg 64 :=
.seq AllocBody774_265 AllocBody774_280

def AllocBody774_282 : StackLang.HolProg 64 :=
.seq AllocBody774_264 AllocBody774_281

def AllocBody774_283 : StackLang.HolProg 64 :=
.seq AllocBody774_245 AllocBody774_282

def AllocBody774_284 : StackLang.HolProg 64 :=
.seq AllocBody774_242 AllocBody774_283

def AllocBody774_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody774_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody774_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody774_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody774_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551224#64))

def AllocBody774_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 240#64))

def AllocBody774_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 248#64))

def AllocBody774_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 256#64))

def AllocBody774_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 264#64))

def AllocBody774_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def AllocBody774_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 280#64))

def AllocBody774_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody774_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3527#64)

def AllocBody774_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_305 : StackLang.HolProg 64 :=
.seq AllocBody774_303 AllocBody774_304

def AllocBody774_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody774_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody774_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody774_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 774 9

def AllocBody774_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody774_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody774_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody774_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody774_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_316 : StackLang.HolProg 64 :=
.seq AllocBody774_314 AllocBody774_315

def AllocBody774_317 : StackLang.HolProg 64 :=
.seq AllocBody774_313 AllocBody774_316

def AllocBody774_318 : StackLang.HolProg 64 :=
.seq AllocBody774_312 AllocBody774_317

def AllocBody774_319 : StackLang.HolProg 64 :=
.seq AllocBody774_311 AllocBody774_318

def AllocBody774_320 : StackLang.HolProg 64 :=
.seq AllocBody774_310 AllocBody774_319

def AllocBody774_321 : StackLang.HolProg 64 :=
.seq AllocBody774_309 AllocBody774_320

def AllocBody774_322 : StackLang.HolProg 64 :=
.seq AllocBody774_308 AllocBody774_321

def AllocBody774_323 : StackLang.HolProg 64 :=
.seq AllocBody774_307 AllocBody774_322

def AllocBody774_324 : StackLang.HolProg 64 :=
.seq AllocBody774_306 AllocBody774_323

def AllocBody774_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody774_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody774_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody774_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody774_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody774_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody774_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody774_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody774_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody774_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody774_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody774_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 12

def AllocBody774_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody774_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def AllocBody774_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody774_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody774_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody774_344 : StackLang.HolProg 64 :=
.seq AllocBody774_342 AllocBody774_343

def AllocBody774_345 : StackLang.HolProg 64 :=
.seq AllocBody774_341 AllocBody774_344

def AllocBody774_346 : StackLang.HolProg 64 :=
.seq AllocBody774_340 AllocBody774_345

def AllocBody774_347 : StackLang.HolProg 64 :=
.seq AllocBody774_339 AllocBody774_346

def AllocBody774_348 : StackLang.HolProg 64 :=
.seq AllocBody774_338 AllocBody774_347

def AllocBody774_349 : StackLang.HolProg 64 :=
.seq AllocBody774_337 AllocBody774_348

def AllocBody774_350 : StackLang.HolProg 64 :=
.seq AllocBody774_336 AllocBody774_349

def AllocBody774_351 : StackLang.HolProg 64 :=
.seq AllocBody774_335 AllocBody774_350

def AllocBody774_352 : StackLang.HolProg 64 :=
.seq AllocBody774_334 AllocBody774_351

def AllocBody774_353 : StackLang.HolProg 64 :=
.seq AllocBody774_333 AllocBody774_352

def AllocBody774_354 : StackLang.HolProg 64 :=
.seq AllocBody774_332 AllocBody774_353

def AllocBody774_355 : StackLang.HolProg 64 :=
.seq AllocBody774_331 AllocBody774_354

def AllocBody774_356 : StackLang.HolProg 64 :=
.seq AllocBody774_330 AllocBody774_355

def AllocBody774_357 : StackLang.HolProg 64 :=
.seq AllocBody774_329 AllocBody774_356

def AllocBody774_358 : StackLang.HolProg 64 :=
.seq AllocBody774_328 AllocBody774_357

def AllocBody774_359 : StackLang.HolProg 64 :=
.seq AllocBody774_327 AllocBody774_358

def AllocBody774_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 13

def AllocBody774_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 12

def AllocBody774_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 11

def AllocBody774_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 10

def AllocBody774_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 9

def AllocBody774_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 8

def AllocBody774_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 7

def AllocBody774_367 : StackLang.HolProg 64 :=
.seq AllocBody774_365 AllocBody774_366

def AllocBody774_368 : StackLang.HolProg 64 :=
.seq AllocBody774_364 AllocBody774_367

def AllocBody774_369 : StackLang.HolProg 64 :=
.seq AllocBody774_363 AllocBody774_368

def AllocBody774_370 : StackLang.HolProg 64 :=
.seq AllocBody774_362 AllocBody774_369

def AllocBody774_371 : StackLang.HolProg 64 :=
.seq AllocBody774_361 AllocBody774_370

def AllocBody774_372 : StackLang.HolProg 64 :=
.seq AllocBody774_360 AllocBody774_371

def AllocBody774_373 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody774_374 : StackLang.HolProg 64 :=
.seq AllocBody774_372 AllocBody774_373

def AllocBody774_375 : StackLang.HolProg 64 :=
.call (some (AllocBody774_359, 0, 774, 8)) (Sum.inl 710) (some (AllocBody774_374, 774, 9))

def AllocBody774_376 : StackLang.HolProg 64 :=
.seq AllocBody774_326 AllocBody774_375

def AllocBody774_377 : StackLang.HolProg 64 :=
.seq AllocBody774_325 AllocBody774_376

def AllocBody774_378 : StackLang.HolProg 64 :=
.seq AllocBody774_324 AllocBody774_377

def AllocBody774_379 : StackLang.HolProg 64 :=
.seq AllocBody774_305 AllocBody774_378

def AllocBody774_380 : StackLang.HolProg 64 :=
.seq AllocBody774_302 AllocBody774_379

def AllocBody774_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody774_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody774_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody774_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 14

def AllocBody774_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 706

def AllocBody774_386 : StackLang.HolProg 64 :=
.seq AllocBody774_384 AllocBody774_385

def AllocBody774_387 : StackLang.HolProg 64 :=
.seq AllocBody774_383 AllocBody774_386

def AllocBody774_388 : StackLang.HolProg 64 :=
.seq AllocBody774_382 AllocBody774_387

def AllocBody774_389 : StackLang.HolProg 64 :=
.seq AllocBody774_381 AllocBody774_388

def AllocBody774_390 : StackLang.HolProg 64 :=
.seq AllocBody774_380 AllocBody774_389

def AllocBody774_391 : StackLang.HolProg 64 :=
.seq AllocBody774_301 AllocBody774_390

def AllocBody774_392 : StackLang.HolProg 64 :=
.seq AllocBody774_300 AllocBody774_391

def AllocBody774_393 : StackLang.HolProg 64 :=
.seq AllocBody774_299 AllocBody774_392

def AllocBody774_394 : StackLang.HolProg 64 :=
.seq AllocBody774_298 AllocBody774_393

def AllocBody774_395 : StackLang.HolProg 64 :=
.seq AllocBody774_297 AllocBody774_394

def AllocBody774_396 : StackLang.HolProg 64 :=
.seq AllocBody774_296 AllocBody774_395

def AllocBody774_397 : StackLang.HolProg 64 :=
.seq AllocBody774_295 AllocBody774_396

def AllocBody774_398 : StackLang.HolProg 64 :=
.seq AllocBody774_294 AllocBody774_397

def AllocBody774_399 : StackLang.HolProg 64 :=
.seq AllocBody774_293 AllocBody774_398

def AllocBody774_400 : StackLang.HolProg 64 :=
.seq AllocBody774_292 AllocBody774_399

def AllocBody774_401 : StackLang.HolProg 64 :=
.seq AllocBody774_291 AllocBody774_400

def AllocBody774_402 : StackLang.HolProg 64 :=
.seq AllocBody774_290 AllocBody774_401

def AllocBody774_403 : StackLang.HolProg 64 :=
.seq AllocBody774_289 AllocBody774_402

def AllocBody774_404 : StackLang.HolProg 64 :=
.seq AllocBody774_288 AllocBody774_403

def AllocBody774_405 : StackLang.HolProg 64 :=
.seq AllocBody774_287 AllocBody774_404

def AllocBody774_406 : StackLang.HolProg 64 :=
.seq AllocBody774_286 AllocBody774_405

def AllocBody774_407 : StackLang.HolProg 64 :=
.seq AllocBody774_285 AllocBody774_406

def AllocBody774_408 : StackLang.HolProg 64 :=
.seq AllocBody774_284 AllocBody774_407

def AllocBody774_409 : StackLang.HolProg 64 :=
.seq AllocBody774_241 AllocBody774_408

def AllocBody774_410 : StackLang.HolProg 64 :=
.seq AllocBody774_240 AllocBody774_409

def AllocBody774_411 : StackLang.HolProg 64 :=
.seq AllocBody774_239 AllocBody774_410

def AllocBody774_412 : StackLang.HolProg 64 :=
.seq AllocBody774_126 AllocBody774_411

def AllocBody774_413 : StackLang.HolProg 64 :=
.seq AllocBody774_91 AllocBody774_412

def AllocBody774_414 : StackLang.HolProg 64 :=
.seq AllocBody774_90 AllocBody774_413

def AllocBody774_415 : StackLang.HolProg 64 :=
.seq AllocBody774_25 AllocBody774_414

def AllocBody774_416 : StackLang.HolProg 64 :=
.seq AllocBody774_0 AllocBody774_415

def Alloc774 : Nat × StackLang.HolProg 64 := (774, AllocBody774_416)
theorem Alloc774_eq : StackAlloc.progComp (774, raw774) = Alloc774 := by
  kernel_rfl
#print axioms Alloc774_eq
end InitECandidate.Proofs.BackendStages
