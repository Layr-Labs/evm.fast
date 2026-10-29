import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw142
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody142_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody142_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody142_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody142_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_5 : StackLang.HolProg 64 :=
.seq AllocBody142_3 AllocBody142_4

def AllocBody142_6 : StackLang.HolProg 64 :=
.seq AllocBody142_2 AllocBody142_5

def AllocBody142_7 : StackLang.HolProg 64 :=
.seq AllocBody142_1 AllocBody142_6

def AllocBody142_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def AllocBody142_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody142_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody142_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody142_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody142_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody142_16 : StackLang.HolProg 64 :=
.seq AllocBody142_14 AllocBody142_15

def AllocBody142_17 : StackLang.HolProg 64 :=
.seq AllocBody142_13 AllocBody142_16

def AllocBody142_18 : StackLang.HolProg 64 :=
.seq AllocBody142_12 AllocBody142_17

def AllocBody142_19 : StackLang.HolProg 64 :=
.seq AllocBody142_11 AllocBody142_18

def AllocBody142_20 : StackLang.HolProg 64 :=
.seq AllocBody142_10 AllocBody142_19

def AllocBody142_21 : StackLang.HolProg 64 :=
.seq AllocBody142_9 AllocBody142_20

def AllocBody142_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody142_21 AllocBody142_22

def AllocBody142_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody142_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def AllocBody142_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody142_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody142_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody142_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody142_36 : StackLang.HolProg 64 :=
.seq AllocBody142_34 AllocBody142_35

def AllocBody142_37 : StackLang.HolProg 64 :=
.seq AllocBody142_33 AllocBody142_36

def AllocBody142_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody142_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_40 : StackLang.HolProg 64 :=
.seq AllocBody142_38 AllocBody142_39

def AllocBody142_41 : StackLang.HolProg 64 :=
.seq AllocBody142_37 AllocBody142_40

def AllocBody142_42 : StackLang.HolProg 64 :=
.seq AllocBody142_32 AllocBody142_41

def AllocBody142_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_45 : StackLang.HolProg 64 :=
.seq AllocBody142_43 AllocBody142_44

def AllocBody142_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody142_42 AllocBody142_45

def AllocBody142_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def AllocBody142_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody142_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody142_53 : StackLang.HolProg 64 :=
.seq AllocBody142_51 AllocBody142_52

def AllocBody142_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody142_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody142_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_57 : StackLang.HolProg 64 :=
.seq AllocBody142_55 AllocBody142_56

def AllocBody142_58 : StackLang.HolProg 64 :=
.seq AllocBody142_54 AllocBody142_57

def AllocBody142_59 : StackLang.HolProg 64 :=
.seq AllocBody142_53 AllocBody142_58

def AllocBody142_60 : StackLang.HolProg 64 :=
.seq AllocBody142_50 AllocBody142_59

def AllocBody142_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_63 : StackLang.HolProg 64 :=
.seq AllocBody142_61 AllocBody142_62

def AllocBody142_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody142_60 AllocBody142_63

def AllocBody142_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def AllocBody142_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody142_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody142_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody142_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody142_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_74 : StackLang.HolProg 64 :=
.seq AllocBody142_72 AllocBody142_73

def AllocBody142_75 : StackLang.HolProg 64 :=
.seq AllocBody142_71 AllocBody142_74

def AllocBody142_76 : StackLang.HolProg 64 :=
.seq AllocBody142_70 AllocBody142_75

def AllocBody142_77 : StackLang.HolProg 64 :=
.seq AllocBody142_69 AllocBody142_76

def AllocBody142_78 : StackLang.HolProg 64 :=
.seq AllocBody142_68 AllocBody142_77

def AllocBody142_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_81 : StackLang.HolProg 64 :=
.seq AllocBody142_79 AllocBody142_80

def AllocBody142_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody142_78 AllocBody142_81

def AllocBody142_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody142_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def AllocBody142_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody142_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody142_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody142_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody142_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody142_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody142_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_111 : StackLang.HolProg 64 :=
.seq AllocBody142_109 AllocBody142_110

def AllocBody142_112 : StackLang.HolProg 64 :=
.seq AllocBody142_108 AllocBody142_111

def AllocBody142_113 : StackLang.HolProg 64 :=
.seq AllocBody142_107 AllocBody142_112

def AllocBody142_114 : StackLang.HolProg 64 :=
.seq AllocBody142_106 AllocBody142_113

def AllocBody142_115 : StackLang.HolProg 64 :=
.seq AllocBody142_105 AllocBody142_114

def AllocBody142_116 : StackLang.HolProg 64 :=
.seq AllocBody142_104 AllocBody142_115

def AllocBody142_117 : StackLang.HolProg 64 :=
.seq AllocBody142_103 AllocBody142_116

def AllocBody142_118 : StackLang.HolProg 64 :=
.seq AllocBody142_102 AllocBody142_117

def AllocBody142_119 : StackLang.HolProg 64 :=
.seq AllocBody142_101 AllocBody142_118

def AllocBody142_120 : StackLang.HolProg 64 :=
.seq AllocBody142_100 AllocBody142_119

def AllocBody142_121 : StackLang.HolProg 64 :=
.seq AllocBody142_99 AllocBody142_120

def AllocBody142_122 : StackLang.HolProg 64 :=
.seq AllocBody142_98 AllocBody142_121

def AllocBody142_123 : StackLang.HolProg 64 :=
.seq AllocBody142_97 AllocBody142_122

def AllocBody142_124 : StackLang.HolProg 64 :=
.seq AllocBody142_96 AllocBody142_123

def AllocBody142_125 : StackLang.HolProg 64 :=
.seq AllocBody142_95 AllocBody142_124

def AllocBody142_126 : StackLang.HolProg 64 :=
.seq AllocBody142_94 AllocBody142_125

def AllocBody142_127 : StackLang.HolProg 64 :=
.seq AllocBody142_93 AllocBody142_126

def AllocBody142_128 : StackLang.HolProg 64 :=
.seq AllocBody142_92 AllocBody142_127

def AllocBody142_129 : StackLang.HolProg 64 :=
.seq AllocBody142_91 AllocBody142_128

def AllocBody142_130 : StackLang.HolProg 64 :=
.seq AllocBody142_90 AllocBody142_129

def AllocBody142_131 : StackLang.HolProg 64 :=
.seq AllocBody142_89 AllocBody142_130

def AllocBody142_132 : StackLang.HolProg 64 :=
.seq AllocBody142_88 AllocBody142_131

def AllocBody142_133 : StackLang.HolProg 64 :=
.seq AllocBody142_87 AllocBody142_132

def AllocBody142_134 : StackLang.HolProg 64 :=
.seq AllocBody142_86 AllocBody142_133

def AllocBody142_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody142_137 : StackLang.HolProg 64 :=
.seq AllocBody142_135 AllocBody142_136

def AllocBody142_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody142_134 AllocBody142_137

def AllocBody142_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody142_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody142_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody142_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody142_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody142_144 : StackLang.HolProg 64 :=
.seq AllocBody142_142 AllocBody142_143

def AllocBody142_145 : StackLang.HolProg 64 :=
.seq AllocBody142_141 AllocBody142_144

def AllocBody142_146 : StackLang.HolProg 64 :=
.seq AllocBody142_140 AllocBody142_145

def AllocBody142_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody142_148 : StackLang.HolProg 64 :=
.seq AllocBody142_146 AllocBody142_147

def AllocBody142_149 : StackLang.HolProg 64 :=
.seq AllocBody142_139 AllocBody142_148

def AllocBody142_150 : StackLang.HolProg 64 :=
.seq AllocBody142_138 AllocBody142_149

def AllocBody142_151 : StackLang.HolProg 64 :=
.seq AllocBody142_85 AllocBody142_150

def AllocBody142_152 : StackLang.HolProg 64 :=
.seq AllocBody142_84 AllocBody142_151

def AllocBody142_153 : StackLang.HolProg 64 :=
.seq AllocBody142_83 AllocBody142_152

def AllocBody142_154 : StackLang.HolProg 64 :=
.seq AllocBody142_82 AllocBody142_153

def AllocBody142_155 : StackLang.HolProg 64 :=
.seq AllocBody142_67 AllocBody142_154

def AllocBody142_156 : StackLang.HolProg 64 :=
.seq AllocBody142_66 AllocBody142_155

def AllocBody142_157 : StackLang.HolProg 64 :=
.seq AllocBody142_65 AllocBody142_156

def AllocBody142_158 : StackLang.HolProg 64 :=
.seq AllocBody142_64 AllocBody142_157

def AllocBody142_159 : StackLang.HolProg 64 :=
.seq AllocBody142_49 AllocBody142_158

def AllocBody142_160 : StackLang.HolProg 64 :=
.seq AllocBody142_48 AllocBody142_159

def AllocBody142_161 : StackLang.HolProg 64 :=
.seq AllocBody142_47 AllocBody142_160

def AllocBody142_162 : StackLang.HolProg 64 :=
.seq AllocBody142_46 AllocBody142_161

def AllocBody142_163 : StackLang.HolProg 64 :=
.seq AllocBody142_31 AllocBody142_162

def AllocBody142_164 : StackLang.HolProg 64 :=
.seq AllocBody142_30 AllocBody142_163

def AllocBody142_165 : StackLang.HolProg 64 :=
.seq AllocBody142_29 AllocBody142_164

def AllocBody142_166 : StackLang.HolProg 64 :=
.seq AllocBody142_28 AllocBody142_165

def AllocBody142_167 : StackLang.HolProg 64 :=
.seq AllocBody142_27 AllocBody142_166

def AllocBody142_168 : StackLang.HolProg 64 :=
.seq AllocBody142_26 AllocBody142_167

def AllocBody142_169 : StackLang.HolProg 64 :=
.seq AllocBody142_25 AllocBody142_168

def AllocBody142_170 : StackLang.HolProg 64 :=
.seq AllocBody142_24 AllocBody142_169

def AllocBody142_171 : StackLang.HolProg 64 :=
.seq AllocBody142_23 AllocBody142_170

def AllocBody142_172 : StackLang.HolProg 64 :=
.seq AllocBody142_8 AllocBody142_171

def AllocBody142_173 : StackLang.HolProg 64 :=
.seq AllocBody142_7 AllocBody142_172

def AllocBody142_174 : StackLang.HolProg 64 :=
.seq AllocBody142_0 AllocBody142_173

def Alloc142 : Nat × StackLang.HolProg 64 := (142, AllocBody142_174)
theorem Alloc142_eq : StackAlloc.progComp (142, raw142) = Alloc142 := by
  kernel_rfl
#print axioms Alloc142_eq
end InitECandidate.Proofs.BackendStages
