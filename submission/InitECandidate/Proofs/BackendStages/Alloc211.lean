import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw211
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody211_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody211_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 14 0#64)

def AllocBody211_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody211_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody211_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody211_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody211_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody211_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody211_25 : StackLang.HolProg 64 :=
.seq AllocBody211_23 AllocBody211_24

def AllocBody211_26 : StackLang.HolProg 64 :=
.seq AllocBody211_22 AllocBody211_25

def AllocBody211_27 : StackLang.HolProg 64 :=
.seq AllocBody211_21 AllocBody211_26

def AllocBody211_28 : StackLang.HolProg 64 :=
.seq AllocBody211_20 AllocBody211_27

def AllocBody211_29 : StackLang.HolProg 64 :=
.seq AllocBody211_19 AllocBody211_28

def AllocBody211_30 : StackLang.HolProg 64 :=
.seq AllocBody211_18 AllocBody211_29

def AllocBody211_31 : StackLang.HolProg 64 :=
.seq AllocBody211_17 AllocBody211_30

def AllocBody211_32 : StackLang.HolProg 64 :=
.seq AllocBody211_16 AllocBody211_31

def AllocBody211_33 : StackLang.HolProg 64 :=
.seq AllocBody211_15 AllocBody211_32

def AllocBody211_34 : StackLang.HolProg 64 :=
.seq AllocBody211_14 AllocBody211_33

def AllocBody211_35 : StackLang.HolProg 64 :=
.seq AllocBody211_13 AllocBody211_34

def AllocBody211_36 : StackLang.HolProg 64 :=
.seq AllocBody211_12 AllocBody211_35

def AllocBody211_37 : StackLang.HolProg 64 :=
.seq AllocBody211_11 AllocBody211_36

def AllocBody211_38 : StackLang.HolProg 64 :=
.seq AllocBody211_10 AllocBody211_37

def AllocBody211_39 : StackLang.HolProg 64 :=
.seq AllocBody211_9 AllocBody211_38

def AllocBody211_40 : StackLang.HolProg 64 :=
.seq AllocBody211_8 AllocBody211_39

def AllocBody211_41 : StackLang.HolProg 64 :=
.seq AllocBody211_7 AllocBody211_40

def AllocBody211_42 : StackLang.HolProg 64 :=
.seq AllocBody211_6 AllocBody211_41

def AllocBody211_43 : StackLang.HolProg 64 :=
.seq AllocBody211_5 AllocBody211_42

def AllocBody211_44 : StackLang.HolProg 64 :=
.seq AllocBody211_4 AllocBody211_43

def AllocBody211_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody211_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody211_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody211_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody211_49 : StackLang.HolProg 64 :=
.seq AllocBody211_47 AllocBody211_48

def AllocBody211_50 : StackLang.HolProg 64 :=
.seq AllocBody211_46 AllocBody211_49

def AllocBody211_51 : StackLang.HolProg 64 :=
.seq AllocBody211_45 AllocBody211_50

def AllocBody211_52 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 14) AllocBody211_44 AllocBody211_51

def AllocBody211_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody211_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody211_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def AllocBody211_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def AllocBody211_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody211_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody211_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody211_60 : StackLang.HolProg 64 :=
.seq AllocBody211_58 AllocBody211_59

def AllocBody211_61 : StackLang.HolProg 64 :=
.seq AllocBody211_57 AllocBody211_60

def AllocBody211_62 : StackLang.HolProg 64 :=
.seq AllocBody211_56 AllocBody211_61

def AllocBody211_63 : StackLang.HolProg 64 :=
.seq AllocBody211_55 AllocBody211_62

def AllocBody211_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 270#64)

def AllocBody211_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody211_67 : StackLang.HolProg 64 :=
.seq AllocBody211_65 AllocBody211_66

def AllocBody211_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody211_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody211_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody211_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 211 3

def AllocBody211_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody211_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody211_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody211_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody211_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody211_78 : StackLang.HolProg 64 :=
.seq AllocBody211_76 AllocBody211_77

def AllocBody211_79 : StackLang.HolProg 64 :=
.seq AllocBody211_75 AllocBody211_78

def AllocBody211_80 : StackLang.HolProg 64 :=
.seq AllocBody211_74 AllocBody211_79

def AllocBody211_81 : StackLang.HolProg 64 :=
.seq AllocBody211_73 AllocBody211_80

def AllocBody211_82 : StackLang.HolProg 64 :=
.seq AllocBody211_72 AllocBody211_81

def AllocBody211_83 : StackLang.HolProg 64 :=
.seq AllocBody211_71 AllocBody211_82

def AllocBody211_84 : StackLang.HolProg 64 :=
.seq AllocBody211_70 AllocBody211_83

def AllocBody211_85 : StackLang.HolProg 64 :=
.seq AllocBody211_69 AllocBody211_84

def AllocBody211_86 : StackLang.HolProg 64 :=
.seq AllocBody211_68 AllocBody211_85

def AllocBody211_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody211_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody211_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody211_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody211_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody211_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody211_95 : StackLang.HolProg 64 :=
.seq AllocBody211_93 AllocBody211_94

def AllocBody211_96 : StackLang.HolProg 64 :=
.seq AllocBody211_92 AllocBody211_95

def AllocBody211_97 : StackLang.HolProg 64 :=
.seq AllocBody211_91 AllocBody211_96

def AllocBody211_98 : StackLang.HolProg 64 :=
.seq AllocBody211_90 AllocBody211_97

def AllocBody211_99 : StackLang.HolProg 64 :=
.seq AllocBody211_89 AllocBody211_98

def AllocBody211_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def AllocBody211_101 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody211_102 : StackLang.HolProg 64 :=
.seq AllocBody211_100 AllocBody211_101

def AllocBody211_103 : StackLang.HolProg 64 :=
.call (some (AllocBody211_99, 0, 211, 2)) (Sum.inl 115) (some (AllocBody211_102, 211, 3))

def AllocBody211_104 : StackLang.HolProg 64 :=
.seq AllocBody211_88 AllocBody211_103

def AllocBody211_105 : StackLang.HolProg 64 :=
.seq AllocBody211_87 AllocBody211_104

def AllocBody211_106 : StackLang.HolProg 64 :=
.seq AllocBody211_86 AllocBody211_105

def AllocBody211_107 : StackLang.HolProg 64 :=
.seq AllocBody211_67 AllocBody211_106

def AllocBody211_108 : StackLang.HolProg 64 :=
.seq AllocBody211_64 AllocBody211_107

def AllocBody211_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody211_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody211_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody211_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody211_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody211_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody211_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody211_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody211_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody211_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody211_133 : StackLang.HolProg 64 :=
.seq AllocBody211_131 AllocBody211_132

def AllocBody211_134 : StackLang.HolProg 64 :=
.seq AllocBody211_130 AllocBody211_133

def AllocBody211_135 : StackLang.HolProg 64 :=
.seq AllocBody211_129 AllocBody211_134

def AllocBody211_136 : StackLang.HolProg 64 :=
.seq AllocBody211_128 AllocBody211_135

def AllocBody211_137 : StackLang.HolProg 64 :=
.seq AllocBody211_127 AllocBody211_136

def AllocBody211_138 : StackLang.HolProg 64 :=
.seq AllocBody211_126 AllocBody211_137

def AllocBody211_139 : StackLang.HolProg 64 :=
.seq AllocBody211_125 AllocBody211_138

def AllocBody211_140 : StackLang.HolProg 64 :=
.seq AllocBody211_124 AllocBody211_139

def AllocBody211_141 : StackLang.HolProg 64 :=
.seq AllocBody211_123 AllocBody211_140

def AllocBody211_142 : StackLang.HolProg 64 :=
.seq AllocBody211_122 AllocBody211_141

def AllocBody211_143 : StackLang.HolProg 64 :=
.seq AllocBody211_121 AllocBody211_142

def AllocBody211_144 : StackLang.HolProg 64 :=
.seq AllocBody211_120 AllocBody211_143

def AllocBody211_145 : StackLang.HolProg 64 :=
.seq AllocBody211_119 AllocBody211_144

def AllocBody211_146 : StackLang.HolProg 64 :=
.seq AllocBody211_118 AllocBody211_145

def AllocBody211_147 : StackLang.HolProg 64 :=
.seq AllocBody211_117 AllocBody211_146

def AllocBody211_148 : StackLang.HolProg 64 :=
.seq AllocBody211_116 AllocBody211_147

def AllocBody211_149 : StackLang.HolProg 64 :=
.seq AllocBody211_115 AllocBody211_148

def AllocBody211_150 : StackLang.HolProg 64 :=
.seq AllocBody211_114 AllocBody211_149

def AllocBody211_151 : StackLang.HolProg 64 :=
.seq AllocBody211_113 AllocBody211_150

def AllocBody211_152 : StackLang.HolProg 64 :=
.seq AllocBody211_112 AllocBody211_151

def AllocBody211_153 : StackLang.HolProg 64 :=
.seq AllocBody211_111 AllocBody211_152

def AllocBody211_154 : StackLang.HolProg 64 :=
.seq AllocBody211_110 AllocBody211_153

def AllocBody211_155 : StackLang.HolProg 64 :=
.seq AllocBody211_109 AllocBody211_154

def AllocBody211_156 : StackLang.HolProg 64 :=
.seq AllocBody211_108 AllocBody211_155

def AllocBody211_157 : StackLang.HolProg 64 :=
.seq AllocBody211_63 AllocBody211_156

def AllocBody211_158 : StackLang.HolProg 64 :=
.seq AllocBody211_54 AllocBody211_157

def AllocBody211_159 : StackLang.HolProg 64 :=
.seq AllocBody211_53 AllocBody211_158

def AllocBody211_160 : StackLang.HolProg 64 :=
.seq AllocBody211_52 AllocBody211_159

def AllocBody211_161 : StackLang.HolProg 64 :=
.seq AllocBody211_3 AllocBody211_160

def AllocBody211_162 : StackLang.HolProg 64 :=
.seq AllocBody211_2 AllocBody211_161

def AllocBody211_163 : StackLang.HolProg 64 :=
.seq AllocBody211_1 AllocBody211_162

def AllocBody211_164 : StackLang.HolProg 64 :=
.seq AllocBody211_0 AllocBody211_163

def Alloc211 : Nat × StackLang.HolProg 64 := (211, AllocBody211_164)
theorem Alloc211_eq : StackAlloc.progComp (211, raw211) = Alloc211 := by
  kernel_rfl
#print axioms Alloc211_eq
end InitECandidate.Proofs.BackendStages
