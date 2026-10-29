import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc142
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody142_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody142_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody142_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_5 : StackLang.HolProg 64 :=
.seq RemovedBody142_3 RemovedBody142_4

def RemovedBody142_6 : StackLang.HolProg 64 :=
.seq RemovedBody142_2 RemovedBody142_5

def RemovedBody142_7 : StackLang.HolProg 64 :=
.seq RemovedBody142_1 RemovedBody142_6

def RemovedBody142_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody142_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody142_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody142_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody142_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody142_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody142_16 : StackLang.HolProg 64 :=
.seq RemovedBody142_14 RemovedBody142_15

def RemovedBody142_17 : StackLang.HolProg 64 :=
.seq RemovedBody142_13 RemovedBody142_16

def RemovedBody142_18 : StackLang.HolProg 64 :=
.seq RemovedBody142_12 RemovedBody142_17

def RemovedBody142_19 : StackLang.HolProg 64 :=
.seq RemovedBody142_11 RemovedBody142_18

def RemovedBody142_20 : StackLang.HolProg 64 :=
.seq RemovedBody142_10 RemovedBody142_19

def RemovedBody142_21 : StackLang.HolProg 64 :=
.seq RemovedBody142_9 RemovedBody142_20

def RemovedBody142_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody142_21 RemovedBody142_22

def RemovedBody142_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody142_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody142_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody142_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody142_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody142_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody142_36 : StackLang.HolProg 64 :=
.seq RemovedBody142_34 RemovedBody142_35

def RemovedBody142_37 : StackLang.HolProg 64 :=
.seq RemovedBody142_33 RemovedBody142_36

def RemovedBody142_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody142_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_40 : StackLang.HolProg 64 :=
.seq RemovedBody142_38 RemovedBody142_39

def RemovedBody142_41 : StackLang.HolProg 64 :=
.seq RemovedBody142_37 RemovedBody142_40

def RemovedBody142_42 : StackLang.HolProg 64 :=
.seq RemovedBody142_32 RemovedBody142_41

def RemovedBody142_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_45 : StackLang.HolProg 64 :=
.seq RemovedBody142_43 RemovedBody142_44

def RemovedBody142_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody142_42 RemovedBody142_45

def RemovedBody142_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def RemovedBody142_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody142_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody142_53 : StackLang.HolProg 64 :=
.seq RemovedBody142_51 RemovedBody142_52

def RemovedBody142_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody142_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody142_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_57 : StackLang.HolProg 64 :=
.seq RemovedBody142_55 RemovedBody142_56

def RemovedBody142_58 : StackLang.HolProg 64 :=
.seq RemovedBody142_54 RemovedBody142_57

def RemovedBody142_59 : StackLang.HolProg 64 :=
.seq RemovedBody142_53 RemovedBody142_58

def RemovedBody142_60 : StackLang.HolProg 64 :=
.seq RemovedBody142_50 RemovedBody142_59

def RemovedBody142_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_63 : StackLang.HolProg 64 :=
.seq RemovedBody142_61 RemovedBody142_62

def RemovedBody142_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody142_60 RemovedBody142_63

def RemovedBody142_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def RemovedBody142_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody142_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody142_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody142_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody142_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_74 : StackLang.HolProg 64 :=
.seq RemovedBody142_72 RemovedBody142_73

def RemovedBody142_75 : StackLang.HolProg 64 :=
.seq RemovedBody142_71 RemovedBody142_74

def RemovedBody142_76 : StackLang.HolProg 64 :=
.seq RemovedBody142_70 RemovedBody142_75

def RemovedBody142_77 : StackLang.HolProg 64 :=
.seq RemovedBody142_69 RemovedBody142_76

def RemovedBody142_78 : StackLang.HolProg 64 :=
.seq RemovedBody142_68 RemovedBody142_77

def RemovedBody142_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_81 : StackLang.HolProg 64 :=
.seq RemovedBody142_79 RemovedBody142_80

def RemovedBody142_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody142_78 RemovedBody142_81

def RemovedBody142_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody142_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody142_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody142_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody142_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody142_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody142_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody142_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody142_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_111 : StackLang.HolProg 64 :=
.seq RemovedBody142_109 RemovedBody142_110

def RemovedBody142_112 : StackLang.HolProg 64 :=
.seq RemovedBody142_108 RemovedBody142_111

def RemovedBody142_113 : StackLang.HolProg 64 :=
.seq RemovedBody142_107 RemovedBody142_112

def RemovedBody142_114 : StackLang.HolProg 64 :=
.seq RemovedBody142_106 RemovedBody142_113

def RemovedBody142_115 : StackLang.HolProg 64 :=
.seq RemovedBody142_105 RemovedBody142_114

def RemovedBody142_116 : StackLang.HolProg 64 :=
.seq RemovedBody142_104 RemovedBody142_115

def RemovedBody142_117 : StackLang.HolProg 64 :=
.seq RemovedBody142_103 RemovedBody142_116

def RemovedBody142_118 : StackLang.HolProg 64 :=
.seq RemovedBody142_102 RemovedBody142_117

def RemovedBody142_119 : StackLang.HolProg 64 :=
.seq RemovedBody142_101 RemovedBody142_118

def RemovedBody142_120 : StackLang.HolProg 64 :=
.seq RemovedBody142_100 RemovedBody142_119

def RemovedBody142_121 : StackLang.HolProg 64 :=
.seq RemovedBody142_99 RemovedBody142_120

def RemovedBody142_122 : StackLang.HolProg 64 :=
.seq RemovedBody142_98 RemovedBody142_121

def RemovedBody142_123 : StackLang.HolProg 64 :=
.seq RemovedBody142_97 RemovedBody142_122

def RemovedBody142_124 : StackLang.HolProg 64 :=
.seq RemovedBody142_96 RemovedBody142_123

def RemovedBody142_125 : StackLang.HolProg 64 :=
.seq RemovedBody142_95 RemovedBody142_124

def RemovedBody142_126 : StackLang.HolProg 64 :=
.seq RemovedBody142_94 RemovedBody142_125

def RemovedBody142_127 : StackLang.HolProg 64 :=
.seq RemovedBody142_93 RemovedBody142_126

def RemovedBody142_128 : StackLang.HolProg 64 :=
.seq RemovedBody142_92 RemovedBody142_127

def RemovedBody142_129 : StackLang.HolProg 64 :=
.seq RemovedBody142_91 RemovedBody142_128

def RemovedBody142_130 : StackLang.HolProg 64 :=
.seq RemovedBody142_90 RemovedBody142_129

def RemovedBody142_131 : StackLang.HolProg 64 :=
.seq RemovedBody142_89 RemovedBody142_130

def RemovedBody142_132 : StackLang.HolProg 64 :=
.seq RemovedBody142_88 RemovedBody142_131

def RemovedBody142_133 : StackLang.HolProg 64 :=
.seq RemovedBody142_87 RemovedBody142_132

def RemovedBody142_134 : StackLang.HolProg 64 :=
.seq RemovedBody142_86 RemovedBody142_133

def RemovedBody142_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody142_137 : StackLang.HolProg 64 :=
.seq RemovedBody142_135 RemovedBody142_136

def RemovedBody142_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody142_134 RemovedBody142_137

def RemovedBody142_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody142_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody142_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody142_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody142_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody142_144 : StackLang.HolProg 64 :=
.seq RemovedBody142_142 RemovedBody142_143

def RemovedBody142_145 : StackLang.HolProg 64 :=
.seq RemovedBody142_141 RemovedBody142_144

def RemovedBody142_146 : StackLang.HolProg 64 :=
.seq RemovedBody142_140 RemovedBody142_145

def RemovedBody142_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody142_148 : StackLang.HolProg 64 :=
.seq RemovedBody142_146 RemovedBody142_147

def RemovedBody142_149 : StackLang.HolProg 64 :=
.seq RemovedBody142_139 RemovedBody142_148

def RemovedBody142_150 : StackLang.HolProg 64 :=
.seq RemovedBody142_138 RemovedBody142_149

def RemovedBody142_151 : StackLang.HolProg 64 :=
.seq RemovedBody142_85 RemovedBody142_150

def RemovedBody142_152 : StackLang.HolProg 64 :=
.seq RemovedBody142_84 RemovedBody142_151

def RemovedBody142_153 : StackLang.HolProg 64 :=
.seq RemovedBody142_83 RemovedBody142_152

def RemovedBody142_154 : StackLang.HolProg 64 :=
.seq RemovedBody142_82 RemovedBody142_153

def RemovedBody142_155 : StackLang.HolProg 64 :=
.seq RemovedBody142_67 RemovedBody142_154

def RemovedBody142_156 : StackLang.HolProg 64 :=
.seq RemovedBody142_66 RemovedBody142_155

def RemovedBody142_157 : StackLang.HolProg 64 :=
.seq RemovedBody142_65 RemovedBody142_156

def RemovedBody142_158 : StackLang.HolProg 64 :=
.seq RemovedBody142_64 RemovedBody142_157

def RemovedBody142_159 : StackLang.HolProg 64 :=
.seq RemovedBody142_49 RemovedBody142_158

def RemovedBody142_160 : StackLang.HolProg 64 :=
.seq RemovedBody142_48 RemovedBody142_159

def RemovedBody142_161 : StackLang.HolProg 64 :=
.seq RemovedBody142_47 RemovedBody142_160

def RemovedBody142_162 : StackLang.HolProg 64 :=
.seq RemovedBody142_46 RemovedBody142_161

def RemovedBody142_163 : StackLang.HolProg 64 :=
.seq RemovedBody142_31 RemovedBody142_162

def RemovedBody142_164 : StackLang.HolProg 64 :=
.seq RemovedBody142_30 RemovedBody142_163

def RemovedBody142_165 : StackLang.HolProg 64 :=
.seq RemovedBody142_29 RemovedBody142_164

def RemovedBody142_166 : StackLang.HolProg 64 :=
.seq RemovedBody142_28 RemovedBody142_165

def RemovedBody142_167 : StackLang.HolProg 64 :=
.seq RemovedBody142_27 RemovedBody142_166

def RemovedBody142_168 : StackLang.HolProg 64 :=
.seq RemovedBody142_26 RemovedBody142_167

def RemovedBody142_169 : StackLang.HolProg 64 :=
.seq RemovedBody142_25 RemovedBody142_168

def RemovedBody142_170 : StackLang.HolProg 64 :=
.seq RemovedBody142_24 RemovedBody142_169

def RemovedBody142_171 : StackLang.HolProg 64 :=
.seq RemovedBody142_23 RemovedBody142_170

def RemovedBody142_172 : StackLang.HolProg 64 :=
.seq RemovedBody142_8 RemovedBody142_171

def RemovedBody142_173 : StackLang.HolProg 64 :=
.seq RemovedBody142_7 RemovedBody142_172

def RemovedBody142_174 : StackLang.HolProg 64 :=
.seq RemovedBody142_0 RemovedBody142_173

def Removed142 : Nat × StackLang.HolProg 64 := (142, RemovedBody142_174)
theorem Removed142_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc142 = Removed142 := by
  kernel_rfl
#print axioms Removed142_eq
end InitECandidate.Proofs.BackendStages
