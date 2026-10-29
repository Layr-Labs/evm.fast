import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc444
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody444_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody444_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody444_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody444_3 : StackLang.HolProg 64 :=
.seq RemovedBody444_1 RemovedBody444_2

def RemovedBody444_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody444_3 RemovedBody444_4

def RemovedBody444_6 : StackLang.HolProg 64 :=
.seq RemovedBody444_0 RemovedBody444_5

def RemovedBody444_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody444_11 : StackLang.HolProg 64 :=
.seq RemovedBody444_9 RemovedBody444_10

def RemovedBody444_12 : StackLang.HolProg 64 :=
.seq RemovedBody444_8 RemovedBody444_11

def RemovedBody444_13 : StackLang.HolProg 64 :=
.seq RemovedBody444_7 RemovedBody444_12

def RemovedBody444_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1341#64)

def RemovedBody444_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody444_17 : StackLang.HolProg 64 :=
.seq RemovedBody444_15 RemovedBody444_16

def RemovedBody444_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody444_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody444_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody444_21 : StackLang.HolProg 64 :=
.seq RemovedBody444_19 RemovedBody444_20

def RemovedBody444_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody444_21 RemovedBody444_22

def RemovedBody444_24 : StackLang.HolProg 64 :=
.seq RemovedBody444_18 RemovedBody444_23

def RemovedBody444_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody444_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody444_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 3

def RemovedBody444_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody444_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody444_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody444_34 : StackLang.HolProg 64 :=
.seq RemovedBody444_32 RemovedBody444_33

def RemovedBody444_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody444_36 : StackLang.HolProg 64 :=
.seq RemovedBody444_34 RemovedBody444_35

def RemovedBody444_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_38 : StackLang.HolProg 64 :=
.seq RemovedBody444_36 RemovedBody444_37

def RemovedBody444_39 : StackLang.HolProg 64 :=
.seq RemovedBody444_31 RemovedBody444_38

def RemovedBody444_40 : StackLang.HolProg 64 :=
.seq RemovedBody444_30 RemovedBody444_39

def RemovedBody444_41 : StackLang.HolProg 64 :=
.seq RemovedBody444_29 RemovedBody444_40

def RemovedBody444_42 : StackLang.HolProg 64 :=
.seq RemovedBody444_28 RemovedBody444_41

def RemovedBody444_43 : StackLang.HolProg 64 :=
.seq RemovedBody444_27 RemovedBody444_42

def RemovedBody444_44 : StackLang.HolProg 64 :=
.seq RemovedBody444_26 RemovedBody444_43

def RemovedBody444_45 : StackLang.HolProg 64 :=
.seq RemovedBody444_25 RemovedBody444_44

def RemovedBody444_46 : StackLang.HolProg 64 :=
.seq RemovedBody444_24 RemovedBody444_45

def RemovedBody444_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody444_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody444_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody444_58 : StackLang.HolProg 64 :=
.seq RemovedBody444_56 RemovedBody444_57

def RemovedBody444_59 : StackLang.HolProg 64 :=
.seq RemovedBody444_55 RemovedBody444_58

def RemovedBody444_60 : StackLang.HolProg 64 :=
.seq RemovedBody444_54 RemovedBody444_59

def RemovedBody444_61 : StackLang.HolProg 64 :=
.seq RemovedBody444_53 RemovedBody444_60

def RemovedBody444_62 : StackLang.HolProg 64 :=
.seq RemovedBody444_52 RemovedBody444_61

def RemovedBody444_63 : StackLang.HolProg 64 :=
.seq RemovedBody444_51 RemovedBody444_62

def RemovedBody444_64 : StackLang.HolProg 64 :=
.seq RemovedBody444_50 RemovedBody444_63

def RemovedBody444_65 : StackLang.HolProg 64 :=
.seq RemovedBody444_49 RemovedBody444_64

def RemovedBody444_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody444_70 : StackLang.HolProg 64 :=
.seq RemovedBody444_68 RemovedBody444_69

def RemovedBody444_71 : StackLang.HolProg 64 :=
.seq RemovedBody444_67 RemovedBody444_70

def RemovedBody444_72 : StackLang.HolProg 64 :=
.seq RemovedBody444_66 RemovedBody444_71

def RemovedBody444_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody444_74 : StackLang.HolProg 64 :=
.seq RemovedBody444_72 RemovedBody444_73

def RemovedBody444_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody444_65, 0, 444, 2)) (Sum.inl 439) (some (RemovedBody444_74, 444, 3))

def RemovedBody444_76 : StackLang.HolProg 64 :=
.seq RemovedBody444_48 RemovedBody444_75

def RemovedBody444_77 : StackLang.HolProg 64 :=
.seq RemovedBody444_47 RemovedBody444_76

def RemovedBody444_78 : StackLang.HolProg 64 :=
.seq RemovedBody444_46 RemovedBody444_77

def RemovedBody444_79 : StackLang.HolProg 64 :=
.seq RemovedBody444_17 RemovedBody444_78

def RemovedBody444_80 : StackLang.HolProg 64 :=
.seq RemovedBody444_14 RemovedBody444_79

def RemovedBody444_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 24#64))

def RemovedBody444_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 8#64))

def RemovedBody444_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody444_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody444_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_92 : StackLang.HolProg 64 :=
.seq RemovedBody444_90 RemovedBody444_91

def RemovedBody444_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody444_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody444_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody444_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody444_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody444_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody444_110 : StackLang.HolProg 64 :=
.seq RemovedBody444_108 RemovedBody444_109

def RemovedBody444_111 : StackLang.HolProg 64 :=
.seq RemovedBody444_107 RemovedBody444_110

def RemovedBody444_112 : StackLang.HolProg 64 :=
.seq RemovedBody444_106 RemovedBody444_111

def RemovedBody444_113 : StackLang.HolProg 64 :=
.seq RemovedBody444_105 RemovedBody444_112

def RemovedBody444_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_115 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody444_113 RemovedBody444_114

def RemovedBody444_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody444_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody444_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody444_121 : StackLang.HolProg 64 :=
.seq RemovedBody444_119 RemovedBody444_120

def RemovedBody444_122 : StackLang.HolProg 64 :=
.seq RemovedBody444_118 RemovedBody444_121

def RemovedBody444_123 : StackLang.HolProg 64 :=
.seq RemovedBody444_117 RemovedBody444_122

def RemovedBody444_124 : StackLang.HolProg 64 :=
.seq RemovedBody444_116 RemovedBody444_123

def RemovedBody444_125 : StackLang.HolProg 64 :=
.seq RemovedBody444_115 RemovedBody444_124

def RemovedBody444_126 : StackLang.HolProg 64 :=
.seq RemovedBody444_104 RemovedBody444_125

def RemovedBody444_127 : StackLang.HolProg 64 :=
.seq RemovedBody444_103 RemovedBody444_126

def RemovedBody444_128 : StackLang.HolProg 64 :=
.seq RemovedBody444_102 RemovedBody444_127

def RemovedBody444_129 : StackLang.HolProg 64 :=
.seq RemovedBody444_101 RemovedBody444_128

def RemovedBody444_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody444_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody444_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_134 : StackLang.HolProg 64 :=
.seq RemovedBody444_132 RemovedBody444_133

def RemovedBody444_135 : StackLang.HolProg 64 :=
.seq RemovedBody444_131 RemovedBody444_134

def RemovedBody444_136 : StackLang.HolProg 64 :=
.seq RemovedBody444_130 RemovedBody444_135

def RemovedBody444_137 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) RemovedBody444_129 RemovedBody444_136

def RemovedBody444_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody444_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody444_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_146 : StackLang.HolProg 64 :=
.seq RemovedBody444_144 RemovedBody444_145

def RemovedBody444_147 : StackLang.HolProg 64 :=
.seq RemovedBody444_143 RemovedBody444_146

def RemovedBody444_148 : StackLang.HolProg 64 :=
.seq RemovedBody444_142 RemovedBody444_147

def RemovedBody444_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody444_150 : StackLang.HolProg 64 :=
.seq RemovedBody444_148 RemovedBody444_149

def RemovedBody444_151 : StackLang.HolProg 64 :=
.seq RemovedBody444_141 RemovedBody444_150

def RemovedBody444_152 : StackLang.HolProg 64 :=
.seq RemovedBody444_140 RemovedBody444_151

def RemovedBody444_153 : StackLang.HolProg 64 :=
.seq RemovedBody444_139 RemovedBody444_152

def RemovedBody444_154 : StackLang.HolProg 64 :=
.seq RemovedBody444_138 RemovedBody444_153

def RemovedBody444_155 : StackLang.HolProg 64 :=
.seq RemovedBody444_137 RemovedBody444_154

def RemovedBody444_156 : StackLang.HolProg 64 :=
.seq RemovedBody444_100 RemovedBody444_155

def RemovedBody444_157 : StackLang.HolProg 64 :=
.seq RemovedBody444_99 RemovedBody444_156

def RemovedBody444_158 : StackLang.HolProg 64 :=
.seq RemovedBody444_98 RemovedBody444_157

def RemovedBody444_159 : StackLang.HolProg 64 :=
.seq RemovedBody444_97 RemovedBody444_158

def RemovedBody444_160 : StackLang.HolProg 64 :=
.seq RemovedBody444_96 RemovedBody444_159

def RemovedBody444_161 : StackLang.HolProg 64 :=
.seq RemovedBody444_95 RemovedBody444_160

def RemovedBody444_162 : StackLang.HolProg 64 :=
.seq RemovedBody444_94 RemovedBody444_161

def RemovedBody444_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody444_165 : StackLang.HolProg 64 :=
.seq RemovedBody444_163 RemovedBody444_164

def RemovedBody444_166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody444_162 RemovedBody444_165

def RemovedBody444_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_170 : StackLang.HolProg 64 :=
.seq RemovedBody444_168 RemovedBody444_169

def RemovedBody444_171 : StackLang.HolProg 64 :=
.seq RemovedBody444_167 RemovedBody444_170

def RemovedBody444_172 : StackLang.HolProg 64 :=
.seq RemovedBody444_166 RemovedBody444_171

def RemovedBody444_173 : StackLang.HolProg 64 :=
.seq RemovedBody444_93 RemovedBody444_172

def RemovedBody444_174 : StackLang.HolProg 64 :=
.loop RemovedBody444_173

def RemovedBody444_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody444_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 16#64)

def RemovedBody444_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1342#64)

def RemovedBody444_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody444_182 : StackLang.HolProg 64 :=
.seq RemovedBody444_180 RemovedBody444_181

def RemovedBody444_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody444_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody444_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody444_186 : StackLang.HolProg 64 :=
.seq RemovedBody444_184 RemovedBody444_185

def RemovedBody444_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_188 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody444_186 RemovedBody444_187

def RemovedBody444_189 : StackLang.HolProg 64 :=
.seq RemovedBody444_183 RemovedBody444_188

def RemovedBody444_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody444_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody444_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 444 5

def RemovedBody444_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody444_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody444_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody444_199 : StackLang.HolProg 64 :=
.seq RemovedBody444_197 RemovedBody444_198

def RemovedBody444_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody444_201 : StackLang.HolProg 64 :=
.seq RemovedBody444_199 RemovedBody444_200

def RemovedBody444_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_203 : StackLang.HolProg 64 :=
.seq RemovedBody444_201 RemovedBody444_202

def RemovedBody444_204 : StackLang.HolProg 64 :=
.seq RemovedBody444_196 RemovedBody444_203

def RemovedBody444_205 : StackLang.HolProg 64 :=
.seq RemovedBody444_195 RemovedBody444_204

def RemovedBody444_206 : StackLang.HolProg 64 :=
.seq RemovedBody444_194 RemovedBody444_205

def RemovedBody444_207 : StackLang.HolProg 64 :=
.seq RemovedBody444_193 RemovedBody444_206

def RemovedBody444_208 : StackLang.HolProg 64 :=
.seq RemovedBody444_192 RemovedBody444_207

def RemovedBody444_209 : StackLang.HolProg 64 :=
.seq RemovedBody444_191 RemovedBody444_208

def RemovedBody444_210 : StackLang.HolProg 64 :=
.seq RemovedBody444_190 RemovedBody444_209

def RemovedBody444_211 : StackLang.HolProg 64 :=
.seq RemovedBody444_189 RemovedBody444_210

def RemovedBody444_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody444_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody444_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody444_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_222 : StackLang.HolProg 64 :=
.seq RemovedBody444_220 RemovedBody444_221

def RemovedBody444_223 : StackLang.HolProg 64 :=
.seq RemovedBody444_219 RemovedBody444_222

def RemovedBody444_224 : StackLang.HolProg 64 :=
.seq RemovedBody444_218 RemovedBody444_223

def RemovedBody444_225 : StackLang.HolProg 64 :=
.seq RemovedBody444_217 RemovedBody444_224

def RemovedBody444_226 : StackLang.HolProg 64 :=
.seq RemovedBody444_216 RemovedBody444_225

def RemovedBody444_227 : StackLang.HolProg 64 :=
.seq RemovedBody444_215 RemovedBody444_226

def RemovedBody444_228 : StackLang.HolProg 64 :=
.seq RemovedBody444_214 RemovedBody444_227

def RemovedBody444_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody444_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody444_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody444_232 : StackLang.HolProg 64 :=
.seq RemovedBody444_230 RemovedBody444_231

def RemovedBody444_233 : StackLang.HolProg 64 :=
.seq RemovedBody444_229 RemovedBody444_232

def RemovedBody444_234 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody444_235 : StackLang.HolProg 64 :=
.seq RemovedBody444_233 RemovedBody444_234

def RemovedBody444_236 : StackLang.HolProg 64 :=
.call (some (RemovedBody444_228, 0, 444, 4)) (Sum.inl 437) (some (RemovedBody444_235, 444, 5))

def RemovedBody444_237 : StackLang.HolProg 64 :=
.seq RemovedBody444_213 RemovedBody444_236

def RemovedBody444_238 : StackLang.HolProg 64 :=
.seq RemovedBody444_212 RemovedBody444_237

def RemovedBody444_239 : StackLang.HolProg 64 :=
.seq RemovedBody444_211 RemovedBody444_238

def RemovedBody444_240 : StackLang.HolProg 64 :=
.seq RemovedBody444_182 RemovedBody444_239

def RemovedBody444_241 : StackLang.HolProg 64 :=
.seq RemovedBody444_179 RemovedBody444_240

def RemovedBody444_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody444_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody444_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody444_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody444_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody444_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody444_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody444_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody444_253 : StackLang.HolProg 64 :=
.seq RemovedBody444_251 RemovedBody444_252

def RemovedBody444_254 : StackLang.HolProg 64 :=
.seq RemovedBody444_250 RemovedBody444_253

def RemovedBody444_255 : StackLang.HolProg 64 :=
.seq RemovedBody444_249 RemovedBody444_254

def RemovedBody444_256 : StackLang.HolProg 64 :=
.seq RemovedBody444_248 RemovedBody444_255

def RemovedBody444_257 : StackLang.HolProg 64 :=
.seq RemovedBody444_247 RemovedBody444_256

def RemovedBody444_258 : StackLang.HolProg 64 :=
.seq RemovedBody444_246 RemovedBody444_257

def RemovedBody444_259 : StackLang.HolProg 64 :=
.seq RemovedBody444_245 RemovedBody444_258

def RemovedBody444_260 : StackLang.HolProg 64 :=
.seq RemovedBody444_244 RemovedBody444_259

def RemovedBody444_261 : StackLang.HolProg 64 :=
.seq RemovedBody444_243 RemovedBody444_260

def RemovedBody444_262 : StackLang.HolProg 64 :=
.seq RemovedBody444_242 RemovedBody444_261

def RemovedBody444_263 : StackLang.HolProg 64 :=
.seq RemovedBody444_241 RemovedBody444_262

def RemovedBody444_264 : StackLang.HolProg 64 :=
.seq RemovedBody444_178 RemovedBody444_263

def RemovedBody444_265 : StackLang.HolProg 64 :=
.seq RemovedBody444_177 RemovedBody444_264

def RemovedBody444_266 : StackLang.HolProg 64 :=
.seq RemovedBody444_176 RemovedBody444_265

def RemovedBody444_267 : StackLang.HolProg 64 :=
.seq RemovedBody444_175 RemovedBody444_266

def RemovedBody444_268 : StackLang.HolProg 64 :=
.seq RemovedBody444_174 RemovedBody444_267

def RemovedBody444_269 : StackLang.HolProg 64 :=
.seq RemovedBody444_92 RemovedBody444_268

def RemovedBody444_270 : StackLang.HolProg 64 :=
.seq RemovedBody444_89 RemovedBody444_269

def RemovedBody444_271 : StackLang.HolProg 64 :=
.seq RemovedBody444_88 RemovedBody444_270

def RemovedBody444_272 : StackLang.HolProg 64 :=
.seq RemovedBody444_87 RemovedBody444_271

def RemovedBody444_273 : StackLang.HolProg 64 :=
.seq RemovedBody444_86 RemovedBody444_272

def RemovedBody444_274 : StackLang.HolProg 64 :=
.seq RemovedBody444_85 RemovedBody444_273

def RemovedBody444_275 : StackLang.HolProg 64 :=
.seq RemovedBody444_84 RemovedBody444_274

def RemovedBody444_276 : StackLang.HolProg 64 :=
.seq RemovedBody444_83 RemovedBody444_275

def RemovedBody444_277 : StackLang.HolProg 64 :=
.seq RemovedBody444_82 RemovedBody444_276

def RemovedBody444_278 : StackLang.HolProg 64 :=
.seq RemovedBody444_81 RemovedBody444_277

def RemovedBody444_279 : StackLang.HolProg 64 :=
.seq RemovedBody444_80 RemovedBody444_278

def RemovedBody444_280 : StackLang.HolProg 64 :=
.seq RemovedBody444_13 RemovedBody444_279

def RemovedBody444_281 : StackLang.HolProg 64 :=
.seq RemovedBody444_6 RemovedBody444_280

def Removed444 : Nat × StackLang.HolProg 64 := (444, RemovedBody444_281)
theorem Removed444_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc444 = Removed444 := by
  kernel_rfl
#print axioms Removed444_eq
end InitECandidate.Proofs.BackendStages
