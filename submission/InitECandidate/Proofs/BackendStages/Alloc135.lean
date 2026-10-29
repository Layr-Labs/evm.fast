import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw135
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody135_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def AllocBody135_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody135_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody135_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody135_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody135_5 : StackLang.HolProg 64 :=
.seq AllocBody135_3 AllocBody135_4

def AllocBody135_6 : StackLang.HolProg 64 :=
.seq AllocBody135_2 AllocBody135_5

def AllocBody135_7 : StackLang.HolProg 64 :=
.seq AllocBody135_1 AllocBody135_6

def AllocBody135_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody135_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody135_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody135_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody135_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody135_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody135_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody135_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody135_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def AllocBody135_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody135_22 : StackLang.HolProg 64 :=
.seq AllocBody135_20 AllocBody135_21

def AllocBody135_23 : StackLang.HolProg 64 :=
.seq AllocBody135_19 AllocBody135_22

def AllocBody135_24 : StackLang.HolProg 64 :=
.seq AllocBody135_18 AllocBody135_23

def AllocBody135_25 : StackLang.HolProg 64 :=
.seq AllocBody135_17 AllocBody135_24

def AllocBody135_26 : StackLang.HolProg 64 :=
.seq AllocBody135_16 AllocBody135_25

def AllocBody135_27 : StackLang.HolProg 64 :=
.seq AllocBody135_15 AllocBody135_26

def AllocBody135_28 : StackLang.HolProg 64 :=
.seq AllocBody135_14 AllocBody135_27

def AllocBody135_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody135_28 AllocBody135_29

def AllocBody135_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def AllocBody135_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def AllocBody135_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def AllocBody135_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def AllocBody135_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody135_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 5

def AllocBody135_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 4

def AllocBody135_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 3

def AllocBody135_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 1

def AllocBody135_42 : StackLang.HolProg 64 :=
.seq AllocBody135_40 AllocBody135_41

def AllocBody135_43 : StackLang.HolProg 64 :=
.seq AllocBody135_39 AllocBody135_42

def AllocBody135_44 : StackLang.HolProg 64 :=
.seq AllocBody135_38 AllocBody135_43

def AllocBody135_45 : StackLang.HolProg 64 :=
.seq AllocBody135_37 AllocBody135_44

def AllocBody135_46 : StackLang.HolProg 64 :=
.seq AllocBody135_36 AllocBody135_45

def AllocBody135_47 : StackLang.HolProg 64 :=
.seq AllocBody135_35 AllocBody135_46

def AllocBody135_48 : StackLang.HolProg 64 :=
.seq AllocBody135_34 AllocBody135_47

def AllocBody135_49 : StackLang.HolProg 64 :=
.seq AllocBody135_33 AllocBody135_48

def AllocBody135_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 90#64)

def AllocBody135_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody135_53 : StackLang.HolProg 64 :=
.seq AllocBody135_51 AllocBody135_52

def AllocBody135_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody135_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody135_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody135_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 3

def AllocBody135_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody135_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody135_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody135_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody135_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody135_64 : StackLang.HolProg 64 :=
.seq AllocBody135_62 AllocBody135_63

def AllocBody135_65 : StackLang.HolProg 64 :=
.seq AllocBody135_61 AllocBody135_64

def AllocBody135_66 : StackLang.HolProg 64 :=
.seq AllocBody135_60 AllocBody135_65

def AllocBody135_67 : StackLang.HolProg 64 :=
.seq AllocBody135_59 AllocBody135_66

def AllocBody135_68 : StackLang.HolProg 64 :=
.seq AllocBody135_58 AllocBody135_67

def AllocBody135_69 : StackLang.HolProg 64 :=
.seq AllocBody135_57 AllocBody135_68

def AllocBody135_70 : StackLang.HolProg 64 :=
.seq AllocBody135_56 AllocBody135_69

def AllocBody135_71 : StackLang.HolProg 64 :=
.seq AllocBody135_55 AllocBody135_70

def AllocBody135_72 : StackLang.HolProg 64 :=
.seq AllocBody135_54 AllocBody135_71

def AllocBody135_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody135_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody135_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody135_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody135_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody135_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody135_81 : StackLang.HolProg 64 :=
.seq AllocBody135_79 AllocBody135_80

def AllocBody135_82 : StackLang.HolProg 64 :=
.seq AllocBody135_78 AllocBody135_81

def AllocBody135_83 : StackLang.HolProg 64 :=
.seq AllocBody135_77 AllocBody135_82

def AllocBody135_84 : StackLang.HolProg 64 :=
.seq AllocBody135_76 AllocBody135_83

def AllocBody135_85 : StackLang.HolProg 64 :=
.seq AllocBody135_75 AllocBody135_84

def AllocBody135_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody135_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody135_88 : StackLang.HolProg 64 :=
.seq AllocBody135_86 AllocBody135_87

def AllocBody135_89 : StackLang.HolProg 64 :=
.call (some (AllocBody135_85, 0, 135, 2)) (Sum.inl 115) (some (AllocBody135_88, 135, 3))

def AllocBody135_90 : StackLang.HolProg 64 :=
.seq AllocBody135_74 AllocBody135_89

def AllocBody135_91 : StackLang.HolProg 64 :=
.seq AllocBody135_73 AllocBody135_90

def AllocBody135_92 : StackLang.HolProg 64 :=
.seq AllocBody135_72 AllocBody135_91

def AllocBody135_93 : StackLang.HolProg 64 :=
.seq AllocBody135_53 AllocBody135_92

def AllocBody135_94 : StackLang.HolProg 64 :=
.seq AllocBody135_50 AllocBody135_93

def AllocBody135_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody135_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody135_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody135_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody135_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody135_101 : StackLang.HolProg 64 :=
.seq AllocBody135_99 AllocBody135_100

def AllocBody135_102 : StackLang.HolProg 64 :=
.seq AllocBody135_98 AllocBody135_101

def AllocBody135_103 : StackLang.HolProg 64 :=
.seq AllocBody135_97 AllocBody135_102

def AllocBody135_104 : StackLang.HolProg 64 :=
.seq AllocBody135_96 AllocBody135_103

def AllocBody135_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody135_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody135_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody135_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody135_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody135_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def AllocBody135_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody135_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def AllocBody135_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def AllocBody135_115 : StackLang.HolProg 64 :=
.seq AllocBody135_113 AllocBody135_114

def AllocBody135_116 : StackLang.HolProg 64 :=
.seq AllocBody135_112 AllocBody135_115

def AllocBody135_117 : StackLang.HolProg 64 :=
.seq AllocBody135_111 AllocBody135_116

def AllocBody135_118 : StackLang.HolProg 64 :=
.seq AllocBody135_110 AllocBody135_117

def AllocBody135_119 : StackLang.HolProg 64 :=
.seq AllocBody135_109 AllocBody135_118

def AllocBody135_120 : StackLang.HolProg 64 :=
.seq AllocBody135_108 AllocBody135_119

def AllocBody135_121 : StackLang.HolProg 64 :=
.seq AllocBody135_107 AllocBody135_120

def AllocBody135_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody135_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 131

def AllocBody135_125 : StackLang.HolProg 64 :=
.seq AllocBody135_123 AllocBody135_124

def AllocBody135_126 : StackLang.HolProg 64 :=
.seq AllocBody135_122 AllocBody135_125

def AllocBody135_127 : StackLang.HolProg 64 :=
.seq AllocBody135_121 AllocBody135_126

def AllocBody135_128 : StackLang.HolProg 64 :=
.seq AllocBody135_106 AllocBody135_127

def AllocBody135_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody135_128 AllocBody135_129

def AllocBody135_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody135_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody135_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody135_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def AllocBody135_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 424#64)))

def AllocBody135_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def AllocBody135_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody135_140 : StackLang.HolProg 64 :=
.seq AllocBody135_138 AllocBody135_139

def AllocBody135_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 91#64)

def AllocBody135_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody135_144 : StackLang.HolProg 64 :=
.seq AllocBody135_142 AllocBody135_143

def AllocBody135_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody135_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody135_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody135_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 5

def AllocBody135_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody135_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody135_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody135_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody135_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody135_155 : StackLang.HolProg 64 :=
.seq AllocBody135_153 AllocBody135_154

def AllocBody135_156 : StackLang.HolProg 64 :=
.seq AllocBody135_152 AllocBody135_155

def AllocBody135_157 : StackLang.HolProg 64 :=
.seq AllocBody135_151 AllocBody135_156

def AllocBody135_158 : StackLang.HolProg 64 :=
.seq AllocBody135_150 AllocBody135_157

def AllocBody135_159 : StackLang.HolProg 64 :=
.seq AllocBody135_149 AllocBody135_158

def AllocBody135_160 : StackLang.HolProg 64 :=
.seq AllocBody135_148 AllocBody135_159

def AllocBody135_161 : StackLang.HolProg 64 :=
.seq AllocBody135_147 AllocBody135_160

def AllocBody135_162 : StackLang.HolProg 64 :=
.seq AllocBody135_146 AllocBody135_161

def AllocBody135_163 : StackLang.HolProg 64 :=
.seq AllocBody135_145 AllocBody135_162

def AllocBody135_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody135_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody135_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody135_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody135_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody135_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody135_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody135_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody135_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody135_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody135_176 : StackLang.HolProg 64 :=
.seq AllocBody135_174 AllocBody135_175

def AllocBody135_177 : StackLang.HolProg 64 :=
.seq AllocBody135_173 AllocBody135_176

def AllocBody135_178 : StackLang.HolProg 64 :=
.seq AllocBody135_172 AllocBody135_177

def AllocBody135_179 : StackLang.HolProg 64 :=
.seq AllocBody135_171 AllocBody135_178

def AllocBody135_180 : StackLang.HolProg 64 :=
.seq AllocBody135_170 AllocBody135_179

def AllocBody135_181 : StackLang.HolProg 64 :=
.seq AllocBody135_169 AllocBody135_180

def AllocBody135_182 : StackLang.HolProg 64 :=
.seq AllocBody135_168 AllocBody135_181

def AllocBody135_183 : StackLang.HolProg 64 :=
.seq AllocBody135_167 AllocBody135_182

def AllocBody135_184 : StackLang.HolProg 64 :=
.seq AllocBody135_166 AllocBody135_183

def AllocBody135_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def AllocBody135_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody135_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def AllocBody135_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody135_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody135_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody135_191 : StackLang.HolProg 64 :=
.seq AllocBody135_189 AllocBody135_190

def AllocBody135_192 : StackLang.HolProg 64 :=
.seq AllocBody135_188 AllocBody135_191

def AllocBody135_193 : StackLang.HolProg 64 :=
.seq AllocBody135_187 AllocBody135_192

def AllocBody135_194 : StackLang.HolProg 64 :=
.seq AllocBody135_186 AllocBody135_193

def AllocBody135_195 : StackLang.HolProg 64 :=
.seq AllocBody135_185 AllocBody135_194

def AllocBody135_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody135_197 : StackLang.HolProg 64 :=
.seq AllocBody135_195 AllocBody135_196

def AllocBody135_198 : StackLang.HolProg 64 :=
.call (some (AllocBody135_184, 0, 135, 4)) (Sum.inl 124) (some (AllocBody135_197, 135, 5))

def AllocBody135_199 : StackLang.HolProg 64 :=
.seq AllocBody135_165 AllocBody135_198

def AllocBody135_200 : StackLang.HolProg 64 :=
.seq AllocBody135_164 AllocBody135_199

def AllocBody135_201 : StackLang.HolProg 64 :=
.seq AllocBody135_163 AllocBody135_200

def AllocBody135_202 : StackLang.HolProg 64 :=
.seq AllocBody135_144 AllocBody135_201

def AllocBody135_203 : StackLang.HolProg 64 :=
.seq AllocBody135_141 AllocBody135_202

def AllocBody135_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody135_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody135_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def AllocBody135_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody135_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody135_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody135_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody135_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10#64)

def AllocBody135_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody135_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody135_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody135_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 128

def AllocBody135_222 : StackLang.HolProg 64 :=
.seq AllocBody135_220 AllocBody135_221

def AllocBody135_223 : StackLang.HolProg 64 :=
.seq AllocBody135_219 AllocBody135_222

def AllocBody135_224 : StackLang.HolProg 64 :=
.seq AllocBody135_218 AllocBody135_223

def AllocBody135_225 : StackLang.HolProg 64 :=
.seq AllocBody135_217 AllocBody135_224

def AllocBody135_226 : StackLang.HolProg 64 :=
.seq AllocBody135_216 AllocBody135_225

def AllocBody135_227 : StackLang.HolProg 64 :=
.seq AllocBody135_215 AllocBody135_226

def AllocBody135_228 : StackLang.HolProg 64 :=
.seq AllocBody135_214 AllocBody135_227

def AllocBody135_229 : StackLang.HolProg 64 :=
.seq AllocBody135_213 AllocBody135_228

def AllocBody135_230 : StackLang.HolProg 64 :=
.seq AllocBody135_212 AllocBody135_229

def AllocBody135_231 : StackLang.HolProg 64 :=
.seq AllocBody135_211 AllocBody135_230

def AllocBody135_232 : StackLang.HolProg 64 :=
.seq AllocBody135_210 AllocBody135_231

def AllocBody135_233 : StackLang.HolProg 64 :=
.seq AllocBody135_209 AllocBody135_232

def AllocBody135_234 : StackLang.HolProg 64 :=
.seq AllocBody135_208 AllocBody135_233

def AllocBody135_235 : StackLang.HolProg 64 :=
.seq AllocBody135_207 AllocBody135_234

def AllocBody135_236 : StackLang.HolProg 64 :=
.seq AllocBody135_206 AllocBody135_235

def AllocBody135_237 : StackLang.HolProg 64 :=
.seq AllocBody135_205 AllocBody135_236

def AllocBody135_238 : StackLang.HolProg 64 :=
.seq AllocBody135_204 AllocBody135_237

def AllocBody135_239 : StackLang.HolProg 64 :=
.seq AllocBody135_203 AllocBody135_238

def AllocBody135_240 : StackLang.HolProg 64 :=
.seq AllocBody135_140 AllocBody135_239

def AllocBody135_241 : StackLang.HolProg 64 :=
.seq AllocBody135_137 AllocBody135_240

def AllocBody135_242 : StackLang.HolProg 64 :=
.seq AllocBody135_136 AllocBody135_241

def AllocBody135_243 : StackLang.HolProg 64 :=
.seq AllocBody135_135 AllocBody135_242

def AllocBody135_244 : StackLang.HolProg 64 :=
.seq AllocBody135_134 AllocBody135_243

def AllocBody135_245 : StackLang.HolProg 64 :=
.seq AllocBody135_133 AllocBody135_244

def AllocBody135_246 : StackLang.HolProg 64 :=
.seq AllocBody135_132 AllocBody135_245

def AllocBody135_247 : StackLang.HolProg 64 :=
.seq AllocBody135_131 AllocBody135_246

def AllocBody135_248 : StackLang.HolProg 64 :=
.seq AllocBody135_130 AllocBody135_247

def AllocBody135_249 : StackLang.HolProg 64 :=
.seq AllocBody135_105 AllocBody135_248

def AllocBody135_250 : StackLang.HolProg 64 :=
.seq AllocBody135_104 AllocBody135_249

def AllocBody135_251 : StackLang.HolProg 64 :=
.seq AllocBody135_95 AllocBody135_250

def AllocBody135_252 : StackLang.HolProg 64 :=
.seq AllocBody135_94 AllocBody135_251

def AllocBody135_253 : StackLang.HolProg 64 :=
.seq AllocBody135_49 AllocBody135_252

def AllocBody135_254 : StackLang.HolProg 64 :=
.seq AllocBody135_32 AllocBody135_253

def AllocBody135_255 : StackLang.HolProg 64 :=
.seq AllocBody135_31 AllocBody135_254

def AllocBody135_256 : StackLang.HolProg 64 :=
.seq AllocBody135_30 AllocBody135_255

def AllocBody135_257 : StackLang.HolProg 64 :=
.seq AllocBody135_13 AllocBody135_256

def AllocBody135_258 : StackLang.HolProg 64 :=
.seq AllocBody135_12 AllocBody135_257

def AllocBody135_259 : StackLang.HolProg 64 :=
.seq AllocBody135_11 AllocBody135_258

def AllocBody135_260 : StackLang.HolProg 64 :=
.seq AllocBody135_10 AllocBody135_259

def AllocBody135_261 : StackLang.HolProg 64 :=
.seq AllocBody135_9 AllocBody135_260

def AllocBody135_262 : StackLang.HolProg 64 :=
.seq AllocBody135_8 AllocBody135_261

def AllocBody135_263 : StackLang.HolProg 64 :=
.seq AllocBody135_7 AllocBody135_262

def AllocBody135_264 : StackLang.HolProg 64 :=
.seq AllocBody135_0 AllocBody135_263

def Alloc135 : Nat × StackLang.HolProg 64 := (135, AllocBody135_264)
theorem Alloc135_eq : StackAlloc.progComp (135, raw135) = Alloc135 := by
  kernel_rfl
#print axioms Alloc135_eq
end InitECandidate.Proofs.BackendStages
