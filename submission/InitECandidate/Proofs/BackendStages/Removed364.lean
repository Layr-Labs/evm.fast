import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc364
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody364_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody364_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody364_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody364_3 : StackLang.HolProg 64 :=
.seq RemovedBody364_1 RemovedBody364_2

def RemovedBody364_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody364_3 RemovedBody364_4

def RemovedBody364_6 : StackLang.HolProg 64 :=
.seq RemovedBody364_0 RemovedBody364_5

def RemovedBody364_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody364_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody364_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody364_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody364_15 : StackLang.HolProg 64 :=
.seq RemovedBody364_13 RemovedBody364_14

def RemovedBody364_16 : StackLang.HolProg 64 :=
.seq RemovedBody364_12 RemovedBody364_15

def RemovedBody364_17 : StackLang.HolProg 64 :=
.seq RemovedBody364_11 RemovedBody364_16

def RemovedBody364_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 120#64)

def RemovedBody364_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody364_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody364_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody364_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody364_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody364_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_29 : StackLang.HolProg 64 :=
.seq RemovedBody364_27 RemovedBody364_28

def RemovedBody364_30 : StackLang.HolProg 64 :=
.seq RemovedBody364_26 RemovedBody364_29

def RemovedBody364_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1049#64)

def RemovedBody364_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody364_34 : StackLang.HolProg 64 :=
.seq RemovedBody364_32 RemovedBody364_33

def RemovedBody364_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody364_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody364_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody364_38 : StackLang.HolProg 64 :=
.seq RemovedBody364_36 RemovedBody364_37

def RemovedBody364_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_40 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody364_38 RemovedBody364_39

def RemovedBody364_41 : StackLang.HolProg 64 :=
.seq RemovedBody364_35 RemovedBody364_40

def RemovedBody364_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody364_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody364_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 3

def RemovedBody364_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody364_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody364_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody364_51 : StackLang.HolProg 64 :=
.seq RemovedBody364_49 RemovedBody364_50

def RemovedBody364_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody364_53 : StackLang.HolProg 64 :=
.seq RemovedBody364_51 RemovedBody364_52

def RemovedBody364_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_55 : StackLang.HolProg 64 :=
.seq RemovedBody364_53 RemovedBody364_54

def RemovedBody364_56 : StackLang.HolProg 64 :=
.seq RemovedBody364_48 RemovedBody364_55

def RemovedBody364_57 : StackLang.HolProg 64 :=
.seq RemovedBody364_47 RemovedBody364_56

def RemovedBody364_58 : StackLang.HolProg 64 :=
.seq RemovedBody364_46 RemovedBody364_57

def RemovedBody364_59 : StackLang.HolProg 64 :=
.seq RemovedBody364_45 RemovedBody364_58

def RemovedBody364_60 : StackLang.HolProg 64 :=
.seq RemovedBody364_44 RemovedBody364_59

def RemovedBody364_61 : StackLang.HolProg 64 :=
.seq RemovedBody364_43 RemovedBody364_60

def RemovedBody364_62 : StackLang.HolProg 64 :=
.seq RemovedBody364_42 RemovedBody364_61

def RemovedBody364_63 : StackLang.HolProg 64 :=
.seq RemovedBody364_41 RemovedBody364_62

def RemovedBody364_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody364_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody364_71 : StackLang.HolProg 64 :=
.seq RemovedBody364_69 RemovedBody364_70

def RemovedBody364_72 : StackLang.HolProg 64 :=
.seq RemovedBody364_68 RemovedBody364_71

def RemovedBody364_73 : StackLang.HolProg 64 :=
.seq RemovedBody364_67 RemovedBody364_72

def RemovedBody364_74 : StackLang.HolProg 64 :=
.seq RemovedBody364_66 RemovedBody364_73

def RemovedBody364_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_76 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody364_77 : StackLang.HolProg 64 :=
.seq RemovedBody364_75 RemovedBody364_76

def RemovedBody364_78 : StackLang.HolProg 64 :=
.call (some (RemovedBody364_74, 0, 364, 2)) (Sum.inl 363) (some (RemovedBody364_77, 364, 3))

def RemovedBody364_79 : StackLang.HolProg 64 :=
.seq RemovedBody364_65 RemovedBody364_78

def RemovedBody364_80 : StackLang.HolProg 64 :=
.seq RemovedBody364_64 RemovedBody364_79

def RemovedBody364_81 : StackLang.HolProg 64 :=
.seq RemovedBody364_63 RemovedBody364_80

def RemovedBody364_82 : StackLang.HolProg 64 :=
.seq RemovedBody364_34 RemovedBody364_81

def RemovedBody364_83 : StackLang.HolProg 64 :=
.seq RemovedBody364_31 RemovedBody364_82

def RemovedBody364_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody364_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody364_87 : StackLang.HolProg 64 :=
.seq RemovedBody364_85 RemovedBody364_86

def RemovedBody364_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1050#64)

def RemovedBody364_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody364_91 : StackLang.HolProg 64 :=
.seq RemovedBody364_89 RemovedBody364_90

def RemovedBody364_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody364_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody364_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody364_95 : StackLang.HolProg 64 :=
.seq RemovedBody364_93 RemovedBody364_94

def RemovedBody364_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_97 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody364_95 RemovedBody364_96

def RemovedBody364_98 : StackLang.HolProg 64 :=
.seq RemovedBody364_92 RemovedBody364_97

def RemovedBody364_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody364_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody364_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 364 5

def RemovedBody364_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody364_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody364_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody364_108 : StackLang.HolProg 64 :=
.seq RemovedBody364_106 RemovedBody364_107

def RemovedBody364_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody364_110 : StackLang.HolProg 64 :=
.seq RemovedBody364_108 RemovedBody364_109

def RemovedBody364_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_112 : StackLang.HolProg 64 :=
.seq RemovedBody364_110 RemovedBody364_111

def RemovedBody364_113 : StackLang.HolProg 64 :=
.seq RemovedBody364_105 RemovedBody364_112

def RemovedBody364_114 : StackLang.HolProg 64 :=
.seq RemovedBody364_104 RemovedBody364_113

def RemovedBody364_115 : StackLang.HolProg 64 :=
.seq RemovedBody364_103 RemovedBody364_114

def RemovedBody364_116 : StackLang.HolProg 64 :=
.seq RemovedBody364_102 RemovedBody364_115

def RemovedBody364_117 : StackLang.HolProg 64 :=
.seq RemovedBody364_101 RemovedBody364_116

def RemovedBody364_118 : StackLang.HolProg 64 :=
.seq RemovedBody364_100 RemovedBody364_117

def RemovedBody364_119 : StackLang.HolProg 64 :=
.seq RemovedBody364_99 RemovedBody364_118

def RemovedBody364_120 : StackLang.HolProg 64 :=
.seq RemovedBody364_98 RemovedBody364_119

def RemovedBody364_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody364_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody364_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody364_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody364_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody364_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody364_134 : StackLang.HolProg 64 :=
.seq RemovedBody364_132 RemovedBody364_133

def RemovedBody364_135 : StackLang.HolProg 64 :=
.seq RemovedBody364_131 RemovedBody364_134

def RemovedBody364_136 : StackLang.HolProg 64 :=
.seq RemovedBody364_130 RemovedBody364_135

def RemovedBody364_137 : StackLang.HolProg 64 :=
.seq RemovedBody364_129 RemovedBody364_136

def RemovedBody364_138 : StackLang.HolProg 64 :=
.seq RemovedBody364_128 RemovedBody364_137

def RemovedBody364_139 : StackLang.HolProg 64 :=
.seq RemovedBody364_127 RemovedBody364_138

def RemovedBody364_140 : StackLang.HolProg 64 :=
.seq RemovedBody364_126 RemovedBody364_139

def RemovedBody364_141 : StackLang.HolProg 64 :=
.seq RemovedBody364_125 RemovedBody364_140

def RemovedBody364_142 : StackLang.HolProg 64 :=
.seq RemovedBody364_124 RemovedBody364_141

def RemovedBody364_143 : StackLang.HolProg 64 :=
.seq RemovedBody364_123 RemovedBody364_142

def RemovedBody364_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody364_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody364_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody364_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody364_150 : StackLang.HolProg 64 :=
.seq RemovedBody364_148 RemovedBody364_149

def RemovedBody364_151 : StackLang.HolProg 64 :=
.seq RemovedBody364_147 RemovedBody364_150

def RemovedBody364_152 : StackLang.HolProg 64 :=
.seq RemovedBody364_146 RemovedBody364_151

def RemovedBody364_153 : StackLang.HolProg 64 :=
.seq RemovedBody364_145 RemovedBody364_152

def RemovedBody364_154 : StackLang.HolProg 64 :=
.seq RemovedBody364_144 RemovedBody364_153

def RemovedBody364_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody364_156 : StackLang.HolProg 64 :=
.seq RemovedBody364_154 RemovedBody364_155

def RemovedBody364_157 : StackLang.HolProg 64 :=
.call (some (RemovedBody364_143, 0, 364, 4)) (Sum.inl 180) (some (RemovedBody364_156, 364, 5))

def RemovedBody364_158 : StackLang.HolProg 64 :=
.seq RemovedBody364_122 RemovedBody364_157

def RemovedBody364_159 : StackLang.HolProg 64 :=
.seq RemovedBody364_121 RemovedBody364_158

def RemovedBody364_160 : StackLang.HolProg 64 :=
.seq RemovedBody364_120 RemovedBody364_159

def RemovedBody364_161 : StackLang.HolProg 64 :=
.seq RemovedBody364_91 RemovedBody364_160

def RemovedBody364_162 : StackLang.HolProg 64 :=
.seq RemovedBody364_88 RemovedBody364_161

def RemovedBody364_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody364_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody364_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody364_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody364_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_172 : StackLang.HolProg 64 :=
.seq RemovedBody364_170 RemovedBody364_171

def RemovedBody364_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody364_174 : StackLang.HolProg 64 :=
.seq RemovedBody364_172 RemovedBody364_173

def RemovedBody364_175 : StackLang.HolProg 64 :=
.seq RemovedBody364_169 RemovedBody364_174

def RemovedBody364_176 : StackLang.HolProg 64 :=
.seq RemovedBody364_168 RemovedBody364_175

def RemovedBody364_177 : StackLang.HolProg 64 :=
.seq RemovedBody364_167 RemovedBody364_176

def RemovedBody364_178 : StackLang.HolProg 64 :=
.seq RemovedBody364_166 RemovedBody364_177

def RemovedBody364_179 : StackLang.HolProg 64 :=
.seq RemovedBody364_165 RemovedBody364_178

def RemovedBody364_180 : StackLang.HolProg 64 :=
.seq RemovedBody364_164 RemovedBody364_179

def RemovedBody364_181 : StackLang.HolProg 64 :=
.seq RemovedBody364_163 RemovedBody364_180

def RemovedBody364_182 : StackLang.HolProg 64 :=
.seq RemovedBody364_162 RemovedBody364_181

def RemovedBody364_183 : StackLang.HolProg 64 :=
.seq RemovedBody364_87 RemovedBody364_182

def RemovedBody364_184 : StackLang.HolProg 64 :=
.seq RemovedBody364_84 RemovedBody364_183

def RemovedBody364_185 : StackLang.HolProg 64 :=
.seq RemovedBody364_83 RemovedBody364_184

def RemovedBody364_186 : StackLang.HolProg 64 :=
.seq RemovedBody364_30 RemovedBody364_185

def RemovedBody364_187 : StackLang.HolProg 64 :=
.seq RemovedBody364_25 RemovedBody364_186

def RemovedBody364_188 : StackLang.HolProg 64 :=
.seq RemovedBody364_24 RemovedBody364_187

def RemovedBody364_189 : StackLang.HolProg 64 :=
.seq RemovedBody364_23 RemovedBody364_188

def RemovedBody364_190 : StackLang.HolProg 64 :=
.seq RemovedBody364_22 RemovedBody364_189

def RemovedBody364_191 : StackLang.HolProg 64 :=
.seq RemovedBody364_21 RemovedBody364_190

def RemovedBody364_192 : StackLang.HolProg 64 :=
.seq RemovedBody364_20 RemovedBody364_191

def RemovedBody364_193 : StackLang.HolProg 64 :=
.seq RemovedBody364_19 RemovedBody364_192

def RemovedBody364_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody364_196 : StackLang.HolProg 64 :=
.seq RemovedBody364_194 RemovedBody364_195

def RemovedBody364_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody364_193 RemovedBody364_196

def RemovedBody364_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_201 : StackLang.HolProg 64 :=
.seq RemovedBody364_199 RemovedBody364_200

def RemovedBody364_202 : StackLang.HolProg 64 :=
.seq RemovedBody364_198 RemovedBody364_201

def RemovedBody364_203 : StackLang.HolProg 64 :=
.seq RemovedBody364_197 RemovedBody364_202

def RemovedBody364_204 : StackLang.HolProg 64 :=
.seq RemovedBody364_18 RemovedBody364_203

def RemovedBody364_205 : StackLang.HolProg 64 :=
.loop RemovedBody364_204

def RemovedBody364_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody364_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody364_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody364_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody364_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody364_211 : StackLang.HolProg 64 :=
.seq RemovedBody364_209 RemovedBody364_210

def RemovedBody364_212 : StackLang.HolProg 64 :=
.seq RemovedBody364_208 RemovedBody364_211

def RemovedBody364_213 : StackLang.HolProg 64 :=
.seq RemovedBody364_207 RemovedBody364_212

def RemovedBody364_214 : StackLang.HolProg 64 :=
.seq RemovedBody364_206 RemovedBody364_213

def RemovedBody364_215 : StackLang.HolProg 64 :=
.seq RemovedBody364_205 RemovedBody364_214

def RemovedBody364_216 : StackLang.HolProg 64 :=
.seq RemovedBody364_17 RemovedBody364_215

def RemovedBody364_217 : StackLang.HolProg 64 :=
.seq RemovedBody364_10 RemovedBody364_216

def RemovedBody364_218 : StackLang.HolProg 64 :=
.seq RemovedBody364_9 RemovedBody364_217

def RemovedBody364_219 : StackLang.HolProg 64 :=
.seq RemovedBody364_8 RemovedBody364_218

def RemovedBody364_220 : StackLang.HolProg 64 :=
.seq RemovedBody364_7 RemovedBody364_219

def RemovedBody364_221 : StackLang.HolProg 64 :=
.seq RemovedBody364_6 RemovedBody364_220

def Removed364 : Nat × StackLang.HolProg 64 := (364, RemovedBody364_221)
theorem Removed364_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc364 = Removed364 := by
  kernel_rfl
#print axioms Removed364_eq
end InitECandidate.Proofs.BackendStages
