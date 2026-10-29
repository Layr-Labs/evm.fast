import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc141
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody141_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody141_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody141_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_5 : StackLang.HolProg 64 :=
.seq RemovedBody141_3 RemovedBody141_4

def RemovedBody141_6 : StackLang.HolProg 64 :=
.seq RemovedBody141_2 RemovedBody141_5

def RemovedBody141_7 : StackLang.HolProg 64 :=
.seq RemovedBody141_1 RemovedBody141_6

def RemovedBody141_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody141_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody141_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody141_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody141_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody141_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody141_16 : StackLang.HolProg 64 :=
.seq RemovedBody141_14 RemovedBody141_15

def RemovedBody141_17 : StackLang.HolProg 64 :=
.seq RemovedBody141_13 RemovedBody141_16

def RemovedBody141_18 : StackLang.HolProg 64 :=
.seq RemovedBody141_12 RemovedBody141_17

def RemovedBody141_19 : StackLang.HolProg 64 :=
.seq RemovedBody141_11 RemovedBody141_18

def RemovedBody141_20 : StackLang.HolProg 64 :=
.seq RemovedBody141_10 RemovedBody141_19

def RemovedBody141_21 : StackLang.HolProg 64 :=
.seq RemovedBody141_9 RemovedBody141_20

def RemovedBody141_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody141_21 RemovedBody141_22

def RemovedBody141_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def RemovedBody141_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody141_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody141_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody141_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody141_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody141_36 : StackLang.HolProg 64 :=
.seq RemovedBody141_34 RemovedBody141_35

def RemovedBody141_37 : StackLang.HolProg 64 :=
.seq RemovedBody141_33 RemovedBody141_36

def RemovedBody141_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody141_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_40 : StackLang.HolProg 64 :=
.seq RemovedBody141_38 RemovedBody141_39

def RemovedBody141_41 : StackLang.HolProg 64 :=
.seq RemovedBody141_37 RemovedBody141_40

def RemovedBody141_42 : StackLang.HolProg 64 :=
.seq RemovedBody141_32 RemovedBody141_41

def RemovedBody141_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_45 : StackLang.HolProg 64 :=
.seq RemovedBody141_43 RemovedBody141_44

def RemovedBody141_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody141_42 RemovedBody141_45

def RemovedBody141_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def RemovedBody141_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody141_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody141_53 : StackLang.HolProg 64 :=
.seq RemovedBody141_51 RemovedBody141_52

def RemovedBody141_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody141_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody141_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_57 : StackLang.HolProg 64 :=
.seq RemovedBody141_55 RemovedBody141_56

def RemovedBody141_58 : StackLang.HolProg 64 :=
.seq RemovedBody141_54 RemovedBody141_57

def RemovedBody141_59 : StackLang.HolProg 64 :=
.seq RemovedBody141_53 RemovedBody141_58

def RemovedBody141_60 : StackLang.HolProg 64 :=
.seq RemovedBody141_50 RemovedBody141_59

def RemovedBody141_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_63 : StackLang.HolProg 64 :=
.seq RemovedBody141_61 RemovedBody141_62

def RemovedBody141_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody141_60 RemovedBody141_63

def RemovedBody141_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def RemovedBody141_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody141_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def RemovedBody141_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def RemovedBody141_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody141_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_74 : StackLang.HolProg 64 :=
.seq RemovedBody141_72 RemovedBody141_73

def RemovedBody141_75 : StackLang.HolProg 64 :=
.seq RemovedBody141_71 RemovedBody141_74

def RemovedBody141_76 : StackLang.HolProg 64 :=
.seq RemovedBody141_70 RemovedBody141_75

def RemovedBody141_77 : StackLang.HolProg 64 :=
.seq RemovedBody141_69 RemovedBody141_76

def RemovedBody141_78 : StackLang.HolProg 64 :=
.seq RemovedBody141_68 RemovedBody141_77

def RemovedBody141_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_81 : StackLang.HolProg 64 :=
.seq RemovedBody141_79 RemovedBody141_80

def RemovedBody141_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody141_78 RemovedBody141_81

def RemovedBody141_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody141_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody141_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody141_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody141_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody141_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody141_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody141_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody141_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_111 : StackLang.HolProg 64 :=
.seq RemovedBody141_109 RemovedBody141_110

def RemovedBody141_112 : StackLang.HolProg 64 :=
.seq RemovedBody141_108 RemovedBody141_111

def RemovedBody141_113 : StackLang.HolProg 64 :=
.seq RemovedBody141_107 RemovedBody141_112

def RemovedBody141_114 : StackLang.HolProg 64 :=
.seq RemovedBody141_106 RemovedBody141_113

def RemovedBody141_115 : StackLang.HolProg 64 :=
.seq RemovedBody141_105 RemovedBody141_114

def RemovedBody141_116 : StackLang.HolProg 64 :=
.seq RemovedBody141_104 RemovedBody141_115

def RemovedBody141_117 : StackLang.HolProg 64 :=
.seq RemovedBody141_103 RemovedBody141_116

def RemovedBody141_118 : StackLang.HolProg 64 :=
.seq RemovedBody141_102 RemovedBody141_117

def RemovedBody141_119 : StackLang.HolProg 64 :=
.seq RemovedBody141_101 RemovedBody141_118

def RemovedBody141_120 : StackLang.HolProg 64 :=
.seq RemovedBody141_100 RemovedBody141_119

def RemovedBody141_121 : StackLang.HolProg 64 :=
.seq RemovedBody141_99 RemovedBody141_120

def RemovedBody141_122 : StackLang.HolProg 64 :=
.seq RemovedBody141_98 RemovedBody141_121

def RemovedBody141_123 : StackLang.HolProg 64 :=
.seq RemovedBody141_97 RemovedBody141_122

def RemovedBody141_124 : StackLang.HolProg 64 :=
.seq RemovedBody141_96 RemovedBody141_123

def RemovedBody141_125 : StackLang.HolProg 64 :=
.seq RemovedBody141_95 RemovedBody141_124

def RemovedBody141_126 : StackLang.HolProg 64 :=
.seq RemovedBody141_94 RemovedBody141_125

def RemovedBody141_127 : StackLang.HolProg 64 :=
.seq RemovedBody141_93 RemovedBody141_126

def RemovedBody141_128 : StackLang.HolProg 64 :=
.seq RemovedBody141_92 RemovedBody141_127

def RemovedBody141_129 : StackLang.HolProg 64 :=
.seq RemovedBody141_91 RemovedBody141_128

def RemovedBody141_130 : StackLang.HolProg 64 :=
.seq RemovedBody141_90 RemovedBody141_129

def RemovedBody141_131 : StackLang.HolProg 64 :=
.seq RemovedBody141_89 RemovedBody141_130

def RemovedBody141_132 : StackLang.HolProg 64 :=
.seq RemovedBody141_88 RemovedBody141_131

def RemovedBody141_133 : StackLang.HolProg 64 :=
.seq RemovedBody141_87 RemovedBody141_132

def RemovedBody141_134 : StackLang.HolProg 64 :=
.seq RemovedBody141_86 RemovedBody141_133

def RemovedBody141_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody141_137 : StackLang.HolProg 64 :=
.seq RemovedBody141_135 RemovedBody141_136

def RemovedBody141_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody141_134 RemovedBody141_137

def RemovedBody141_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody141_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody141_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody141_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody141_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody141_144 : StackLang.HolProg 64 :=
.seq RemovedBody141_142 RemovedBody141_143

def RemovedBody141_145 : StackLang.HolProg 64 :=
.seq RemovedBody141_141 RemovedBody141_144

def RemovedBody141_146 : StackLang.HolProg 64 :=
.seq RemovedBody141_140 RemovedBody141_145

def RemovedBody141_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody141_148 : StackLang.HolProg 64 :=
.seq RemovedBody141_146 RemovedBody141_147

def RemovedBody141_149 : StackLang.HolProg 64 :=
.seq RemovedBody141_139 RemovedBody141_148

def RemovedBody141_150 : StackLang.HolProg 64 :=
.seq RemovedBody141_138 RemovedBody141_149

def RemovedBody141_151 : StackLang.HolProg 64 :=
.seq RemovedBody141_85 RemovedBody141_150

def RemovedBody141_152 : StackLang.HolProg 64 :=
.seq RemovedBody141_84 RemovedBody141_151

def RemovedBody141_153 : StackLang.HolProg 64 :=
.seq RemovedBody141_83 RemovedBody141_152

def RemovedBody141_154 : StackLang.HolProg 64 :=
.seq RemovedBody141_82 RemovedBody141_153

def RemovedBody141_155 : StackLang.HolProg 64 :=
.seq RemovedBody141_67 RemovedBody141_154

def RemovedBody141_156 : StackLang.HolProg 64 :=
.seq RemovedBody141_66 RemovedBody141_155

def RemovedBody141_157 : StackLang.HolProg 64 :=
.seq RemovedBody141_65 RemovedBody141_156

def RemovedBody141_158 : StackLang.HolProg 64 :=
.seq RemovedBody141_64 RemovedBody141_157

def RemovedBody141_159 : StackLang.HolProg 64 :=
.seq RemovedBody141_49 RemovedBody141_158

def RemovedBody141_160 : StackLang.HolProg 64 :=
.seq RemovedBody141_48 RemovedBody141_159

def RemovedBody141_161 : StackLang.HolProg 64 :=
.seq RemovedBody141_47 RemovedBody141_160

def RemovedBody141_162 : StackLang.HolProg 64 :=
.seq RemovedBody141_46 RemovedBody141_161

def RemovedBody141_163 : StackLang.HolProg 64 :=
.seq RemovedBody141_31 RemovedBody141_162

def RemovedBody141_164 : StackLang.HolProg 64 :=
.seq RemovedBody141_30 RemovedBody141_163

def RemovedBody141_165 : StackLang.HolProg 64 :=
.seq RemovedBody141_29 RemovedBody141_164

def RemovedBody141_166 : StackLang.HolProg 64 :=
.seq RemovedBody141_28 RemovedBody141_165

def RemovedBody141_167 : StackLang.HolProg 64 :=
.seq RemovedBody141_27 RemovedBody141_166

def RemovedBody141_168 : StackLang.HolProg 64 :=
.seq RemovedBody141_26 RemovedBody141_167

def RemovedBody141_169 : StackLang.HolProg 64 :=
.seq RemovedBody141_25 RemovedBody141_168

def RemovedBody141_170 : StackLang.HolProg 64 :=
.seq RemovedBody141_24 RemovedBody141_169

def RemovedBody141_171 : StackLang.HolProg 64 :=
.seq RemovedBody141_23 RemovedBody141_170

def RemovedBody141_172 : StackLang.HolProg 64 :=
.seq RemovedBody141_8 RemovedBody141_171

def RemovedBody141_173 : StackLang.HolProg 64 :=
.seq RemovedBody141_7 RemovedBody141_172

def RemovedBody141_174 : StackLang.HolProg 64 :=
.seq RemovedBody141_0 RemovedBody141_173

def Removed141 : Nat × StackLang.HolProg 64 := (141, RemovedBody141_174)
theorem Removed141_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc141 = Removed141 := by
  kernel_rfl
#print axioms Removed141_eq
end InitECandidate.Proofs.BackendStages
