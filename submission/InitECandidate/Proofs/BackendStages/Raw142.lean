import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function142
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody142_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody142_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody142_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody142_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_5 : StackLang.HolProg 64 :=
.seq rawBody142_3 rawBody142_4

def rawBody142_6 : StackLang.HolProg 64 :=
.seq rawBody142_2 rawBody142_5

def rawBody142_7 : StackLang.HolProg 64 :=
.seq rawBody142_1 rawBody142_6

def rawBody142_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody142_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody142_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody142_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody142_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody142_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody142_16 : StackLang.HolProg 64 :=
.seq rawBody142_14 rawBody142_15

def rawBody142_17 : StackLang.HolProg 64 :=
.seq rawBody142_13 rawBody142_16

def rawBody142_18 : StackLang.HolProg 64 :=
.seq rawBody142_12 rawBody142_17

def rawBody142_19 : StackLang.HolProg 64 :=
.seq rawBody142_11 rawBody142_18

def rawBody142_20 : StackLang.HolProg 64 :=
.seq rawBody142_10 rawBody142_19

def rawBody142_21 : StackLang.HolProg 64 :=
.seq rawBody142_9 rawBody142_20

def rawBody142_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody142_21 rawBody142_22

def rawBody142_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody142_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody142_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody142_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody142_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody142_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody142_36 : StackLang.HolProg 64 :=
.seq rawBody142_34 rawBody142_35

def rawBody142_37 : StackLang.HolProg 64 :=
.seq rawBody142_33 rawBody142_36

def rawBody142_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody142_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_40 : StackLang.HolProg 64 :=
.seq rawBody142_38 rawBody142_39

def rawBody142_41 : StackLang.HolProg 64 :=
.seq rawBody142_37 rawBody142_40

def rawBody142_42 : StackLang.HolProg 64 :=
.seq rawBody142_32 rawBody142_41

def rawBody142_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_45 : StackLang.HolProg 64 :=
.seq rawBody142_43 rawBody142_44

def rawBody142_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody142_42 rawBody142_45

def rawBody142_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 2#64)

def rawBody142_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody142_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody142_53 : StackLang.HolProg 64 :=
.seq rawBody142_51 rawBody142_52

def rawBody142_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody142_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody142_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_57 : StackLang.HolProg 64 :=
.seq rawBody142_55 rawBody142_56

def rawBody142_58 : StackLang.HolProg 64 :=
.seq rawBody142_54 rawBody142_57

def rawBody142_59 : StackLang.HolProg 64 :=
.seq rawBody142_53 rawBody142_58

def rawBody142_60 : StackLang.HolProg 64 :=
.seq rawBody142_50 rawBody142_59

def rawBody142_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_63 : StackLang.HolProg 64 :=
.seq rawBody142_61 rawBody142_62

def rawBody142_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody142_60 rawBody142_63

def rawBody142_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3#64)

def rawBody142_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody142_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody142_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody142_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody142_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_74 : StackLang.HolProg 64 :=
.seq rawBody142_72 rawBody142_73

def rawBody142_75 : StackLang.HolProg 64 :=
.seq rawBody142_71 rawBody142_74

def rawBody142_76 : StackLang.HolProg 64 :=
.seq rawBody142_70 rawBody142_75

def rawBody142_77 : StackLang.HolProg 64 :=
.seq rawBody142_69 rawBody142_76

def rawBody142_78 : StackLang.HolProg 64 :=
.seq rawBody142_68 rawBody142_77

def rawBody142_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_81 : StackLang.HolProg 64 :=
.seq rawBody142_79 rawBody142_80

def rawBody142_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody142_78 rawBody142_81

def rawBody142_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody142_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def rawBody142_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody142_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody142_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody142_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody142_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody142_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody142_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_111 : StackLang.HolProg 64 :=
.seq rawBody142_109 rawBody142_110

def rawBody142_112 : StackLang.HolProg 64 :=
.seq rawBody142_108 rawBody142_111

def rawBody142_113 : StackLang.HolProg 64 :=
.seq rawBody142_107 rawBody142_112

def rawBody142_114 : StackLang.HolProg 64 :=
.seq rawBody142_106 rawBody142_113

def rawBody142_115 : StackLang.HolProg 64 :=
.seq rawBody142_105 rawBody142_114

def rawBody142_116 : StackLang.HolProg 64 :=
.seq rawBody142_104 rawBody142_115

def rawBody142_117 : StackLang.HolProg 64 :=
.seq rawBody142_103 rawBody142_116

def rawBody142_118 : StackLang.HolProg 64 :=
.seq rawBody142_102 rawBody142_117

def rawBody142_119 : StackLang.HolProg 64 :=
.seq rawBody142_101 rawBody142_118

def rawBody142_120 : StackLang.HolProg 64 :=
.seq rawBody142_100 rawBody142_119

def rawBody142_121 : StackLang.HolProg 64 :=
.seq rawBody142_99 rawBody142_120

def rawBody142_122 : StackLang.HolProg 64 :=
.seq rawBody142_98 rawBody142_121

def rawBody142_123 : StackLang.HolProg 64 :=
.seq rawBody142_97 rawBody142_122

def rawBody142_124 : StackLang.HolProg 64 :=
.seq rawBody142_96 rawBody142_123

def rawBody142_125 : StackLang.HolProg 64 :=
.seq rawBody142_95 rawBody142_124

def rawBody142_126 : StackLang.HolProg 64 :=
.seq rawBody142_94 rawBody142_125

def rawBody142_127 : StackLang.HolProg 64 :=
.seq rawBody142_93 rawBody142_126

def rawBody142_128 : StackLang.HolProg 64 :=
.seq rawBody142_92 rawBody142_127

def rawBody142_129 : StackLang.HolProg 64 :=
.seq rawBody142_91 rawBody142_128

def rawBody142_130 : StackLang.HolProg 64 :=
.seq rawBody142_90 rawBody142_129

def rawBody142_131 : StackLang.HolProg 64 :=
.seq rawBody142_89 rawBody142_130

def rawBody142_132 : StackLang.HolProg 64 :=
.seq rawBody142_88 rawBody142_131

def rawBody142_133 : StackLang.HolProg 64 :=
.seq rawBody142_87 rawBody142_132

def rawBody142_134 : StackLang.HolProg 64 :=
.seq rawBody142_86 rawBody142_133

def rawBody142_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody142_137 : StackLang.HolProg 64 :=
.seq rawBody142_135 rawBody142_136

def rawBody142_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody142_134 rawBody142_137

def rawBody142_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody142_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody142_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody142_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody142_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody142_144 : StackLang.HolProg 64 :=
.seq rawBody142_142 rawBody142_143

def rawBody142_145 : StackLang.HolProg 64 :=
.seq rawBody142_141 rawBody142_144

def rawBody142_146 : StackLang.HolProg 64 :=
.seq rawBody142_140 rawBody142_145

def rawBody142_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody142_148 : StackLang.HolProg 64 :=
.seq rawBody142_146 rawBody142_147

def rawBody142_149 : StackLang.HolProg 64 :=
.seq rawBody142_139 rawBody142_148

def rawBody142_150 : StackLang.HolProg 64 :=
.seq rawBody142_138 rawBody142_149

def rawBody142_151 : StackLang.HolProg 64 :=
.seq rawBody142_85 rawBody142_150

def rawBody142_152 : StackLang.HolProg 64 :=
.seq rawBody142_84 rawBody142_151

def rawBody142_153 : StackLang.HolProg 64 :=
.seq rawBody142_83 rawBody142_152

def rawBody142_154 : StackLang.HolProg 64 :=
.seq rawBody142_82 rawBody142_153

def rawBody142_155 : StackLang.HolProg 64 :=
.seq rawBody142_67 rawBody142_154

def rawBody142_156 : StackLang.HolProg 64 :=
.seq rawBody142_66 rawBody142_155

def rawBody142_157 : StackLang.HolProg 64 :=
.seq rawBody142_65 rawBody142_156

def rawBody142_158 : StackLang.HolProg 64 :=
.seq rawBody142_64 rawBody142_157

def rawBody142_159 : StackLang.HolProg 64 :=
.seq rawBody142_49 rawBody142_158

def rawBody142_160 : StackLang.HolProg 64 :=
.seq rawBody142_48 rawBody142_159

def rawBody142_161 : StackLang.HolProg 64 :=
.seq rawBody142_47 rawBody142_160

def rawBody142_162 : StackLang.HolProg 64 :=
.seq rawBody142_46 rawBody142_161

def rawBody142_163 : StackLang.HolProg 64 :=
.seq rawBody142_31 rawBody142_162

def rawBody142_164 : StackLang.HolProg 64 :=
.seq rawBody142_30 rawBody142_163

def rawBody142_165 : StackLang.HolProg 64 :=
.seq rawBody142_29 rawBody142_164

def rawBody142_166 : StackLang.HolProg 64 :=
.seq rawBody142_28 rawBody142_165

def rawBody142_167 : StackLang.HolProg 64 :=
.seq rawBody142_27 rawBody142_166

def rawBody142_168 : StackLang.HolProg 64 :=
.seq rawBody142_26 rawBody142_167

def rawBody142_169 : StackLang.HolProg 64 :=
.seq rawBody142_25 rawBody142_168

def rawBody142_170 : StackLang.HolProg 64 :=
.seq rawBody142_24 rawBody142_169

def rawBody142_171 : StackLang.HolProg 64 :=
.seq rawBody142_23 rawBody142_170

def rawBody142_172 : StackLang.HolProg 64 :=
.seq rawBody142_8 rawBody142_171

def rawBody142_173 : StackLang.HolProg 64 :=
.seq rawBody142_7 rawBody142_172

def rawBody142_174 : StackLang.HolProg 64 :=
.seq rawBody142_0 rawBody142_173

def raw142 : StackLang.HolProg 64 := rawBody142_174
theorem raw142_eq : StackRawCall.compTop RawInfo.rawInfo (function142 (.list [])).1 = raw142 := by
  kernel_rfl
#print axioms raw142_eq
end InitECandidate.Proofs.BackendStages
