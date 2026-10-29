import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed141
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody141_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody141_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody141_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_5 : StackLang.HolProg 64 :=
.seq NamedBody141_3 NamedBody141_4

def NamedBody141_6 : StackLang.HolProg 64 :=
.seq NamedBody141_2 NamedBody141_5

def NamedBody141_7 : StackLang.HolProg 64 :=
.seq NamedBody141_1 NamedBody141_6

def NamedBody141_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody141_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody141_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody141_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody141_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody141_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody141_16 : StackLang.HolProg 64 :=
.seq NamedBody141_14 NamedBody141_15

def NamedBody141_17 : StackLang.HolProg 64 :=
.seq NamedBody141_13 NamedBody141_16

def NamedBody141_18 : StackLang.HolProg 64 :=
.seq NamedBody141_12 NamedBody141_17

def NamedBody141_19 : StackLang.HolProg 64 :=
.seq NamedBody141_11 NamedBody141_18

def NamedBody141_20 : StackLang.HolProg 64 :=
.seq NamedBody141_10 NamedBody141_19

def NamedBody141_21 : StackLang.HolProg 64 :=
.seq NamedBody141_9 NamedBody141_20

def NamedBody141_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody141_21 NamedBody141_22

def NamedBody141_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody141_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 11 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody141_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 1#64)

def NamedBody141_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody141_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody141_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody141_36 : StackLang.HolProg 64 :=
.seq NamedBody141_34 NamedBody141_35

def NamedBody141_37 : StackLang.HolProg 64 :=
.seq NamedBody141_33 NamedBody141_36

def NamedBody141_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody141_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_40 : StackLang.HolProg 64 :=
.seq NamedBody141_38 NamedBody141_39

def NamedBody141_41 : StackLang.HolProg 64 :=
.seq NamedBody141_37 NamedBody141_40

def NamedBody141_42 : StackLang.HolProg 64 :=
.seq NamedBody141_32 NamedBody141_41

def NamedBody141_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_45 : StackLang.HolProg 64 :=
.seq NamedBody141_43 NamedBody141_44

def NamedBody141_46 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody141_42 NamedBody141_45

def NamedBody141_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 2#64)

def NamedBody141_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody141_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody141_53 : StackLang.HolProg 64 :=
.seq NamedBody141_51 NamedBody141_52

def NamedBody141_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody141_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody141_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_57 : StackLang.HolProg 64 :=
.seq NamedBody141_55 NamedBody141_56

def NamedBody141_58 : StackLang.HolProg 64 :=
.seq NamedBody141_54 NamedBody141_57

def NamedBody141_59 : StackLang.HolProg 64 :=
.seq NamedBody141_53 NamedBody141_58

def NamedBody141_60 : StackLang.HolProg 64 :=
.seq NamedBody141_50 NamedBody141_59

def NamedBody141_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_63 : StackLang.HolProg 64 :=
.seq NamedBody141_61 NamedBody141_62

def NamedBody141_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody141_60 NamedBody141_63

def NamedBody141_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 3#64)

def NamedBody141_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody141_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 0#64)

def NamedBody141_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody141_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody141_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_74 : StackLang.HolProg 64 :=
.seq NamedBody141_72 NamedBody141_73

def NamedBody141_75 : StackLang.HolProg 64 :=
.seq NamedBody141_71 NamedBody141_74

def NamedBody141_76 : StackLang.HolProg 64 :=
.seq NamedBody141_70 NamedBody141_75

def NamedBody141_77 : StackLang.HolProg 64 :=
.seq NamedBody141_69 NamedBody141_76

def NamedBody141_78 : StackLang.HolProg 64 :=
.seq NamedBody141_68 NamedBody141_77

def NamedBody141_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_81 : StackLang.HolProg 64 :=
.seq NamedBody141_79 NamedBody141_80

def NamedBody141_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12) NamedBody141_78 NamedBody141_81

def NamedBody141_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody141_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 64#64)

def NamedBody141_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody141_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody141_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody141_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody141_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody141_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody141_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_111 : StackLang.HolProg 64 :=
.seq NamedBody141_109 NamedBody141_110

def NamedBody141_112 : StackLang.HolProg 64 :=
.seq NamedBody141_108 NamedBody141_111

def NamedBody141_113 : StackLang.HolProg 64 :=
.seq NamedBody141_107 NamedBody141_112

def NamedBody141_114 : StackLang.HolProg 64 :=
.seq NamedBody141_106 NamedBody141_113

def NamedBody141_115 : StackLang.HolProg 64 :=
.seq NamedBody141_105 NamedBody141_114

def NamedBody141_116 : StackLang.HolProg 64 :=
.seq NamedBody141_104 NamedBody141_115

def NamedBody141_117 : StackLang.HolProg 64 :=
.seq NamedBody141_103 NamedBody141_116

def NamedBody141_118 : StackLang.HolProg 64 :=
.seq NamedBody141_102 NamedBody141_117

def NamedBody141_119 : StackLang.HolProg 64 :=
.seq NamedBody141_101 NamedBody141_118

def NamedBody141_120 : StackLang.HolProg 64 :=
.seq NamedBody141_100 NamedBody141_119

def NamedBody141_121 : StackLang.HolProg 64 :=
.seq NamedBody141_99 NamedBody141_120

def NamedBody141_122 : StackLang.HolProg 64 :=
.seq NamedBody141_98 NamedBody141_121

def NamedBody141_123 : StackLang.HolProg 64 :=
.seq NamedBody141_97 NamedBody141_122

def NamedBody141_124 : StackLang.HolProg 64 :=
.seq NamedBody141_96 NamedBody141_123

def NamedBody141_125 : StackLang.HolProg 64 :=
.seq NamedBody141_95 NamedBody141_124

def NamedBody141_126 : StackLang.HolProg 64 :=
.seq NamedBody141_94 NamedBody141_125

def NamedBody141_127 : StackLang.HolProg 64 :=
.seq NamedBody141_93 NamedBody141_126

def NamedBody141_128 : StackLang.HolProg 64 :=
.seq NamedBody141_92 NamedBody141_127

def NamedBody141_129 : StackLang.HolProg 64 :=
.seq NamedBody141_91 NamedBody141_128

def NamedBody141_130 : StackLang.HolProg 64 :=
.seq NamedBody141_90 NamedBody141_129

def NamedBody141_131 : StackLang.HolProg 64 :=
.seq NamedBody141_89 NamedBody141_130

def NamedBody141_132 : StackLang.HolProg 64 :=
.seq NamedBody141_88 NamedBody141_131

def NamedBody141_133 : StackLang.HolProg 64 :=
.seq NamedBody141_87 NamedBody141_132

def NamedBody141_134 : StackLang.HolProg 64 :=
.seq NamedBody141_86 NamedBody141_133

def NamedBody141_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody141_137 : StackLang.HolProg 64 :=
.seq NamedBody141_135 NamedBody141_136

def NamedBody141_138 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody141_134 NamedBody141_137

def NamedBody141_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody141_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody141_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody141_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody141_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody141_144 : StackLang.HolProg 64 :=
.seq NamedBody141_142 NamedBody141_143

def NamedBody141_145 : StackLang.HolProg 64 :=
.seq NamedBody141_141 NamedBody141_144

def NamedBody141_146 : StackLang.HolProg 64 :=
.seq NamedBody141_140 NamedBody141_145

def NamedBody141_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody141_148 : StackLang.HolProg 64 :=
.seq NamedBody141_146 NamedBody141_147

def NamedBody141_149 : StackLang.HolProg 64 :=
.seq NamedBody141_139 NamedBody141_148

def NamedBody141_150 : StackLang.HolProg 64 :=
.seq NamedBody141_138 NamedBody141_149

def NamedBody141_151 : StackLang.HolProg 64 :=
.seq NamedBody141_85 NamedBody141_150

def NamedBody141_152 : StackLang.HolProg 64 :=
.seq NamedBody141_84 NamedBody141_151

def NamedBody141_153 : StackLang.HolProg 64 :=
.seq NamedBody141_83 NamedBody141_152

def NamedBody141_154 : StackLang.HolProg 64 :=
.seq NamedBody141_82 NamedBody141_153

def NamedBody141_155 : StackLang.HolProg 64 :=
.seq NamedBody141_67 NamedBody141_154

def NamedBody141_156 : StackLang.HolProg 64 :=
.seq NamedBody141_66 NamedBody141_155

def NamedBody141_157 : StackLang.HolProg 64 :=
.seq NamedBody141_65 NamedBody141_156

def NamedBody141_158 : StackLang.HolProg 64 :=
.seq NamedBody141_64 NamedBody141_157

def NamedBody141_159 : StackLang.HolProg 64 :=
.seq NamedBody141_49 NamedBody141_158

def NamedBody141_160 : StackLang.HolProg 64 :=
.seq NamedBody141_48 NamedBody141_159

def NamedBody141_161 : StackLang.HolProg 64 :=
.seq NamedBody141_47 NamedBody141_160

def NamedBody141_162 : StackLang.HolProg 64 :=
.seq NamedBody141_46 NamedBody141_161

def NamedBody141_163 : StackLang.HolProg 64 :=
.seq NamedBody141_31 NamedBody141_162

def NamedBody141_164 : StackLang.HolProg 64 :=
.seq NamedBody141_30 NamedBody141_163

def NamedBody141_165 : StackLang.HolProg 64 :=
.seq NamedBody141_29 NamedBody141_164

def NamedBody141_166 : StackLang.HolProg 64 :=
.seq NamedBody141_28 NamedBody141_165

def NamedBody141_167 : StackLang.HolProg 64 :=
.seq NamedBody141_27 NamedBody141_166

def NamedBody141_168 : StackLang.HolProg 64 :=
.seq NamedBody141_26 NamedBody141_167

def NamedBody141_169 : StackLang.HolProg 64 :=
.seq NamedBody141_25 NamedBody141_168

def NamedBody141_170 : StackLang.HolProg 64 :=
.seq NamedBody141_24 NamedBody141_169

def NamedBody141_171 : StackLang.HolProg 64 :=
.seq NamedBody141_23 NamedBody141_170

def NamedBody141_172 : StackLang.HolProg 64 :=
.seq NamedBody141_8 NamedBody141_171

def NamedBody141_173 : StackLang.HolProg 64 :=
.seq NamedBody141_7 NamedBody141_172

def NamedBody141_174 : StackLang.HolProg 64 :=
.seq NamedBody141_0 NamedBody141_173

def Named141 : Nat × StackLang.HolProg 64 := (141, NamedBody141_174)
theorem Named141_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed141 = Named141 := by
  kernel_rfl
#print axioms Named141_eq
end InitECandidate.Proofs.BackendStages
