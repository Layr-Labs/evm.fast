import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc389
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody389_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody389_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_3 : StackLang.HolProg 64 :=
.seq RemovedBody389_1 RemovedBody389_2

def RemovedBody389_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_3 RemovedBody389_4

def RemovedBody389_6 : StackLang.HolProg 64 :=
.seq RemovedBody389_0 RemovedBody389_5

def RemovedBody389_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_10 : StackLang.HolProg 64 :=
.seq RemovedBody389_8 RemovedBody389_9

def RemovedBody389_11 : StackLang.HolProg 64 :=
.seq RemovedBody389_7 RemovedBody389_10

def RemovedBody389_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1162#64)

def RemovedBody389_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_15 : StackLang.HolProg 64 :=
.seq RemovedBody389_13 RemovedBody389_14

def RemovedBody389_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_19 : StackLang.HolProg 64 :=
.seq RemovedBody389_17 RemovedBody389_18

def RemovedBody389_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_19 RemovedBody389_20

def RemovedBody389_22 : StackLang.HolProg 64 :=
.seq RemovedBody389_16 RemovedBody389_21

def RemovedBody389_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody389_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 3

def RemovedBody389_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody389_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody389_32 : StackLang.HolProg 64 :=
.seq RemovedBody389_30 RemovedBody389_31

def RemovedBody389_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody389_34 : StackLang.HolProg 64 :=
.seq RemovedBody389_32 RemovedBody389_33

def RemovedBody389_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_36 : StackLang.HolProg 64 :=
.seq RemovedBody389_34 RemovedBody389_35

def RemovedBody389_37 : StackLang.HolProg 64 :=
.seq RemovedBody389_29 RemovedBody389_36

def RemovedBody389_38 : StackLang.HolProg 64 :=
.seq RemovedBody389_28 RemovedBody389_37

def RemovedBody389_39 : StackLang.HolProg 64 :=
.seq RemovedBody389_27 RemovedBody389_38

def RemovedBody389_40 : StackLang.HolProg 64 :=
.seq RemovedBody389_26 RemovedBody389_39

def RemovedBody389_41 : StackLang.HolProg 64 :=
.seq RemovedBody389_25 RemovedBody389_40

def RemovedBody389_42 : StackLang.HolProg 64 :=
.seq RemovedBody389_24 RemovedBody389_41

def RemovedBody389_43 : StackLang.HolProg 64 :=
.seq RemovedBody389_23 RemovedBody389_42

def RemovedBody389_44 : StackLang.HolProg 64 :=
.seq RemovedBody389_22 RemovedBody389_43

def RemovedBody389_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody389_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_53 : StackLang.HolProg 64 :=
.seq RemovedBody389_51 RemovedBody389_52

def RemovedBody389_54 : StackLang.HolProg 64 :=
.seq RemovedBody389_50 RemovedBody389_53

def RemovedBody389_55 : StackLang.HolProg 64 :=
.seq RemovedBody389_49 RemovedBody389_54

def RemovedBody389_56 : StackLang.HolProg 64 :=
.seq RemovedBody389_48 RemovedBody389_55

def RemovedBody389_57 : StackLang.HolProg 64 :=
.seq RemovedBody389_47 RemovedBody389_56

def RemovedBody389_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody389_60 : StackLang.HolProg 64 :=
.seq RemovedBody389_58 RemovedBody389_59

def RemovedBody389_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody389_57, 0, 389, 2)) (Sum.inl 186) (some (RemovedBody389_60, 389, 3))

def RemovedBody389_62 : StackLang.HolProg 64 :=
.seq RemovedBody389_46 RemovedBody389_61

def RemovedBody389_63 : StackLang.HolProg 64 :=
.seq RemovedBody389_45 RemovedBody389_62

def RemovedBody389_64 : StackLang.HolProg 64 :=
.seq RemovedBody389_44 RemovedBody389_63

def RemovedBody389_65 : StackLang.HolProg 64 :=
.seq RemovedBody389_15 RemovedBody389_64

def RemovedBody389_66 : StackLang.HolProg 64 :=
.seq RemovedBody389_12 RemovedBody389_65

def RemovedBody389_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody389_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody389_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody389_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody389_75 : StackLang.HolProg 64 :=
.seq RemovedBody389_73 RemovedBody389_74

def RemovedBody389_76 : StackLang.HolProg 64 :=
.seq RemovedBody389_72 RemovedBody389_75

def RemovedBody389_77 : StackLang.HolProg 64 :=
.seq RemovedBody389_71 RemovedBody389_76

def RemovedBody389_78 : StackLang.HolProg 64 :=
.seq RemovedBody389_70 RemovedBody389_77

def RemovedBody389_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody389_78 RemovedBody389_79

def RemovedBody389_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody389_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody389_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody389_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551600#64))

def RemovedBody389_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551408#64))

def RemovedBody389_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 5#64)

def RemovedBody389_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_93 : StackLang.HolProg 64 :=
.seq RemovedBody389_91 RemovedBody389_92

def RemovedBody389_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1163#64)

def RemovedBody389_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_97 : StackLang.HolProg 64 :=
.seq RemovedBody389_95 RemovedBody389_96

def RemovedBody389_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_101 : StackLang.HolProg 64 :=
.seq RemovedBody389_99 RemovedBody389_100

def RemovedBody389_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_103 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_101 RemovedBody389_102

def RemovedBody389_104 : StackLang.HolProg 64 :=
.seq RemovedBody389_98 RemovedBody389_103

def RemovedBody389_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody389_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 5

def RemovedBody389_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody389_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody389_114 : StackLang.HolProg 64 :=
.seq RemovedBody389_112 RemovedBody389_113

def RemovedBody389_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody389_116 : StackLang.HolProg 64 :=
.seq RemovedBody389_114 RemovedBody389_115

def RemovedBody389_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_118 : StackLang.HolProg 64 :=
.seq RemovedBody389_116 RemovedBody389_117

def RemovedBody389_119 : StackLang.HolProg 64 :=
.seq RemovedBody389_111 RemovedBody389_118

def RemovedBody389_120 : StackLang.HolProg 64 :=
.seq RemovedBody389_110 RemovedBody389_119

def RemovedBody389_121 : StackLang.HolProg 64 :=
.seq RemovedBody389_109 RemovedBody389_120

def RemovedBody389_122 : StackLang.HolProg 64 :=
.seq RemovedBody389_108 RemovedBody389_121

def RemovedBody389_123 : StackLang.HolProg 64 :=
.seq RemovedBody389_107 RemovedBody389_122

def RemovedBody389_124 : StackLang.HolProg 64 :=
.seq RemovedBody389_106 RemovedBody389_123

def RemovedBody389_125 : StackLang.HolProg 64 :=
.seq RemovedBody389_105 RemovedBody389_124

def RemovedBody389_126 : StackLang.HolProg 64 :=
.seq RemovedBody389_104 RemovedBody389_125

def RemovedBody389_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_134 : StackLang.HolProg 64 :=
.seq RemovedBody389_132 RemovedBody389_133

def RemovedBody389_135 : StackLang.HolProg 64 :=
.seq RemovedBody389_131 RemovedBody389_134

def RemovedBody389_136 : StackLang.HolProg 64 :=
.seq RemovedBody389_130 RemovedBody389_135

def RemovedBody389_137 : StackLang.HolProg 64 :=
.seq RemovedBody389_129 RemovedBody389_136

def RemovedBody389_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_139 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody389_140 : StackLang.HolProg 64 :=
.seq RemovedBody389_138 RemovedBody389_139

def RemovedBody389_141 : StackLang.HolProg 64 :=
.call (some (RemovedBody389_137, 0, 389, 4)) (Sum.inl 66) (some (RemovedBody389_140, 389, 5))

def RemovedBody389_142 : StackLang.HolProg 64 :=
.seq RemovedBody389_128 RemovedBody389_141

def RemovedBody389_143 : StackLang.HolProg 64 :=
.seq RemovedBody389_127 RemovedBody389_142

def RemovedBody389_144 : StackLang.HolProg 64 :=
.seq RemovedBody389_126 RemovedBody389_143

def RemovedBody389_145 : StackLang.HolProg 64 :=
.seq RemovedBody389_97 RemovedBody389_144

def RemovedBody389_146 : StackLang.HolProg 64 :=
.seq RemovedBody389_94 RemovedBody389_145

def RemovedBody389_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_149 : StackLang.HolProg 64 :=
.seq RemovedBody389_147 RemovedBody389_148

def RemovedBody389_150 : StackLang.HolProg 64 :=
.seq RemovedBody389_146 RemovedBody389_149

def RemovedBody389_151 : StackLang.HolProg 64 :=
.seq RemovedBody389_93 RemovedBody389_150

def RemovedBody389_152 : StackLang.HolProg 64 :=
.seq RemovedBody389_90 RemovedBody389_151

def RemovedBody389_153 : StackLang.HolProg 64 :=
.seq RemovedBody389_89 RemovedBody389_152

def RemovedBody389_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_158 : StackLang.HolProg 64 :=
.seq RemovedBody389_156 RemovedBody389_157

def RemovedBody389_159 : StackLang.HolProg 64 :=
.seq RemovedBody389_155 RemovedBody389_158

def RemovedBody389_160 : StackLang.HolProg 64 :=
.seq RemovedBody389_154 RemovedBody389_159

def RemovedBody389_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody389_153 RemovedBody389_160

def RemovedBody389_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody389_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_167 : StackLang.HolProg 64 :=
.seq RemovedBody389_165 RemovedBody389_166

def RemovedBody389_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1164#64)

def RemovedBody389_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_171 : StackLang.HolProg 64 :=
.seq RemovedBody389_169 RemovedBody389_170

def RemovedBody389_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_175 : StackLang.HolProg 64 :=
.seq RemovedBody389_173 RemovedBody389_174

def RemovedBody389_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_177 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_175 RemovedBody389_176

def RemovedBody389_178 : StackLang.HolProg 64 :=
.seq RemovedBody389_172 RemovedBody389_177

def RemovedBody389_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody389_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 7

def RemovedBody389_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody389_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody389_188 : StackLang.HolProg 64 :=
.seq RemovedBody389_186 RemovedBody389_187

def RemovedBody389_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody389_190 : StackLang.HolProg 64 :=
.seq RemovedBody389_188 RemovedBody389_189

def RemovedBody389_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_192 : StackLang.HolProg 64 :=
.seq RemovedBody389_190 RemovedBody389_191

def RemovedBody389_193 : StackLang.HolProg 64 :=
.seq RemovedBody389_185 RemovedBody389_192

def RemovedBody389_194 : StackLang.HolProg 64 :=
.seq RemovedBody389_184 RemovedBody389_193

def RemovedBody389_195 : StackLang.HolProg 64 :=
.seq RemovedBody389_183 RemovedBody389_194

def RemovedBody389_196 : StackLang.HolProg 64 :=
.seq RemovedBody389_182 RemovedBody389_195

def RemovedBody389_197 : StackLang.HolProg 64 :=
.seq RemovedBody389_181 RemovedBody389_196

def RemovedBody389_198 : StackLang.HolProg 64 :=
.seq RemovedBody389_180 RemovedBody389_197

def RemovedBody389_199 : StackLang.HolProg 64 :=
.seq RemovedBody389_179 RemovedBody389_198

def RemovedBody389_200 : StackLang.HolProg 64 :=
.seq RemovedBody389_178 RemovedBody389_199

def RemovedBody389_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody389_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_211 : StackLang.HolProg 64 :=
.seq RemovedBody389_209 RemovedBody389_210

def RemovedBody389_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_213 : StackLang.HolProg 64 :=
.seq RemovedBody389_211 RemovedBody389_212

def RemovedBody389_214 : StackLang.HolProg 64 :=
.seq RemovedBody389_208 RemovedBody389_213

def RemovedBody389_215 : StackLang.HolProg 64 :=
.seq RemovedBody389_207 RemovedBody389_214

def RemovedBody389_216 : StackLang.HolProg 64 :=
.seq RemovedBody389_206 RemovedBody389_215

def RemovedBody389_217 : StackLang.HolProg 64 :=
.seq RemovedBody389_205 RemovedBody389_216

def RemovedBody389_218 : StackLang.HolProg 64 :=
.seq RemovedBody389_204 RemovedBody389_217

def RemovedBody389_219 : StackLang.HolProg 64 :=
.seq RemovedBody389_203 RemovedBody389_218

def RemovedBody389_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_223 : StackLang.HolProg 64 :=
.seq RemovedBody389_221 RemovedBody389_222

def RemovedBody389_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_225 : StackLang.HolProg 64 :=
.seq RemovedBody389_223 RemovedBody389_224

def RemovedBody389_226 : StackLang.HolProg 64 :=
.seq RemovedBody389_220 RemovedBody389_225

def RemovedBody389_227 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody389_228 : StackLang.HolProg 64 :=
.seq RemovedBody389_226 RemovedBody389_227

def RemovedBody389_229 : StackLang.HolProg 64 :=
.call (some (RemovedBody389_219, 0, 389, 6)) (Sum.inl 68) (some (RemovedBody389_228, 389, 7))

def RemovedBody389_230 : StackLang.HolProg 64 :=
.seq RemovedBody389_202 RemovedBody389_229

def RemovedBody389_231 : StackLang.HolProg 64 :=
.seq RemovedBody389_201 RemovedBody389_230

def RemovedBody389_232 : StackLang.HolProg 64 :=
.seq RemovedBody389_200 RemovedBody389_231

def RemovedBody389_233 : StackLang.HolProg 64 :=
.seq RemovedBody389_171 RemovedBody389_232

def RemovedBody389_234 : StackLang.HolProg 64 :=
.seq RemovedBody389_168 RemovedBody389_233

def RemovedBody389_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody389_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_239 : StackLang.HolProg 64 :=
.seq RemovedBody389_237 RemovedBody389_238

def RemovedBody389_240 : StackLang.HolProg 64 :=
.seq RemovedBody389_236 RemovedBody389_239

def RemovedBody389_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1165#64)

def RemovedBody389_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_244 : StackLang.HolProg 64 :=
.seq RemovedBody389_242 RemovedBody389_243

def RemovedBody389_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_248 : StackLang.HolProg 64 :=
.seq RemovedBody389_246 RemovedBody389_247

def RemovedBody389_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_250 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_248 RemovedBody389_249

def RemovedBody389_251 : StackLang.HolProg 64 :=
.seq RemovedBody389_245 RemovedBody389_250

def RemovedBody389_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody389_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 9

def RemovedBody389_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody389_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody389_261 : StackLang.HolProg 64 :=
.seq RemovedBody389_259 RemovedBody389_260

def RemovedBody389_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody389_263 : StackLang.HolProg 64 :=
.seq RemovedBody389_261 RemovedBody389_262

def RemovedBody389_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_265 : StackLang.HolProg 64 :=
.seq RemovedBody389_263 RemovedBody389_264

def RemovedBody389_266 : StackLang.HolProg 64 :=
.seq RemovedBody389_258 RemovedBody389_265

def RemovedBody389_267 : StackLang.HolProg 64 :=
.seq RemovedBody389_257 RemovedBody389_266

def RemovedBody389_268 : StackLang.HolProg 64 :=
.seq RemovedBody389_256 RemovedBody389_267

def RemovedBody389_269 : StackLang.HolProg 64 :=
.seq RemovedBody389_255 RemovedBody389_268

def RemovedBody389_270 : StackLang.HolProg 64 :=
.seq RemovedBody389_254 RemovedBody389_269

def RemovedBody389_271 : StackLang.HolProg 64 :=
.seq RemovedBody389_253 RemovedBody389_270

def RemovedBody389_272 : StackLang.HolProg 64 :=
.seq RemovedBody389_252 RemovedBody389_271

def RemovedBody389_273 : StackLang.HolProg 64 :=
.seq RemovedBody389_251 RemovedBody389_272

def RemovedBody389_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_284 : StackLang.HolProg 64 :=
.seq RemovedBody389_282 RemovedBody389_283

def RemovedBody389_285 : StackLang.HolProg 64 :=
.seq RemovedBody389_281 RemovedBody389_284

def RemovedBody389_286 : StackLang.HolProg 64 :=
.seq RemovedBody389_280 RemovedBody389_285

def RemovedBody389_287 : StackLang.HolProg 64 :=
.seq RemovedBody389_279 RemovedBody389_286

def RemovedBody389_288 : StackLang.HolProg 64 :=
.seq RemovedBody389_278 RemovedBody389_287

def RemovedBody389_289 : StackLang.HolProg 64 :=
.seq RemovedBody389_277 RemovedBody389_288

def RemovedBody389_290 : StackLang.HolProg 64 :=
.seq RemovedBody389_276 RemovedBody389_289

def RemovedBody389_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody389_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody389_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_295 : StackLang.HolProg 64 :=
.seq RemovedBody389_293 RemovedBody389_294

def RemovedBody389_296 : StackLang.HolProg 64 :=
.seq RemovedBody389_292 RemovedBody389_295

def RemovedBody389_297 : StackLang.HolProg 64 :=
.seq RemovedBody389_291 RemovedBody389_296

def RemovedBody389_298 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody389_299 : StackLang.HolProg 64 :=
.seq RemovedBody389_297 RemovedBody389_298

def RemovedBody389_300 : StackLang.HolProg 64 :=
.call (some (RemovedBody389_290, 0, 389, 8)) (Sum.inl 77) (some (RemovedBody389_299, 389, 9))

def RemovedBody389_301 : StackLang.HolProg 64 :=
.seq RemovedBody389_275 RemovedBody389_300

def RemovedBody389_302 : StackLang.HolProg 64 :=
.seq RemovedBody389_274 RemovedBody389_301

def RemovedBody389_303 : StackLang.HolProg 64 :=
.seq RemovedBody389_273 RemovedBody389_302

def RemovedBody389_304 : StackLang.HolProg 64 :=
.seq RemovedBody389_244 RemovedBody389_303

def RemovedBody389_305 : StackLang.HolProg 64 :=
.seq RemovedBody389_241 RemovedBody389_304

def RemovedBody389_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody389_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody389_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody389_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551600#64))

def RemovedBody389_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody389_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551416#64))

def RemovedBody389_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody389_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody389_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody389_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody389_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody389_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody389_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 1#64)

def RemovedBody389_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody389_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody389_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551600#64)))

def RemovedBody389_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 18446744073709551600#64))

def RemovedBody389_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody389_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody389_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1166#64)

def RemovedBody389_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_341 : StackLang.HolProg 64 :=
.seq RemovedBody389_339 RemovedBody389_340

def RemovedBody389_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody389_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody389_345 : StackLang.HolProg 64 :=
.seq RemovedBody389_343 RemovedBody389_344

def RemovedBody389_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_347 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody389_345 RemovedBody389_346

def RemovedBody389_348 : StackLang.HolProg 64 :=
.seq RemovedBody389_342 RemovedBody389_347

def RemovedBody389_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody389_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody389_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 389 11

def RemovedBody389_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody389_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody389_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody389_358 : StackLang.HolProg 64 :=
.seq RemovedBody389_356 RemovedBody389_357

def RemovedBody389_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody389_360 : StackLang.HolProg 64 :=
.seq RemovedBody389_358 RemovedBody389_359

def RemovedBody389_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_362 : StackLang.HolProg 64 :=
.seq RemovedBody389_360 RemovedBody389_361

def RemovedBody389_363 : StackLang.HolProg 64 :=
.seq RemovedBody389_355 RemovedBody389_362

def RemovedBody389_364 : StackLang.HolProg 64 :=
.seq RemovedBody389_354 RemovedBody389_363

def RemovedBody389_365 : StackLang.HolProg 64 :=
.seq RemovedBody389_353 RemovedBody389_364

def RemovedBody389_366 : StackLang.HolProg 64 :=
.seq RemovedBody389_352 RemovedBody389_365

def RemovedBody389_367 : StackLang.HolProg 64 :=
.seq RemovedBody389_351 RemovedBody389_366

def RemovedBody389_368 : StackLang.HolProg 64 :=
.seq RemovedBody389_350 RemovedBody389_367

def RemovedBody389_369 : StackLang.HolProg 64 :=
.seq RemovedBody389_349 RemovedBody389_368

def RemovedBody389_370 : StackLang.HolProg 64 :=
.seq RemovedBody389_348 RemovedBody389_369

def RemovedBody389_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody389_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody389_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody389_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_378 : StackLang.HolProg 64 :=
.seq RemovedBody389_376 RemovedBody389_377

def RemovedBody389_379 : StackLang.HolProg 64 :=
.seq RemovedBody389_375 RemovedBody389_378

def RemovedBody389_380 : StackLang.HolProg 64 :=
.seq RemovedBody389_374 RemovedBody389_379

def RemovedBody389_381 : StackLang.HolProg 64 :=
.seq RemovedBody389_373 RemovedBody389_380

def RemovedBody389_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody389_383 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody389_384 : StackLang.HolProg 64 :=
.seq RemovedBody389_382 RemovedBody389_383

def RemovedBody389_385 : StackLang.HolProg 64 :=
.call (some (RemovedBody389_381, 0, 389, 10)) (Sum.inl 193) (some (RemovedBody389_384, 389, 11))

def RemovedBody389_386 : StackLang.HolProg 64 :=
.seq RemovedBody389_372 RemovedBody389_385

def RemovedBody389_387 : StackLang.HolProg 64 :=
.seq RemovedBody389_371 RemovedBody389_386

def RemovedBody389_388 : StackLang.HolProg 64 :=
.seq RemovedBody389_370 RemovedBody389_387

def RemovedBody389_389 : StackLang.HolProg 64 :=
.seq RemovedBody389_341 RemovedBody389_388

def RemovedBody389_390 : StackLang.HolProg 64 :=
.seq RemovedBody389_338 RemovedBody389_389

def RemovedBody389_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody389_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody389_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody389_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody389_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody389_396 : StackLang.HolProg 64 :=
.seq RemovedBody389_394 RemovedBody389_395

def RemovedBody389_397 : StackLang.HolProg 64 :=
.seq RemovedBody389_393 RemovedBody389_396

def RemovedBody389_398 : StackLang.HolProg 64 :=
.seq RemovedBody389_392 RemovedBody389_397

def RemovedBody389_399 : StackLang.HolProg 64 :=
.seq RemovedBody389_391 RemovedBody389_398

def RemovedBody389_400 : StackLang.HolProg 64 :=
.seq RemovedBody389_390 RemovedBody389_399

def RemovedBody389_401 : StackLang.HolProg 64 :=
.seq RemovedBody389_337 RemovedBody389_400

def RemovedBody389_402 : StackLang.HolProg 64 :=
.seq RemovedBody389_336 RemovedBody389_401

def RemovedBody389_403 : StackLang.HolProg 64 :=
.seq RemovedBody389_335 RemovedBody389_402

def RemovedBody389_404 : StackLang.HolProg 64 :=
.seq RemovedBody389_334 RemovedBody389_403

def RemovedBody389_405 : StackLang.HolProg 64 :=
.seq RemovedBody389_333 RemovedBody389_404

def RemovedBody389_406 : StackLang.HolProg 64 :=
.seq RemovedBody389_332 RemovedBody389_405

def RemovedBody389_407 : StackLang.HolProg 64 :=
.seq RemovedBody389_331 RemovedBody389_406

def RemovedBody389_408 : StackLang.HolProg 64 :=
.seq RemovedBody389_330 RemovedBody389_407

def RemovedBody389_409 : StackLang.HolProg 64 :=
.seq RemovedBody389_329 RemovedBody389_408

def RemovedBody389_410 : StackLang.HolProg 64 :=
.seq RemovedBody389_328 RemovedBody389_409

def RemovedBody389_411 : StackLang.HolProg 64 :=
.seq RemovedBody389_327 RemovedBody389_410

def RemovedBody389_412 : StackLang.HolProg 64 :=
.seq RemovedBody389_326 RemovedBody389_411

def RemovedBody389_413 : StackLang.HolProg 64 :=
.seq RemovedBody389_325 RemovedBody389_412

def RemovedBody389_414 : StackLang.HolProg 64 :=
.seq RemovedBody389_324 RemovedBody389_413

def RemovedBody389_415 : StackLang.HolProg 64 :=
.seq RemovedBody389_323 RemovedBody389_414

def RemovedBody389_416 : StackLang.HolProg 64 :=
.seq RemovedBody389_322 RemovedBody389_415

def RemovedBody389_417 : StackLang.HolProg 64 :=
.seq RemovedBody389_321 RemovedBody389_416

def RemovedBody389_418 : StackLang.HolProg 64 :=
.seq RemovedBody389_320 RemovedBody389_417

def RemovedBody389_419 : StackLang.HolProg 64 :=
.seq RemovedBody389_319 RemovedBody389_418

def RemovedBody389_420 : StackLang.HolProg 64 :=
.seq RemovedBody389_318 RemovedBody389_419

def RemovedBody389_421 : StackLang.HolProg 64 :=
.seq RemovedBody389_317 RemovedBody389_420

def RemovedBody389_422 : StackLang.HolProg 64 :=
.seq RemovedBody389_316 RemovedBody389_421

def RemovedBody389_423 : StackLang.HolProg 64 :=
.seq RemovedBody389_315 RemovedBody389_422

def RemovedBody389_424 : StackLang.HolProg 64 :=
.seq RemovedBody389_314 RemovedBody389_423

def RemovedBody389_425 : StackLang.HolProg 64 :=
.seq RemovedBody389_313 RemovedBody389_424

def RemovedBody389_426 : StackLang.HolProg 64 :=
.seq RemovedBody389_312 RemovedBody389_425

def RemovedBody389_427 : StackLang.HolProg 64 :=
.seq RemovedBody389_311 RemovedBody389_426

def RemovedBody389_428 : StackLang.HolProg 64 :=
.seq RemovedBody389_310 RemovedBody389_427

def RemovedBody389_429 : StackLang.HolProg 64 :=
.seq RemovedBody389_309 RemovedBody389_428

def RemovedBody389_430 : StackLang.HolProg 64 :=
.seq RemovedBody389_308 RemovedBody389_429

def RemovedBody389_431 : StackLang.HolProg 64 :=
.seq RemovedBody389_307 RemovedBody389_430

def RemovedBody389_432 : StackLang.HolProg 64 :=
.seq RemovedBody389_306 RemovedBody389_431

def RemovedBody389_433 : StackLang.HolProg 64 :=
.seq RemovedBody389_305 RemovedBody389_432

def RemovedBody389_434 : StackLang.HolProg 64 :=
.seq RemovedBody389_240 RemovedBody389_433

def RemovedBody389_435 : StackLang.HolProg 64 :=
.seq RemovedBody389_235 RemovedBody389_434

def RemovedBody389_436 : StackLang.HolProg 64 :=
.seq RemovedBody389_234 RemovedBody389_435

def RemovedBody389_437 : StackLang.HolProg 64 :=
.seq RemovedBody389_167 RemovedBody389_436

def RemovedBody389_438 : StackLang.HolProg 64 :=
.seq RemovedBody389_164 RemovedBody389_437

def RemovedBody389_439 : StackLang.HolProg 64 :=
.seq RemovedBody389_163 RemovedBody389_438

def RemovedBody389_440 : StackLang.HolProg 64 :=
.seq RemovedBody389_162 RemovedBody389_439

def RemovedBody389_441 : StackLang.HolProg 64 :=
.seq RemovedBody389_161 RemovedBody389_440

def RemovedBody389_442 : StackLang.HolProg 64 :=
.seq RemovedBody389_88 RemovedBody389_441

def RemovedBody389_443 : StackLang.HolProg 64 :=
.seq RemovedBody389_87 RemovedBody389_442

def RemovedBody389_444 : StackLang.HolProg 64 :=
.seq RemovedBody389_86 RemovedBody389_443

def RemovedBody389_445 : StackLang.HolProg 64 :=
.seq RemovedBody389_85 RemovedBody389_444

def RemovedBody389_446 : StackLang.HolProg 64 :=
.seq RemovedBody389_84 RemovedBody389_445

def RemovedBody389_447 : StackLang.HolProg 64 :=
.seq RemovedBody389_83 RemovedBody389_446

def RemovedBody389_448 : StackLang.HolProg 64 :=
.seq RemovedBody389_82 RemovedBody389_447

def RemovedBody389_449 : StackLang.HolProg 64 :=
.seq RemovedBody389_81 RemovedBody389_448

def RemovedBody389_450 : StackLang.HolProg 64 :=
.seq RemovedBody389_80 RemovedBody389_449

def RemovedBody389_451 : StackLang.HolProg 64 :=
.seq RemovedBody389_69 RemovedBody389_450

def RemovedBody389_452 : StackLang.HolProg 64 :=
.seq RemovedBody389_68 RemovedBody389_451

def RemovedBody389_453 : StackLang.HolProg 64 :=
.seq RemovedBody389_67 RemovedBody389_452

def RemovedBody389_454 : StackLang.HolProg 64 :=
.seq RemovedBody389_66 RemovedBody389_453

def RemovedBody389_455 : StackLang.HolProg 64 :=
.seq RemovedBody389_11 RemovedBody389_454

def RemovedBody389_456 : StackLang.HolProg 64 :=
.seq RemovedBody389_6 RemovedBody389_455

def Removed389 : Nat × StackLang.HolProg 64 := (389, RemovedBody389_456)
theorem Removed389_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc389 = Removed389 := by
  kernel_rfl
#print axioms Removed389_eq
end InitECandidate.Proofs.BackendStages
