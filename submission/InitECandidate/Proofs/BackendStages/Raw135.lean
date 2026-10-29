import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function135
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody135_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody135_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 16 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody135_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 15 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody135_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 14 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody135_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody135_5 : StackLang.HolProg 64 :=
.seq rawBody135_3 rawBody135_4

def rawBody135_6 : StackLang.HolProg 64 :=
.seq rawBody135_2 rawBody135_5

def rawBody135_7 : StackLang.HolProg 64 :=
.seq rawBody135_1 rawBody135_6

def rawBody135_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody135_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody135_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody135_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody135_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody135_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody135_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody135_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody135_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 7

def rawBody135_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody135_22 : StackLang.HolProg 64 :=
.seq rawBody135_20 rawBody135_21

def rawBody135_23 : StackLang.HolProg 64 :=
.seq rawBody135_19 rawBody135_22

def rawBody135_24 : StackLang.HolProg 64 :=
.seq rawBody135_18 rawBody135_23

def rawBody135_25 : StackLang.HolProg 64 :=
.seq rawBody135_17 rawBody135_24

def rawBody135_26 : StackLang.HolProg 64 :=
.seq rawBody135_16 rawBody135_25

def rawBody135_27 : StackLang.HolProg 64 :=
.seq rawBody135_15 rawBody135_26

def rawBody135_28 : StackLang.HolProg 64 :=
.seq rawBody135_14 rawBody135_27

def rawBody135_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody135_28 rawBody135_29

def rawBody135_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 16
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 16)))

def rawBody135_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 15
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 15)))

def rawBody135_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 14
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14)))

def rawBody135_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody135_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody135_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 5

def rawBody135_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 4

def rawBody135_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 3

def rawBody135_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 1

def rawBody135_42 : StackLang.HolProg 64 :=
.seq rawBody135_40 rawBody135_41

def rawBody135_43 : StackLang.HolProg 64 :=
.seq rawBody135_39 rawBody135_42

def rawBody135_44 : StackLang.HolProg 64 :=
.seq rawBody135_38 rawBody135_43

def rawBody135_45 : StackLang.HolProg 64 :=
.seq rawBody135_37 rawBody135_44

def rawBody135_46 : StackLang.HolProg 64 :=
.seq rawBody135_36 rawBody135_45

def rawBody135_47 : StackLang.HolProg 64 :=
.seq rawBody135_35 rawBody135_46

def rawBody135_48 : StackLang.HolProg 64 :=
.seq rawBody135_34 rawBody135_47

def rawBody135_49 : StackLang.HolProg 64 :=
.seq rawBody135_33 rawBody135_48

def rawBody135_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 90#64)

def rawBody135_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody135_53 : StackLang.HolProg 64 :=
.seq rawBody135_51 rawBody135_52

def rawBody135_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody135_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody135_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody135_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 3

def rawBody135_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody135_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody135_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody135_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody135_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody135_64 : StackLang.HolProg 64 :=
.seq rawBody135_62 rawBody135_63

def rawBody135_65 : StackLang.HolProg 64 :=
.seq rawBody135_61 rawBody135_64

def rawBody135_66 : StackLang.HolProg 64 :=
.seq rawBody135_60 rawBody135_65

def rawBody135_67 : StackLang.HolProg 64 :=
.seq rawBody135_59 rawBody135_66

def rawBody135_68 : StackLang.HolProg 64 :=
.seq rawBody135_58 rawBody135_67

def rawBody135_69 : StackLang.HolProg 64 :=
.seq rawBody135_57 rawBody135_68

def rawBody135_70 : StackLang.HolProg 64 :=
.seq rawBody135_56 rawBody135_69

def rawBody135_71 : StackLang.HolProg 64 :=
.seq rawBody135_55 rawBody135_70

def rawBody135_72 : StackLang.HolProg 64 :=
.seq rawBody135_54 rawBody135_71

def rawBody135_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody135_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody135_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody135_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody135_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody135_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody135_81 : StackLang.HolProg 64 :=
.seq rawBody135_79 rawBody135_80

def rawBody135_82 : StackLang.HolProg 64 :=
.seq rawBody135_78 rawBody135_81

def rawBody135_83 : StackLang.HolProg 64 :=
.seq rawBody135_77 rawBody135_82

def rawBody135_84 : StackLang.HolProg 64 :=
.seq rawBody135_76 rawBody135_83

def rawBody135_85 : StackLang.HolProg 64 :=
.seq rawBody135_75 rawBody135_84

def rawBody135_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody135_87 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody135_88 : StackLang.HolProg 64 :=
.seq rawBody135_86 rawBody135_87

def rawBody135_89 : StackLang.HolProg 64 :=
.call (some (rawBody135_85, 0, 135, 2)) (Sum.inl 115) (some (rawBody135_88, 135, 3))

def rawBody135_90 : StackLang.HolProg 64 :=
.seq rawBody135_74 rawBody135_89

def rawBody135_91 : StackLang.HolProg 64 :=
.seq rawBody135_73 rawBody135_90

def rawBody135_92 : StackLang.HolProg 64 :=
.seq rawBody135_72 rawBody135_91

def rawBody135_93 : StackLang.HolProg 64 :=
.seq rawBody135_53 rawBody135_92

def rawBody135_94 : StackLang.HolProg 64 :=
.seq rawBody135_50 rawBody135_93

def rawBody135_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody135_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody135_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody135_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody135_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody135_101 : StackLang.HolProg 64 :=
.seq rawBody135_99 rawBody135_100

def rawBody135_102 : StackLang.HolProg 64 :=
.seq rawBody135_98 rawBody135_101

def rawBody135_103 : StackLang.HolProg 64 :=
.seq rawBody135_97 rawBody135_102

def rawBody135_104 : StackLang.HolProg 64 :=
.seq rawBody135_96 rawBody135_103

def rawBody135_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody135_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody135_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody135_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody135_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody135_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody135_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody135_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 1

def rawBody135_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 5

def rawBody135_115 : StackLang.HolProg 64 :=
.seq rawBody135_113 rawBody135_114

def rawBody135_116 : StackLang.HolProg 64 :=
.seq rawBody135_112 rawBody135_115

def rawBody135_117 : StackLang.HolProg 64 :=
.seq rawBody135_111 rawBody135_116

def rawBody135_118 : StackLang.HolProg 64 :=
.seq rawBody135_110 rawBody135_117

def rawBody135_119 : StackLang.HolProg 64 :=
.seq rawBody135_109 rawBody135_118

def rawBody135_120 : StackLang.HolProg 64 :=
.seq rawBody135_108 rawBody135_119

def rawBody135_121 : StackLang.HolProg 64 :=
.seq rawBody135_107 rawBody135_120

def rawBody135_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody135_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 131

def rawBody135_125 : StackLang.HolProg 64 :=
.seq rawBody135_123 rawBody135_124

def rawBody135_126 : StackLang.HolProg 64 :=
.seq rawBody135_122 rawBody135_125

def rawBody135_127 : StackLang.HolProg 64 :=
.seq rawBody135_121 rawBody135_126

def rawBody135_128 : StackLang.HolProg 64 :=
.seq rawBody135_106 rawBody135_127

def rawBody135_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_130 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody135_128 rawBody135_129

def rawBody135_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody135_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody135_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody135_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def rawBody135_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 424#64)))

def rawBody135_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 6

def rawBody135_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody135_140 : StackLang.HolProg 64 :=
.seq rawBody135_138 rawBody135_139

def rawBody135_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 91#64)

def rawBody135_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody135_144 : StackLang.HolProg 64 :=
.seq rawBody135_142 rawBody135_143

def rawBody135_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody135_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody135_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody135_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 135 5

def rawBody135_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody135_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody135_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody135_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody135_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody135_155 : StackLang.HolProg 64 :=
.seq rawBody135_153 rawBody135_154

def rawBody135_156 : StackLang.HolProg 64 :=
.seq rawBody135_152 rawBody135_155

def rawBody135_157 : StackLang.HolProg 64 :=
.seq rawBody135_151 rawBody135_156

def rawBody135_158 : StackLang.HolProg 64 :=
.seq rawBody135_150 rawBody135_157

def rawBody135_159 : StackLang.HolProg 64 :=
.seq rawBody135_149 rawBody135_158

def rawBody135_160 : StackLang.HolProg 64 :=
.seq rawBody135_148 rawBody135_159

def rawBody135_161 : StackLang.HolProg 64 :=
.seq rawBody135_147 rawBody135_160

def rawBody135_162 : StackLang.HolProg 64 :=
.seq rawBody135_146 rawBody135_161

def rawBody135_163 : StackLang.HolProg 64 :=
.seq rawBody135_145 rawBody135_162

def rawBody135_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody135_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody135_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody135_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody135_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody135_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody135_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody135_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody135_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody135_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody135_176 : StackLang.HolProg 64 :=
.seq rawBody135_174 rawBody135_175

def rawBody135_177 : StackLang.HolProg 64 :=
.seq rawBody135_173 rawBody135_176

def rawBody135_178 : StackLang.HolProg 64 :=
.seq rawBody135_172 rawBody135_177

def rawBody135_179 : StackLang.HolProg 64 :=
.seq rawBody135_171 rawBody135_178

def rawBody135_180 : StackLang.HolProg 64 :=
.seq rawBody135_170 rawBody135_179

def rawBody135_181 : StackLang.HolProg 64 :=
.seq rawBody135_169 rawBody135_180

def rawBody135_182 : StackLang.HolProg 64 :=
.seq rawBody135_168 rawBody135_181

def rawBody135_183 : StackLang.HolProg 64 :=
.seq rawBody135_167 rawBody135_182

def rawBody135_184 : StackLang.HolProg 64 :=
.seq rawBody135_166 rawBody135_183

def rawBody135_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 6

def rawBody135_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody135_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 4

def rawBody135_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody135_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody135_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody135_191 : StackLang.HolProg 64 :=
.seq rawBody135_189 rawBody135_190

def rawBody135_192 : StackLang.HolProg 64 :=
.seq rawBody135_188 rawBody135_191

def rawBody135_193 : StackLang.HolProg 64 :=
.seq rawBody135_187 rawBody135_192

def rawBody135_194 : StackLang.HolProg 64 :=
.seq rawBody135_186 rawBody135_193

def rawBody135_195 : StackLang.HolProg 64 :=
.seq rawBody135_185 rawBody135_194

def rawBody135_196 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody135_197 : StackLang.HolProg 64 :=
.seq rawBody135_195 rawBody135_196

def rawBody135_198 : StackLang.HolProg 64 :=
.call (some (rawBody135_184, 0, 135, 4)) (Sum.inl 124) (some (rawBody135_197, 135, 5))

def rawBody135_199 : StackLang.HolProg 64 :=
.seq rawBody135_165 rawBody135_198

def rawBody135_200 : StackLang.HolProg 64 :=
.seq rawBody135_164 rawBody135_199

def rawBody135_201 : StackLang.HolProg 64 :=
.seq rawBody135_163 rawBody135_200

def rawBody135_202 : StackLang.HolProg 64 :=
.seq rawBody135_144 rawBody135_201

def rawBody135_203 : StackLang.HolProg 64 :=
.seq rawBody135_141 rawBody135_202

def rawBody135_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody135_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def rawBody135_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 1#64)

def rawBody135_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody135_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def rawBody135_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody135_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody135_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 10#64)

def rawBody135_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody135_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody135_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody135_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 128

def rawBody135_222 : StackLang.HolProg 64 :=
.seq rawBody135_220 rawBody135_221

def rawBody135_223 : StackLang.HolProg 64 :=
.seq rawBody135_219 rawBody135_222

def rawBody135_224 : StackLang.HolProg 64 :=
.seq rawBody135_218 rawBody135_223

def rawBody135_225 : StackLang.HolProg 64 :=
.seq rawBody135_217 rawBody135_224

def rawBody135_226 : StackLang.HolProg 64 :=
.seq rawBody135_216 rawBody135_225

def rawBody135_227 : StackLang.HolProg 64 :=
.seq rawBody135_215 rawBody135_226

def rawBody135_228 : StackLang.HolProg 64 :=
.seq rawBody135_214 rawBody135_227

def rawBody135_229 : StackLang.HolProg 64 :=
.seq rawBody135_213 rawBody135_228

def rawBody135_230 : StackLang.HolProg 64 :=
.seq rawBody135_212 rawBody135_229

def rawBody135_231 : StackLang.HolProg 64 :=
.seq rawBody135_211 rawBody135_230

def rawBody135_232 : StackLang.HolProg 64 :=
.seq rawBody135_210 rawBody135_231

def rawBody135_233 : StackLang.HolProg 64 :=
.seq rawBody135_209 rawBody135_232

def rawBody135_234 : StackLang.HolProg 64 :=
.seq rawBody135_208 rawBody135_233

def rawBody135_235 : StackLang.HolProg 64 :=
.seq rawBody135_207 rawBody135_234

def rawBody135_236 : StackLang.HolProg 64 :=
.seq rawBody135_206 rawBody135_235

def rawBody135_237 : StackLang.HolProg 64 :=
.seq rawBody135_205 rawBody135_236

def rawBody135_238 : StackLang.HolProg 64 :=
.seq rawBody135_204 rawBody135_237

def rawBody135_239 : StackLang.HolProg 64 :=
.seq rawBody135_203 rawBody135_238

def rawBody135_240 : StackLang.HolProg 64 :=
.seq rawBody135_140 rawBody135_239

def rawBody135_241 : StackLang.HolProg 64 :=
.seq rawBody135_137 rawBody135_240

def rawBody135_242 : StackLang.HolProg 64 :=
.seq rawBody135_136 rawBody135_241

def rawBody135_243 : StackLang.HolProg 64 :=
.seq rawBody135_135 rawBody135_242

def rawBody135_244 : StackLang.HolProg 64 :=
.seq rawBody135_134 rawBody135_243

def rawBody135_245 : StackLang.HolProg 64 :=
.seq rawBody135_133 rawBody135_244

def rawBody135_246 : StackLang.HolProg 64 :=
.seq rawBody135_132 rawBody135_245

def rawBody135_247 : StackLang.HolProg 64 :=
.seq rawBody135_131 rawBody135_246

def rawBody135_248 : StackLang.HolProg 64 :=
.seq rawBody135_130 rawBody135_247

def rawBody135_249 : StackLang.HolProg 64 :=
.seq rawBody135_105 rawBody135_248

def rawBody135_250 : StackLang.HolProg 64 :=
.seq rawBody135_104 rawBody135_249

def rawBody135_251 : StackLang.HolProg 64 :=
.seq rawBody135_95 rawBody135_250

def rawBody135_252 : StackLang.HolProg 64 :=
.seq rawBody135_94 rawBody135_251

def rawBody135_253 : StackLang.HolProg 64 :=
.seq rawBody135_49 rawBody135_252

def rawBody135_254 : StackLang.HolProg 64 :=
.seq rawBody135_32 rawBody135_253

def rawBody135_255 : StackLang.HolProg 64 :=
.seq rawBody135_31 rawBody135_254

def rawBody135_256 : StackLang.HolProg 64 :=
.seq rawBody135_30 rawBody135_255

def rawBody135_257 : StackLang.HolProg 64 :=
.seq rawBody135_13 rawBody135_256

def rawBody135_258 : StackLang.HolProg 64 :=
.seq rawBody135_12 rawBody135_257

def rawBody135_259 : StackLang.HolProg 64 :=
.seq rawBody135_11 rawBody135_258

def rawBody135_260 : StackLang.HolProg 64 :=
.seq rawBody135_10 rawBody135_259

def rawBody135_261 : StackLang.HolProg 64 :=
.seq rawBody135_9 rawBody135_260

def rawBody135_262 : StackLang.HolProg 64 :=
.seq rawBody135_8 rawBody135_261

def rawBody135_263 : StackLang.HolProg 64 :=
.seq rawBody135_7 rawBody135_262

def rawBody135_264 : StackLang.HolProg 64 :=
.seq rawBody135_0 rawBody135_263

def raw135 : StackLang.HolProg 64 := rawBody135_264
theorem raw135_eq : StackRawCall.compTop RawInfo.rawInfo (function135 (.list [])).1 = raw135 := by
  kernel_rfl
#print axioms raw135_eq
end InitECandidate.Proofs.BackendStages
