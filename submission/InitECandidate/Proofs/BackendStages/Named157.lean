import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed157
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody157_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody157_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody157_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody157_3 : StackLang.HolProg 64 :=
.seq NamedBody157_1 NamedBody157_2

def NamedBody157_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody157_3 NamedBody157_4

def NamedBody157_6 : StackLang.HolProg 64 :=
.seq NamedBody157_0 NamedBody157_5

def NamedBody157_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody157_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 12 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody157_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody157_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody157_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 136#64)

def NamedBody157_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody157_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody157_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody157_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody157_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody157_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody157_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody157_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody157_32 : StackLang.HolProg 64 :=
.seq NamedBody157_30 NamedBody157_31

def NamedBody157_33 : StackLang.HolProg 64 :=
.seq NamedBody157_29 NamedBody157_32

def NamedBody157_34 : StackLang.HolProg 64 :=
.seq NamedBody157_28 NamedBody157_33

def NamedBody157_35 : StackLang.HolProg 64 :=
.seq NamedBody157_27 NamedBody157_34

def NamedBody157_36 : StackLang.HolProg 64 :=
.seq NamedBody157_26 NamedBody157_35

def NamedBody157_37 : StackLang.HolProg 64 :=
.seq NamedBody157_25 NamedBody157_36

def NamedBody157_38 : StackLang.HolProg 64 :=
.seq NamedBody157_24 NamedBody157_37

def NamedBody157_39 : StackLang.HolProg 64 :=
.seq NamedBody157_23 NamedBody157_38

def NamedBody157_40 : StackLang.HolProg 64 :=
.seq NamedBody157_22 NamedBody157_39

def NamedBody157_41 : StackLang.HolProg 64 :=
.seq NamedBody157_21 NamedBody157_40

def NamedBody157_42 : StackLang.HolProg 64 :=
.seq NamedBody157_20 NamedBody157_41

def NamedBody157_43 : StackLang.HolProg 64 :=
.seq NamedBody157_19 NamedBody157_42

def NamedBody157_44 : StackLang.HolProg 64 :=
.seq NamedBody157_18 NamedBody157_43

def NamedBody157_45 : StackLang.HolProg 64 :=
.seq NamedBody157_17 NamedBody157_44

def NamedBody157_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody157_48 : StackLang.HolProg 64 :=
.seq NamedBody157_46 NamedBody157_47

def NamedBody157_49 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody157_45 NamedBody157_48

def NamedBody157_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_52 : StackLang.HolProg 64 :=
.seq NamedBody157_50 NamedBody157_51

def NamedBody157_53 : StackLang.HolProg 64 :=
.seq NamedBody157_49 NamedBody157_52

def NamedBody157_54 : StackLang.HolProg 64 :=
.seq NamedBody157_16 NamedBody157_53

def NamedBody157_55 : StackLang.HolProg 64 :=
.seq NamedBody157_15 NamedBody157_54

def NamedBody157_56 : StackLang.HolProg 64 :=
.loop NamedBody157_55

def NamedBody157_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_59 : StackLang.HolProg 64 :=
.seq NamedBody157_57 NamedBody157_58

def NamedBody157_60 : StackLang.HolProg 64 :=
.seq NamedBody157_56 NamedBody157_59

def NamedBody157_61 : StackLang.HolProg 64 :=
.seq NamedBody157_14 NamedBody157_60

def NamedBody157_62 : StackLang.HolProg 64 :=
.seq NamedBody157_13 NamedBody157_61

def NamedBody157_63 : StackLang.HolProg 64 :=
.seq NamedBody157_12 NamedBody157_62

def NamedBody157_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody157_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 136#64)

def NamedBody157_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody157_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody157_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 0#64))

def NamedBody157_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody157_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody157_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody157_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def NamedBody157_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody157_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody157_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody157_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def NamedBody157_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody157_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 28
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody157_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def NamedBody157_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def NamedBody157_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody157_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 27
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 0#64))

def NamedBody157_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 27 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody157_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody157_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 27
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody157_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 27 28
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody157_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 27)))

def NamedBody157_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody157_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def NamedBody157_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody157_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody157_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody157_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody157_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody157_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody157_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody157_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody157_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody157_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody157_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody157_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody157_127 : StackLang.HolProg 64 :=
.seq NamedBody157_125 NamedBody157_126

def NamedBody157_128 : StackLang.HolProg 64 :=
.seq NamedBody157_124 NamedBody157_127

def NamedBody157_129 : StackLang.HolProg 64 :=
.seq NamedBody157_123 NamedBody157_128

def NamedBody157_130 : StackLang.HolProg 64 :=
.seq NamedBody157_122 NamedBody157_129

def NamedBody157_131 : StackLang.HolProg 64 :=
.seq NamedBody157_121 NamedBody157_130

def NamedBody157_132 : StackLang.HolProg 64 :=
.seq NamedBody157_120 NamedBody157_131

def NamedBody157_133 : StackLang.HolProg 64 :=
.seq NamedBody157_119 NamedBody157_132

def NamedBody157_134 : StackLang.HolProg 64 :=
.seq NamedBody157_118 NamedBody157_133

def NamedBody157_135 : StackLang.HolProg 64 :=
.seq NamedBody157_117 NamedBody157_134

def NamedBody157_136 : StackLang.HolProg 64 :=
.seq NamedBody157_116 NamedBody157_135

def NamedBody157_137 : StackLang.HolProg 64 :=
.seq NamedBody157_115 NamedBody157_136

def NamedBody157_138 : StackLang.HolProg 64 :=
.seq NamedBody157_114 NamedBody157_137

def NamedBody157_139 : StackLang.HolProg 64 :=
.seq NamedBody157_113 NamedBody157_138

def NamedBody157_140 : StackLang.HolProg 64 :=
.seq NamedBody157_112 NamedBody157_139

def NamedBody157_141 : StackLang.HolProg 64 :=
.seq NamedBody157_111 NamedBody157_140

def NamedBody157_142 : StackLang.HolProg 64 :=
.seq NamedBody157_110 NamedBody157_141

def NamedBody157_143 : StackLang.HolProg 64 :=
.seq NamedBody157_109 NamedBody157_142

def NamedBody157_144 : StackLang.HolProg 64 :=
.seq NamedBody157_108 NamedBody157_143

def NamedBody157_145 : StackLang.HolProg 64 :=
.seq NamedBody157_107 NamedBody157_144

def NamedBody157_146 : StackLang.HolProg 64 :=
.seq NamedBody157_106 NamedBody157_145

def NamedBody157_147 : StackLang.HolProg 64 :=
.seq NamedBody157_105 NamedBody157_146

def NamedBody157_148 : StackLang.HolProg 64 :=
.seq NamedBody157_104 NamedBody157_147

def NamedBody157_149 : StackLang.HolProg 64 :=
.seq NamedBody157_103 NamedBody157_148

def NamedBody157_150 : StackLang.HolProg 64 :=
.seq NamedBody157_102 NamedBody157_149

def NamedBody157_151 : StackLang.HolProg 64 :=
.seq NamedBody157_101 NamedBody157_150

def NamedBody157_152 : StackLang.HolProg 64 :=
.seq NamedBody157_100 NamedBody157_151

def NamedBody157_153 : StackLang.HolProg 64 :=
.seq NamedBody157_99 NamedBody157_152

def NamedBody157_154 : StackLang.HolProg 64 :=
.seq NamedBody157_98 NamedBody157_153

def NamedBody157_155 : StackLang.HolProg 64 :=
.seq NamedBody157_97 NamedBody157_154

def NamedBody157_156 : StackLang.HolProg 64 :=
.seq NamedBody157_96 NamedBody157_155

def NamedBody157_157 : StackLang.HolProg 64 :=
.seq NamedBody157_95 NamedBody157_156

def NamedBody157_158 : StackLang.HolProg 64 :=
.seq NamedBody157_94 NamedBody157_157

def NamedBody157_159 : StackLang.HolProg 64 :=
.seq NamedBody157_93 NamedBody157_158

def NamedBody157_160 : StackLang.HolProg 64 :=
.seq NamedBody157_92 NamedBody157_159

def NamedBody157_161 : StackLang.HolProg 64 :=
.seq NamedBody157_91 NamedBody157_160

def NamedBody157_162 : StackLang.HolProg 64 :=
.seq NamedBody157_90 NamedBody157_161

def NamedBody157_163 : StackLang.HolProg 64 :=
.seq NamedBody157_89 NamedBody157_162

def NamedBody157_164 : StackLang.HolProg 64 :=
.seq NamedBody157_88 NamedBody157_163

def NamedBody157_165 : StackLang.HolProg 64 :=
.seq NamedBody157_87 NamedBody157_164

def NamedBody157_166 : StackLang.HolProg 64 :=
.seq NamedBody157_86 NamedBody157_165

def NamedBody157_167 : StackLang.HolProg 64 :=
.seq NamedBody157_85 NamedBody157_166

def NamedBody157_168 : StackLang.HolProg 64 :=
.seq NamedBody157_84 NamedBody157_167

def NamedBody157_169 : StackLang.HolProg 64 :=
.seq NamedBody157_83 NamedBody157_168

def NamedBody157_170 : StackLang.HolProg 64 :=
.seq NamedBody157_82 NamedBody157_169

def NamedBody157_171 : StackLang.HolProg 64 :=
.seq NamedBody157_81 NamedBody157_170

def NamedBody157_172 : StackLang.HolProg 64 :=
.seq NamedBody157_80 NamedBody157_171

def NamedBody157_173 : StackLang.HolProg 64 :=
.seq NamedBody157_79 NamedBody157_172

def NamedBody157_174 : StackLang.HolProg 64 :=
.seq NamedBody157_78 NamedBody157_173

def NamedBody157_175 : StackLang.HolProg 64 :=
.seq NamedBody157_77 NamedBody157_174

def NamedBody157_176 : StackLang.HolProg 64 :=
.seq NamedBody157_76 NamedBody157_175

def NamedBody157_177 : StackLang.HolProg 64 :=
.seq NamedBody157_75 NamedBody157_176

def NamedBody157_178 : StackLang.HolProg 64 :=
.seq NamedBody157_74 NamedBody157_177

def NamedBody157_179 : StackLang.HolProg 64 :=
.seq NamedBody157_73 NamedBody157_178

def NamedBody157_180 : StackLang.HolProg 64 :=
.seq NamedBody157_72 NamedBody157_179

def NamedBody157_181 : StackLang.HolProg 64 :=
.seq NamedBody157_71 NamedBody157_180

def NamedBody157_182 : StackLang.HolProg 64 :=
.seq NamedBody157_70 NamedBody157_181

def NamedBody157_183 : StackLang.HolProg 64 :=
.seq NamedBody157_69 NamedBody157_182

def NamedBody157_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody157_186 : StackLang.HolProg 64 :=
.seq NamedBody157_184 NamedBody157_185

def NamedBody157_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody157_183 NamedBody157_186

def NamedBody157_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_190 : StackLang.HolProg 64 :=
.seq NamedBody157_188 NamedBody157_189

def NamedBody157_191 : StackLang.HolProg 64 :=
.seq NamedBody157_187 NamedBody157_190

def NamedBody157_192 : StackLang.HolProg 64 :=
.seq NamedBody157_68 NamedBody157_191

def NamedBody157_193 : StackLang.HolProg 64 :=
.seq NamedBody157_67 NamedBody157_192

def NamedBody157_194 : StackLang.HolProg 64 :=
.loop NamedBody157_193

def NamedBody157_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_197 : StackLang.HolProg 64 :=
.seq NamedBody157_195 NamedBody157_196

def NamedBody157_198 : StackLang.HolProg 64 :=
.seq NamedBody157_194 NamedBody157_197

def NamedBody157_199 : StackLang.HolProg 64 :=
.seq NamedBody157_66 NamedBody157_198

def NamedBody157_200 : StackLang.HolProg 64 :=
.seq NamedBody157_65 NamedBody157_199

def NamedBody157_201 : StackLang.HolProg 64 :=
.seq NamedBody157_64 NamedBody157_200

def NamedBody157_202 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody157_63 NamedBody157_201

def NamedBody157_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 140#64)

def NamedBody157_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody157_208 : StackLang.HolProg 64 :=
.seq NamedBody157_206 NamedBody157_207

def NamedBody157_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody157_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody157_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody157_212 : StackLang.HolProg 64 :=
.seq NamedBody157_210 NamedBody157_211

def NamedBody157_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_214 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody157_212 NamedBody157_213

def NamedBody157_215 : StackLang.HolProg 64 :=
.seq NamedBody157_209 NamedBody157_214

def NamedBody157_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody157_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody157_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 157 3

def NamedBody157_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody157_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody157_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody157_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody157_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody157_225 : StackLang.HolProg 64 :=
.seq NamedBody157_223 NamedBody157_224

def NamedBody157_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody157_227 : StackLang.HolProg 64 :=
.seq NamedBody157_225 NamedBody157_226

def NamedBody157_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody157_229 : StackLang.HolProg 64 :=
.seq NamedBody157_227 NamedBody157_228

def NamedBody157_230 : StackLang.HolProg 64 :=
.seq NamedBody157_222 NamedBody157_229

def NamedBody157_231 : StackLang.HolProg 64 :=
.seq NamedBody157_221 NamedBody157_230

def NamedBody157_232 : StackLang.HolProg 64 :=
.seq NamedBody157_220 NamedBody157_231

def NamedBody157_233 : StackLang.HolProg 64 :=
.seq NamedBody157_219 NamedBody157_232

def NamedBody157_234 : StackLang.HolProg 64 :=
.seq NamedBody157_218 NamedBody157_233

def NamedBody157_235 : StackLang.HolProg 64 :=
.seq NamedBody157_217 NamedBody157_234

def NamedBody157_236 : StackLang.HolProg 64 :=
.seq NamedBody157_216 NamedBody157_235

def NamedBody157_237 : StackLang.HolProg 64 :=
.seq NamedBody157_215 NamedBody157_236

def NamedBody157_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody157_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody157_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody157_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody157_245 : StackLang.HolProg 64 :=
.seq NamedBody157_243 NamedBody157_244

def NamedBody157_246 : StackLang.HolProg 64 :=
.seq NamedBody157_242 NamedBody157_245

def NamedBody157_247 : StackLang.HolProg 64 :=
.seq NamedBody157_241 NamedBody157_246

def NamedBody157_248 : StackLang.HolProg 64 :=
.seq NamedBody157_240 NamedBody157_247

def NamedBody157_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody157_250 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody157_251 : StackLang.HolProg 64 :=
.seq NamedBody157_249 NamedBody157_250

def NamedBody157_252 : StackLang.HolProg 64 :=
.call (some (NamedBody157_248, 1, 157, 2)) (Sum.inl 156) (some (NamedBody157_251, 157, 3))

def NamedBody157_253 : StackLang.HolProg 64 :=
.seq NamedBody157_239 NamedBody157_252

def NamedBody157_254 : StackLang.HolProg 64 :=
.seq NamedBody157_238 NamedBody157_253

def NamedBody157_255 : StackLang.HolProg 64 :=
.seq NamedBody157_237 NamedBody157_254

def NamedBody157_256 : StackLang.HolProg 64 :=
.seq NamedBody157_208 NamedBody157_255

def NamedBody157_257 : StackLang.HolProg 64 :=
.seq NamedBody157_205 NamedBody157_256

def NamedBody157_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody157_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody157_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody157_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody157_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody157_263 : StackLang.HolProg 64 :=
.seq NamedBody157_261 NamedBody157_262

def NamedBody157_264 : StackLang.HolProg 64 :=
.seq NamedBody157_260 NamedBody157_263

def NamedBody157_265 : StackLang.HolProg 64 :=
.seq NamedBody157_259 NamedBody157_264

def NamedBody157_266 : StackLang.HolProg 64 :=
.seq NamedBody157_258 NamedBody157_265

def NamedBody157_267 : StackLang.HolProg 64 :=
.seq NamedBody157_257 NamedBody157_266

def NamedBody157_268 : StackLang.HolProg 64 :=
.seq NamedBody157_204 NamedBody157_267

def NamedBody157_269 : StackLang.HolProg 64 :=
.seq NamedBody157_203 NamedBody157_268

def NamedBody157_270 : StackLang.HolProg 64 :=
.seq NamedBody157_202 NamedBody157_269

def NamedBody157_271 : StackLang.HolProg 64 :=
.seq NamedBody157_11 NamedBody157_270

def NamedBody157_272 : StackLang.HolProg 64 :=
.seq NamedBody157_10 NamedBody157_271

def NamedBody157_273 : StackLang.HolProg 64 :=
.seq NamedBody157_9 NamedBody157_272

def NamedBody157_274 : StackLang.HolProg 64 :=
.seq NamedBody157_8 NamedBody157_273

def NamedBody157_275 : StackLang.HolProg 64 :=
.seq NamedBody157_7 NamedBody157_274

def NamedBody157_276 : StackLang.HolProg 64 :=
.seq NamedBody157_6 NamedBody157_275

def Named157 : Nat × StackLang.HolProg 64 := (157, NamedBody157_276)
theorem Named157_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed157 = Named157 := by
  kernel_rfl
#print axioms Named157_eq
end InitECandidate.Proofs.BackendStages
