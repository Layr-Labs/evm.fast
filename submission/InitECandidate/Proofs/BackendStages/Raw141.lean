import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function141
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody141_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody141_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody141_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody141_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_5 : StackLang.HolProg 64 :=
.seq rawBody141_3 rawBody141_4

def rawBody141_6 : StackLang.HolProg 64 :=
.seq rawBody141_2 rawBody141_5

def rawBody141_7 : StackLang.HolProg 64 :=
.seq rawBody141_1 rawBody141_6

def rawBody141_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody141_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody141_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody141_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody141_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody141_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody141_16 : StackLang.HolProg 64 :=
.seq rawBody141_14 rawBody141_15

def rawBody141_17 : StackLang.HolProg 64 :=
.seq rawBody141_13 rawBody141_16

def rawBody141_18 : StackLang.HolProg 64 :=
.seq rawBody141_12 rawBody141_17

def rawBody141_19 : StackLang.HolProg 64 :=
.seq rawBody141_11 rawBody141_18

def rawBody141_20 : StackLang.HolProg 64 :=
.seq rawBody141_10 rawBody141_19

def rawBody141_21 : StackLang.HolProg 64 :=
.seq rawBody141_9 rawBody141_20

def rawBody141_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody141_21 rawBody141_22

def rawBody141_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody141_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody141_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody141_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody141_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody141_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody141_36 : StackLang.HolProg 64 :=
.seq rawBody141_34 rawBody141_35

def rawBody141_37 : StackLang.HolProg 64 :=
.seq rawBody141_33 rawBody141_36

def rawBody141_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody141_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_40 : StackLang.HolProg 64 :=
.seq rawBody141_38 rawBody141_39

def rawBody141_41 : StackLang.HolProg 64 :=
.seq rawBody141_37 rawBody141_40

def rawBody141_42 : StackLang.HolProg 64 :=
.seq rawBody141_32 rawBody141_41

def rawBody141_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_45 : StackLang.HolProg 64 :=
.seq rawBody141_43 rawBody141_44

def rawBody141_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody141_42 rawBody141_45

def rawBody141_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def rawBody141_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody141_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody141_53 : StackLang.HolProg 64 :=
.seq rawBody141_51 rawBody141_52

def rawBody141_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody141_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody141_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_57 : StackLang.HolProg 64 :=
.seq rawBody141_55 rawBody141_56

def rawBody141_58 : StackLang.HolProg 64 :=
.seq rawBody141_54 rawBody141_57

def rawBody141_59 : StackLang.HolProg 64 :=
.seq rawBody141_53 rawBody141_58

def rawBody141_60 : StackLang.HolProg 64 :=
.seq rawBody141_50 rawBody141_59

def rawBody141_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_63 : StackLang.HolProg 64 :=
.seq rawBody141_61 rawBody141_62

def rawBody141_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody141_60 rawBody141_63

def rawBody141_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def rawBody141_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody141_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def rawBody141_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody141_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody141_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_74 : StackLang.HolProg 64 :=
.seq rawBody141_72 rawBody141_73

def rawBody141_75 : StackLang.HolProg 64 :=
.seq rawBody141_71 rawBody141_74

def rawBody141_76 : StackLang.HolProg 64 :=
.seq rawBody141_70 rawBody141_75

def rawBody141_77 : StackLang.HolProg 64 :=
.seq rawBody141_69 rawBody141_76

def rawBody141_78 : StackLang.HolProg 64 :=
.seq rawBody141_68 rawBody141_77

def rawBody141_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_81 : StackLang.HolProg 64 :=
.seq rawBody141_79 rawBody141_80

def rawBody141_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody141_78 rawBody141_81

def rawBody141_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody141_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody141_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody141_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody141_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody141_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody141_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody141_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody141_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_111 : StackLang.HolProg 64 :=
.seq rawBody141_109 rawBody141_110

def rawBody141_112 : StackLang.HolProg 64 :=
.seq rawBody141_108 rawBody141_111

def rawBody141_113 : StackLang.HolProg 64 :=
.seq rawBody141_107 rawBody141_112

def rawBody141_114 : StackLang.HolProg 64 :=
.seq rawBody141_106 rawBody141_113

def rawBody141_115 : StackLang.HolProg 64 :=
.seq rawBody141_105 rawBody141_114

def rawBody141_116 : StackLang.HolProg 64 :=
.seq rawBody141_104 rawBody141_115

def rawBody141_117 : StackLang.HolProg 64 :=
.seq rawBody141_103 rawBody141_116

def rawBody141_118 : StackLang.HolProg 64 :=
.seq rawBody141_102 rawBody141_117

def rawBody141_119 : StackLang.HolProg 64 :=
.seq rawBody141_101 rawBody141_118

def rawBody141_120 : StackLang.HolProg 64 :=
.seq rawBody141_100 rawBody141_119

def rawBody141_121 : StackLang.HolProg 64 :=
.seq rawBody141_99 rawBody141_120

def rawBody141_122 : StackLang.HolProg 64 :=
.seq rawBody141_98 rawBody141_121

def rawBody141_123 : StackLang.HolProg 64 :=
.seq rawBody141_97 rawBody141_122

def rawBody141_124 : StackLang.HolProg 64 :=
.seq rawBody141_96 rawBody141_123

def rawBody141_125 : StackLang.HolProg 64 :=
.seq rawBody141_95 rawBody141_124

def rawBody141_126 : StackLang.HolProg 64 :=
.seq rawBody141_94 rawBody141_125

def rawBody141_127 : StackLang.HolProg 64 :=
.seq rawBody141_93 rawBody141_126

def rawBody141_128 : StackLang.HolProg 64 :=
.seq rawBody141_92 rawBody141_127

def rawBody141_129 : StackLang.HolProg 64 :=
.seq rawBody141_91 rawBody141_128

def rawBody141_130 : StackLang.HolProg 64 :=
.seq rawBody141_90 rawBody141_129

def rawBody141_131 : StackLang.HolProg 64 :=
.seq rawBody141_89 rawBody141_130

def rawBody141_132 : StackLang.HolProg 64 :=
.seq rawBody141_88 rawBody141_131

def rawBody141_133 : StackLang.HolProg 64 :=
.seq rawBody141_87 rawBody141_132

def rawBody141_134 : StackLang.HolProg 64 :=
.seq rawBody141_86 rawBody141_133

def rawBody141_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody141_137 : StackLang.HolProg 64 :=
.seq rawBody141_135 rawBody141_136

def rawBody141_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody141_134 rawBody141_137

def rawBody141_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody141_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody141_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody141_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody141_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody141_144 : StackLang.HolProg 64 :=
.seq rawBody141_142 rawBody141_143

def rawBody141_145 : StackLang.HolProg 64 :=
.seq rawBody141_141 rawBody141_144

def rawBody141_146 : StackLang.HolProg 64 :=
.seq rawBody141_140 rawBody141_145

def rawBody141_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody141_148 : StackLang.HolProg 64 :=
.seq rawBody141_146 rawBody141_147

def rawBody141_149 : StackLang.HolProg 64 :=
.seq rawBody141_139 rawBody141_148

def rawBody141_150 : StackLang.HolProg 64 :=
.seq rawBody141_138 rawBody141_149

def rawBody141_151 : StackLang.HolProg 64 :=
.seq rawBody141_85 rawBody141_150

def rawBody141_152 : StackLang.HolProg 64 :=
.seq rawBody141_84 rawBody141_151

def rawBody141_153 : StackLang.HolProg 64 :=
.seq rawBody141_83 rawBody141_152

def rawBody141_154 : StackLang.HolProg 64 :=
.seq rawBody141_82 rawBody141_153

def rawBody141_155 : StackLang.HolProg 64 :=
.seq rawBody141_67 rawBody141_154

def rawBody141_156 : StackLang.HolProg 64 :=
.seq rawBody141_66 rawBody141_155

def rawBody141_157 : StackLang.HolProg 64 :=
.seq rawBody141_65 rawBody141_156

def rawBody141_158 : StackLang.HolProg 64 :=
.seq rawBody141_64 rawBody141_157

def rawBody141_159 : StackLang.HolProg 64 :=
.seq rawBody141_49 rawBody141_158

def rawBody141_160 : StackLang.HolProg 64 :=
.seq rawBody141_48 rawBody141_159

def rawBody141_161 : StackLang.HolProg 64 :=
.seq rawBody141_47 rawBody141_160

def rawBody141_162 : StackLang.HolProg 64 :=
.seq rawBody141_46 rawBody141_161

def rawBody141_163 : StackLang.HolProg 64 :=
.seq rawBody141_31 rawBody141_162

def rawBody141_164 : StackLang.HolProg 64 :=
.seq rawBody141_30 rawBody141_163

def rawBody141_165 : StackLang.HolProg 64 :=
.seq rawBody141_29 rawBody141_164

def rawBody141_166 : StackLang.HolProg 64 :=
.seq rawBody141_28 rawBody141_165

def rawBody141_167 : StackLang.HolProg 64 :=
.seq rawBody141_27 rawBody141_166

def rawBody141_168 : StackLang.HolProg 64 :=
.seq rawBody141_26 rawBody141_167

def rawBody141_169 : StackLang.HolProg 64 :=
.seq rawBody141_25 rawBody141_168

def rawBody141_170 : StackLang.HolProg 64 :=
.seq rawBody141_24 rawBody141_169

def rawBody141_171 : StackLang.HolProg 64 :=
.seq rawBody141_23 rawBody141_170

def rawBody141_172 : StackLang.HolProg 64 :=
.seq rawBody141_8 rawBody141_171

def rawBody141_173 : StackLang.HolProg 64 :=
.seq rawBody141_7 rawBody141_172

def rawBody141_174 : StackLang.HolProg 64 :=
.seq rawBody141_0 rawBody141_173

def raw141 : StackLang.HolProg 64 := rawBody141_174
theorem raw141_eq : StackRawCall.compTop RawInfo.rawInfo (function141 (.list [])).1 = raw141 := by
  kernel_rfl
#print axioms raw141_eq
end InitECandidate.Proofs.BackendStages
