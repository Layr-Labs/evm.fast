import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw141
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody141_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody141_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody141_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody141_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_5 : StackLang.HolProg 64 :=
.seq AllocBody141_3 AllocBody141_4

def AllocBody141_6 : StackLang.HolProg 64 :=
.seq AllocBody141_2 AllocBody141_5

def AllocBody141_7 : StackLang.HolProg 64 :=
.seq AllocBody141_1 AllocBody141_6

def AllocBody141_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody141_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody141_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody141_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody141_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody141_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody141_16 : StackLang.HolProg 64 :=
.seq AllocBody141_14 AllocBody141_15

def AllocBody141_17 : StackLang.HolProg 64 :=
.seq AllocBody141_13 AllocBody141_16

def AllocBody141_18 : StackLang.HolProg 64 :=
.seq AllocBody141_12 AllocBody141_17

def AllocBody141_19 : StackLang.HolProg 64 :=
.seq AllocBody141_11 AllocBody141_18

def AllocBody141_20 : StackLang.HolProg 64 :=
.seq AllocBody141_10 AllocBody141_19

def AllocBody141_21 : StackLang.HolProg 64 :=
.seq AllocBody141_9 AllocBody141_20

def AllocBody141_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody141_21 AllocBody141_22

def AllocBody141_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody141_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody141_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody141_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody141_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody141_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody141_36 : StackLang.HolProg 64 :=
.seq AllocBody141_34 AllocBody141_35

def AllocBody141_37 : StackLang.HolProg 64 :=
.seq AllocBody141_33 AllocBody141_36

def AllocBody141_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody141_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_40 : StackLang.HolProg 64 :=
.seq AllocBody141_38 AllocBody141_39

def AllocBody141_41 : StackLang.HolProg 64 :=
.seq AllocBody141_37 AllocBody141_40

def AllocBody141_42 : StackLang.HolProg 64 :=
.seq AllocBody141_32 AllocBody141_41

def AllocBody141_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_45 : StackLang.HolProg 64 :=
.seq AllocBody141_43 AllocBody141_44

def AllocBody141_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody141_42 AllocBody141_45

def AllocBody141_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def AllocBody141_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody141_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody141_53 : StackLang.HolProg 64 :=
.seq AllocBody141_51 AllocBody141_52

def AllocBody141_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody141_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody141_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_57 : StackLang.HolProg 64 :=
.seq AllocBody141_55 AllocBody141_56

def AllocBody141_58 : StackLang.HolProg 64 :=
.seq AllocBody141_54 AllocBody141_57

def AllocBody141_59 : StackLang.HolProg 64 :=
.seq AllocBody141_53 AllocBody141_58

def AllocBody141_60 : StackLang.HolProg 64 :=
.seq AllocBody141_50 AllocBody141_59

def AllocBody141_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_63 : StackLang.HolProg 64 :=
.seq AllocBody141_61 AllocBody141_62

def AllocBody141_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody141_60 AllocBody141_63

def AllocBody141_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def AllocBody141_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody141_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def AllocBody141_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody141_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody141_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_74 : StackLang.HolProg 64 :=
.seq AllocBody141_72 AllocBody141_73

def AllocBody141_75 : StackLang.HolProg 64 :=
.seq AllocBody141_71 AllocBody141_74

def AllocBody141_76 : StackLang.HolProg 64 :=
.seq AllocBody141_70 AllocBody141_75

def AllocBody141_77 : StackLang.HolProg 64 :=
.seq AllocBody141_69 AllocBody141_76

def AllocBody141_78 : StackLang.HolProg 64 :=
.seq AllocBody141_68 AllocBody141_77

def AllocBody141_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_81 : StackLang.HolProg 64 :=
.seq AllocBody141_79 AllocBody141_80

def AllocBody141_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody141_78 AllocBody141_81

def AllocBody141_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody141_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody141_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody141_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody141_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody141_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody141_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody141_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody141_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_111 : StackLang.HolProg 64 :=
.seq AllocBody141_109 AllocBody141_110

def AllocBody141_112 : StackLang.HolProg 64 :=
.seq AllocBody141_108 AllocBody141_111

def AllocBody141_113 : StackLang.HolProg 64 :=
.seq AllocBody141_107 AllocBody141_112

def AllocBody141_114 : StackLang.HolProg 64 :=
.seq AllocBody141_106 AllocBody141_113

def AllocBody141_115 : StackLang.HolProg 64 :=
.seq AllocBody141_105 AllocBody141_114

def AllocBody141_116 : StackLang.HolProg 64 :=
.seq AllocBody141_104 AllocBody141_115

def AllocBody141_117 : StackLang.HolProg 64 :=
.seq AllocBody141_103 AllocBody141_116

def AllocBody141_118 : StackLang.HolProg 64 :=
.seq AllocBody141_102 AllocBody141_117

def AllocBody141_119 : StackLang.HolProg 64 :=
.seq AllocBody141_101 AllocBody141_118

def AllocBody141_120 : StackLang.HolProg 64 :=
.seq AllocBody141_100 AllocBody141_119

def AllocBody141_121 : StackLang.HolProg 64 :=
.seq AllocBody141_99 AllocBody141_120

def AllocBody141_122 : StackLang.HolProg 64 :=
.seq AllocBody141_98 AllocBody141_121

def AllocBody141_123 : StackLang.HolProg 64 :=
.seq AllocBody141_97 AllocBody141_122

def AllocBody141_124 : StackLang.HolProg 64 :=
.seq AllocBody141_96 AllocBody141_123

def AllocBody141_125 : StackLang.HolProg 64 :=
.seq AllocBody141_95 AllocBody141_124

def AllocBody141_126 : StackLang.HolProg 64 :=
.seq AllocBody141_94 AllocBody141_125

def AllocBody141_127 : StackLang.HolProg 64 :=
.seq AllocBody141_93 AllocBody141_126

def AllocBody141_128 : StackLang.HolProg 64 :=
.seq AllocBody141_92 AllocBody141_127

def AllocBody141_129 : StackLang.HolProg 64 :=
.seq AllocBody141_91 AllocBody141_128

def AllocBody141_130 : StackLang.HolProg 64 :=
.seq AllocBody141_90 AllocBody141_129

def AllocBody141_131 : StackLang.HolProg 64 :=
.seq AllocBody141_89 AllocBody141_130

def AllocBody141_132 : StackLang.HolProg 64 :=
.seq AllocBody141_88 AllocBody141_131

def AllocBody141_133 : StackLang.HolProg 64 :=
.seq AllocBody141_87 AllocBody141_132

def AllocBody141_134 : StackLang.HolProg 64 :=
.seq AllocBody141_86 AllocBody141_133

def AllocBody141_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody141_137 : StackLang.HolProg 64 :=
.seq AllocBody141_135 AllocBody141_136

def AllocBody141_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody141_134 AllocBody141_137

def AllocBody141_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody141_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody141_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody141_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody141_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody141_144 : StackLang.HolProg 64 :=
.seq AllocBody141_142 AllocBody141_143

def AllocBody141_145 : StackLang.HolProg 64 :=
.seq AllocBody141_141 AllocBody141_144

def AllocBody141_146 : StackLang.HolProg 64 :=
.seq AllocBody141_140 AllocBody141_145

def AllocBody141_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody141_148 : StackLang.HolProg 64 :=
.seq AllocBody141_146 AllocBody141_147

def AllocBody141_149 : StackLang.HolProg 64 :=
.seq AllocBody141_139 AllocBody141_148

def AllocBody141_150 : StackLang.HolProg 64 :=
.seq AllocBody141_138 AllocBody141_149

def AllocBody141_151 : StackLang.HolProg 64 :=
.seq AllocBody141_85 AllocBody141_150

def AllocBody141_152 : StackLang.HolProg 64 :=
.seq AllocBody141_84 AllocBody141_151

def AllocBody141_153 : StackLang.HolProg 64 :=
.seq AllocBody141_83 AllocBody141_152

def AllocBody141_154 : StackLang.HolProg 64 :=
.seq AllocBody141_82 AllocBody141_153

def AllocBody141_155 : StackLang.HolProg 64 :=
.seq AllocBody141_67 AllocBody141_154

def AllocBody141_156 : StackLang.HolProg 64 :=
.seq AllocBody141_66 AllocBody141_155

def AllocBody141_157 : StackLang.HolProg 64 :=
.seq AllocBody141_65 AllocBody141_156

def AllocBody141_158 : StackLang.HolProg 64 :=
.seq AllocBody141_64 AllocBody141_157

def AllocBody141_159 : StackLang.HolProg 64 :=
.seq AllocBody141_49 AllocBody141_158

def AllocBody141_160 : StackLang.HolProg 64 :=
.seq AllocBody141_48 AllocBody141_159

def AllocBody141_161 : StackLang.HolProg 64 :=
.seq AllocBody141_47 AllocBody141_160

def AllocBody141_162 : StackLang.HolProg 64 :=
.seq AllocBody141_46 AllocBody141_161

def AllocBody141_163 : StackLang.HolProg 64 :=
.seq AllocBody141_31 AllocBody141_162

def AllocBody141_164 : StackLang.HolProg 64 :=
.seq AllocBody141_30 AllocBody141_163

def AllocBody141_165 : StackLang.HolProg 64 :=
.seq AllocBody141_29 AllocBody141_164

def AllocBody141_166 : StackLang.HolProg 64 :=
.seq AllocBody141_28 AllocBody141_165

def AllocBody141_167 : StackLang.HolProg 64 :=
.seq AllocBody141_27 AllocBody141_166

def AllocBody141_168 : StackLang.HolProg 64 :=
.seq AllocBody141_26 AllocBody141_167

def AllocBody141_169 : StackLang.HolProg 64 :=
.seq AllocBody141_25 AllocBody141_168

def AllocBody141_170 : StackLang.HolProg 64 :=
.seq AllocBody141_24 AllocBody141_169

def AllocBody141_171 : StackLang.HolProg 64 :=
.seq AllocBody141_23 AllocBody141_170

def AllocBody141_172 : StackLang.HolProg 64 :=
.seq AllocBody141_8 AllocBody141_171

def AllocBody141_173 : StackLang.HolProg 64 :=
.seq AllocBody141_7 AllocBody141_172

def AllocBody141_174 : StackLang.HolProg 64 :=
.seq AllocBody141_0 AllocBody141_173

def Alloc141 : Nat × StackLang.HolProg 64 := (141, AllocBody141_174)
theorem Alloc141_eq : StackAlloc.progComp (141, raw141) = Alloc141 := by
  kernel_rfl
#print axioms Alloc141_eq
end InitECandidate.Proofs.BackendStages
