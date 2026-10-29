import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc284
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody284_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody284_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody284_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody284_3 : StackLang.HolProg 64 :=
.seq RemovedBody284_1 RemovedBody284_2

def RemovedBody284_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody284_3 RemovedBody284_4

def RemovedBody284_6 : StackLang.HolProg 64 :=
.seq RemovedBody284_0 RemovedBody284_5

def RemovedBody284_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody284_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody284_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody284_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551496#64))

def RemovedBody284_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody284_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody284_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody284_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody284_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody284_18 : StackLang.HolProg 64 :=
.seq RemovedBody284_16 RemovedBody284_17

def RemovedBody284_19 : StackLang.HolProg 64 :=
.seq RemovedBody284_15 RemovedBody284_18

def RemovedBody284_20 : StackLang.HolProg 64 :=
.seq RemovedBody284_14 RemovedBody284_19

def RemovedBody284_21 : StackLang.HolProg 64 :=
.seq RemovedBody284_13 RemovedBody284_20

def RemovedBody284_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody284_21 RemovedBody284_22

def RemovedBody284_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody284_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody284_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody284_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody284_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 768#64)

def RemovedBody284_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody284_31 : StackLang.HolProg 64 :=
.seq RemovedBody284_29 RemovedBody284_30

def RemovedBody284_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody284_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody284_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody284_35 : StackLang.HolProg 64 :=
.seq RemovedBody284_33 RemovedBody284_34

def RemovedBody284_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_37 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody284_35 RemovedBody284_36

def RemovedBody284_38 : StackLang.HolProg 64 :=
.seq RemovedBody284_32 RemovedBody284_37

def RemovedBody284_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody284_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody284_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 3

def RemovedBody284_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody284_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody284_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody284_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody284_48 : StackLang.HolProg 64 :=
.seq RemovedBody284_46 RemovedBody284_47

def RemovedBody284_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody284_50 : StackLang.HolProg 64 :=
.seq RemovedBody284_48 RemovedBody284_49

def RemovedBody284_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_52 : StackLang.HolProg 64 :=
.seq RemovedBody284_50 RemovedBody284_51

def RemovedBody284_53 : StackLang.HolProg 64 :=
.seq RemovedBody284_45 RemovedBody284_52

def RemovedBody284_54 : StackLang.HolProg 64 :=
.seq RemovedBody284_44 RemovedBody284_53

def RemovedBody284_55 : StackLang.HolProg 64 :=
.seq RemovedBody284_43 RemovedBody284_54

def RemovedBody284_56 : StackLang.HolProg 64 :=
.seq RemovedBody284_42 RemovedBody284_55

def RemovedBody284_57 : StackLang.HolProg 64 :=
.seq RemovedBody284_41 RemovedBody284_56

def RemovedBody284_58 : StackLang.HolProg 64 :=
.seq RemovedBody284_40 RemovedBody284_57

def RemovedBody284_59 : StackLang.HolProg 64 :=
.seq RemovedBody284_39 RemovedBody284_58

def RemovedBody284_60 : StackLang.HolProg 64 :=
.seq RemovedBody284_38 RemovedBody284_59

def RemovedBody284_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody284_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody284_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody284_68 : StackLang.HolProg 64 :=
.seq RemovedBody284_66 RemovedBody284_67

def RemovedBody284_69 : StackLang.HolProg 64 :=
.seq RemovedBody284_65 RemovedBody284_68

def RemovedBody284_70 : StackLang.HolProg 64 :=
.seq RemovedBody284_64 RemovedBody284_69

def RemovedBody284_71 : StackLang.HolProg 64 :=
.seq RemovedBody284_63 RemovedBody284_70

def RemovedBody284_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody284_74 : StackLang.HolProg 64 :=
.seq RemovedBody284_72 RemovedBody284_73

def RemovedBody284_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody284_71, 0, 284, 2)) (Sum.inl 68) (some (RemovedBody284_74, 284, 3))

def RemovedBody284_76 : StackLang.HolProg 64 :=
.seq RemovedBody284_62 RemovedBody284_75

def RemovedBody284_77 : StackLang.HolProg 64 :=
.seq RemovedBody284_61 RemovedBody284_76

def RemovedBody284_78 : StackLang.HolProg 64 :=
.seq RemovedBody284_60 RemovedBody284_77

def RemovedBody284_79 : StackLang.HolProg 64 :=
.seq RemovedBody284_31 RemovedBody284_78

def RemovedBody284_80 : StackLang.HolProg 64 :=
.seq RemovedBody284_28 RemovedBody284_79

def RemovedBody284_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody284_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody284_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody284_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody284_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551496#64)))

def RemovedBody284_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody284_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551496#64))

def RemovedBody284_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8#64)

def RemovedBody284_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 769#64)

def RemovedBody284_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody284_95 : StackLang.HolProg 64 :=
.seq RemovedBody284_93 RemovedBody284_94

def RemovedBody284_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody284_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody284_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody284_99 : StackLang.HolProg 64 :=
.seq RemovedBody284_97 RemovedBody284_98

def RemovedBody284_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody284_99 RemovedBody284_100

def RemovedBody284_102 : StackLang.HolProg 64 :=
.seq RemovedBody284_96 RemovedBody284_101

def RemovedBody284_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody284_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody284_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 284 5

def RemovedBody284_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody284_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody284_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody284_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody284_112 : StackLang.HolProg 64 :=
.seq RemovedBody284_110 RemovedBody284_111

def RemovedBody284_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody284_114 : StackLang.HolProg 64 :=
.seq RemovedBody284_112 RemovedBody284_113

def RemovedBody284_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_116 : StackLang.HolProg 64 :=
.seq RemovedBody284_114 RemovedBody284_115

def RemovedBody284_117 : StackLang.HolProg 64 :=
.seq RemovedBody284_109 RemovedBody284_116

def RemovedBody284_118 : StackLang.HolProg 64 :=
.seq RemovedBody284_108 RemovedBody284_117

def RemovedBody284_119 : StackLang.HolProg 64 :=
.seq RemovedBody284_107 RemovedBody284_118

def RemovedBody284_120 : StackLang.HolProg 64 :=
.seq RemovedBody284_106 RemovedBody284_119

def RemovedBody284_121 : StackLang.HolProg 64 :=
.seq RemovedBody284_105 RemovedBody284_120

def RemovedBody284_122 : StackLang.HolProg 64 :=
.seq RemovedBody284_104 RemovedBody284_121

def RemovedBody284_123 : StackLang.HolProg 64 :=
.seq RemovedBody284_103 RemovedBody284_122

def RemovedBody284_124 : StackLang.HolProg 64 :=
.seq RemovedBody284_102 RemovedBody284_123

def RemovedBody284_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody284_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody284_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody284_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody284_132 : StackLang.HolProg 64 :=
.seq RemovedBody284_130 RemovedBody284_131

def RemovedBody284_133 : StackLang.HolProg 64 :=
.seq RemovedBody284_129 RemovedBody284_132

def RemovedBody284_134 : StackLang.HolProg 64 :=
.seq RemovedBody284_128 RemovedBody284_133

def RemovedBody284_135 : StackLang.HolProg 64 :=
.seq RemovedBody284_127 RemovedBody284_134

def RemovedBody284_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody284_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody284_138 : StackLang.HolProg 64 :=
.seq RemovedBody284_136 RemovedBody284_137

def RemovedBody284_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody284_135, 0, 284, 4)) (Sum.inl 78) (some (RemovedBody284_138, 284, 5))

def RemovedBody284_140 : StackLang.HolProg 64 :=
.seq RemovedBody284_126 RemovedBody284_139

def RemovedBody284_141 : StackLang.HolProg 64 :=
.seq RemovedBody284_125 RemovedBody284_140

def RemovedBody284_142 : StackLang.HolProg 64 :=
.seq RemovedBody284_124 RemovedBody284_141

def RemovedBody284_143 : StackLang.HolProg 64 :=
.seq RemovedBody284_95 RemovedBody284_142

def RemovedBody284_144 : StackLang.HolProg 64 :=
.seq RemovedBody284_92 RemovedBody284_143

def RemovedBody284_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody284_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody284_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody284_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody284_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody284_150 : StackLang.HolProg 64 :=
.seq RemovedBody284_148 RemovedBody284_149

def RemovedBody284_151 : StackLang.HolProg 64 :=
.seq RemovedBody284_147 RemovedBody284_150

def RemovedBody284_152 : StackLang.HolProg 64 :=
.seq RemovedBody284_146 RemovedBody284_151

def RemovedBody284_153 : StackLang.HolProg 64 :=
.seq RemovedBody284_145 RemovedBody284_152

def RemovedBody284_154 : StackLang.HolProg 64 :=
.seq RemovedBody284_144 RemovedBody284_153

def RemovedBody284_155 : StackLang.HolProg 64 :=
.seq RemovedBody284_91 RemovedBody284_154

def RemovedBody284_156 : StackLang.HolProg 64 :=
.seq RemovedBody284_90 RemovedBody284_155

def RemovedBody284_157 : StackLang.HolProg 64 :=
.seq RemovedBody284_89 RemovedBody284_156

def RemovedBody284_158 : StackLang.HolProg 64 :=
.seq RemovedBody284_88 RemovedBody284_157

def RemovedBody284_159 : StackLang.HolProg 64 :=
.seq RemovedBody284_87 RemovedBody284_158

def RemovedBody284_160 : StackLang.HolProg 64 :=
.seq RemovedBody284_86 RemovedBody284_159

def RemovedBody284_161 : StackLang.HolProg 64 :=
.seq RemovedBody284_85 RemovedBody284_160

def RemovedBody284_162 : StackLang.HolProg 64 :=
.seq RemovedBody284_84 RemovedBody284_161

def RemovedBody284_163 : StackLang.HolProg 64 :=
.seq RemovedBody284_83 RemovedBody284_162

def RemovedBody284_164 : StackLang.HolProg 64 :=
.seq RemovedBody284_82 RemovedBody284_163

def RemovedBody284_165 : StackLang.HolProg 64 :=
.seq RemovedBody284_81 RemovedBody284_164

def RemovedBody284_166 : StackLang.HolProg 64 :=
.seq RemovedBody284_80 RemovedBody284_165

def RemovedBody284_167 : StackLang.HolProg 64 :=
.seq RemovedBody284_27 RemovedBody284_166

def RemovedBody284_168 : StackLang.HolProg 64 :=
.seq RemovedBody284_26 RemovedBody284_167

def RemovedBody284_169 : StackLang.HolProg 64 :=
.seq RemovedBody284_25 RemovedBody284_168

def RemovedBody284_170 : StackLang.HolProg 64 :=
.seq RemovedBody284_24 RemovedBody284_169

def RemovedBody284_171 : StackLang.HolProg 64 :=
.seq RemovedBody284_23 RemovedBody284_170

def RemovedBody284_172 : StackLang.HolProg 64 :=
.seq RemovedBody284_12 RemovedBody284_171

def RemovedBody284_173 : StackLang.HolProg 64 :=
.seq RemovedBody284_11 RemovedBody284_172

def RemovedBody284_174 : StackLang.HolProg 64 :=
.seq RemovedBody284_10 RemovedBody284_173

def RemovedBody284_175 : StackLang.HolProg 64 :=
.seq RemovedBody284_9 RemovedBody284_174

def RemovedBody284_176 : StackLang.HolProg 64 :=
.seq RemovedBody284_8 RemovedBody284_175

def RemovedBody284_177 : StackLang.HolProg 64 :=
.seq RemovedBody284_7 RemovedBody284_176

def RemovedBody284_178 : StackLang.HolProg 64 :=
.seq RemovedBody284_6 RemovedBody284_177

def Removed284 : Nat × StackLang.HolProg 64 := (284, RemovedBody284_178)
theorem Removed284_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc284 = Removed284 := by
  kernel_rfl
#print axioms Removed284_eq
end InitECandidate.Proofs.BackendStages
