import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function143
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody143_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody143_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody143_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody143_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody143_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody143_5 : StackLang.HolProg 64 :=
.seq rawBody143_3 rawBody143_4

def rawBody143_6 : StackLang.HolProg 64 :=
.seq rawBody143_2 rawBody143_5

def rawBody143_7 : StackLang.HolProg 64 :=
.seq rawBody143_1 rawBody143_6

def rawBody143_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody143_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 256#64)

def rawBody143_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def rawBody143_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody143_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def rawBody143_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def rawBody143_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def rawBody143_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody143_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody143_22 : StackLang.HolProg 64 :=
.seq rawBody143_20 rawBody143_21

def rawBody143_23 : StackLang.HolProg 64 :=
.seq rawBody143_19 rawBody143_22

def rawBody143_24 : StackLang.HolProg 64 :=
.seq rawBody143_18 rawBody143_23

def rawBody143_25 : StackLang.HolProg 64 :=
.seq rawBody143_17 rawBody143_24

def rawBody143_26 : StackLang.HolProg 64 :=
.seq rawBody143_16 rawBody143_25

def rawBody143_27 : StackLang.HolProg 64 :=
.seq rawBody143_15 rawBody143_26

def rawBody143_28 : StackLang.HolProg 64 :=
.seq rawBody143_14 rawBody143_27

def rawBody143_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody143_28 rawBody143_29

def rawBody143_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody143_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody143_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody143_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody143_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody143_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody143_40 : StackLang.HolProg 64 :=
.seq rawBody143_38 rawBody143_39

def rawBody143_41 : StackLang.HolProg 64 :=
.seq rawBody143_37 rawBody143_40

def rawBody143_42 : StackLang.HolProg 64 :=
.seq rawBody143_36 rawBody143_41

def rawBody143_43 : StackLang.HolProg 64 :=
.seq rawBody143_35 rawBody143_42

def rawBody143_44 : StackLang.HolProg 64 :=
.seq rawBody143_34 rawBody143_43

def rawBody143_45 : StackLang.HolProg 64 :=
.seq rawBody143_33 rawBody143_44

def rawBody143_46 : StackLang.HolProg 64 :=
.seq rawBody143_32 rawBody143_45

def rawBody143_47 : StackLang.HolProg 64 :=
.seq rawBody143_31 rawBody143_46

def rawBody143_48 : StackLang.HolProg 64 :=
.seq rawBody143_30 rawBody143_47

def rawBody143_49 : StackLang.HolProg 64 :=
.seq rawBody143_13 rawBody143_48

def rawBody143_50 : StackLang.HolProg 64 :=
.seq rawBody143_12 rawBody143_49

def rawBody143_51 : StackLang.HolProg 64 :=
.seq rawBody143_11 rawBody143_50

def rawBody143_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody143_53 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody143_51 rawBody143_52

def rawBody143_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody143_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody143_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody143_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody143_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody143_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody143_62 : StackLang.HolProg 64 :=
.seq rawBody143_60 rawBody143_61

def rawBody143_63 : StackLang.HolProg 64 :=
.seq rawBody143_59 rawBody143_62

def rawBody143_64 : StackLang.HolProg 64 :=
.seq rawBody143_58 rawBody143_63

def rawBody143_65 : StackLang.HolProg 64 :=
.seq rawBody143_57 rawBody143_64

def rawBody143_66 : StackLang.HolProg 64 :=
.seq rawBody143_56 rawBody143_65

def rawBody143_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 105#64)

def rawBody143_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_70 : StackLang.HolProg 64 :=
.seq rawBody143_68 rawBody143_69

def rawBody143_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody143_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody143_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 3

def rawBody143_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody143_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody143_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody143_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody143_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_81 : StackLang.HolProg 64 :=
.seq rawBody143_79 rawBody143_80

def rawBody143_82 : StackLang.HolProg 64 :=
.seq rawBody143_78 rawBody143_81

def rawBody143_83 : StackLang.HolProg 64 :=
.seq rawBody143_77 rawBody143_82

def rawBody143_84 : StackLang.HolProg 64 :=
.seq rawBody143_76 rawBody143_83

def rawBody143_85 : StackLang.HolProg 64 :=
.seq rawBody143_75 rawBody143_84

def rawBody143_86 : StackLang.HolProg 64 :=
.seq rawBody143_74 rawBody143_85

def rawBody143_87 : StackLang.HolProg 64 :=
.seq rawBody143_73 rawBody143_86

def rawBody143_88 : StackLang.HolProg 64 :=
.seq rawBody143_72 rawBody143_87

def rawBody143_89 : StackLang.HolProg 64 :=
.seq rawBody143_71 rawBody143_88

def rawBody143_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody143_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody143_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody143_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody143_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody143_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody143_99 : StackLang.HolProg 64 :=
.seq rawBody143_97 rawBody143_98

def rawBody143_100 : StackLang.HolProg 64 :=
.seq rawBody143_96 rawBody143_99

def rawBody143_101 : StackLang.HolProg 64 :=
.seq rawBody143_95 rawBody143_100

def rawBody143_102 : StackLang.HolProg 64 :=
.seq rawBody143_94 rawBody143_101

def rawBody143_103 : StackLang.HolProg 64 :=
.seq rawBody143_93 rawBody143_102

def rawBody143_104 : StackLang.HolProg 64 :=
.seq rawBody143_92 rawBody143_103

def rawBody143_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody143_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody143_107 : StackLang.HolProg 64 :=
.seq rawBody143_105 rawBody143_106

def rawBody143_108 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody143_109 : StackLang.HolProg 64 :=
.seq rawBody143_107 rawBody143_108

def rawBody143_110 : StackLang.HolProg 64 :=
.call (some (rawBody143_104, 0, 143, 2)) (Sum.inl 142) (some (rawBody143_109, 143, 3))

def rawBody143_111 : StackLang.HolProg 64 :=
.seq rawBody143_91 rawBody143_110

def rawBody143_112 : StackLang.HolProg 64 :=
.seq rawBody143_90 rawBody143_111

def rawBody143_113 : StackLang.HolProg 64 :=
.seq rawBody143_89 rawBody143_112

def rawBody143_114 : StackLang.HolProg 64 :=
.seq rawBody143_70 rawBody143_113

def rawBody143_115 : StackLang.HolProg 64 :=
.seq rawBody143_67 rawBody143_114

def rawBody143_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody143_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody143_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody143_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody143_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def rawBody143_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def rawBody143_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18446744073709551615#64)

def rawBody143_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def rawBody143_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody143_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody143_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 4

def rawBody143_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody143_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody143_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody143_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 3

def rawBody143_137 : StackLang.HolProg 64 :=
.seq rawBody143_135 rawBody143_136

def rawBody143_138 : StackLang.HolProg 64 :=
.seq rawBody143_134 rawBody143_137

def rawBody143_139 : StackLang.HolProg 64 :=
.seq rawBody143_133 rawBody143_138

def rawBody143_140 : StackLang.HolProg 64 :=
.seq rawBody143_132 rawBody143_139

def rawBody143_141 : StackLang.HolProg 64 :=
.seq rawBody143_131 rawBody143_140

def rawBody143_142 : StackLang.HolProg 64 :=
.seq rawBody143_130 rawBody143_141

def rawBody143_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 106#64)

def rawBody143_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_146 : StackLang.HolProg 64 :=
.seq rawBody143_144 rawBody143_145

def rawBody143_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody143_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody143_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 5

def rawBody143_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody143_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody143_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody143_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody143_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_157 : StackLang.HolProg 64 :=
.seq rawBody143_155 rawBody143_156

def rawBody143_158 : StackLang.HolProg 64 :=
.seq rawBody143_154 rawBody143_157

def rawBody143_159 : StackLang.HolProg 64 :=
.seq rawBody143_153 rawBody143_158

def rawBody143_160 : StackLang.HolProg 64 :=
.seq rawBody143_152 rawBody143_159

def rawBody143_161 : StackLang.HolProg 64 :=
.seq rawBody143_151 rawBody143_160

def rawBody143_162 : StackLang.HolProg 64 :=
.seq rawBody143_150 rawBody143_161

def rawBody143_163 : StackLang.HolProg 64 :=
.seq rawBody143_149 rawBody143_162

def rawBody143_164 : StackLang.HolProg 64 :=
.seq rawBody143_148 rawBody143_163

def rawBody143_165 : StackLang.HolProg 64 :=
.seq rawBody143_147 rawBody143_164

def rawBody143_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody143_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody143_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody143_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody143_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody143_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody143_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody143_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody143_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody143_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody143_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody143_180 : StackLang.HolProg 64 :=
.seq rawBody143_178 rawBody143_179

def rawBody143_181 : StackLang.HolProg 64 :=
.seq rawBody143_177 rawBody143_180

def rawBody143_182 : StackLang.HolProg 64 :=
.seq rawBody143_176 rawBody143_181

def rawBody143_183 : StackLang.HolProg 64 :=
.seq rawBody143_175 rawBody143_182

def rawBody143_184 : StackLang.HolProg 64 :=
.seq rawBody143_174 rawBody143_183

def rawBody143_185 : StackLang.HolProg 64 :=
.seq rawBody143_173 rawBody143_184

def rawBody143_186 : StackLang.HolProg 64 :=
.seq rawBody143_172 rawBody143_185

def rawBody143_187 : StackLang.HolProg 64 :=
.seq rawBody143_171 rawBody143_186

def rawBody143_188 : StackLang.HolProg 64 :=
.seq rawBody143_170 rawBody143_187

def rawBody143_189 : StackLang.HolProg 64 :=
.seq rawBody143_169 rawBody143_188

def rawBody143_190 : StackLang.HolProg 64 :=
.seq rawBody143_168 rawBody143_189

def rawBody143_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody143_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody143_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody143_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody143_195 : StackLang.HolProg 64 :=
.seq rawBody143_193 rawBody143_194

def rawBody143_196 : StackLang.HolProg 64 :=
.seq rawBody143_192 rawBody143_195

def rawBody143_197 : StackLang.HolProg 64 :=
.seq rawBody143_191 rawBody143_196

def rawBody143_198 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody143_199 : StackLang.HolProg 64 :=
.seq rawBody143_197 rawBody143_198

def rawBody143_200 : StackLang.HolProg 64 :=
.call (some (rawBody143_190, 0, 143, 4)) (Sum.inl 141) (some (rawBody143_199, 143, 5))

def rawBody143_201 : StackLang.HolProg 64 :=
.seq rawBody143_167 rawBody143_200

def rawBody143_202 : StackLang.HolProg 64 :=
.seq rawBody143_166 rawBody143_201

def rawBody143_203 : StackLang.HolProg 64 :=
.seq rawBody143_165 rawBody143_202

def rawBody143_204 : StackLang.HolProg 64 :=
.seq rawBody143_146 rawBody143_203

def rawBody143_205 : StackLang.HolProg 64 :=
.seq rawBody143_143 rawBody143_204

def rawBody143_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody143_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 107#64)

def rawBody143_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_211 : StackLang.HolProg 64 :=
.seq rawBody143_209 rawBody143_210

def rawBody143_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody143_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody143_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody143_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 7

def rawBody143_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody143_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody143_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody143_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody143_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_222 : StackLang.HolProg 64 :=
.seq rawBody143_220 rawBody143_221

def rawBody143_223 : StackLang.HolProg 64 :=
.seq rawBody143_219 rawBody143_222

def rawBody143_224 : StackLang.HolProg 64 :=
.seq rawBody143_218 rawBody143_223

def rawBody143_225 : StackLang.HolProg 64 :=
.seq rawBody143_217 rawBody143_224

def rawBody143_226 : StackLang.HolProg 64 :=
.seq rawBody143_216 rawBody143_225

def rawBody143_227 : StackLang.HolProg 64 :=
.seq rawBody143_215 rawBody143_226

def rawBody143_228 : StackLang.HolProg 64 :=
.seq rawBody143_214 rawBody143_227

def rawBody143_229 : StackLang.HolProg 64 :=
.seq rawBody143_213 rawBody143_228

def rawBody143_230 : StackLang.HolProg 64 :=
.seq rawBody143_212 rawBody143_229

def rawBody143_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody143_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody143_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody143_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody143_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody143_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody143_239 : StackLang.HolProg 64 :=
.seq rawBody143_237 rawBody143_238

def rawBody143_240 : StackLang.HolProg 64 :=
.seq rawBody143_236 rawBody143_239

def rawBody143_241 : StackLang.HolProg 64 :=
.seq rawBody143_235 rawBody143_240

def rawBody143_242 : StackLang.HolProg 64 :=
.seq rawBody143_234 rawBody143_241

def rawBody143_243 : StackLang.HolProg 64 :=
.seq rawBody143_233 rawBody143_242

def rawBody143_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody143_245 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody143_246 : StackLang.HolProg 64 :=
.seq rawBody143_244 rawBody143_245

def rawBody143_247 : StackLang.HolProg 64 :=
.call (some (rawBody143_243, 0, 143, 6)) (Sum.inl 113) (some (rawBody143_246, 143, 7))

def rawBody143_248 : StackLang.HolProg 64 :=
.seq rawBody143_232 rawBody143_247

def rawBody143_249 : StackLang.HolProg 64 :=
.seq rawBody143_231 rawBody143_248

def rawBody143_250 : StackLang.HolProg 64 :=
.seq rawBody143_230 rawBody143_249

def rawBody143_251 : StackLang.HolProg 64 :=
.seq rawBody143_211 rawBody143_250

def rawBody143_252 : StackLang.HolProg 64 :=
.seq rawBody143_208 rawBody143_251

def rawBody143_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_255 : StackLang.HolProg 64 :=
.seq rawBody143_253 rawBody143_254

def rawBody143_256 : StackLang.HolProg 64 :=
.seq rawBody143_252 rawBody143_255

def rawBody143_257 : StackLang.HolProg 64 :=
.seq rawBody143_207 rawBody143_256

def rawBody143_258 : StackLang.HolProg 64 :=
.seq rawBody143_206 rawBody143_257

def rawBody143_259 : StackLang.HolProg 64 :=
.seq rawBody143_205 rawBody143_258

def rawBody143_260 : StackLang.HolProg 64 :=
.seq rawBody143_142 rawBody143_259

def rawBody143_261 : StackLang.HolProg 64 :=
.seq rawBody143_129 rawBody143_260

def rawBody143_262 : StackLang.HolProg 64 :=
.seq rawBody143_128 rawBody143_261

def rawBody143_263 : StackLang.HolProg 64 :=
.seq rawBody143_127 rawBody143_262

def rawBody143_264 : StackLang.HolProg 64 :=
.seq rawBody143_126 rawBody143_263

def rawBody143_265 : StackLang.HolProg 64 :=
.seq rawBody143_125 rawBody143_264

def rawBody143_266 : StackLang.HolProg 64 :=
.seq rawBody143_124 rawBody143_265

def rawBody143_267 : StackLang.HolProg 64 :=
.seq rawBody143_123 rawBody143_266

def rawBody143_268 : StackLang.HolProg 64 :=
.seq rawBody143_122 rawBody143_267

def rawBody143_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody143_271 : StackLang.HolProg 64 :=
.seq rawBody143_269 rawBody143_270

def rawBody143_272 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody143_268 rawBody143_271

def rawBody143_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody143_275 : StackLang.HolProg 64 :=
.seq rawBody143_273 rawBody143_274

def rawBody143_276 : StackLang.HolProg 64 :=
.seq rawBody143_272 rawBody143_275

def rawBody143_277 : StackLang.HolProg 64 :=
.seq rawBody143_121 rawBody143_276

def rawBody143_278 : StackLang.HolProg 64 :=
.seq rawBody143_120 rawBody143_277

def rawBody143_279 : StackLang.HolProg 64 :=
.seq rawBody143_119 rawBody143_278

def rawBody143_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody143_282 : StackLang.HolProg 64 :=
.seq rawBody143_280 rawBody143_281

def rawBody143_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody143_279 rawBody143_282

def rawBody143_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody143_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody143_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody143_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody143_288 : StackLang.HolProg 64 :=
.seq rawBody143_286 rawBody143_287

def rawBody143_289 : StackLang.HolProg 64 :=
.seq rawBody143_285 rawBody143_288

def rawBody143_290 : StackLang.HolProg 64 :=
.seq rawBody143_284 rawBody143_289

def rawBody143_291 : StackLang.HolProg 64 :=
.seq rawBody143_283 rawBody143_290

def rawBody143_292 : StackLang.HolProg 64 :=
.seq rawBody143_118 rawBody143_291

def rawBody143_293 : StackLang.HolProg 64 :=
.seq rawBody143_117 rawBody143_292

def rawBody143_294 : StackLang.HolProg 64 :=
.seq rawBody143_116 rawBody143_293

def rawBody143_295 : StackLang.HolProg 64 :=
.seq rawBody143_115 rawBody143_294

def rawBody143_296 : StackLang.HolProg 64 :=
.seq rawBody143_66 rawBody143_295

def rawBody143_297 : StackLang.HolProg 64 :=
.seq rawBody143_55 rawBody143_296

def rawBody143_298 : StackLang.HolProg 64 :=
.seq rawBody143_54 rawBody143_297

def rawBody143_299 : StackLang.HolProg 64 :=
.seq rawBody143_53 rawBody143_298

def rawBody143_300 : StackLang.HolProg 64 :=
.seq rawBody143_10 rawBody143_299

def rawBody143_301 : StackLang.HolProg 64 :=
.seq rawBody143_9 rawBody143_300

def rawBody143_302 : StackLang.HolProg 64 :=
.seq rawBody143_8 rawBody143_301

def rawBody143_303 : StackLang.HolProg 64 :=
.seq rawBody143_7 rawBody143_302

def rawBody143_304 : StackLang.HolProg 64 :=
.seq rawBody143_0 rawBody143_303

def raw143 : StackLang.HolProg 64 := rawBody143_304
theorem raw143_eq : StackRawCall.compTop RawInfo.rawInfo (function143 (.list [])).1 = raw143 := by
  kernel_rfl
#print axioms raw143_eq
end InitECandidate.Proofs.BackendStages
