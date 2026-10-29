import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function711
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody711_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody711_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody711_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3154#64)

def rawBody711_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody711_5 : StackLang.HolProg 64 :=
.seq rawBody711_3 rawBody711_4

def rawBody711_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody711_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody711_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody711_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 3

def rawBody711_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody711_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody711_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody711_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody711_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody711_16 : StackLang.HolProg 64 :=
.seq rawBody711_14 rawBody711_15

def rawBody711_17 : StackLang.HolProg 64 :=
.seq rawBody711_13 rawBody711_16

def rawBody711_18 : StackLang.HolProg 64 :=
.seq rawBody711_12 rawBody711_17

def rawBody711_19 : StackLang.HolProg 64 :=
.seq rawBody711_11 rawBody711_18

def rawBody711_20 : StackLang.HolProg 64 :=
.seq rawBody711_10 rawBody711_19

def rawBody711_21 : StackLang.HolProg 64 :=
.seq rawBody711_9 rawBody711_20

def rawBody711_22 : StackLang.HolProg 64 :=
.seq rawBody711_8 rawBody711_21

def rawBody711_23 : StackLang.HolProg 64 :=
.seq rawBody711_7 rawBody711_22

def rawBody711_24 : StackLang.HolProg 64 :=
.seq rawBody711_6 rawBody711_23

def rawBody711_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody711_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody711_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody711_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody711_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody711_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 1

def rawBody711_33 : StackLang.HolProg 64 :=
.seq rawBody711_31 rawBody711_32

def rawBody711_34 : StackLang.HolProg 64 :=
.seq rawBody711_30 rawBody711_33

def rawBody711_35 : StackLang.HolProg 64 :=
.seq rawBody711_29 rawBody711_34

def rawBody711_36 : StackLang.HolProg 64 :=
.seq rawBody711_28 rawBody711_35

def rawBody711_37 : StackLang.HolProg 64 :=
.seq rawBody711_27 rawBody711_36

def rawBody711_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 1

def rawBody711_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody711_40 : StackLang.HolProg 64 :=
.seq rawBody711_38 rawBody711_39

def rawBody711_41 : StackLang.HolProg 64 :=
.call (some (rawBody711_37, 0, 711, 2)) (Sum.inl 709) (some (rawBody711_40, 711, 3))

def rawBody711_42 : StackLang.HolProg 64 :=
.seq rawBody711_26 rawBody711_41

def rawBody711_43 : StackLang.HolProg 64 :=
.seq rawBody711_25 rawBody711_42

def rawBody711_44 : StackLang.HolProg 64 :=
.seq rawBody711_24 rawBody711_43

def rawBody711_45 : StackLang.HolProg 64 :=
.seq rawBody711_5 rawBody711_44

def rawBody711_46 : StackLang.HolProg 64 :=
.seq rawBody711_2 rawBody711_45

def rawBody711_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody711_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody711_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody711_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody711_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody711_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def rawBody711_54 : StackLang.HolProg 64 :=
.seq rawBody711_52 rawBody711_53

def rawBody711_55 : StackLang.HolProg 64 :=
.seq rawBody711_51 rawBody711_54

def rawBody711_56 : StackLang.HolProg 64 :=
.seq rawBody711_50 rawBody711_55

def rawBody711_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody711_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody711_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody711_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody711_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody711_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody711_63 : StackLang.HolProg 64 :=
.seq rawBody711_61 rawBody711_62

def rawBody711_64 : StackLang.HolProg 64 :=
.seq rawBody711_60 rawBody711_63

def rawBody711_65 : StackLang.HolProg 64 :=
.seq rawBody711_59 rawBody711_64

def rawBody711_66 : StackLang.HolProg 64 :=
.seq rawBody711_58 rawBody711_65

def rawBody711_67 : StackLang.HolProg 64 :=
.seq rawBody711_57 rawBody711_66

def rawBody711_68 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody711_56 rawBody711_67

def rawBody711_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody711_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody711_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def rawBody711_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def rawBody711_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody711_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody711_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody711_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody711_77 : StackLang.HolProg 64 :=
.seq rawBody711_75 rawBody711_76

def rawBody711_78 : StackLang.HolProg 64 :=
.seq rawBody711_74 rawBody711_77

def rawBody711_79 : StackLang.HolProg 64 :=
.seq rawBody711_73 rawBody711_78

def rawBody711_80 : StackLang.HolProg 64 :=
.seq rawBody711_72 rawBody711_79

def rawBody711_81 : StackLang.HolProg 64 :=
.seq rawBody711_71 rawBody711_80

def rawBody711_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1873798617647539866#64)

def rawBody711_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 5412103778470702295#64)

def rawBody711_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 7239337960414712511#64)

def rawBody711_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 7435674573564081700#64)

def rawBody711_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2210141511517208575#64)

def rawBody711_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13402431016077863595#64)

def rawBody711_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 14 1

def rawBody711_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3155#64)

def rawBody711_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody711_92 : StackLang.HolProg 64 :=
.seq rawBody711_90 rawBody711_91

def rawBody711_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody711_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody711_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody711_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 711 5

def rawBody711_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody711_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody711_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody711_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody711_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody711_103 : StackLang.HolProg 64 :=
.seq rawBody711_101 rawBody711_102

def rawBody711_104 : StackLang.HolProg 64 :=
.seq rawBody711_100 rawBody711_103

def rawBody711_105 : StackLang.HolProg 64 :=
.seq rawBody711_99 rawBody711_104

def rawBody711_106 : StackLang.HolProg 64 :=
.seq rawBody711_98 rawBody711_105

def rawBody711_107 : StackLang.HolProg 64 :=
.seq rawBody711_97 rawBody711_106

def rawBody711_108 : StackLang.HolProg 64 :=
.seq rawBody711_96 rawBody711_107

def rawBody711_109 : StackLang.HolProg 64 :=
.seq rawBody711_95 rawBody711_108

def rawBody711_110 : StackLang.HolProg 64 :=
.seq rawBody711_94 rawBody711_109

def rawBody711_111 : StackLang.HolProg 64 :=
.seq rawBody711_93 rawBody711_110

def rawBody711_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody711_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody711_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody711_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody711_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody711_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody711_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody711_120 : StackLang.HolProg 64 :=
.seq rawBody711_118 rawBody711_119

def rawBody711_121 : StackLang.HolProg 64 :=
.seq rawBody711_117 rawBody711_120

def rawBody711_122 : StackLang.HolProg 64 :=
.seq rawBody711_116 rawBody711_121

def rawBody711_123 : StackLang.HolProg 64 :=
.seq rawBody711_115 rawBody711_122

def rawBody711_124 : StackLang.HolProg 64 :=
.seq rawBody711_114 rawBody711_123

def rawBody711_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody711_126 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody711_127 : StackLang.HolProg 64 :=
.seq rawBody711_125 rawBody711_126

def rawBody711_128 : StackLang.HolProg 64 :=
.call (some (rawBody711_124, 0, 711, 4)) (Sum.inl 708) (some (rawBody711_127, 711, 5))

def rawBody711_129 : StackLang.HolProg 64 :=
.seq rawBody711_113 rawBody711_128

def rawBody711_130 : StackLang.HolProg 64 :=
.seq rawBody711_112 rawBody711_129

def rawBody711_131 : StackLang.HolProg 64 :=
.seq rawBody711_111 rawBody711_130

def rawBody711_132 : StackLang.HolProg 64 :=
.seq rawBody711_92 rawBody711_131

def rawBody711_133 : StackLang.HolProg 64 :=
.seq rawBody711_89 rawBody711_132

def rawBody711_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody711_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody711_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody711_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody711_138 : StackLang.HolProg 64 :=
.seq rawBody711_136 rawBody711_137

def rawBody711_139 : StackLang.HolProg 64 :=
.seq rawBody711_135 rawBody711_138

def rawBody711_140 : StackLang.HolProg 64 :=
.seq rawBody711_134 rawBody711_139

def rawBody711_141 : StackLang.HolProg 64 :=
.seq rawBody711_133 rawBody711_140

def rawBody711_142 : StackLang.HolProg 64 :=
.seq rawBody711_88 rawBody711_141

def rawBody711_143 : StackLang.HolProg 64 :=
.seq rawBody711_87 rawBody711_142

def rawBody711_144 : StackLang.HolProg 64 :=
.seq rawBody711_86 rawBody711_143

def rawBody711_145 : StackLang.HolProg 64 :=
.seq rawBody711_85 rawBody711_144

def rawBody711_146 : StackLang.HolProg 64 :=
.seq rawBody711_84 rawBody711_145

def rawBody711_147 : StackLang.HolProg 64 :=
.seq rawBody711_83 rawBody711_146

def rawBody711_148 : StackLang.HolProg 64 :=
.seq rawBody711_82 rawBody711_147

def rawBody711_149 : StackLang.HolProg 64 :=
.seq rawBody711_81 rawBody711_148

def rawBody711_150 : StackLang.HolProg 64 :=
.seq rawBody711_70 rawBody711_149

def rawBody711_151 : StackLang.HolProg 64 :=
.seq rawBody711_69 rawBody711_150

def rawBody711_152 : StackLang.HolProg 64 :=
.seq rawBody711_68 rawBody711_151

def rawBody711_153 : StackLang.HolProg 64 :=
.seq rawBody711_49 rawBody711_152

def rawBody711_154 : StackLang.HolProg 64 :=
.seq rawBody711_48 rawBody711_153

def rawBody711_155 : StackLang.HolProg 64 :=
.seq rawBody711_47 rawBody711_154

def rawBody711_156 : StackLang.HolProg 64 :=
.seq rawBody711_46 rawBody711_155

def rawBody711_157 : StackLang.HolProg 64 :=
.seq rawBody711_1 rawBody711_156

def rawBody711_158 : StackLang.HolProg 64 :=
.seq rawBody711_0 rawBody711_157

def raw711 : StackLang.HolProg 64 := rawBody711_158
theorem raw711_eq : StackRawCall.compTop RawInfo.rawInfo (function711 (.list [])).1 = raw711 := by
  kernel_rfl
#print axioms raw711_eq
end InitECandidate.Proofs.BackendStages
