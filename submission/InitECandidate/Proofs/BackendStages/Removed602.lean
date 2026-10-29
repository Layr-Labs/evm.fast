import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc602
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody602_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody602_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_3 : StackLang.HolProg 64 :=
.seq RemovedBody602_1 RemovedBody602_2

def RemovedBody602_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_3 RemovedBody602_4

def RemovedBody602_6 : StackLang.HolProg 64 :=
.seq RemovedBody602_0 RemovedBody602_5

def RemovedBody602_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody602_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody602_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody602_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody602_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody602_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody602_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551328#64))

def RemovedBody602_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody602_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody602_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody602_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_24 : StackLang.HolProg 64 :=
.seq RemovedBody602_22 RemovedBody602_23

def RemovedBody602_25 : StackLang.HolProg 64 :=
.seq RemovedBody602_21 RemovedBody602_24

def RemovedBody602_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody602_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 104#64))

def RemovedBody602_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody602_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody602_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_34 : StackLang.HolProg 64 :=
.seq RemovedBody602_32 RemovedBody602_33

def RemovedBody602_35 : StackLang.HolProg 64 :=
.seq RemovedBody602_31 RemovedBody602_34

def RemovedBody602_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody602_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody602_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def RemovedBody602_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_44 : StackLang.HolProg 64 :=
.seq RemovedBody602_42 RemovedBody602_43

def RemovedBody602_45 : StackLang.HolProg 64 :=
.seq RemovedBody602_41 RemovedBody602_44

def RemovedBody602_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 48#64))

def RemovedBody602_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody602_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody602_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody602_53 : StackLang.HolProg 64 :=
.seq RemovedBody602_51 RemovedBody602_52

def RemovedBody602_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2303#64)

def RemovedBody602_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_57 : StackLang.HolProg 64 :=
.seq RemovedBody602_55 RemovedBody602_56

def RemovedBody602_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_61 : StackLang.HolProg 64 :=
.seq RemovedBody602_59 RemovedBody602_60

def RemovedBody602_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_61 RemovedBody602_62

def RemovedBody602_64 : StackLang.HolProg 64 :=
.seq RemovedBody602_58 RemovedBody602_63

def RemovedBody602_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody602_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 602 5

def RemovedBody602_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody602_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody602_74 : StackLang.HolProg 64 :=
.seq RemovedBody602_72 RemovedBody602_73

def RemovedBody602_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody602_76 : StackLang.HolProg 64 :=
.seq RemovedBody602_74 RemovedBody602_75

def RemovedBody602_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_78 : StackLang.HolProg 64 :=
.seq RemovedBody602_76 RemovedBody602_77

def RemovedBody602_79 : StackLang.HolProg 64 :=
.seq RemovedBody602_71 RemovedBody602_78

def RemovedBody602_80 : StackLang.HolProg 64 :=
.seq RemovedBody602_70 RemovedBody602_79

def RemovedBody602_81 : StackLang.HolProg 64 :=
.seq RemovedBody602_69 RemovedBody602_80

def RemovedBody602_82 : StackLang.HolProg 64 :=
.seq RemovedBody602_68 RemovedBody602_81

def RemovedBody602_83 : StackLang.HolProg 64 :=
.seq RemovedBody602_67 RemovedBody602_82

def RemovedBody602_84 : StackLang.HolProg 64 :=
.seq RemovedBody602_66 RemovedBody602_83

def RemovedBody602_85 : StackLang.HolProg 64 :=
.seq RemovedBody602_65 RemovedBody602_84

def RemovedBody602_86 : StackLang.HolProg 64 :=
.seq RemovedBody602_64 RemovedBody602_85

def RemovedBody602_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody602_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_96 : StackLang.HolProg 64 :=
.seq RemovedBody602_94 RemovedBody602_95

def RemovedBody602_97 : StackLang.HolProg 64 :=
.seq RemovedBody602_93 RemovedBody602_96

def RemovedBody602_98 : StackLang.HolProg 64 :=
.seq RemovedBody602_92 RemovedBody602_97

def RemovedBody602_99 : StackLang.HolProg 64 :=
.seq RemovedBody602_91 RemovedBody602_98

def RemovedBody602_100 : StackLang.HolProg 64 :=
.seq RemovedBody602_90 RemovedBody602_99

def RemovedBody602_101 : StackLang.HolProg 64 :=
.seq RemovedBody602_89 RemovedBody602_100

def RemovedBody602_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_104 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody602_105 : StackLang.HolProg 64 :=
.seq RemovedBody602_103 RemovedBody602_104

def RemovedBody602_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody602_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_110 : StackLang.HolProg 64 :=
.seq RemovedBody602_108 RemovedBody602_109

def RemovedBody602_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_113 : StackLang.HolProg 64 :=
.seq RemovedBody602_111 RemovedBody602_112

def RemovedBody602_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody602_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_116 : StackLang.HolProg 64 :=
.seq RemovedBody602_114 RemovedBody602_115

def RemovedBody602_117 : StackLang.HolProg 64 :=
.seq RemovedBody602_113 RemovedBody602_116

def RemovedBody602_118 : StackLang.HolProg 64 :=
.seq RemovedBody602_110 RemovedBody602_117

def RemovedBody602_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2304#64)

def RemovedBody602_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_122 : StackLang.HolProg 64 :=
.seq RemovedBody602_120 RemovedBody602_121

def RemovedBody602_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_126 : StackLang.HolProg 64 :=
.seq RemovedBody602_124 RemovedBody602_125

def RemovedBody602_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_128 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_126 RemovedBody602_127

def RemovedBody602_129 : StackLang.HolProg 64 :=
.seq RemovedBody602_123 RemovedBody602_128

def RemovedBody602_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody602_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 602 4

def RemovedBody602_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody602_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody602_139 : StackLang.HolProg 64 :=
.seq RemovedBody602_137 RemovedBody602_138

def RemovedBody602_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody602_141 : StackLang.HolProg 64 :=
.seq RemovedBody602_139 RemovedBody602_140

def RemovedBody602_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_143 : StackLang.HolProg 64 :=
.seq RemovedBody602_141 RemovedBody602_142

def RemovedBody602_144 : StackLang.HolProg 64 :=
.seq RemovedBody602_136 RemovedBody602_143

def RemovedBody602_145 : StackLang.HolProg 64 :=
.seq RemovedBody602_135 RemovedBody602_144

def RemovedBody602_146 : StackLang.HolProg 64 :=
.seq RemovedBody602_134 RemovedBody602_145

def RemovedBody602_147 : StackLang.HolProg 64 :=
.seq RemovedBody602_133 RemovedBody602_146

def RemovedBody602_148 : StackLang.HolProg 64 :=
.seq RemovedBody602_132 RemovedBody602_147

def RemovedBody602_149 : StackLang.HolProg 64 :=
.seq RemovedBody602_131 RemovedBody602_148

def RemovedBody602_150 : StackLang.HolProg 64 :=
.seq RemovedBody602_130 RemovedBody602_149

def RemovedBody602_151 : StackLang.HolProg 64 :=
.seq RemovedBody602_129 RemovedBody602_150

def RemovedBody602_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_159 : StackLang.HolProg 64 :=
.seq RemovedBody602_157 RemovedBody602_158

def RemovedBody602_160 : StackLang.HolProg 64 :=
.seq RemovedBody602_156 RemovedBody602_159

def RemovedBody602_161 : StackLang.HolProg 64 :=
.seq RemovedBody602_155 RemovedBody602_160

def RemovedBody602_162 : StackLang.HolProg 64 :=
.seq RemovedBody602_154 RemovedBody602_161

def RemovedBody602_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_164 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody602_165 : StackLang.HolProg 64 :=
.seq RemovedBody602_163 RemovedBody602_164

def RemovedBody602_166 : StackLang.HolProg 64 :=
.call (some (RemovedBody602_162, 0, 602, 3)) (Sum.inl 597) (some (RemovedBody602_165, 602, 4))

def RemovedBody602_167 : StackLang.HolProg 64 :=
.seq RemovedBody602_153 RemovedBody602_166

def RemovedBody602_168 : StackLang.HolProg 64 :=
.seq RemovedBody602_152 RemovedBody602_167

def RemovedBody602_169 : StackLang.HolProg 64 :=
.seq RemovedBody602_151 RemovedBody602_168

def RemovedBody602_170 : StackLang.HolProg 64 :=
.seq RemovedBody602_122 RemovedBody602_169

def RemovedBody602_171 : StackLang.HolProg 64 :=
.seq RemovedBody602_119 RemovedBody602_170

def RemovedBody602_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_174 : StackLang.HolProg 64 :=
.seq RemovedBody602_172 RemovedBody602_173

def RemovedBody602_175 : StackLang.HolProg 64 :=
.seq RemovedBody602_171 RemovedBody602_174

def RemovedBody602_176 : StackLang.HolProg 64 :=
.seq RemovedBody602_118 RemovedBody602_175

def RemovedBody602_177 : StackLang.HolProg 64 :=
.seq RemovedBody602_107 RemovedBody602_176

def RemovedBody602_178 : StackLang.HolProg 64 :=
.seq RemovedBody602_106 RemovedBody602_177

def RemovedBody602_179 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody602_105 RemovedBody602_178

def RemovedBody602_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_183 : StackLang.HolProg 64 :=
.seq RemovedBody602_181 RemovedBody602_182

def RemovedBody602_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_186 : StackLang.HolProg 64 :=
.seq RemovedBody602_184 RemovedBody602_185

def RemovedBody602_187 : StackLang.HolProg 64 :=
.seq RemovedBody602_183 RemovedBody602_186

def RemovedBody602_188 : StackLang.HolProg 64 :=
.seq RemovedBody602_180 RemovedBody602_187

def RemovedBody602_189 : StackLang.HolProg 64 :=
.seq RemovedBody602_179 RemovedBody602_188

def RemovedBody602_190 : StackLang.HolProg 64 :=
.seq RemovedBody602_102 RemovedBody602_189

def RemovedBody602_191 : StackLang.HolProg 64 :=
.call (some (RemovedBody602_101, 0, 602, 2)) (Sum.inl 595) (some (RemovedBody602_190, 602, 5))

def RemovedBody602_192 : StackLang.HolProg 64 :=
.seq RemovedBody602_88 RemovedBody602_191

def RemovedBody602_193 : StackLang.HolProg 64 :=
.seq RemovedBody602_87 RemovedBody602_192

def RemovedBody602_194 : StackLang.HolProg 64 :=
.seq RemovedBody602_86 RemovedBody602_193

def RemovedBody602_195 : StackLang.HolProg 64 :=
.seq RemovedBody602_57 RemovedBody602_194

def RemovedBody602_196 : StackLang.HolProg 64 :=
.seq RemovedBody602_54 RemovedBody602_195

def RemovedBody602_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_199 : StackLang.HolProg 64 :=
.seq RemovedBody602_197 RemovedBody602_198

def RemovedBody602_200 : StackLang.HolProg 64 :=
.seq RemovedBody602_196 RemovedBody602_199

def RemovedBody602_201 : StackLang.HolProg 64 :=
.seq RemovedBody602_53 RemovedBody602_200

def RemovedBody602_202 : StackLang.HolProg 64 :=
.seq RemovedBody602_50 RemovedBody602_201

def RemovedBody602_203 : StackLang.HolProg 64 :=
.seq RemovedBody602_49 RemovedBody602_202

def RemovedBody602_204 : StackLang.HolProg 64 :=
.seq RemovedBody602_48 RemovedBody602_203

def RemovedBody602_205 : StackLang.HolProg 64 :=
.seq RemovedBody602_47 RemovedBody602_204

def RemovedBody602_206 : StackLang.HolProg 64 :=
.seq RemovedBody602_46 RemovedBody602_205

def RemovedBody602_207 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody602_45 RemovedBody602_206

def RemovedBody602_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_210 : StackLang.HolProg 64 :=
.seq RemovedBody602_208 RemovedBody602_209

def RemovedBody602_211 : StackLang.HolProg 64 :=
.seq RemovedBody602_207 RemovedBody602_210

def RemovedBody602_212 : StackLang.HolProg 64 :=
.seq RemovedBody602_40 RemovedBody602_211

def RemovedBody602_213 : StackLang.HolProg 64 :=
.seq RemovedBody602_39 RemovedBody602_212

def RemovedBody602_214 : StackLang.HolProg 64 :=
.seq RemovedBody602_38 RemovedBody602_213

def RemovedBody602_215 : StackLang.HolProg 64 :=
.seq RemovedBody602_37 RemovedBody602_214

def RemovedBody602_216 : StackLang.HolProg 64 :=
.seq RemovedBody602_36 RemovedBody602_215

def RemovedBody602_217 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody602_35 RemovedBody602_216

def RemovedBody602_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_220 : StackLang.HolProg 64 :=
.seq RemovedBody602_218 RemovedBody602_219

def RemovedBody602_221 : StackLang.HolProg 64 :=
.seq RemovedBody602_217 RemovedBody602_220

def RemovedBody602_222 : StackLang.HolProg 64 :=
.seq RemovedBody602_30 RemovedBody602_221

def RemovedBody602_223 : StackLang.HolProg 64 :=
.seq RemovedBody602_29 RemovedBody602_222

def RemovedBody602_224 : StackLang.HolProg 64 :=
.seq RemovedBody602_28 RemovedBody602_223

def RemovedBody602_225 : StackLang.HolProg 64 :=
.seq RemovedBody602_27 RemovedBody602_224

def RemovedBody602_226 : StackLang.HolProg 64 :=
.seq RemovedBody602_26 RemovedBody602_225

def RemovedBody602_227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody602_25 RemovedBody602_226

def RemovedBody602_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody602_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2305#64)

def RemovedBody602_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_236 : StackLang.HolProg 64 :=
.seq RemovedBody602_234 RemovedBody602_235

def RemovedBody602_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_240 : StackLang.HolProg 64 :=
.seq RemovedBody602_238 RemovedBody602_239

def RemovedBody602_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_240 RemovedBody602_241

def RemovedBody602_243 : StackLang.HolProg 64 :=
.seq RemovedBody602_237 RemovedBody602_242

def RemovedBody602_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody602_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 602 7

def RemovedBody602_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody602_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody602_253 : StackLang.HolProg 64 :=
.seq RemovedBody602_251 RemovedBody602_252

def RemovedBody602_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody602_255 : StackLang.HolProg 64 :=
.seq RemovedBody602_253 RemovedBody602_254

def RemovedBody602_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_257 : StackLang.HolProg 64 :=
.seq RemovedBody602_255 RemovedBody602_256

def RemovedBody602_258 : StackLang.HolProg 64 :=
.seq RemovedBody602_250 RemovedBody602_257

def RemovedBody602_259 : StackLang.HolProg 64 :=
.seq RemovedBody602_249 RemovedBody602_258

def RemovedBody602_260 : StackLang.HolProg 64 :=
.seq RemovedBody602_248 RemovedBody602_259

def RemovedBody602_261 : StackLang.HolProg 64 :=
.seq RemovedBody602_247 RemovedBody602_260

def RemovedBody602_262 : StackLang.HolProg 64 :=
.seq RemovedBody602_246 RemovedBody602_261

def RemovedBody602_263 : StackLang.HolProg 64 :=
.seq RemovedBody602_245 RemovedBody602_262

def RemovedBody602_264 : StackLang.HolProg 64 :=
.seq RemovedBody602_244 RemovedBody602_263

def RemovedBody602_265 : StackLang.HolProg 64 :=
.seq RemovedBody602_243 RemovedBody602_264

def RemovedBody602_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_273 : StackLang.HolProg 64 :=
.seq RemovedBody602_271 RemovedBody602_272

def RemovedBody602_274 : StackLang.HolProg 64 :=
.seq RemovedBody602_270 RemovedBody602_273

def RemovedBody602_275 : StackLang.HolProg 64 :=
.seq RemovedBody602_269 RemovedBody602_274

def RemovedBody602_276 : StackLang.HolProg 64 :=
.seq RemovedBody602_268 RemovedBody602_275

def RemovedBody602_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_278 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody602_279 : StackLang.HolProg 64 :=
.seq RemovedBody602_277 RemovedBody602_278

def RemovedBody602_280 : StackLang.HolProg 64 :=
.call (some (RemovedBody602_276, 0, 602, 6)) (Sum.inl 600) (some (RemovedBody602_279, 602, 7))

def RemovedBody602_281 : StackLang.HolProg 64 :=
.seq RemovedBody602_267 RemovedBody602_280

def RemovedBody602_282 : StackLang.HolProg 64 :=
.seq RemovedBody602_266 RemovedBody602_281

def RemovedBody602_283 : StackLang.HolProg 64 :=
.seq RemovedBody602_265 RemovedBody602_282

def RemovedBody602_284 : StackLang.HolProg 64 :=
.seq RemovedBody602_236 RemovedBody602_283

def RemovedBody602_285 : StackLang.HolProg 64 :=
.seq RemovedBody602_233 RemovedBody602_284

def RemovedBody602_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody602_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody602_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody602_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551328#64))

def RemovedBody602_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody602_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody602_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody602_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody602_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody602_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551328#64)))

def RemovedBody602_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551328#64))

def RemovedBody602_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody602_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody602_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody602_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_309 : StackLang.HolProg 64 :=
.seq RemovedBody602_307 RemovedBody602_308

def RemovedBody602_310 : StackLang.HolProg 64 :=
.seq RemovedBody602_306 RemovedBody602_309

def RemovedBody602_311 : StackLang.HolProg 64 :=
.seq RemovedBody602_305 RemovedBody602_310

def RemovedBody602_312 : StackLang.HolProg 64 :=
.seq RemovedBody602_304 RemovedBody602_311

def RemovedBody602_313 : StackLang.HolProg 64 :=
.seq RemovedBody602_303 RemovedBody602_312

def RemovedBody602_314 : StackLang.HolProg 64 :=
.seq RemovedBody602_302 RemovedBody602_313

def RemovedBody602_315 : StackLang.HolProg 64 :=
.seq RemovedBody602_301 RemovedBody602_314

def RemovedBody602_316 : StackLang.HolProg 64 :=
.seq RemovedBody602_300 RemovedBody602_315

def RemovedBody602_317 : StackLang.HolProg 64 :=
.seq RemovedBody602_299 RemovedBody602_316

def RemovedBody602_318 : StackLang.HolProg 64 :=
.seq RemovedBody602_298 RemovedBody602_317

def RemovedBody602_319 : StackLang.HolProg 64 :=
.seq RemovedBody602_297 RemovedBody602_318

def RemovedBody602_320 : StackLang.HolProg 64 :=
.seq RemovedBody602_296 RemovedBody602_319

def RemovedBody602_321 : StackLang.HolProg 64 :=
.seq RemovedBody602_295 RemovedBody602_320

def RemovedBody602_322 : StackLang.HolProg 64 :=
.seq RemovedBody602_294 RemovedBody602_321

def RemovedBody602_323 : StackLang.HolProg 64 :=
.seq RemovedBody602_293 RemovedBody602_322

def RemovedBody602_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2306#64)

def RemovedBody602_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_329 : StackLang.HolProg 64 :=
.seq RemovedBody602_327 RemovedBody602_328

def RemovedBody602_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_333 : StackLang.HolProg 64 :=
.seq RemovedBody602_331 RemovedBody602_332

def RemovedBody602_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_335 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_333 RemovedBody602_334

def RemovedBody602_336 : StackLang.HolProg 64 :=
.seq RemovedBody602_330 RemovedBody602_335

def RemovedBody602_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody602_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 602 11

def RemovedBody602_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody602_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody602_346 : StackLang.HolProg 64 :=
.seq RemovedBody602_344 RemovedBody602_345

def RemovedBody602_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody602_348 : StackLang.HolProg 64 :=
.seq RemovedBody602_346 RemovedBody602_347

def RemovedBody602_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_350 : StackLang.HolProg 64 :=
.seq RemovedBody602_348 RemovedBody602_349

def RemovedBody602_351 : StackLang.HolProg 64 :=
.seq RemovedBody602_343 RemovedBody602_350

def RemovedBody602_352 : StackLang.HolProg 64 :=
.seq RemovedBody602_342 RemovedBody602_351

def RemovedBody602_353 : StackLang.HolProg 64 :=
.seq RemovedBody602_341 RemovedBody602_352

def RemovedBody602_354 : StackLang.HolProg 64 :=
.seq RemovedBody602_340 RemovedBody602_353

def RemovedBody602_355 : StackLang.HolProg 64 :=
.seq RemovedBody602_339 RemovedBody602_354

def RemovedBody602_356 : StackLang.HolProg 64 :=
.seq RemovedBody602_338 RemovedBody602_355

def RemovedBody602_357 : StackLang.HolProg 64 :=
.seq RemovedBody602_337 RemovedBody602_356

def RemovedBody602_358 : StackLang.HolProg 64 :=
.seq RemovedBody602_336 RemovedBody602_357

def RemovedBody602_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_367 : StackLang.HolProg 64 :=
.seq RemovedBody602_365 RemovedBody602_366

def RemovedBody602_368 : StackLang.HolProg 64 :=
.seq RemovedBody602_364 RemovedBody602_367

def RemovedBody602_369 : StackLang.HolProg 64 :=
.seq RemovedBody602_363 RemovedBody602_368

def RemovedBody602_370 : StackLang.HolProg 64 :=
.seq RemovedBody602_362 RemovedBody602_369

def RemovedBody602_371 : StackLang.HolProg 64 :=
.seq RemovedBody602_361 RemovedBody602_370

def RemovedBody602_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_374 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody602_375 : StackLang.HolProg 64 :=
.seq RemovedBody602_373 RemovedBody602_374

def RemovedBody602_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody602_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2307#64)

def RemovedBody602_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_382 : StackLang.HolProg 64 :=
.seq RemovedBody602_380 RemovedBody602_381

def RemovedBody602_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody602_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody602_386 : StackLang.HolProg 64 :=
.seq RemovedBody602_384 RemovedBody602_385

def RemovedBody602_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_388 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody602_386 RemovedBody602_387

def RemovedBody602_389 : StackLang.HolProg 64 :=
.seq RemovedBody602_383 RemovedBody602_388

def RemovedBody602_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody602_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody602_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 602 10

def RemovedBody602_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody602_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody602_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody602_399 : StackLang.HolProg 64 :=
.seq RemovedBody602_397 RemovedBody602_398

def RemovedBody602_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody602_401 : StackLang.HolProg 64 :=
.seq RemovedBody602_399 RemovedBody602_400

def RemovedBody602_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_403 : StackLang.HolProg 64 :=
.seq RemovedBody602_401 RemovedBody602_402

def RemovedBody602_404 : StackLang.HolProg 64 :=
.seq RemovedBody602_396 RemovedBody602_403

def RemovedBody602_405 : StackLang.HolProg 64 :=
.seq RemovedBody602_395 RemovedBody602_404

def RemovedBody602_406 : StackLang.HolProg 64 :=
.seq RemovedBody602_394 RemovedBody602_405

def RemovedBody602_407 : StackLang.HolProg 64 :=
.seq RemovedBody602_393 RemovedBody602_406

def RemovedBody602_408 : StackLang.HolProg 64 :=
.seq RemovedBody602_392 RemovedBody602_407

def RemovedBody602_409 : StackLang.HolProg 64 :=
.seq RemovedBody602_391 RemovedBody602_408

def RemovedBody602_410 : StackLang.HolProg 64 :=
.seq RemovedBody602_390 RemovedBody602_409

def RemovedBody602_411 : StackLang.HolProg 64 :=
.seq RemovedBody602_389 RemovedBody602_410

def RemovedBody602_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody602_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody602_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody602_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_420 : StackLang.HolProg 64 :=
.seq RemovedBody602_418 RemovedBody602_419

def RemovedBody602_421 : StackLang.HolProg 64 :=
.seq RemovedBody602_417 RemovedBody602_420

def RemovedBody602_422 : StackLang.HolProg 64 :=
.seq RemovedBody602_416 RemovedBody602_421

def RemovedBody602_423 : StackLang.HolProg 64 :=
.seq RemovedBody602_415 RemovedBody602_422

def RemovedBody602_424 : StackLang.HolProg 64 :=
.seq RemovedBody602_414 RemovedBody602_423

def RemovedBody602_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_427 : StackLang.HolProg 64 :=
.seq RemovedBody602_425 RemovedBody602_426

def RemovedBody602_428 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody602_429 : StackLang.HolProg 64 :=
.seq RemovedBody602_427 RemovedBody602_428

def RemovedBody602_430 : StackLang.HolProg 64 :=
.call (some (RemovedBody602_424, 0, 602, 9)) (Sum.inl 597) (some (RemovedBody602_429, 602, 10))

def RemovedBody602_431 : StackLang.HolProg 64 :=
.seq RemovedBody602_413 RemovedBody602_430

def RemovedBody602_432 : StackLang.HolProg 64 :=
.seq RemovedBody602_412 RemovedBody602_431

def RemovedBody602_433 : StackLang.HolProg 64 :=
.seq RemovedBody602_411 RemovedBody602_432

def RemovedBody602_434 : StackLang.HolProg 64 :=
.seq RemovedBody602_382 RemovedBody602_433

def RemovedBody602_435 : StackLang.HolProg 64 :=
.seq RemovedBody602_379 RemovedBody602_434

def RemovedBody602_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_438 : StackLang.HolProg 64 :=
.seq RemovedBody602_436 RemovedBody602_437

def RemovedBody602_439 : StackLang.HolProg 64 :=
.seq RemovedBody602_435 RemovedBody602_438

def RemovedBody602_440 : StackLang.HolProg 64 :=
.seq RemovedBody602_378 RemovedBody602_439

def RemovedBody602_441 : StackLang.HolProg 64 :=
.seq RemovedBody602_377 RemovedBody602_440

def RemovedBody602_442 : StackLang.HolProg 64 :=
.seq RemovedBody602_376 RemovedBody602_441

def RemovedBody602_443 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody602_375 RemovedBody602_442

def RemovedBody602_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_446 : StackLang.HolProg 64 :=
.seq RemovedBody602_444 RemovedBody602_445

def RemovedBody602_447 : StackLang.HolProg 64 :=
.seq RemovedBody602_443 RemovedBody602_446

def RemovedBody602_448 : StackLang.HolProg 64 :=
.seq RemovedBody602_372 RemovedBody602_447

def RemovedBody602_449 : StackLang.HolProg 64 :=
.call (some (RemovedBody602_371, 0, 602, 8)) (Sum.inl 601) (some (RemovedBody602_448, 602, 11))

def RemovedBody602_450 : StackLang.HolProg 64 :=
.seq RemovedBody602_360 RemovedBody602_449

def RemovedBody602_451 : StackLang.HolProg 64 :=
.seq RemovedBody602_359 RemovedBody602_450

def RemovedBody602_452 : StackLang.HolProg 64 :=
.seq RemovedBody602_358 RemovedBody602_451

def RemovedBody602_453 : StackLang.HolProg 64 :=
.seq RemovedBody602_329 RemovedBody602_452

def RemovedBody602_454 : StackLang.HolProg 64 :=
.seq RemovedBody602_326 RemovedBody602_453

def RemovedBody602_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_457 : StackLang.HolProg 64 :=
.seq RemovedBody602_455 RemovedBody602_456

def RemovedBody602_458 : StackLang.HolProg 64 :=
.seq RemovedBody602_454 RemovedBody602_457

def RemovedBody602_459 : StackLang.HolProg 64 :=
.seq RemovedBody602_325 RemovedBody602_458

def RemovedBody602_460 : StackLang.HolProg 64 :=
.seq RemovedBody602_324 RemovedBody602_459

def RemovedBody602_461 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody602_323 RemovedBody602_460

def RemovedBody602_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_464 : StackLang.HolProg 64 :=
.seq RemovedBody602_462 RemovedBody602_463

def RemovedBody602_465 : StackLang.HolProg 64 :=
.seq RemovedBody602_461 RemovedBody602_464

def RemovedBody602_466 : StackLang.HolProg 64 :=
.seq RemovedBody602_292 RemovedBody602_465

def RemovedBody602_467 : StackLang.HolProg 64 :=
.seq RemovedBody602_291 RemovedBody602_466

def RemovedBody602_468 : StackLang.HolProg 64 :=
.seq RemovedBody602_290 RemovedBody602_467

def RemovedBody602_469 : StackLang.HolProg 64 :=
.seq RemovedBody602_289 RemovedBody602_468

def RemovedBody602_470 : StackLang.HolProg 64 :=
.seq RemovedBody602_288 RemovedBody602_469

def RemovedBody602_471 : StackLang.HolProg 64 :=
.seq RemovedBody602_287 RemovedBody602_470

def RemovedBody602_472 : StackLang.HolProg 64 :=
.seq RemovedBody602_286 RemovedBody602_471

def RemovedBody602_473 : StackLang.HolProg 64 :=
.seq RemovedBody602_285 RemovedBody602_472

def RemovedBody602_474 : StackLang.HolProg 64 :=
.seq RemovedBody602_232 RemovedBody602_473

def RemovedBody602_475 : StackLang.HolProg 64 :=
.seq RemovedBody602_231 RemovedBody602_474

def RemovedBody602_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody602_479 : StackLang.HolProg 64 :=
.seq RemovedBody602_477 RemovedBody602_478

def RemovedBody602_480 : StackLang.HolProg 64 :=
.seq RemovedBody602_476 RemovedBody602_479

def RemovedBody602_481 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody602_475 RemovedBody602_480

def RemovedBody602_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody602_485 : StackLang.HolProg 64 :=
.seq RemovedBody602_483 RemovedBody602_484

def RemovedBody602_486 : StackLang.HolProg 64 :=
.seq RemovedBody602_482 RemovedBody602_485

def RemovedBody602_487 : StackLang.HolProg 64 :=
.seq RemovedBody602_481 RemovedBody602_486

def RemovedBody602_488 : StackLang.HolProg 64 :=
.seq RemovedBody602_230 RemovedBody602_487

def RemovedBody602_489 : StackLang.HolProg 64 :=
.seq RemovedBody602_229 RemovedBody602_488

def RemovedBody602_490 : StackLang.HolProg 64 :=
.seq RemovedBody602_228 RemovedBody602_489

def RemovedBody602_491 : StackLang.HolProg 64 :=
.seq RemovedBody602_227 RemovedBody602_490

def RemovedBody602_492 : StackLang.HolProg 64 :=
.seq RemovedBody602_20 RemovedBody602_491

def RemovedBody602_493 : StackLang.HolProg 64 :=
.seq RemovedBody602_19 RemovedBody602_492

def RemovedBody602_494 : StackLang.HolProg 64 :=
.seq RemovedBody602_18 RemovedBody602_493

def RemovedBody602_495 : StackLang.HolProg 64 :=
.seq RemovedBody602_17 RemovedBody602_494

def RemovedBody602_496 : StackLang.HolProg 64 :=
.seq RemovedBody602_16 RemovedBody602_495

def RemovedBody602_497 : StackLang.HolProg 64 :=
.seq RemovedBody602_15 RemovedBody602_496

def RemovedBody602_498 : StackLang.HolProg 64 :=
.seq RemovedBody602_14 RemovedBody602_497

def RemovedBody602_499 : StackLang.HolProg 64 :=
.seq RemovedBody602_13 RemovedBody602_498

def RemovedBody602_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody602_502 : StackLang.HolProg 64 :=
.seq RemovedBody602_500 RemovedBody602_501

def RemovedBody602_503 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody602_499 RemovedBody602_502

def RemovedBody602_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_506 : StackLang.HolProg 64 :=
.seq RemovedBody602_504 RemovedBody602_505

def RemovedBody602_507 : StackLang.HolProg 64 :=
.seq RemovedBody602_503 RemovedBody602_506

def RemovedBody602_508 : StackLang.HolProg 64 :=
.seq RemovedBody602_12 RemovedBody602_507

def RemovedBody602_509 : StackLang.HolProg 64 :=
.seq RemovedBody602_11 RemovedBody602_508

def RemovedBody602_510 : StackLang.HolProg 64 :=
.loop RemovedBody602_509

def RemovedBody602_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody602_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody602_513 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody602_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody602_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody602_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody602_517 : StackLang.HolProg 64 :=
.seq RemovedBody602_515 RemovedBody602_516

def RemovedBody602_518 : StackLang.HolProg 64 :=
.seq RemovedBody602_514 RemovedBody602_517

def RemovedBody602_519 : StackLang.HolProg 64 :=
.seq RemovedBody602_513 RemovedBody602_518

def RemovedBody602_520 : StackLang.HolProg 64 :=
.seq RemovedBody602_512 RemovedBody602_519

def RemovedBody602_521 : StackLang.HolProg 64 :=
.seq RemovedBody602_511 RemovedBody602_520

def RemovedBody602_522 : StackLang.HolProg 64 :=
.seq RemovedBody602_510 RemovedBody602_521

def RemovedBody602_523 : StackLang.HolProg 64 :=
.seq RemovedBody602_10 RemovedBody602_522

def RemovedBody602_524 : StackLang.HolProg 64 :=
.seq RemovedBody602_9 RemovedBody602_523

def RemovedBody602_525 : StackLang.HolProg 64 :=
.seq RemovedBody602_8 RemovedBody602_524

def RemovedBody602_526 : StackLang.HolProg 64 :=
.seq RemovedBody602_7 RemovedBody602_525

def RemovedBody602_527 : StackLang.HolProg 64 :=
.seq RemovedBody602_6 RemovedBody602_526

def Removed602 : Nat × StackLang.HolProg 64 := (602, RemovedBody602_527)
theorem Removed602_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc602 = Removed602 := by
  kernel_rfl
#print axioms Removed602_eq
end InitECandidate.Proofs.BackendStages
