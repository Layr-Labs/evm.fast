import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function157
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody157_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody157_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def rawBody157_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody157_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody157_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody157_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def rawBody157_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody157_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody157_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody157_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody157_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody157_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody157_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody157_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody157_26 : StackLang.HolProg 64 :=
.seq rawBody157_24 rawBody157_25

def rawBody157_27 : StackLang.HolProg 64 :=
.seq rawBody157_23 rawBody157_26

def rawBody157_28 : StackLang.HolProg 64 :=
.seq rawBody157_22 rawBody157_27

def rawBody157_29 : StackLang.HolProg 64 :=
.seq rawBody157_21 rawBody157_28

def rawBody157_30 : StackLang.HolProg 64 :=
.seq rawBody157_20 rawBody157_29

def rawBody157_31 : StackLang.HolProg 64 :=
.seq rawBody157_19 rawBody157_30

def rawBody157_32 : StackLang.HolProg 64 :=
.seq rawBody157_18 rawBody157_31

def rawBody157_33 : StackLang.HolProg 64 :=
.seq rawBody157_17 rawBody157_32

def rawBody157_34 : StackLang.HolProg 64 :=
.seq rawBody157_16 rawBody157_33

def rawBody157_35 : StackLang.HolProg 64 :=
.seq rawBody157_15 rawBody157_34

def rawBody157_36 : StackLang.HolProg 64 :=
.seq rawBody157_14 rawBody157_35

def rawBody157_37 : StackLang.HolProg 64 :=
.seq rawBody157_13 rawBody157_36

def rawBody157_38 : StackLang.HolProg 64 :=
.seq rawBody157_12 rawBody157_37

def rawBody157_39 : StackLang.HolProg 64 :=
.seq rawBody157_11 rawBody157_38

def rawBody157_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody157_42 : StackLang.HolProg 64 :=
.seq rawBody157_40 rawBody157_41

def rawBody157_43 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody157_39 rawBody157_42

def rawBody157_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_46 : StackLang.HolProg 64 :=
.seq rawBody157_44 rawBody157_45

def rawBody157_47 : StackLang.HolProg 64 :=
.seq rawBody157_43 rawBody157_46

def rawBody157_48 : StackLang.HolProg 64 :=
.seq rawBody157_10 rawBody157_47

def rawBody157_49 : StackLang.HolProg 64 :=
.seq rawBody157_9 rawBody157_48

def rawBody157_50 : StackLang.HolProg 64 :=
.loop rawBody157_49

def rawBody157_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_53 : StackLang.HolProg 64 :=
.seq rawBody157_51 rawBody157_52

def rawBody157_54 : StackLang.HolProg 64 :=
.seq rawBody157_50 rawBody157_53

def rawBody157_55 : StackLang.HolProg 64 :=
.seq rawBody157_8 rawBody157_54

def rawBody157_56 : StackLang.HolProg 64 :=
.seq rawBody157_7 rawBody157_55

def rawBody157_57 : StackLang.HolProg 64 :=
.seq rawBody157_6 rawBody157_56

def rawBody157_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody157_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 136#64)

def rawBody157_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody157_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody157_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def rawBody157_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody157_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody157_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody157_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody157_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody157_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody157_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody157_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def rawBody157_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody157_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def rawBody157_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody157_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def rawBody157_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def rawBody157_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def rawBody157_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody157_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody157_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody157_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody157_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def rawBody157_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody157_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody157_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody157_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody157_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody157_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody157_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody157_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody157_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody157_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody157_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody157_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def rawBody157_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody157_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody157_121 : StackLang.HolProg 64 :=
.seq rawBody157_119 rawBody157_120

def rawBody157_122 : StackLang.HolProg 64 :=
.seq rawBody157_118 rawBody157_121

def rawBody157_123 : StackLang.HolProg 64 :=
.seq rawBody157_117 rawBody157_122

def rawBody157_124 : StackLang.HolProg 64 :=
.seq rawBody157_116 rawBody157_123

def rawBody157_125 : StackLang.HolProg 64 :=
.seq rawBody157_115 rawBody157_124

def rawBody157_126 : StackLang.HolProg 64 :=
.seq rawBody157_114 rawBody157_125

def rawBody157_127 : StackLang.HolProg 64 :=
.seq rawBody157_113 rawBody157_126

def rawBody157_128 : StackLang.HolProg 64 :=
.seq rawBody157_112 rawBody157_127

def rawBody157_129 : StackLang.HolProg 64 :=
.seq rawBody157_111 rawBody157_128

def rawBody157_130 : StackLang.HolProg 64 :=
.seq rawBody157_110 rawBody157_129

def rawBody157_131 : StackLang.HolProg 64 :=
.seq rawBody157_109 rawBody157_130

def rawBody157_132 : StackLang.HolProg 64 :=
.seq rawBody157_108 rawBody157_131

def rawBody157_133 : StackLang.HolProg 64 :=
.seq rawBody157_107 rawBody157_132

def rawBody157_134 : StackLang.HolProg 64 :=
.seq rawBody157_106 rawBody157_133

def rawBody157_135 : StackLang.HolProg 64 :=
.seq rawBody157_105 rawBody157_134

def rawBody157_136 : StackLang.HolProg 64 :=
.seq rawBody157_104 rawBody157_135

def rawBody157_137 : StackLang.HolProg 64 :=
.seq rawBody157_103 rawBody157_136

def rawBody157_138 : StackLang.HolProg 64 :=
.seq rawBody157_102 rawBody157_137

def rawBody157_139 : StackLang.HolProg 64 :=
.seq rawBody157_101 rawBody157_138

def rawBody157_140 : StackLang.HolProg 64 :=
.seq rawBody157_100 rawBody157_139

def rawBody157_141 : StackLang.HolProg 64 :=
.seq rawBody157_99 rawBody157_140

def rawBody157_142 : StackLang.HolProg 64 :=
.seq rawBody157_98 rawBody157_141

def rawBody157_143 : StackLang.HolProg 64 :=
.seq rawBody157_97 rawBody157_142

def rawBody157_144 : StackLang.HolProg 64 :=
.seq rawBody157_96 rawBody157_143

def rawBody157_145 : StackLang.HolProg 64 :=
.seq rawBody157_95 rawBody157_144

def rawBody157_146 : StackLang.HolProg 64 :=
.seq rawBody157_94 rawBody157_145

def rawBody157_147 : StackLang.HolProg 64 :=
.seq rawBody157_93 rawBody157_146

def rawBody157_148 : StackLang.HolProg 64 :=
.seq rawBody157_92 rawBody157_147

def rawBody157_149 : StackLang.HolProg 64 :=
.seq rawBody157_91 rawBody157_148

def rawBody157_150 : StackLang.HolProg 64 :=
.seq rawBody157_90 rawBody157_149

def rawBody157_151 : StackLang.HolProg 64 :=
.seq rawBody157_89 rawBody157_150

def rawBody157_152 : StackLang.HolProg 64 :=
.seq rawBody157_88 rawBody157_151

def rawBody157_153 : StackLang.HolProg 64 :=
.seq rawBody157_87 rawBody157_152

def rawBody157_154 : StackLang.HolProg 64 :=
.seq rawBody157_86 rawBody157_153

def rawBody157_155 : StackLang.HolProg 64 :=
.seq rawBody157_85 rawBody157_154

def rawBody157_156 : StackLang.HolProg 64 :=
.seq rawBody157_84 rawBody157_155

def rawBody157_157 : StackLang.HolProg 64 :=
.seq rawBody157_83 rawBody157_156

def rawBody157_158 : StackLang.HolProg 64 :=
.seq rawBody157_82 rawBody157_157

def rawBody157_159 : StackLang.HolProg 64 :=
.seq rawBody157_81 rawBody157_158

def rawBody157_160 : StackLang.HolProg 64 :=
.seq rawBody157_80 rawBody157_159

def rawBody157_161 : StackLang.HolProg 64 :=
.seq rawBody157_79 rawBody157_160

def rawBody157_162 : StackLang.HolProg 64 :=
.seq rawBody157_78 rawBody157_161

def rawBody157_163 : StackLang.HolProg 64 :=
.seq rawBody157_77 rawBody157_162

def rawBody157_164 : StackLang.HolProg 64 :=
.seq rawBody157_76 rawBody157_163

def rawBody157_165 : StackLang.HolProg 64 :=
.seq rawBody157_75 rawBody157_164

def rawBody157_166 : StackLang.HolProg 64 :=
.seq rawBody157_74 rawBody157_165

def rawBody157_167 : StackLang.HolProg 64 :=
.seq rawBody157_73 rawBody157_166

def rawBody157_168 : StackLang.HolProg 64 :=
.seq rawBody157_72 rawBody157_167

def rawBody157_169 : StackLang.HolProg 64 :=
.seq rawBody157_71 rawBody157_168

def rawBody157_170 : StackLang.HolProg 64 :=
.seq rawBody157_70 rawBody157_169

def rawBody157_171 : StackLang.HolProg 64 :=
.seq rawBody157_69 rawBody157_170

def rawBody157_172 : StackLang.HolProg 64 :=
.seq rawBody157_68 rawBody157_171

def rawBody157_173 : StackLang.HolProg 64 :=
.seq rawBody157_67 rawBody157_172

def rawBody157_174 : StackLang.HolProg 64 :=
.seq rawBody157_66 rawBody157_173

def rawBody157_175 : StackLang.HolProg 64 :=
.seq rawBody157_65 rawBody157_174

def rawBody157_176 : StackLang.HolProg 64 :=
.seq rawBody157_64 rawBody157_175

def rawBody157_177 : StackLang.HolProg 64 :=
.seq rawBody157_63 rawBody157_176

def rawBody157_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody157_180 : StackLang.HolProg 64 :=
.seq rawBody157_178 rawBody157_179

def rawBody157_181 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody157_177 rawBody157_180

def rawBody157_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_184 : StackLang.HolProg 64 :=
.seq rawBody157_182 rawBody157_183

def rawBody157_185 : StackLang.HolProg 64 :=
.seq rawBody157_181 rawBody157_184

def rawBody157_186 : StackLang.HolProg 64 :=
.seq rawBody157_62 rawBody157_185

def rawBody157_187 : StackLang.HolProg 64 :=
.seq rawBody157_61 rawBody157_186

def rawBody157_188 : StackLang.HolProg 64 :=
.loop rawBody157_187

def rawBody157_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_191 : StackLang.HolProg 64 :=
.seq rawBody157_189 rawBody157_190

def rawBody157_192 : StackLang.HolProg 64 :=
.seq rawBody157_188 rawBody157_191

def rawBody157_193 : StackLang.HolProg 64 :=
.seq rawBody157_60 rawBody157_192

def rawBody157_194 : StackLang.HolProg 64 :=
.seq rawBody157_59 rawBody157_193

def rawBody157_195 : StackLang.HolProg 64 :=
.seq rawBody157_58 rawBody157_194

def rawBody157_196 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody157_57 rawBody157_195

def rawBody157_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 140#64)

def rawBody157_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody157_202 : StackLang.HolProg 64 :=
.seq rawBody157_200 rawBody157_201

def rawBody157_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody157_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody157_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody157_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 157 3

def rawBody157_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody157_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody157_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody157_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody157_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody157_213 : StackLang.HolProg 64 :=
.seq rawBody157_211 rawBody157_212

def rawBody157_214 : StackLang.HolProg 64 :=
.seq rawBody157_210 rawBody157_213

def rawBody157_215 : StackLang.HolProg 64 :=
.seq rawBody157_209 rawBody157_214

def rawBody157_216 : StackLang.HolProg 64 :=
.seq rawBody157_208 rawBody157_215

def rawBody157_217 : StackLang.HolProg 64 :=
.seq rawBody157_207 rawBody157_216

def rawBody157_218 : StackLang.HolProg 64 :=
.seq rawBody157_206 rawBody157_217

def rawBody157_219 : StackLang.HolProg 64 :=
.seq rawBody157_205 rawBody157_218

def rawBody157_220 : StackLang.HolProg 64 :=
.seq rawBody157_204 rawBody157_219

def rawBody157_221 : StackLang.HolProg 64 :=
.seq rawBody157_203 rawBody157_220

def rawBody157_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody157_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody157_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody157_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody157_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody157_229 : StackLang.HolProg 64 :=
.seq rawBody157_227 rawBody157_228

def rawBody157_230 : StackLang.HolProg 64 :=
.seq rawBody157_226 rawBody157_229

def rawBody157_231 : StackLang.HolProg 64 :=
.seq rawBody157_225 rawBody157_230

def rawBody157_232 : StackLang.HolProg 64 :=
.seq rawBody157_224 rawBody157_231

def rawBody157_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody157_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody157_235 : StackLang.HolProg 64 :=
.seq rawBody157_233 rawBody157_234

def rawBody157_236 : StackLang.HolProg 64 :=
.call (some (rawBody157_232, 0, 157, 2)) (Sum.inl 156) (some (rawBody157_235, 157, 3))

def rawBody157_237 : StackLang.HolProg 64 :=
.seq rawBody157_223 rawBody157_236

def rawBody157_238 : StackLang.HolProg 64 :=
.seq rawBody157_222 rawBody157_237

def rawBody157_239 : StackLang.HolProg 64 :=
.seq rawBody157_221 rawBody157_238

def rawBody157_240 : StackLang.HolProg 64 :=
.seq rawBody157_202 rawBody157_239

def rawBody157_241 : StackLang.HolProg 64 :=
.seq rawBody157_199 rawBody157_240

def rawBody157_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody157_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody157_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody157_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody157_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody157_247 : StackLang.HolProg 64 :=
.seq rawBody157_245 rawBody157_246

def rawBody157_248 : StackLang.HolProg 64 :=
.seq rawBody157_244 rawBody157_247

def rawBody157_249 : StackLang.HolProg 64 :=
.seq rawBody157_243 rawBody157_248

def rawBody157_250 : StackLang.HolProg 64 :=
.seq rawBody157_242 rawBody157_249

def rawBody157_251 : StackLang.HolProg 64 :=
.seq rawBody157_241 rawBody157_250

def rawBody157_252 : StackLang.HolProg 64 :=
.seq rawBody157_198 rawBody157_251

def rawBody157_253 : StackLang.HolProg 64 :=
.seq rawBody157_197 rawBody157_252

def rawBody157_254 : StackLang.HolProg 64 :=
.seq rawBody157_196 rawBody157_253

def rawBody157_255 : StackLang.HolProg 64 :=
.seq rawBody157_5 rawBody157_254

def rawBody157_256 : StackLang.HolProg 64 :=
.seq rawBody157_4 rawBody157_255

def rawBody157_257 : StackLang.HolProg 64 :=
.seq rawBody157_3 rawBody157_256

def rawBody157_258 : StackLang.HolProg 64 :=
.seq rawBody157_2 rawBody157_257

def rawBody157_259 : StackLang.HolProg 64 :=
.seq rawBody157_1 rawBody157_258

def rawBody157_260 : StackLang.HolProg 64 :=
.seq rawBody157_0 rawBody157_259

def raw157 : StackLang.HolProg 64 := rawBody157_260
theorem raw157_eq : StackRawCall.compTop RawInfo.rawInfo (function157 (.list [])).1 = raw157 := by
  kernel_rfl
#print axioms raw157_eq
end InitECandidate.Proofs.BackendStages
