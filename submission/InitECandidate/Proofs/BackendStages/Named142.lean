import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed142
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody142_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody142_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody142_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_5 : StackLang.HolProg 64 :=
.seq NamedBody142_3 NamedBody142_4

def NamedBody142_6 : StackLang.HolProg 64 :=
.seq NamedBody142_2 NamedBody142_5

def NamedBody142_7 : StackLang.HolProg 64 :=
.seq NamedBody142_1 NamedBody142_6

def NamedBody142_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody142_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody142_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody142_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody142_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody142_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody142_16 : StackLang.HolProg 64 :=
.seq NamedBody142_14 NamedBody142_15

def NamedBody142_17 : StackLang.HolProg 64 :=
.seq NamedBody142_13 NamedBody142_16

def NamedBody142_18 : StackLang.HolProg 64 :=
.seq NamedBody142_12 NamedBody142_17

def NamedBody142_19 : StackLang.HolProg 64 :=
.seq NamedBody142_11 NamedBody142_18

def NamedBody142_20 : StackLang.HolProg 64 :=
.seq NamedBody142_10 NamedBody142_19

def NamedBody142_21 : StackLang.HolProg 64 :=
.seq NamedBody142_9 NamedBody142_20

def NamedBody142_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody142_21 NamedBody142_22

def NamedBody142_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody142_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody142_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody142_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody142_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody142_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody142_36 : StackLang.HolProg 64 :=
.seq NamedBody142_34 NamedBody142_35

def NamedBody142_37 : StackLang.HolProg 64 :=
.seq NamedBody142_33 NamedBody142_36

def NamedBody142_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody142_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_40 : StackLang.HolProg 64 :=
.seq NamedBody142_38 NamedBody142_39

def NamedBody142_41 : StackLang.HolProg 64 :=
.seq NamedBody142_37 NamedBody142_40

def NamedBody142_42 : StackLang.HolProg 64 :=
.seq NamedBody142_32 NamedBody142_41

def NamedBody142_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_45 : StackLang.HolProg 64 :=
.seq NamedBody142_43 NamedBody142_44

def NamedBody142_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody142_42 NamedBody142_45

def NamedBody142_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2#64)

def NamedBody142_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody142_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody142_53 : StackLang.HolProg 64 :=
.seq NamedBody142_51 NamedBody142_52

def NamedBody142_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody142_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody142_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_57 : StackLang.HolProg 64 :=
.seq NamedBody142_55 NamedBody142_56

def NamedBody142_58 : StackLang.HolProg 64 :=
.seq NamedBody142_54 NamedBody142_57

def NamedBody142_59 : StackLang.HolProg 64 :=
.seq NamedBody142_53 NamedBody142_58

def NamedBody142_60 : StackLang.HolProg 64 :=
.seq NamedBody142_50 NamedBody142_59

def NamedBody142_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_63 : StackLang.HolProg 64 :=
.seq NamedBody142_61 NamedBody142_62

def NamedBody142_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody142_60 NamedBody142_63

def NamedBody142_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3#64)

def NamedBody142_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody142_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody142_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody142_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody142_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_74 : StackLang.HolProg 64 :=
.seq NamedBody142_72 NamedBody142_73

def NamedBody142_75 : StackLang.HolProg 64 :=
.seq NamedBody142_71 NamedBody142_74

def NamedBody142_76 : StackLang.HolProg 64 :=
.seq NamedBody142_70 NamedBody142_75

def NamedBody142_77 : StackLang.HolProg 64 :=
.seq NamedBody142_69 NamedBody142_76

def NamedBody142_78 : StackLang.HolProg 64 :=
.seq NamedBody142_68 NamedBody142_77

def NamedBody142_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_81 : StackLang.HolProg 64 :=
.seq NamedBody142_79 NamedBody142_80

def NamedBody142_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody142_78 NamedBody142_81

def NamedBody142_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody142_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody142_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody142_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody142_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody142_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody142_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody142_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody142_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_111 : StackLang.HolProg 64 :=
.seq NamedBody142_109 NamedBody142_110

def NamedBody142_112 : StackLang.HolProg 64 :=
.seq NamedBody142_108 NamedBody142_111

def NamedBody142_113 : StackLang.HolProg 64 :=
.seq NamedBody142_107 NamedBody142_112

def NamedBody142_114 : StackLang.HolProg 64 :=
.seq NamedBody142_106 NamedBody142_113

def NamedBody142_115 : StackLang.HolProg 64 :=
.seq NamedBody142_105 NamedBody142_114

def NamedBody142_116 : StackLang.HolProg 64 :=
.seq NamedBody142_104 NamedBody142_115

def NamedBody142_117 : StackLang.HolProg 64 :=
.seq NamedBody142_103 NamedBody142_116

def NamedBody142_118 : StackLang.HolProg 64 :=
.seq NamedBody142_102 NamedBody142_117

def NamedBody142_119 : StackLang.HolProg 64 :=
.seq NamedBody142_101 NamedBody142_118

def NamedBody142_120 : StackLang.HolProg 64 :=
.seq NamedBody142_100 NamedBody142_119

def NamedBody142_121 : StackLang.HolProg 64 :=
.seq NamedBody142_99 NamedBody142_120

def NamedBody142_122 : StackLang.HolProg 64 :=
.seq NamedBody142_98 NamedBody142_121

def NamedBody142_123 : StackLang.HolProg 64 :=
.seq NamedBody142_97 NamedBody142_122

def NamedBody142_124 : StackLang.HolProg 64 :=
.seq NamedBody142_96 NamedBody142_123

def NamedBody142_125 : StackLang.HolProg 64 :=
.seq NamedBody142_95 NamedBody142_124

def NamedBody142_126 : StackLang.HolProg 64 :=
.seq NamedBody142_94 NamedBody142_125

def NamedBody142_127 : StackLang.HolProg 64 :=
.seq NamedBody142_93 NamedBody142_126

def NamedBody142_128 : StackLang.HolProg 64 :=
.seq NamedBody142_92 NamedBody142_127

def NamedBody142_129 : StackLang.HolProg 64 :=
.seq NamedBody142_91 NamedBody142_128

def NamedBody142_130 : StackLang.HolProg 64 :=
.seq NamedBody142_90 NamedBody142_129

def NamedBody142_131 : StackLang.HolProg 64 :=
.seq NamedBody142_89 NamedBody142_130

def NamedBody142_132 : StackLang.HolProg 64 :=
.seq NamedBody142_88 NamedBody142_131

def NamedBody142_133 : StackLang.HolProg 64 :=
.seq NamedBody142_87 NamedBody142_132

def NamedBody142_134 : StackLang.HolProg 64 :=
.seq NamedBody142_86 NamedBody142_133

def NamedBody142_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody142_137 : StackLang.HolProg 64 :=
.seq NamedBody142_135 NamedBody142_136

def NamedBody142_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody142_134 NamedBody142_137

def NamedBody142_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody142_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody142_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody142_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody142_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody142_144 : StackLang.HolProg 64 :=
.seq NamedBody142_142 NamedBody142_143

def NamedBody142_145 : StackLang.HolProg 64 :=
.seq NamedBody142_141 NamedBody142_144

def NamedBody142_146 : StackLang.HolProg 64 :=
.seq NamedBody142_140 NamedBody142_145

def NamedBody142_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody142_148 : StackLang.HolProg 64 :=
.seq NamedBody142_146 NamedBody142_147

def NamedBody142_149 : StackLang.HolProg 64 :=
.seq NamedBody142_139 NamedBody142_148

def NamedBody142_150 : StackLang.HolProg 64 :=
.seq NamedBody142_138 NamedBody142_149

def NamedBody142_151 : StackLang.HolProg 64 :=
.seq NamedBody142_85 NamedBody142_150

def NamedBody142_152 : StackLang.HolProg 64 :=
.seq NamedBody142_84 NamedBody142_151

def NamedBody142_153 : StackLang.HolProg 64 :=
.seq NamedBody142_83 NamedBody142_152

def NamedBody142_154 : StackLang.HolProg 64 :=
.seq NamedBody142_82 NamedBody142_153

def NamedBody142_155 : StackLang.HolProg 64 :=
.seq NamedBody142_67 NamedBody142_154

def NamedBody142_156 : StackLang.HolProg 64 :=
.seq NamedBody142_66 NamedBody142_155

def NamedBody142_157 : StackLang.HolProg 64 :=
.seq NamedBody142_65 NamedBody142_156

def NamedBody142_158 : StackLang.HolProg 64 :=
.seq NamedBody142_64 NamedBody142_157

def NamedBody142_159 : StackLang.HolProg 64 :=
.seq NamedBody142_49 NamedBody142_158

def NamedBody142_160 : StackLang.HolProg 64 :=
.seq NamedBody142_48 NamedBody142_159

def NamedBody142_161 : StackLang.HolProg 64 :=
.seq NamedBody142_47 NamedBody142_160

def NamedBody142_162 : StackLang.HolProg 64 :=
.seq NamedBody142_46 NamedBody142_161

def NamedBody142_163 : StackLang.HolProg 64 :=
.seq NamedBody142_31 NamedBody142_162

def NamedBody142_164 : StackLang.HolProg 64 :=
.seq NamedBody142_30 NamedBody142_163

def NamedBody142_165 : StackLang.HolProg 64 :=
.seq NamedBody142_29 NamedBody142_164

def NamedBody142_166 : StackLang.HolProg 64 :=
.seq NamedBody142_28 NamedBody142_165

def NamedBody142_167 : StackLang.HolProg 64 :=
.seq NamedBody142_27 NamedBody142_166

def NamedBody142_168 : StackLang.HolProg 64 :=
.seq NamedBody142_26 NamedBody142_167

def NamedBody142_169 : StackLang.HolProg 64 :=
.seq NamedBody142_25 NamedBody142_168

def NamedBody142_170 : StackLang.HolProg 64 :=
.seq NamedBody142_24 NamedBody142_169

def NamedBody142_171 : StackLang.HolProg 64 :=
.seq NamedBody142_23 NamedBody142_170

def NamedBody142_172 : StackLang.HolProg 64 :=
.seq NamedBody142_8 NamedBody142_171

def NamedBody142_173 : StackLang.HolProg 64 :=
.seq NamedBody142_7 NamedBody142_172

def NamedBody142_174 : StackLang.HolProg 64 :=
.seq NamedBody142_0 NamedBody142_173

def Named142 : Nat × StackLang.HolProg 64 := (142, NamedBody142_174)
theorem Named142_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed142 = Named142 := by
  kernel_rfl
#print axioms Named142_eq
end InitECandidate.Proofs.BackendStages
