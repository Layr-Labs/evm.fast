import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc406
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody406_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody406_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody406_3 : StackLang.HolProg 64 :=
.seq RemovedBody406_1 RemovedBody406_2

def RemovedBody406_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody406_3 RemovedBody406_4

def RemovedBody406_6 : StackLang.HolProg 64 :=
.seq RemovedBody406_0 RemovedBody406_5

def RemovedBody406_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody406_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody406_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody406_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody406_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def RemovedBody406_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody406_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody406_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_17 : StackLang.HolProg 64 :=
.seq RemovedBody406_15 RemovedBody406_16

def RemovedBody406_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1208#64)

def RemovedBody406_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_21 : StackLang.HolProg 64 :=
.seq RemovedBody406_19 RemovedBody406_20

def RemovedBody406_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody406_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody406_25 : StackLang.HolProg 64 :=
.seq RemovedBody406_23 RemovedBody406_24

def RemovedBody406_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_27 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody406_25 RemovedBody406_26

def RemovedBody406_28 : StackLang.HolProg 64 :=
.seq RemovedBody406_22 RemovedBody406_27

def RemovedBody406_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody406_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 3

def RemovedBody406_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody406_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody406_38 : StackLang.HolProg 64 :=
.seq RemovedBody406_36 RemovedBody406_37

def RemovedBody406_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody406_40 : StackLang.HolProg 64 :=
.seq RemovedBody406_38 RemovedBody406_39

def RemovedBody406_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_42 : StackLang.HolProg 64 :=
.seq RemovedBody406_40 RemovedBody406_41

def RemovedBody406_43 : StackLang.HolProg 64 :=
.seq RemovedBody406_35 RemovedBody406_42

def RemovedBody406_44 : StackLang.HolProg 64 :=
.seq RemovedBody406_34 RemovedBody406_43

def RemovedBody406_45 : StackLang.HolProg 64 :=
.seq RemovedBody406_33 RemovedBody406_44

def RemovedBody406_46 : StackLang.HolProg 64 :=
.seq RemovedBody406_32 RemovedBody406_45

def RemovedBody406_47 : StackLang.HolProg 64 :=
.seq RemovedBody406_31 RemovedBody406_46

def RemovedBody406_48 : StackLang.HolProg 64 :=
.seq RemovedBody406_30 RemovedBody406_47

def RemovedBody406_49 : StackLang.HolProg 64 :=
.seq RemovedBody406_29 RemovedBody406_48

def RemovedBody406_50 : StackLang.HolProg 64 :=
.seq RemovedBody406_28 RemovedBody406_49

def RemovedBody406_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_58 : StackLang.HolProg 64 :=
.seq RemovedBody406_56 RemovedBody406_57

def RemovedBody406_59 : StackLang.HolProg 64 :=
.seq RemovedBody406_55 RemovedBody406_58

def RemovedBody406_60 : StackLang.HolProg 64 :=
.seq RemovedBody406_54 RemovedBody406_59

def RemovedBody406_61 : StackLang.HolProg 64 :=
.seq RemovedBody406_53 RemovedBody406_60

def RemovedBody406_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody406_64 : StackLang.HolProg 64 :=
.seq RemovedBody406_62 RemovedBody406_63

def RemovedBody406_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody406_61, 0, 406, 2)) (Sum.inl 192) (some (RemovedBody406_64, 406, 3))

def RemovedBody406_66 : StackLang.HolProg 64 :=
.seq RemovedBody406_52 RemovedBody406_65

def RemovedBody406_67 : StackLang.HolProg 64 :=
.seq RemovedBody406_51 RemovedBody406_66

def RemovedBody406_68 : StackLang.HolProg 64 :=
.seq RemovedBody406_50 RemovedBody406_67

def RemovedBody406_69 : StackLang.HolProg 64 :=
.seq RemovedBody406_21 RemovedBody406_68

def RemovedBody406_70 : StackLang.HolProg 64 :=
.seq RemovedBody406_18 RemovedBody406_69

def RemovedBody406_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody406_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody406_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody406_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def RemovedBody406_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody406_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1209#64)

def RemovedBody406_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_81 : StackLang.HolProg 64 :=
.seq RemovedBody406_79 RemovedBody406_80

def RemovedBody406_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody406_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody406_85 : StackLang.HolProg 64 :=
.seq RemovedBody406_83 RemovedBody406_84

def RemovedBody406_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody406_85 RemovedBody406_86

def RemovedBody406_88 : StackLang.HolProg 64 :=
.seq RemovedBody406_82 RemovedBody406_87

def RemovedBody406_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody406_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 5

def RemovedBody406_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody406_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody406_98 : StackLang.HolProg 64 :=
.seq RemovedBody406_96 RemovedBody406_97

def RemovedBody406_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody406_100 : StackLang.HolProg 64 :=
.seq RemovedBody406_98 RemovedBody406_99

def RemovedBody406_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_102 : StackLang.HolProg 64 :=
.seq RemovedBody406_100 RemovedBody406_101

def RemovedBody406_103 : StackLang.HolProg 64 :=
.seq RemovedBody406_95 RemovedBody406_102

def RemovedBody406_104 : StackLang.HolProg 64 :=
.seq RemovedBody406_94 RemovedBody406_103

def RemovedBody406_105 : StackLang.HolProg 64 :=
.seq RemovedBody406_93 RemovedBody406_104

def RemovedBody406_106 : StackLang.HolProg 64 :=
.seq RemovedBody406_92 RemovedBody406_105

def RemovedBody406_107 : StackLang.HolProg 64 :=
.seq RemovedBody406_91 RemovedBody406_106

def RemovedBody406_108 : StackLang.HolProg 64 :=
.seq RemovedBody406_90 RemovedBody406_107

def RemovedBody406_109 : StackLang.HolProg 64 :=
.seq RemovedBody406_89 RemovedBody406_108

def RemovedBody406_110 : StackLang.HolProg 64 :=
.seq RemovedBody406_88 RemovedBody406_109

def RemovedBody406_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody406_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_120 : StackLang.HolProg 64 :=
.seq RemovedBody406_118 RemovedBody406_119

def RemovedBody406_121 : StackLang.HolProg 64 :=
.seq RemovedBody406_117 RemovedBody406_120

def RemovedBody406_122 : StackLang.HolProg 64 :=
.seq RemovedBody406_116 RemovedBody406_121

def RemovedBody406_123 : StackLang.HolProg 64 :=
.seq RemovedBody406_115 RemovedBody406_122

def RemovedBody406_124 : StackLang.HolProg 64 :=
.seq RemovedBody406_114 RemovedBody406_123

def RemovedBody406_125 : StackLang.HolProg 64 :=
.seq RemovedBody406_113 RemovedBody406_124

def RemovedBody406_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_128 : StackLang.HolProg 64 :=
.seq RemovedBody406_126 RemovedBody406_127

def RemovedBody406_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody406_130 : StackLang.HolProg 64 :=
.seq RemovedBody406_128 RemovedBody406_129

def RemovedBody406_131 : StackLang.HolProg 64 :=
.call (some (RemovedBody406_125, 0, 406, 4)) (Sum.inl 186) (some (RemovedBody406_130, 406, 5))

def RemovedBody406_132 : StackLang.HolProg 64 :=
.seq RemovedBody406_112 RemovedBody406_131

def RemovedBody406_133 : StackLang.HolProg 64 :=
.seq RemovedBody406_111 RemovedBody406_132

def RemovedBody406_134 : StackLang.HolProg 64 :=
.seq RemovedBody406_110 RemovedBody406_133

def RemovedBody406_135 : StackLang.HolProg 64 :=
.seq RemovedBody406_81 RemovedBody406_134

def RemovedBody406_136 : StackLang.HolProg 64 :=
.seq RemovedBody406_78 RemovedBody406_135

def RemovedBody406_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody406_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody406_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody406_144 : StackLang.HolProg 64 :=
.seq RemovedBody406_142 RemovedBody406_143

def RemovedBody406_145 : StackLang.HolProg 64 :=
.seq RemovedBody406_141 RemovedBody406_144

def RemovedBody406_146 : StackLang.HolProg 64 :=
.seq RemovedBody406_140 RemovedBody406_145

def RemovedBody406_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_148 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody406_146 RemovedBody406_147

def RemovedBody406_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody406_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_153 : StackLang.HolProg 64 :=
.seq RemovedBody406_151 RemovedBody406_152

def RemovedBody406_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1210#64)

def RemovedBody406_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_157 : StackLang.HolProg 64 :=
.seq RemovedBody406_155 RemovedBody406_156

def RemovedBody406_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody406_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody406_161 : StackLang.HolProg 64 :=
.seq RemovedBody406_159 RemovedBody406_160

def RemovedBody406_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_163 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody406_161 RemovedBody406_162

def RemovedBody406_164 : StackLang.HolProg 64 :=
.seq RemovedBody406_158 RemovedBody406_163

def RemovedBody406_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody406_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody406_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 406 7

def RemovedBody406_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody406_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody406_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody406_174 : StackLang.HolProg 64 :=
.seq RemovedBody406_172 RemovedBody406_173

def RemovedBody406_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody406_176 : StackLang.HolProg 64 :=
.seq RemovedBody406_174 RemovedBody406_175

def RemovedBody406_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_178 : StackLang.HolProg 64 :=
.seq RemovedBody406_176 RemovedBody406_177

def RemovedBody406_179 : StackLang.HolProg 64 :=
.seq RemovedBody406_171 RemovedBody406_178

def RemovedBody406_180 : StackLang.HolProg 64 :=
.seq RemovedBody406_170 RemovedBody406_179

def RemovedBody406_181 : StackLang.HolProg 64 :=
.seq RemovedBody406_169 RemovedBody406_180

def RemovedBody406_182 : StackLang.HolProg 64 :=
.seq RemovedBody406_168 RemovedBody406_181

def RemovedBody406_183 : StackLang.HolProg 64 :=
.seq RemovedBody406_167 RemovedBody406_182

def RemovedBody406_184 : StackLang.HolProg 64 :=
.seq RemovedBody406_166 RemovedBody406_183

def RemovedBody406_185 : StackLang.HolProg 64 :=
.seq RemovedBody406_165 RemovedBody406_184

def RemovedBody406_186 : StackLang.HolProg 64 :=
.seq RemovedBody406_164 RemovedBody406_185

def RemovedBody406_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody406_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody406_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody406_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_195 : StackLang.HolProg 64 :=
.seq RemovedBody406_193 RemovedBody406_194

def RemovedBody406_196 : StackLang.HolProg 64 :=
.seq RemovedBody406_192 RemovedBody406_195

def RemovedBody406_197 : StackLang.HolProg 64 :=
.seq RemovedBody406_191 RemovedBody406_196

def RemovedBody406_198 : StackLang.HolProg 64 :=
.seq RemovedBody406_190 RemovedBody406_197

def RemovedBody406_199 : StackLang.HolProg 64 :=
.seq RemovedBody406_189 RemovedBody406_198

def RemovedBody406_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody406_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody406_202 : StackLang.HolProg 64 :=
.seq RemovedBody406_200 RemovedBody406_201

def RemovedBody406_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody406_199, 0, 406, 6)) (Sum.inl 404) (some (RemovedBody406_202, 406, 7))

def RemovedBody406_204 : StackLang.HolProg 64 :=
.seq RemovedBody406_188 RemovedBody406_203

def RemovedBody406_205 : StackLang.HolProg 64 :=
.seq RemovedBody406_187 RemovedBody406_204

def RemovedBody406_206 : StackLang.HolProg 64 :=
.seq RemovedBody406_186 RemovedBody406_205

def RemovedBody406_207 : StackLang.HolProg 64 :=
.seq RemovedBody406_157 RemovedBody406_206

def RemovedBody406_208 : StackLang.HolProg 64 :=
.seq RemovedBody406_154 RemovedBody406_207

def RemovedBody406_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody406_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody406_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody406_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody406_213 : StackLang.HolProg 64 :=
.seq RemovedBody406_211 RemovedBody406_212

def RemovedBody406_214 : StackLang.HolProg 64 :=
.seq RemovedBody406_210 RemovedBody406_213

def RemovedBody406_215 : StackLang.HolProg 64 :=
.seq RemovedBody406_209 RemovedBody406_214

def RemovedBody406_216 : StackLang.HolProg 64 :=
.seq RemovedBody406_208 RemovedBody406_215

def RemovedBody406_217 : StackLang.HolProg 64 :=
.seq RemovedBody406_153 RemovedBody406_216

def RemovedBody406_218 : StackLang.HolProg 64 :=
.seq RemovedBody406_150 RemovedBody406_217

def RemovedBody406_219 : StackLang.HolProg 64 :=
.seq RemovedBody406_149 RemovedBody406_218

def RemovedBody406_220 : StackLang.HolProg 64 :=
.seq RemovedBody406_148 RemovedBody406_219

def RemovedBody406_221 : StackLang.HolProg 64 :=
.seq RemovedBody406_139 RemovedBody406_220

def RemovedBody406_222 : StackLang.HolProg 64 :=
.seq RemovedBody406_138 RemovedBody406_221

def RemovedBody406_223 : StackLang.HolProg 64 :=
.seq RemovedBody406_137 RemovedBody406_222

def RemovedBody406_224 : StackLang.HolProg 64 :=
.seq RemovedBody406_136 RemovedBody406_223

def RemovedBody406_225 : StackLang.HolProg 64 :=
.seq RemovedBody406_77 RemovedBody406_224

def RemovedBody406_226 : StackLang.HolProg 64 :=
.seq RemovedBody406_76 RemovedBody406_225

def RemovedBody406_227 : StackLang.HolProg 64 :=
.seq RemovedBody406_75 RemovedBody406_226

def RemovedBody406_228 : StackLang.HolProg 64 :=
.seq RemovedBody406_74 RemovedBody406_227

def RemovedBody406_229 : StackLang.HolProg 64 :=
.seq RemovedBody406_73 RemovedBody406_228

def RemovedBody406_230 : StackLang.HolProg 64 :=
.seq RemovedBody406_72 RemovedBody406_229

def RemovedBody406_231 : StackLang.HolProg 64 :=
.seq RemovedBody406_71 RemovedBody406_230

def RemovedBody406_232 : StackLang.HolProg 64 :=
.seq RemovedBody406_70 RemovedBody406_231

def RemovedBody406_233 : StackLang.HolProg 64 :=
.seq RemovedBody406_17 RemovedBody406_232

def RemovedBody406_234 : StackLang.HolProg 64 :=
.seq RemovedBody406_14 RemovedBody406_233

def RemovedBody406_235 : StackLang.HolProg 64 :=
.seq RemovedBody406_13 RemovedBody406_234

def RemovedBody406_236 : StackLang.HolProg 64 :=
.seq RemovedBody406_12 RemovedBody406_235

def RemovedBody406_237 : StackLang.HolProg 64 :=
.seq RemovedBody406_11 RemovedBody406_236

def RemovedBody406_238 : StackLang.HolProg 64 :=
.seq RemovedBody406_10 RemovedBody406_237

def RemovedBody406_239 : StackLang.HolProg 64 :=
.seq RemovedBody406_9 RemovedBody406_238

def RemovedBody406_240 : StackLang.HolProg 64 :=
.seq RemovedBody406_8 RemovedBody406_239

def RemovedBody406_241 : StackLang.HolProg 64 :=
.seq RemovedBody406_7 RemovedBody406_240

def RemovedBody406_242 : StackLang.HolProg 64 :=
.seq RemovedBody406_6 RemovedBody406_241

def Removed406 : Nat × StackLang.HolProg 64 := (406, RemovedBody406_242)
theorem Removed406_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc406 = Removed406 := by
  kernel_rfl
#print axioms Removed406_eq
end InitECandidate.Proofs.BackendStages
