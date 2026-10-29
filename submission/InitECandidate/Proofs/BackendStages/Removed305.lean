import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc305
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody305_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody305_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_3 : StackLang.HolProg 64 :=
.seq RemovedBody305_1 RemovedBody305_2

def RemovedBody305_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_3 RemovedBody305_4

def RemovedBody305_6 : StackLang.HolProg 64 :=
.seq RemovedBody305_0 RemovedBody305_5

def RemovedBody305_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody305_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody305_9 : StackLang.HolProg 64 :=
.seq RemovedBody305_7 RemovedBody305_8

def RemovedBody305_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody305_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody305_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody305_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551488#64))

def RemovedBody305_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody305_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_18 : StackLang.HolProg 64 :=
.seq RemovedBody305_16 RemovedBody305_17

def RemovedBody305_19 : StackLang.HolProg 64 :=
.seq RemovedBody305_15 RemovedBody305_18

def RemovedBody305_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 839#64)

def RemovedBody305_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_23 : StackLang.HolProg 64 :=
.seq RemovedBody305_21 RemovedBody305_22

def RemovedBody305_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_27 : StackLang.HolProg 64 :=
.seq RemovedBody305_25 RemovedBody305_26

def RemovedBody305_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_29 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_27 RemovedBody305_28

def RemovedBody305_30 : StackLang.HolProg 64 :=
.seq RemovedBody305_24 RemovedBody305_29

def RemovedBody305_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 3

def RemovedBody305_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_40 : StackLang.HolProg 64 :=
.seq RemovedBody305_38 RemovedBody305_39

def RemovedBody305_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_42 : StackLang.HolProg 64 :=
.seq RemovedBody305_40 RemovedBody305_41

def RemovedBody305_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_44 : StackLang.HolProg 64 :=
.seq RemovedBody305_42 RemovedBody305_43

def RemovedBody305_45 : StackLang.HolProg 64 :=
.seq RemovedBody305_37 RemovedBody305_44

def RemovedBody305_46 : StackLang.HolProg 64 :=
.seq RemovedBody305_36 RemovedBody305_45

def RemovedBody305_47 : StackLang.HolProg 64 :=
.seq RemovedBody305_35 RemovedBody305_46

def RemovedBody305_48 : StackLang.HolProg 64 :=
.seq RemovedBody305_34 RemovedBody305_47

def RemovedBody305_49 : StackLang.HolProg 64 :=
.seq RemovedBody305_33 RemovedBody305_48

def RemovedBody305_50 : StackLang.HolProg 64 :=
.seq RemovedBody305_32 RemovedBody305_49

def RemovedBody305_51 : StackLang.HolProg 64 :=
.seq RemovedBody305_31 RemovedBody305_50

def RemovedBody305_52 : StackLang.HolProg 64 :=
.seq RemovedBody305_30 RemovedBody305_51

def RemovedBody305_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody305_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_63 : StackLang.HolProg 64 :=
.seq RemovedBody305_61 RemovedBody305_62

def RemovedBody305_64 : StackLang.HolProg 64 :=
.seq RemovedBody305_60 RemovedBody305_63

def RemovedBody305_65 : StackLang.HolProg 64 :=
.seq RemovedBody305_59 RemovedBody305_64

def RemovedBody305_66 : StackLang.HolProg 64 :=
.seq RemovedBody305_58 RemovedBody305_65

def RemovedBody305_67 : StackLang.HolProg 64 :=
.seq RemovedBody305_57 RemovedBody305_66

def RemovedBody305_68 : StackLang.HolProg 64 :=
.seq RemovedBody305_56 RemovedBody305_67

def RemovedBody305_69 : StackLang.HolProg 64 :=
.seq RemovedBody305_55 RemovedBody305_68

def RemovedBody305_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_73 : StackLang.HolProg 64 :=
.seq RemovedBody305_71 RemovedBody305_72

def RemovedBody305_74 : StackLang.HolProg 64 :=
.seq RemovedBody305_70 RemovedBody305_73

def RemovedBody305_75 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_76 : StackLang.HolProg 64 :=
.seq RemovedBody305_74 RemovedBody305_75

def RemovedBody305_77 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_69, 0, 305, 2)) (Sum.inl 79) (some (RemovedBody305_76, 305, 3))

def RemovedBody305_78 : StackLang.HolProg 64 :=
.seq RemovedBody305_54 RemovedBody305_77

def RemovedBody305_79 : StackLang.HolProg 64 :=
.seq RemovedBody305_53 RemovedBody305_78

def RemovedBody305_80 : StackLang.HolProg 64 :=
.seq RemovedBody305_52 RemovedBody305_79

def RemovedBody305_81 : StackLang.HolProg 64 :=
.seq RemovedBody305_23 RemovedBody305_80

def RemovedBody305_82 : StackLang.HolProg 64 :=
.seq RemovedBody305_20 RemovedBody305_81

def RemovedBody305_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody305_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody305_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody305_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody305_91 : StackLang.HolProg 64 :=
.seq RemovedBody305_89 RemovedBody305_90

def RemovedBody305_92 : StackLang.HolProg 64 :=
.seq RemovedBody305_88 RemovedBody305_91

def RemovedBody305_93 : StackLang.HolProg 64 :=
.seq RemovedBody305_87 RemovedBody305_92

def RemovedBody305_94 : StackLang.HolProg 64 :=
.seq RemovedBody305_86 RemovedBody305_93

def RemovedBody305_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_96 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody305_94 RemovedBody305_95

def RemovedBody305_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody305_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_103 : StackLang.HolProg 64 :=
.seq RemovedBody305_101 RemovedBody305_102

def RemovedBody305_104 : StackLang.HolProg 64 :=
.seq RemovedBody305_100 RemovedBody305_103

def RemovedBody305_105 : StackLang.HolProg 64 :=
.seq RemovedBody305_99 RemovedBody305_104

def RemovedBody305_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 840#64)

def RemovedBody305_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_109 : StackLang.HolProg 64 :=
.seq RemovedBody305_107 RemovedBody305_108

def RemovedBody305_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_113 : StackLang.HolProg 64 :=
.seq RemovedBody305_111 RemovedBody305_112

def RemovedBody305_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_113 RemovedBody305_114

def RemovedBody305_116 : StackLang.HolProg 64 :=
.seq RemovedBody305_110 RemovedBody305_115

def RemovedBody305_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 5

def RemovedBody305_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_126 : StackLang.HolProg 64 :=
.seq RemovedBody305_124 RemovedBody305_125

def RemovedBody305_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_128 : StackLang.HolProg 64 :=
.seq RemovedBody305_126 RemovedBody305_127

def RemovedBody305_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_130 : StackLang.HolProg 64 :=
.seq RemovedBody305_128 RemovedBody305_129

def RemovedBody305_131 : StackLang.HolProg 64 :=
.seq RemovedBody305_123 RemovedBody305_130

def RemovedBody305_132 : StackLang.HolProg 64 :=
.seq RemovedBody305_122 RemovedBody305_131

def RemovedBody305_133 : StackLang.HolProg 64 :=
.seq RemovedBody305_121 RemovedBody305_132

def RemovedBody305_134 : StackLang.HolProg 64 :=
.seq RemovedBody305_120 RemovedBody305_133

def RemovedBody305_135 : StackLang.HolProg 64 :=
.seq RemovedBody305_119 RemovedBody305_134

def RemovedBody305_136 : StackLang.HolProg 64 :=
.seq RemovedBody305_118 RemovedBody305_135

def RemovedBody305_137 : StackLang.HolProg 64 :=
.seq RemovedBody305_117 RemovedBody305_136

def RemovedBody305_138 : StackLang.HolProg 64 :=
.seq RemovedBody305_116 RemovedBody305_137

def RemovedBody305_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody305_146 : StackLang.HolProg 64 :=
.seq RemovedBody305_144 RemovedBody305_145

def RemovedBody305_147 : StackLang.HolProg 64 :=
.seq RemovedBody305_143 RemovedBody305_146

def RemovedBody305_148 : StackLang.HolProg 64 :=
.seq RemovedBody305_142 RemovedBody305_147

def RemovedBody305_149 : StackLang.HolProg 64 :=
.seq RemovedBody305_141 RemovedBody305_148

def RemovedBody305_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_152 : StackLang.HolProg 64 :=
.seq RemovedBody305_150 RemovedBody305_151

def RemovedBody305_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_149, 0, 305, 4)) (Sum.inl 294) (some (RemovedBody305_152, 305, 5))

def RemovedBody305_154 : StackLang.HolProg 64 :=
.seq RemovedBody305_140 RemovedBody305_153

def RemovedBody305_155 : StackLang.HolProg 64 :=
.seq RemovedBody305_139 RemovedBody305_154

def RemovedBody305_156 : StackLang.HolProg 64 :=
.seq RemovedBody305_138 RemovedBody305_155

def RemovedBody305_157 : StackLang.HolProg 64 :=
.seq RemovedBody305_109 RemovedBody305_156

def RemovedBody305_158 : StackLang.HolProg 64 :=
.seq RemovedBody305_106 RemovedBody305_157

def RemovedBody305_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody305_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody305_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_166 : StackLang.HolProg 64 :=
.seq RemovedBody305_164 RemovedBody305_165

def RemovedBody305_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 841#64)

def RemovedBody305_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_170 : StackLang.HolProg 64 :=
.seq RemovedBody305_168 RemovedBody305_169

def RemovedBody305_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_174 : StackLang.HolProg 64 :=
.seq RemovedBody305_172 RemovedBody305_173

def RemovedBody305_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_174 RemovedBody305_175

def RemovedBody305_177 : StackLang.HolProg 64 :=
.seq RemovedBody305_171 RemovedBody305_176

def RemovedBody305_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 7

def RemovedBody305_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_187 : StackLang.HolProg 64 :=
.seq RemovedBody305_185 RemovedBody305_186

def RemovedBody305_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_189 : StackLang.HolProg 64 :=
.seq RemovedBody305_187 RemovedBody305_188

def RemovedBody305_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_191 : StackLang.HolProg 64 :=
.seq RemovedBody305_189 RemovedBody305_190

def RemovedBody305_192 : StackLang.HolProg 64 :=
.seq RemovedBody305_184 RemovedBody305_191

def RemovedBody305_193 : StackLang.HolProg 64 :=
.seq RemovedBody305_183 RemovedBody305_192

def RemovedBody305_194 : StackLang.HolProg 64 :=
.seq RemovedBody305_182 RemovedBody305_193

def RemovedBody305_195 : StackLang.HolProg 64 :=
.seq RemovedBody305_181 RemovedBody305_194

def RemovedBody305_196 : StackLang.HolProg 64 :=
.seq RemovedBody305_180 RemovedBody305_195

def RemovedBody305_197 : StackLang.HolProg 64 :=
.seq RemovedBody305_179 RemovedBody305_196

def RemovedBody305_198 : StackLang.HolProg 64 :=
.seq RemovedBody305_178 RemovedBody305_197

def RemovedBody305_199 : StackLang.HolProg 64 :=
.seq RemovedBody305_177 RemovedBody305_198

def RemovedBody305_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_209 : StackLang.HolProg 64 :=
.seq RemovedBody305_207 RemovedBody305_208

def RemovedBody305_210 : StackLang.HolProg 64 :=
.seq RemovedBody305_206 RemovedBody305_209

def RemovedBody305_211 : StackLang.HolProg 64 :=
.seq RemovedBody305_205 RemovedBody305_210

def RemovedBody305_212 : StackLang.HolProg 64 :=
.seq RemovedBody305_204 RemovedBody305_211

def RemovedBody305_213 : StackLang.HolProg 64 :=
.seq RemovedBody305_203 RemovedBody305_212

def RemovedBody305_214 : StackLang.HolProg 64 :=
.seq RemovedBody305_202 RemovedBody305_213

def RemovedBody305_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_218 : StackLang.HolProg 64 :=
.seq RemovedBody305_216 RemovedBody305_217

def RemovedBody305_219 : StackLang.HolProg 64 :=
.seq RemovedBody305_215 RemovedBody305_218

def RemovedBody305_220 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_221 : StackLang.HolProg 64 :=
.seq RemovedBody305_219 RemovedBody305_220

def RemovedBody305_222 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_214, 0, 305, 6)) (Sum.inl 286) (some (RemovedBody305_221, 305, 7))

def RemovedBody305_223 : StackLang.HolProg 64 :=
.seq RemovedBody305_201 RemovedBody305_222

def RemovedBody305_224 : StackLang.HolProg 64 :=
.seq RemovedBody305_200 RemovedBody305_223

def RemovedBody305_225 : StackLang.HolProg 64 :=
.seq RemovedBody305_199 RemovedBody305_224

def RemovedBody305_226 : StackLang.HolProg 64 :=
.seq RemovedBody305_170 RemovedBody305_225

def RemovedBody305_227 : StackLang.HolProg 64 :=
.seq RemovedBody305_167 RemovedBody305_226

def RemovedBody305_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_230 : StackLang.HolProg 64 :=
.seq RemovedBody305_228 RemovedBody305_229

def RemovedBody305_231 : StackLang.HolProg 64 :=
.seq RemovedBody305_227 RemovedBody305_230

def RemovedBody305_232 : StackLang.HolProg 64 :=
.seq RemovedBody305_166 RemovedBody305_231

def RemovedBody305_233 : StackLang.HolProg 64 :=
.seq RemovedBody305_163 RemovedBody305_232

def RemovedBody305_234 : StackLang.HolProg 64 :=
.seq RemovedBody305_162 RemovedBody305_233

def RemovedBody305_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_237 : StackLang.HolProg 64 :=
.seq RemovedBody305_235 RemovedBody305_236

def RemovedBody305_238 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody305_234 RemovedBody305_237

def RemovedBody305_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody305_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 842#64)

def RemovedBody305_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_244 : StackLang.HolProg 64 :=
.seq RemovedBody305_242 RemovedBody305_243

def RemovedBody305_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_248 : StackLang.HolProg 64 :=
.seq RemovedBody305_246 RemovedBody305_247

def RemovedBody305_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_248 RemovedBody305_249

def RemovedBody305_251 : StackLang.HolProg 64 :=
.seq RemovedBody305_245 RemovedBody305_250

def RemovedBody305_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 9

def RemovedBody305_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_261 : StackLang.HolProg 64 :=
.seq RemovedBody305_259 RemovedBody305_260

def RemovedBody305_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_263 : StackLang.HolProg 64 :=
.seq RemovedBody305_261 RemovedBody305_262

def RemovedBody305_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_265 : StackLang.HolProg 64 :=
.seq RemovedBody305_263 RemovedBody305_264

def RemovedBody305_266 : StackLang.HolProg 64 :=
.seq RemovedBody305_258 RemovedBody305_265

def RemovedBody305_267 : StackLang.HolProg 64 :=
.seq RemovedBody305_257 RemovedBody305_266

def RemovedBody305_268 : StackLang.HolProg 64 :=
.seq RemovedBody305_256 RemovedBody305_267

def RemovedBody305_269 : StackLang.HolProg 64 :=
.seq RemovedBody305_255 RemovedBody305_268

def RemovedBody305_270 : StackLang.HolProg 64 :=
.seq RemovedBody305_254 RemovedBody305_269

def RemovedBody305_271 : StackLang.HolProg 64 :=
.seq RemovedBody305_253 RemovedBody305_270

def RemovedBody305_272 : StackLang.HolProg 64 :=
.seq RemovedBody305_252 RemovedBody305_271

def RemovedBody305_273 : StackLang.HolProg 64 :=
.seq RemovedBody305_251 RemovedBody305_272

def RemovedBody305_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody305_281 : StackLang.HolProg 64 :=
.seq RemovedBody305_279 RemovedBody305_280

def RemovedBody305_282 : StackLang.HolProg 64 :=
.seq RemovedBody305_278 RemovedBody305_281

def RemovedBody305_283 : StackLang.HolProg 64 :=
.seq RemovedBody305_277 RemovedBody305_282

def RemovedBody305_284 : StackLang.HolProg 64 :=
.seq RemovedBody305_276 RemovedBody305_283

def RemovedBody305_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_286 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_287 : StackLang.HolProg 64 :=
.seq RemovedBody305_285 RemovedBody305_286

def RemovedBody305_288 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_284, 0, 305, 8)) (Sum.inl 304) (some (RemovedBody305_287, 305, 9))

def RemovedBody305_289 : StackLang.HolProg 64 :=
.seq RemovedBody305_275 RemovedBody305_288

def RemovedBody305_290 : StackLang.HolProg 64 :=
.seq RemovedBody305_274 RemovedBody305_289

def RemovedBody305_291 : StackLang.HolProg 64 :=
.seq RemovedBody305_273 RemovedBody305_290

def RemovedBody305_292 : StackLang.HolProg 64 :=
.seq RemovedBody305_244 RemovedBody305_291

def RemovedBody305_293 : StackLang.HolProg 64 :=
.seq RemovedBody305_241 RemovedBody305_292

def RemovedBody305_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody305_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody305_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 843#64)

def RemovedBody305_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_303 : StackLang.HolProg 64 :=
.seq RemovedBody305_301 RemovedBody305_302

def RemovedBody305_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_307 : StackLang.HolProg 64 :=
.seq RemovedBody305_305 RemovedBody305_306

def RemovedBody305_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_309 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_307 RemovedBody305_308

def RemovedBody305_310 : StackLang.HolProg 64 :=
.seq RemovedBody305_304 RemovedBody305_309

def RemovedBody305_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 11

def RemovedBody305_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_320 : StackLang.HolProg 64 :=
.seq RemovedBody305_318 RemovedBody305_319

def RemovedBody305_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_322 : StackLang.HolProg 64 :=
.seq RemovedBody305_320 RemovedBody305_321

def RemovedBody305_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_324 : StackLang.HolProg 64 :=
.seq RemovedBody305_322 RemovedBody305_323

def RemovedBody305_325 : StackLang.HolProg 64 :=
.seq RemovedBody305_317 RemovedBody305_324

def RemovedBody305_326 : StackLang.HolProg 64 :=
.seq RemovedBody305_316 RemovedBody305_325

def RemovedBody305_327 : StackLang.HolProg 64 :=
.seq RemovedBody305_315 RemovedBody305_326

def RemovedBody305_328 : StackLang.HolProg 64 :=
.seq RemovedBody305_314 RemovedBody305_327

def RemovedBody305_329 : StackLang.HolProg 64 :=
.seq RemovedBody305_313 RemovedBody305_328

def RemovedBody305_330 : StackLang.HolProg 64 :=
.seq RemovedBody305_312 RemovedBody305_329

def RemovedBody305_331 : StackLang.HolProg 64 :=
.seq RemovedBody305_311 RemovedBody305_330

def RemovedBody305_332 : StackLang.HolProg 64 :=
.seq RemovedBody305_310 RemovedBody305_331

def RemovedBody305_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody305_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_341 : StackLang.HolProg 64 :=
.seq RemovedBody305_339 RemovedBody305_340

def RemovedBody305_342 : StackLang.HolProg 64 :=
.seq RemovedBody305_338 RemovedBody305_341

def RemovedBody305_343 : StackLang.HolProg 64 :=
.seq RemovedBody305_337 RemovedBody305_342

def RemovedBody305_344 : StackLang.HolProg 64 :=
.seq RemovedBody305_336 RemovedBody305_343

def RemovedBody305_345 : StackLang.HolProg 64 :=
.seq RemovedBody305_335 RemovedBody305_344

def RemovedBody305_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_347 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_348 : StackLang.HolProg 64 :=
.seq RemovedBody305_346 RemovedBody305_347

def RemovedBody305_349 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_345, 0, 305, 10)) (Sum.inl 68) (some (RemovedBody305_348, 305, 11))

def RemovedBody305_350 : StackLang.HolProg 64 :=
.seq RemovedBody305_334 RemovedBody305_349

def RemovedBody305_351 : StackLang.HolProg 64 :=
.seq RemovedBody305_333 RemovedBody305_350

def RemovedBody305_352 : StackLang.HolProg 64 :=
.seq RemovedBody305_332 RemovedBody305_351

def RemovedBody305_353 : StackLang.HolProg 64 :=
.seq RemovedBody305_303 RemovedBody305_352

def RemovedBody305_354 : StackLang.HolProg 64 :=
.seq RemovedBody305_300 RemovedBody305_353

def RemovedBody305_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody305_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def RemovedBody305_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 844#64)

def RemovedBody305_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_362 : StackLang.HolProg 64 :=
.seq RemovedBody305_360 RemovedBody305_361

def RemovedBody305_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody305_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody305_366 : StackLang.HolProg 64 :=
.seq RemovedBody305_364 RemovedBody305_365

def RemovedBody305_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_368 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody305_366 RemovedBody305_367

def RemovedBody305_369 : StackLang.HolProg 64 :=
.seq RemovedBody305_363 RemovedBody305_368

def RemovedBody305_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody305_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody305_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 305 13

def RemovedBody305_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody305_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody305_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody305_379 : StackLang.HolProg 64 :=
.seq RemovedBody305_377 RemovedBody305_378

def RemovedBody305_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody305_381 : StackLang.HolProg 64 :=
.seq RemovedBody305_379 RemovedBody305_380

def RemovedBody305_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_383 : StackLang.HolProg 64 :=
.seq RemovedBody305_381 RemovedBody305_382

def RemovedBody305_384 : StackLang.HolProg 64 :=
.seq RemovedBody305_376 RemovedBody305_383

def RemovedBody305_385 : StackLang.HolProg 64 :=
.seq RemovedBody305_375 RemovedBody305_384

def RemovedBody305_386 : StackLang.HolProg 64 :=
.seq RemovedBody305_374 RemovedBody305_385

def RemovedBody305_387 : StackLang.HolProg 64 :=
.seq RemovedBody305_373 RemovedBody305_386

def RemovedBody305_388 : StackLang.HolProg 64 :=
.seq RemovedBody305_372 RemovedBody305_387

def RemovedBody305_389 : StackLang.HolProg 64 :=
.seq RemovedBody305_371 RemovedBody305_388

def RemovedBody305_390 : StackLang.HolProg 64 :=
.seq RemovedBody305_370 RemovedBody305_389

def RemovedBody305_391 : StackLang.HolProg 64 :=
.seq RemovedBody305_369 RemovedBody305_390

def RemovedBody305_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody305_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody305_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_401 : StackLang.HolProg 64 :=
.seq RemovedBody305_399 RemovedBody305_400

def RemovedBody305_402 : StackLang.HolProg 64 :=
.seq RemovedBody305_398 RemovedBody305_401

def RemovedBody305_403 : StackLang.HolProg 64 :=
.seq RemovedBody305_397 RemovedBody305_402

def RemovedBody305_404 : StackLang.HolProg 64 :=
.seq RemovedBody305_396 RemovedBody305_403

def RemovedBody305_405 : StackLang.HolProg 64 :=
.seq RemovedBody305_395 RemovedBody305_404

def RemovedBody305_406 : StackLang.HolProg 64 :=
.seq RemovedBody305_394 RemovedBody305_405

def RemovedBody305_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody305_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody305_410 : StackLang.HolProg 64 :=
.seq RemovedBody305_408 RemovedBody305_409

def RemovedBody305_411 : StackLang.HolProg 64 :=
.seq RemovedBody305_407 RemovedBody305_410

def RemovedBody305_412 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody305_413 : StackLang.HolProg 64 :=
.seq RemovedBody305_411 RemovedBody305_412

def RemovedBody305_414 : StackLang.HolProg 64 :=
.call (some (RemovedBody305_406, 0, 305, 12)) (Sum.inl 77) (some (RemovedBody305_413, 305, 13))

def RemovedBody305_415 : StackLang.HolProg 64 :=
.seq RemovedBody305_393 RemovedBody305_414

def RemovedBody305_416 : StackLang.HolProg 64 :=
.seq RemovedBody305_392 RemovedBody305_415

def RemovedBody305_417 : StackLang.HolProg 64 :=
.seq RemovedBody305_391 RemovedBody305_416

def RemovedBody305_418 : StackLang.HolProg 64 :=
.seq RemovedBody305_362 RemovedBody305_417

def RemovedBody305_419 : StackLang.HolProg 64 :=
.seq RemovedBody305_359 RemovedBody305_418

def RemovedBody305_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody305_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody305_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody305_426 : StackLang.HolProg 64 :=
.seq RemovedBody305_424 RemovedBody305_425

def RemovedBody305_427 : StackLang.HolProg 64 :=
.seq RemovedBody305_423 RemovedBody305_426

def RemovedBody305_428 : StackLang.HolProg 64 :=
.seq RemovedBody305_422 RemovedBody305_427

def RemovedBody305_429 : StackLang.HolProg 64 :=
.seq RemovedBody305_421 RemovedBody305_428

def RemovedBody305_430 : StackLang.HolProg 64 :=
.seq RemovedBody305_420 RemovedBody305_429

def RemovedBody305_431 : StackLang.HolProg 64 :=
.seq RemovedBody305_419 RemovedBody305_430

def RemovedBody305_432 : StackLang.HolProg 64 :=
.seq RemovedBody305_358 RemovedBody305_431

def RemovedBody305_433 : StackLang.HolProg 64 :=
.seq RemovedBody305_357 RemovedBody305_432

def RemovedBody305_434 : StackLang.HolProg 64 :=
.seq RemovedBody305_356 RemovedBody305_433

def RemovedBody305_435 : StackLang.HolProg 64 :=
.seq RemovedBody305_355 RemovedBody305_434

def RemovedBody305_436 : StackLang.HolProg 64 :=
.seq RemovedBody305_354 RemovedBody305_435

def RemovedBody305_437 : StackLang.HolProg 64 :=
.seq RemovedBody305_299 RemovedBody305_436

def RemovedBody305_438 : StackLang.HolProg 64 :=
.seq RemovedBody305_298 RemovedBody305_437

def RemovedBody305_439 : StackLang.HolProg 64 :=
.seq RemovedBody305_297 RemovedBody305_438

def RemovedBody305_440 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody305_442 : StackLang.HolProg 64 :=
.seq RemovedBody305_440 RemovedBody305_441

def RemovedBody305_443 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody305_439 RemovedBody305_442

def RemovedBody305_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody305_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody305_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody305_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody305_448 : StackLang.HolProg 64 :=
.seq RemovedBody305_446 RemovedBody305_447

def RemovedBody305_449 : StackLang.HolProg 64 :=
.seq RemovedBody305_445 RemovedBody305_448

def RemovedBody305_450 : StackLang.HolProg 64 :=
.seq RemovedBody305_444 RemovedBody305_449

def RemovedBody305_451 : StackLang.HolProg 64 :=
.seq RemovedBody305_443 RemovedBody305_450

def RemovedBody305_452 : StackLang.HolProg 64 :=
.seq RemovedBody305_296 RemovedBody305_451

def RemovedBody305_453 : StackLang.HolProg 64 :=
.seq RemovedBody305_295 RemovedBody305_452

def RemovedBody305_454 : StackLang.HolProg 64 :=
.seq RemovedBody305_294 RemovedBody305_453

def RemovedBody305_455 : StackLang.HolProg 64 :=
.seq RemovedBody305_293 RemovedBody305_454

def RemovedBody305_456 : StackLang.HolProg 64 :=
.seq RemovedBody305_240 RemovedBody305_455

def RemovedBody305_457 : StackLang.HolProg 64 :=
.seq RemovedBody305_239 RemovedBody305_456

def RemovedBody305_458 : StackLang.HolProg 64 :=
.seq RemovedBody305_238 RemovedBody305_457

def RemovedBody305_459 : StackLang.HolProg 64 :=
.seq RemovedBody305_161 RemovedBody305_458

def RemovedBody305_460 : StackLang.HolProg 64 :=
.seq RemovedBody305_160 RemovedBody305_459

def RemovedBody305_461 : StackLang.HolProg 64 :=
.seq RemovedBody305_159 RemovedBody305_460

def RemovedBody305_462 : StackLang.HolProg 64 :=
.seq RemovedBody305_158 RemovedBody305_461

def RemovedBody305_463 : StackLang.HolProg 64 :=
.seq RemovedBody305_105 RemovedBody305_462

def RemovedBody305_464 : StackLang.HolProg 64 :=
.seq RemovedBody305_98 RemovedBody305_463

def RemovedBody305_465 : StackLang.HolProg 64 :=
.seq RemovedBody305_97 RemovedBody305_464

def RemovedBody305_466 : StackLang.HolProg 64 :=
.seq RemovedBody305_96 RemovedBody305_465

def RemovedBody305_467 : StackLang.HolProg 64 :=
.seq RemovedBody305_85 RemovedBody305_466

def RemovedBody305_468 : StackLang.HolProg 64 :=
.seq RemovedBody305_84 RemovedBody305_467

def RemovedBody305_469 : StackLang.HolProg 64 :=
.seq RemovedBody305_83 RemovedBody305_468

def RemovedBody305_470 : StackLang.HolProg 64 :=
.seq RemovedBody305_82 RemovedBody305_469

def RemovedBody305_471 : StackLang.HolProg 64 :=
.seq RemovedBody305_19 RemovedBody305_470

def RemovedBody305_472 : StackLang.HolProg 64 :=
.seq RemovedBody305_14 RemovedBody305_471

def RemovedBody305_473 : StackLang.HolProg 64 :=
.seq RemovedBody305_13 RemovedBody305_472

def RemovedBody305_474 : StackLang.HolProg 64 :=
.seq RemovedBody305_12 RemovedBody305_473

def RemovedBody305_475 : StackLang.HolProg 64 :=
.seq RemovedBody305_11 RemovedBody305_474

def RemovedBody305_476 : StackLang.HolProg 64 :=
.seq RemovedBody305_10 RemovedBody305_475

def RemovedBody305_477 : StackLang.HolProg 64 :=
.seq RemovedBody305_9 RemovedBody305_476

def RemovedBody305_478 : StackLang.HolProg 64 :=
.seq RemovedBody305_6 RemovedBody305_477

def Removed305 : Nat × StackLang.HolProg 64 := (305, RemovedBody305_478)
theorem Removed305_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc305 = Removed305 := by
  kernel_rfl
#print axioms Removed305_eq
end InitECandidate.Proofs.BackendStages
