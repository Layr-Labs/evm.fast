import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw157
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody157_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody157_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody157_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody157_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody157_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody157_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def AllocBody157_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody157_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody157_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody157_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody157_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody157_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody157_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody157_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody157_26 : StackLang.HolProg 64 :=
.seq AllocBody157_24 AllocBody157_25

def AllocBody157_27 : StackLang.HolProg 64 :=
.seq AllocBody157_23 AllocBody157_26

def AllocBody157_28 : StackLang.HolProg 64 :=
.seq AllocBody157_22 AllocBody157_27

def AllocBody157_29 : StackLang.HolProg 64 :=
.seq AllocBody157_21 AllocBody157_28

def AllocBody157_30 : StackLang.HolProg 64 :=
.seq AllocBody157_20 AllocBody157_29

def AllocBody157_31 : StackLang.HolProg 64 :=
.seq AllocBody157_19 AllocBody157_30

def AllocBody157_32 : StackLang.HolProg 64 :=
.seq AllocBody157_18 AllocBody157_31

def AllocBody157_33 : StackLang.HolProg 64 :=
.seq AllocBody157_17 AllocBody157_32

def AllocBody157_34 : StackLang.HolProg 64 :=
.seq AllocBody157_16 AllocBody157_33

def AllocBody157_35 : StackLang.HolProg 64 :=
.seq AllocBody157_15 AllocBody157_34

def AllocBody157_36 : StackLang.HolProg 64 :=
.seq AllocBody157_14 AllocBody157_35

def AllocBody157_37 : StackLang.HolProg 64 :=
.seq AllocBody157_13 AllocBody157_36

def AllocBody157_38 : StackLang.HolProg 64 :=
.seq AllocBody157_12 AllocBody157_37

def AllocBody157_39 : StackLang.HolProg 64 :=
.seq AllocBody157_11 AllocBody157_38

def AllocBody157_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody157_42 : StackLang.HolProg 64 :=
.seq AllocBody157_40 AllocBody157_41

def AllocBody157_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody157_39 AllocBody157_42

def AllocBody157_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_46 : StackLang.HolProg 64 :=
.seq AllocBody157_44 AllocBody157_45

def AllocBody157_47 : StackLang.HolProg 64 :=
.seq AllocBody157_43 AllocBody157_46

def AllocBody157_48 : StackLang.HolProg 64 :=
.seq AllocBody157_10 AllocBody157_47

def AllocBody157_49 : StackLang.HolProg 64 :=
.seq AllocBody157_9 AllocBody157_48

def AllocBody157_50 : StackLang.HolProg 64 :=
.loop AllocBody157_49

def AllocBody157_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_53 : StackLang.HolProg 64 :=
.seq AllocBody157_51 AllocBody157_52

def AllocBody157_54 : StackLang.HolProg 64 :=
.seq AllocBody157_50 AllocBody157_53

def AllocBody157_55 : StackLang.HolProg 64 :=
.seq AllocBody157_8 AllocBody157_54

def AllocBody157_56 : StackLang.HolProg 64 :=
.seq AllocBody157_7 AllocBody157_55

def AllocBody157_57 : StackLang.HolProg 64 :=
.seq AllocBody157_6 AllocBody157_56

def AllocBody157_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody157_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def AllocBody157_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody157_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody157_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def AllocBody157_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody157_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody157_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody157_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody157_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody157_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody157_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody157_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def AllocBody157_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody157_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody157_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def AllocBody157_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody157_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody157_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def AllocBody157_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody157_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody157_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody157_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody157_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def AllocBody157_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody157_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def AllocBody157_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def AllocBody157_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody157_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def AllocBody157_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody157_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody157_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody157_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody157_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody157_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody157_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody157_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody157_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody157_121 : StackLang.HolProg 64 :=
.seq AllocBody157_119 AllocBody157_120

def AllocBody157_122 : StackLang.HolProg 64 :=
.seq AllocBody157_118 AllocBody157_121

def AllocBody157_123 : StackLang.HolProg 64 :=
.seq AllocBody157_117 AllocBody157_122

def AllocBody157_124 : StackLang.HolProg 64 :=
.seq AllocBody157_116 AllocBody157_123

def AllocBody157_125 : StackLang.HolProg 64 :=
.seq AllocBody157_115 AllocBody157_124

def AllocBody157_126 : StackLang.HolProg 64 :=
.seq AllocBody157_114 AllocBody157_125

def AllocBody157_127 : StackLang.HolProg 64 :=
.seq AllocBody157_113 AllocBody157_126

def AllocBody157_128 : StackLang.HolProg 64 :=
.seq AllocBody157_112 AllocBody157_127

def AllocBody157_129 : StackLang.HolProg 64 :=
.seq AllocBody157_111 AllocBody157_128

def AllocBody157_130 : StackLang.HolProg 64 :=
.seq AllocBody157_110 AllocBody157_129

def AllocBody157_131 : StackLang.HolProg 64 :=
.seq AllocBody157_109 AllocBody157_130

def AllocBody157_132 : StackLang.HolProg 64 :=
.seq AllocBody157_108 AllocBody157_131

def AllocBody157_133 : StackLang.HolProg 64 :=
.seq AllocBody157_107 AllocBody157_132

def AllocBody157_134 : StackLang.HolProg 64 :=
.seq AllocBody157_106 AllocBody157_133

def AllocBody157_135 : StackLang.HolProg 64 :=
.seq AllocBody157_105 AllocBody157_134

def AllocBody157_136 : StackLang.HolProg 64 :=
.seq AllocBody157_104 AllocBody157_135

def AllocBody157_137 : StackLang.HolProg 64 :=
.seq AllocBody157_103 AllocBody157_136

def AllocBody157_138 : StackLang.HolProg 64 :=
.seq AllocBody157_102 AllocBody157_137

def AllocBody157_139 : StackLang.HolProg 64 :=
.seq AllocBody157_101 AllocBody157_138

def AllocBody157_140 : StackLang.HolProg 64 :=
.seq AllocBody157_100 AllocBody157_139

def AllocBody157_141 : StackLang.HolProg 64 :=
.seq AllocBody157_99 AllocBody157_140

def AllocBody157_142 : StackLang.HolProg 64 :=
.seq AllocBody157_98 AllocBody157_141

def AllocBody157_143 : StackLang.HolProg 64 :=
.seq AllocBody157_97 AllocBody157_142

def AllocBody157_144 : StackLang.HolProg 64 :=
.seq AllocBody157_96 AllocBody157_143

def AllocBody157_145 : StackLang.HolProg 64 :=
.seq AllocBody157_95 AllocBody157_144

def AllocBody157_146 : StackLang.HolProg 64 :=
.seq AllocBody157_94 AllocBody157_145

def AllocBody157_147 : StackLang.HolProg 64 :=
.seq AllocBody157_93 AllocBody157_146

def AllocBody157_148 : StackLang.HolProg 64 :=
.seq AllocBody157_92 AllocBody157_147

def AllocBody157_149 : StackLang.HolProg 64 :=
.seq AllocBody157_91 AllocBody157_148

def AllocBody157_150 : StackLang.HolProg 64 :=
.seq AllocBody157_90 AllocBody157_149

def AllocBody157_151 : StackLang.HolProg 64 :=
.seq AllocBody157_89 AllocBody157_150

def AllocBody157_152 : StackLang.HolProg 64 :=
.seq AllocBody157_88 AllocBody157_151

def AllocBody157_153 : StackLang.HolProg 64 :=
.seq AllocBody157_87 AllocBody157_152

def AllocBody157_154 : StackLang.HolProg 64 :=
.seq AllocBody157_86 AllocBody157_153

def AllocBody157_155 : StackLang.HolProg 64 :=
.seq AllocBody157_85 AllocBody157_154

def AllocBody157_156 : StackLang.HolProg 64 :=
.seq AllocBody157_84 AllocBody157_155

def AllocBody157_157 : StackLang.HolProg 64 :=
.seq AllocBody157_83 AllocBody157_156

def AllocBody157_158 : StackLang.HolProg 64 :=
.seq AllocBody157_82 AllocBody157_157

def AllocBody157_159 : StackLang.HolProg 64 :=
.seq AllocBody157_81 AllocBody157_158

def AllocBody157_160 : StackLang.HolProg 64 :=
.seq AllocBody157_80 AllocBody157_159

def AllocBody157_161 : StackLang.HolProg 64 :=
.seq AllocBody157_79 AllocBody157_160

def AllocBody157_162 : StackLang.HolProg 64 :=
.seq AllocBody157_78 AllocBody157_161

def AllocBody157_163 : StackLang.HolProg 64 :=
.seq AllocBody157_77 AllocBody157_162

def AllocBody157_164 : StackLang.HolProg 64 :=
.seq AllocBody157_76 AllocBody157_163

def AllocBody157_165 : StackLang.HolProg 64 :=
.seq AllocBody157_75 AllocBody157_164

def AllocBody157_166 : StackLang.HolProg 64 :=
.seq AllocBody157_74 AllocBody157_165

def AllocBody157_167 : StackLang.HolProg 64 :=
.seq AllocBody157_73 AllocBody157_166

def AllocBody157_168 : StackLang.HolProg 64 :=
.seq AllocBody157_72 AllocBody157_167

def AllocBody157_169 : StackLang.HolProg 64 :=
.seq AllocBody157_71 AllocBody157_168

def AllocBody157_170 : StackLang.HolProg 64 :=
.seq AllocBody157_70 AllocBody157_169

def AllocBody157_171 : StackLang.HolProg 64 :=
.seq AllocBody157_69 AllocBody157_170

def AllocBody157_172 : StackLang.HolProg 64 :=
.seq AllocBody157_68 AllocBody157_171

def AllocBody157_173 : StackLang.HolProg 64 :=
.seq AllocBody157_67 AllocBody157_172

def AllocBody157_174 : StackLang.HolProg 64 :=
.seq AllocBody157_66 AllocBody157_173

def AllocBody157_175 : StackLang.HolProg 64 :=
.seq AllocBody157_65 AllocBody157_174

def AllocBody157_176 : StackLang.HolProg 64 :=
.seq AllocBody157_64 AllocBody157_175

def AllocBody157_177 : StackLang.HolProg 64 :=
.seq AllocBody157_63 AllocBody157_176

def AllocBody157_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody157_180 : StackLang.HolProg 64 :=
.seq AllocBody157_178 AllocBody157_179

def AllocBody157_181 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) AllocBody157_177 AllocBody157_180

def AllocBody157_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_184 : StackLang.HolProg 64 :=
.seq AllocBody157_182 AllocBody157_183

def AllocBody157_185 : StackLang.HolProg 64 :=
.seq AllocBody157_181 AllocBody157_184

def AllocBody157_186 : StackLang.HolProg 64 :=
.seq AllocBody157_62 AllocBody157_185

def AllocBody157_187 : StackLang.HolProg 64 :=
.seq AllocBody157_61 AllocBody157_186

def AllocBody157_188 : StackLang.HolProg 64 :=
.loop AllocBody157_187

def AllocBody157_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_191 : StackLang.HolProg 64 :=
.seq AllocBody157_189 AllocBody157_190

def AllocBody157_192 : StackLang.HolProg 64 :=
.seq AllocBody157_188 AllocBody157_191

def AllocBody157_193 : StackLang.HolProg 64 :=
.seq AllocBody157_60 AllocBody157_192

def AllocBody157_194 : StackLang.HolProg 64 :=
.seq AllocBody157_59 AllocBody157_193

def AllocBody157_195 : StackLang.HolProg 64 :=
.seq AllocBody157_58 AllocBody157_194

def AllocBody157_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody157_57 AllocBody157_195

def AllocBody157_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 140#64)

def AllocBody157_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody157_202 : StackLang.HolProg 64 :=
.seq AllocBody157_200 AllocBody157_201

def AllocBody157_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody157_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody157_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody157_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 157 3

def AllocBody157_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody157_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody157_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody157_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody157_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody157_213 : StackLang.HolProg 64 :=
.seq AllocBody157_211 AllocBody157_212

def AllocBody157_214 : StackLang.HolProg 64 :=
.seq AllocBody157_210 AllocBody157_213

def AllocBody157_215 : StackLang.HolProg 64 :=
.seq AllocBody157_209 AllocBody157_214

def AllocBody157_216 : StackLang.HolProg 64 :=
.seq AllocBody157_208 AllocBody157_215

def AllocBody157_217 : StackLang.HolProg 64 :=
.seq AllocBody157_207 AllocBody157_216

def AllocBody157_218 : StackLang.HolProg 64 :=
.seq AllocBody157_206 AllocBody157_217

def AllocBody157_219 : StackLang.HolProg 64 :=
.seq AllocBody157_205 AllocBody157_218

def AllocBody157_220 : StackLang.HolProg 64 :=
.seq AllocBody157_204 AllocBody157_219

def AllocBody157_221 : StackLang.HolProg 64 :=
.seq AllocBody157_203 AllocBody157_220

def AllocBody157_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody157_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody157_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody157_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody157_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody157_229 : StackLang.HolProg 64 :=
.seq AllocBody157_227 AllocBody157_228

def AllocBody157_230 : StackLang.HolProg 64 :=
.seq AllocBody157_226 AllocBody157_229

def AllocBody157_231 : StackLang.HolProg 64 :=
.seq AllocBody157_225 AllocBody157_230

def AllocBody157_232 : StackLang.HolProg 64 :=
.seq AllocBody157_224 AllocBody157_231

def AllocBody157_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody157_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody157_235 : StackLang.HolProg 64 :=
.seq AllocBody157_233 AllocBody157_234

def AllocBody157_236 : StackLang.HolProg 64 :=
.call (some (AllocBody157_232, 0, 157, 2)) (Sum.inl 156) (some (AllocBody157_235, 157, 3))

def AllocBody157_237 : StackLang.HolProg 64 :=
.seq AllocBody157_223 AllocBody157_236

def AllocBody157_238 : StackLang.HolProg 64 :=
.seq AllocBody157_222 AllocBody157_237

def AllocBody157_239 : StackLang.HolProg 64 :=
.seq AllocBody157_221 AllocBody157_238

def AllocBody157_240 : StackLang.HolProg 64 :=
.seq AllocBody157_202 AllocBody157_239

def AllocBody157_241 : StackLang.HolProg 64 :=
.seq AllocBody157_199 AllocBody157_240

def AllocBody157_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody157_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody157_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody157_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody157_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody157_247 : StackLang.HolProg 64 :=
.seq AllocBody157_245 AllocBody157_246

def AllocBody157_248 : StackLang.HolProg 64 :=
.seq AllocBody157_244 AllocBody157_247

def AllocBody157_249 : StackLang.HolProg 64 :=
.seq AllocBody157_243 AllocBody157_248

def AllocBody157_250 : StackLang.HolProg 64 :=
.seq AllocBody157_242 AllocBody157_249

def AllocBody157_251 : StackLang.HolProg 64 :=
.seq AllocBody157_241 AllocBody157_250

def AllocBody157_252 : StackLang.HolProg 64 :=
.seq AllocBody157_198 AllocBody157_251

def AllocBody157_253 : StackLang.HolProg 64 :=
.seq AllocBody157_197 AllocBody157_252

def AllocBody157_254 : StackLang.HolProg 64 :=
.seq AllocBody157_196 AllocBody157_253

def AllocBody157_255 : StackLang.HolProg 64 :=
.seq AllocBody157_5 AllocBody157_254

def AllocBody157_256 : StackLang.HolProg 64 :=
.seq AllocBody157_4 AllocBody157_255

def AllocBody157_257 : StackLang.HolProg 64 :=
.seq AllocBody157_3 AllocBody157_256

def AllocBody157_258 : StackLang.HolProg 64 :=
.seq AllocBody157_2 AllocBody157_257

def AllocBody157_259 : StackLang.HolProg 64 :=
.seq AllocBody157_1 AllocBody157_258

def AllocBody157_260 : StackLang.HolProg 64 :=
.seq AllocBody157_0 AllocBody157_259

def Alloc157 : Nat × StackLang.HolProg 64 := (157, AllocBody157_260)
theorem Alloc157_eq : StackAlloc.progComp (157, raw157) = Alloc157 := by
  kernel_rfl
#print axioms Alloc157_eq
end InitECandidate.Proofs.BackendStages
