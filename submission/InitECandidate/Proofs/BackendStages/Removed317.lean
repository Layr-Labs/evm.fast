import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc317
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody317_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody317_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody317_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody317_3 : StackLang.HolProg 64 :=
.seq RemovedBody317_1 RemovedBody317_2

def RemovedBody317_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody317_3 RemovedBody317_4

def RemovedBody317_6 : StackLang.HolProg 64 :=
.seq RemovedBody317_0 RemovedBody317_5

def RemovedBody317_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody317_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody317_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody317_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody317_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody317_14 : StackLang.HolProg 64 :=
.seq RemovedBody317_12 RemovedBody317_13

def RemovedBody317_15 : StackLang.HolProg 64 :=
.seq RemovedBody317_11 RemovedBody317_14

def RemovedBody317_16 : StackLang.HolProg 64 :=
.seq RemovedBody317_10 RemovedBody317_15

def RemovedBody317_17 : StackLang.HolProg 64 :=
.seq RemovedBody317_9 RemovedBody317_16

def RemovedBody317_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody317_17 RemovedBody317_18

def RemovedBody317_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody317_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody317_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody317_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody317_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody317_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody317_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody317_34 : StackLang.HolProg 64 :=
.seq RemovedBody317_32 RemovedBody317_33

def RemovedBody317_35 : StackLang.HolProg 64 :=
.seq RemovedBody317_31 RemovedBody317_34

def RemovedBody317_36 : StackLang.HolProg 64 :=
.seq RemovedBody317_30 RemovedBody317_35

def RemovedBody317_37 : StackLang.HolProg 64 :=
.seq RemovedBody317_29 RemovedBody317_36

def RemovedBody317_38 : StackLang.HolProg 64 :=
.seq RemovedBody317_28 RemovedBody317_37

def RemovedBody317_39 : StackLang.HolProg 64 :=
.seq RemovedBody317_27 RemovedBody317_38

def RemovedBody317_40 : StackLang.HolProg 64 :=
.seq RemovedBody317_26 RemovedBody317_39

def RemovedBody317_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_42 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody317_40 RemovedBody317_41

def RemovedBody317_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody317_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody317_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody317_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody317_53 : StackLang.HolProg 64 :=
.seq RemovedBody317_51 RemovedBody317_52

def RemovedBody317_54 : StackLang.HolProg 64 :=
.seq RemovedBody317_50 RemovedBody317_53

def RemovedBody317_55 : StackLang.HolProg 64 :=
.seq RemovedBody317_49 RemovedBody317_54

def RemovedBody317_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 881#64)

def RemovedBody317_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody317_59 : StackLang.HolProg 64 :=
.seq RemovedBody317_57 RemovedBody317_58

def RemovedBody317_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody317_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody317_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody317_63 : StackLang.HolProg 64 :=
.seq RemovedBody317_61 RemovedBody317_62

def RemovedBody317_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody317_63 RemovedBody317_64

def RemovedBody317_66 : StackLang.HolProg 64 :=
.seq RemovedBody317_60 RemovedBody317_65

def RemovedBody317_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody317_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody317_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 3

def RemovedBody317_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody317_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody317_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody317_76 : StackLang.HolProg 64 :=
.seq RemovedBody317_74 RemovedBody317_75

def RemovedBody317_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody317_78 : StackLang.HolProg 64 :=
.seq RemovedBody317_76 RemovedBody317_77

def RemovedBody317_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_80 : StackLang.HolProg 64 :=
.seq RemovedBody317_78 RemovedBody317_79

def RemovedBody317_81 : StackLang.HolProg 64 :=
.seq RemovedBody317_73 RemovedBody317_80

def RemovedBody317_82 : StackLang.HolProg 64 :=
.seq RemovedBody317_72 RemovedBody317_81

def RemovedBody317_83 : StackLang.HolProg 64 :=
.seq RemovedBody317_71 RemovedBody317_82

def RemovedBody317_84 : StackLang.HolProg 64 :=
.seq RemovedBody317_70 RemovedBody317_83

def RemovedBody317_85 : StackLang.HolProg 64 :=
.seq RemovedBody317_69 RemovedBody317_84

def RemovedBody317_86 : StackLang.HolProg 64 :=
.seq RemovedBody317_68 RemovedBody317_85

def RemovedBody317_87 : StackLang.HolProg 64 :=
.seq RemovedBody317_67 RemovedBody317_86

def RemovedBody317_88 : StackLang.HolProg 64 :=
.seq RemovedBody317_66 RemovedBody317_87

def RemovedBody317_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody317_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_99 : StackLang.HolProg 64 :=
.seq RemovedBody317_97 RemovedBody317_98

def RemovedBody317_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody317_101 : StackLang.HolProg 64 :=
.seq RemovedBody317_99 RemovedBody317_100

def RemovedBody317_102 : StackLang.HolProg 64 :=
.seq RemovedBody317_96 RemovedBody317_101

def RemovedBody317_103 : StackLang.HolProg 64 :=
.seq RemovedBody317_95 RemovedBody317_102

def RemovedBody317_104 : StackLang.HolProg 64 :=
.seq RemovedBody317_94 RemovedBody317_103

def RemovedBody317_105 : StackLang.HolProg 64 :=
.seq RemovedBody317_93 RemovedBody317_104

def RemovedBody317_106 : StackLang.HolProg 64 :=
.seq RemovedBody317_92 RemovedBody317_105

def RemovedBody317_107 : StackLang.HolProg 64 :=
.seq RemovedBody317_91 RemovedBody317_106

def RemovedBody317_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_112 : StackLang.HolProg 64 :=
.seq RemovedBody317_110 RemovedBody317_111

def RemovedBody317_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody317_114 : StackLang.HolProg 64 :=
.seq RemovedBody317_112 RemovedBody317_113

def RemovedBody317_115 : StackLang.HolProg 64 :=
.seq RemovedBody317_109 RemovedBody317_114

def RemovedBody317_116 : StackLang.HolProg 64 :=
.seq RemovedBody317_108 RemovedBody317_115

def RemovedBody317_117 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody317_118 : StackLang.HolProg 64 :=
.seq RemovedBody317_116 RemovedBody317_117

def RemovedBody317_119 : StackLang.HolProg 64 :=
.call (some (RemovedBody317_107, 0, 317, 2)) (Sum.inl 286) (some (RemovedBody317_118, 317, 3))

def RemovedBody317_120 : StackLang.HolProg 64 :=
.seq RemovedBody317_90 RemovedBody317_119

def RemovedBody317_121 : StackLang.HolProg 64 :=
.seq RemovedBody317_89 RemovedBody317_120

def RemovedBody317_122 : StackLang.HolProg 64 :=
.seq RemovedBody317_88 RemovedBody317_121

def RemovedBody317_123 : StackLang.HolProg 64 :=
.seq RemovedBody317_59 RemovedBody317_122

def RemovedBody317_124 : StackLang.HolProg 64 :=
.seq RemovedBody317_56 RemovedBody317_123

def RemovedBody317_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_127 : StackLang.HolProg 64 :=
.seq RemovedBody317_125 RemovedBody317_126

def RemovedBody317_128 : StackLang.HolProg 64 :=
.seq RemovedBody317_124 RemovedBody317_127

def RemovedBody317_129 : StackLang.HolProg 64 :=
.seq RemovedBody317_55 RemovedBody317_128

def RemovedBody317_130 : StackLang.HolProg 64 :=
.seq RemovedBody317_48 RemovedBody317_129

def RemovedBody317_131 : StackLang.HolProg 64 :=
.seq RemovedBody317_47 RemovedBody317_130

def RemovedBody317_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody317_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_136 : StackLang.HolProg 64 :=
.seq RemovedBody317_134 RemovedBody317_135

def RemovedBody317_137 : StackLang.HolProg 64 :=
.seq RemovedBody317_133 RemovedBody317_136

def RemovedBody317_138 : StackLang.HolProg 64 :=
.seq RemovedBody317_132 RemovedBody317_137

def RemovedBody317_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody317_131 RemovedBody317_138

def RemovedBody317_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody317_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody317_143 : StackLang.HolProg 64 :=
.seq RemovedBody317_141 RemovedBody317_142

def RemovedBody317_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody317_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def RemovedBody317_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_149 : StackLang.HolProg 64 :=
.seq RemovedBody317_147 RemovedBody317_148

def RemovedBody317_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 882#64)

def RemovedBody317_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody317_153 : StackLang.HolProg 64 :=
.seq RemovedBody317_151 RemovedBody317_152

def RemovedBody317_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody317_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody317_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody317_157 : StackLang.HolProg 64 :=
.seq RemovedBody317_155 RemovedBody317_156

def RemovedBody317_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_159 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody317_157 RemovedBody317_158

def RemovedBody317_160 : StackLang.HolProg 64 :=
.seq RemovedBody317_154 RemovedBody317_159

def RemovedBody317_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody317_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody317_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 317 5

def RemovedBody317_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody317_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody317_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody317_170 : StackLang.HolProg 64 :=
.seq RemovedBody317_168 RemovedBody317_169

def RemovedBody317_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody317_172 : StackLang.HolProg 64 :=
.seq RemovedBody317_170 RemovedBody317_171

def RemovedBody317_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_174 : StackLang.HolProg 64 :=
.seq RemovedBody317_172 RemovedBody317_173

def RemovedBody317_175 : StackLang.HolProg 64 :=
.seq RemovedBody317_167 RemovedBody317_174

def RemovedBody317_176 : StackLang.HolProg 64 :=
.seq RemovedBody317_166 RemovedBody317_175

def RemovedBody317_177 : StackLang.HolProg 64 :=
.seq RemovedBody317_165 RemovedBody317_176

def RemovedBody317_178 : StackLang.HolProg 64 :=
.seq RemovedBody317_164 RemovedBody317_177

def RemovedBody317_179 : StackLang.HolProg 64 :=
.seq RemovedBody317_163 RemovedBody317_178

def RemovedBody317_180 : StackLang.HolProg 64 :=
.seq RemovedBody317_162 RemovedBody317_179

def RemovedBody317_181 : StackLang.HolProg 64 :=
.seq RemovedBody317_161 RemovedBody317_180

def RemovedBody317_182 : StackLang.HolProg 64 :=
.seq RemovedBody317_160 RemovedBody317_181

def RemovedBody317_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody317_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody317_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody317_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody317_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_194 : StackLang.HolProg 64 :=
.seq RemovedBody317_192 RemovedBody317_193

def RemovedBody317_195 : StackLang.HolProg 64 :=
.seq RemovedBody317_191 RemovedBody317_194

def RemovedBody317_196 : StackLang.HolProg 64 :=
.seq RemovedBody317_190 RemovedBody317_195

def RemovedBody317_197 : StackLang.HolProg 64 :=
.seq RemovedBody317_189 RemovedBody317_196

def RemovedBody317_198 : StackLang.HolProg 64 :=
.seq RemovedBody317_188 RemovedBody317_197

def RemovedBody317_199 : StackLang.HolProg 64 :=
.seq RemovedBody317_187 RemovedBody317_198

def RemovedBody317_200 : StackLang.HolProg 64 :=
.seq RemovedBody317_186 RemovedBody317_199

def RemovedBody317_201 : StackLang.HolProg 64 :=
.seq RemovedBody317_185 RemovedBody317_200

def RemovedBody317_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody317_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody317_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody317_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody317_206 : StackLang.HolProg 64 :=
.seq RemovedBody317_204 RemovedBody317_205

def RemovedBody317_207 : StackLang.HolProg 64 :=
.seq RemovedBody317_203 RemovedBody317_206

def RemovedBody317_208 : StackLang.HolProg 64 :=
.seq RemovedBody317_202 RemovedBody317_207

def RemovedBody317_209 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody317_210 : StackLang.HolProg 64 :=
.seq RemovedBody317_208 RemovedBody317_209

def RemovedBody317_211 : StackLang.HolProg 64 :=
.call (some (RemovedBody317_201, 0, 317, 4)) (Sum.inl 292) (some (RemovedBody317_210, 317, 5))

def RemovedBody317_212 : StackLang.HolProg 64 :=
.seq RemovedBody317_184 RemovedBody317_211

def RemovedBody317_213 : StackLang.HolProg 64 :=
.seq RemovedBody317_183 RemovedBody317_212

def RemovedBody317_214 : StackLang.HolProg 64 :=
.seq RemovedBody317_182 RemovedBody317_213

def RemovedBody317_215 : StackLang.HolProg 64 :=
.seq RemovedBody317_153 RemovedBody317_214

def RemovedBody317_216 : StackLang.HolProg 64 :=
.seq RemovedBody317_150 RemovedBody317_215

def RemovedBody317_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 40#64))

def RemovedBody317_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody317_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody317_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody317_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def RemovedBody317_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody317_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def RemovedBody317_231 : StackLang.HolProg 64 :=
.seq RemovedBody317_229 RemovedBody317_230

def RemovedBody317_232 : StackLang.HolProg 64 :=
.seq RemovedBody317_228 RemovedBody317_231

def RemovedBody317_233 : StackLang.HolProg 64 :=
.seq RemovedBody317_227 RemovedBody317_232

def RemovedBody317_234 : StackLang.HolProg 64 :=
.seq RemovedBody317_226 RemovedBody317_233

def RemovedBody317_235 : StackLang.HolProg 64 :=
.seq RemovedBody317_225 RemovedBody317_234

def RemovedBody317_236 : StackLang.HolProg 64 :=
.seq RemovedBody317_224 RemovedBody317_235

def RemovedBody317_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_238 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody317_236 RemovedBody317_237

def RemovedBody317_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody317_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody317_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 48#64))

def RemovedBody317_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 56#64))

def RemovedBody317_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody317_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 296

def RemovedBody317_248 : StackLang.HolProg 64 :=
.seq RemovedBody317_246 RemovedBody317_247

def RemovedBody317_249 : StackLang.HolProg 64 :=
.seq RemovedBody317_245 RemovedBody317_248

def RemovedBody317_250 : StackLang.HolProg 64 :=
.seq RemovedBody317_244 RemovedBody317_249

def RemovedBody317_251 : StackLang.HolProg 64 :=
.seq RemovedBody317_243 RemovedBody317_250

def RemovedBody317_252 : StackLang.HolProg 64 :=
.seq RemovedBody317_242 RemovedBody317_251

def RemovedBody317_253 : StackLang.HolProg 64 :=
.seq RemovedBody317_241 RemovedBody317_252

def RemovedBody317_254 : StackLang.HolProg 64 :=
.seq RemovedBody317_240 RemovedBody317_253

def RemovedBody317_255 : StackLang.HolProg 64 :=
.seq RemovedBody317_239 RemovedBody317_254

def RemovedBody317_256 : StackLang.HolProg 64 :=
.seq RemovedBody317_238 RemovedBody317_255

def RemovedBody317_257 : StackLang.HolProg 64 :=
.seq RemovedBody317_223 RemovedBody317_256

def RemovedBody317_258 : StackLang.HolProg 64 :=
.seq RemovedBody317_222 RemovedBody317_257

def RemovedBody317_259 : StackLang.HolProg 64 :=
.seq RemovedBody317_221 RemovedBody317_258

def RemovedBody317_260 : StackLang.HolProg 64 :=
.seq RemovedBody317_220 RemovedBody317_259

def RemovedBody317_261 : StackLang.HolProg 64 :=
.seq RemovedBody317_219 RemovedBody317_260

def RemovedBody317_262 : StackLang.HolProg 64 :=
.seq RemovedBody317_218 RemovedBody317_261

def RemovedBody317_263 : StackLang.HolProg 64 :=
.seq RemovedBody317_217 RemovedBody317_262

def RemovedBody317_264 : StackLang.HolProg 64 :=
.seq RemovedBody317_216 RemovedBody317_263

def RemovedBody317_265 : StackLang.HolProg 64 :=
.seq RemovedBody317_149 RemovedBody317_264

def RemovedBody317_266 : StackLang.HolProg 64 :=
.seq RemovedBody317_146 RemovedBody317_265

def RemovedBody317_267 : StackLang.HolProg 64 :=
.seq RemovedBody317_145 RemovedBody317_266

def RemovedBody317_268 : StackLang.HolProg 64 :=
.seq RemovedBody317_144 RemovedBody317_267

def RemovedBody317_269 : StackLang.HolProg 64 :=
.seq RemovedBody317_143 RemovedBody317_268

def RemovedBody317_270 : StackLang.HolProg 64 :=
.seq RemovedBody317_140 RemovedBody317_269

def RemovedBody317_271 : StackLang.HolProg 64 :=
.seq RemovedBody317_139 RemovedBody317_270

def RemovedBody317_272 : StackLang.HolProg 64 :=
.seq RemovedBody317_46 RemovedBody317_271

def RemovedBody317_273 : StackLang.HolProg 64 :=
.seq RemovedBody317_45 RemovedBody317_272

def RemovedBody317_274 : StackLang.HolProg 64 :=
.seq RemovedBody317_44 RemovedBody317_273

def RemovedBody317_275 : StackLang.HolProg 64 :=
.seq RemovedBody317_43 RemovedBody317_274

def RemovedBody317_276 : StackLang.HolProg 64 :=
.seq RemovedBody317_42 RemovedBody317_275

def RemovedBody317_277 : StackLang.HolProg 64 :=
.seq RemovedBody317_25 RemovedBody317_276

def RemovedBody317_278 : StackLang.HolProg 64 :=
.seq RemovedBody317_24 RemovedBody317_277

def RemovedBody317_279 : StackLang.HolProg 64 :=
.seq RemovedBody317_23 RemovedBody317_278

def RemovedBody317_280 : StackLang.HolProg 64 :=
.seq RemovedBody317_22 RemovedBody317_279

def RemovedBody317_281 : StackLang.HolProg 64 :=
.seq RemovedBody317_21 RemovedBody317_280

def RemovedBody317_282 : StackLang.HolProg 64 :=
.seq RemovedBody317_20 RemovedBody317_281

def RemovedBody317_283 : StackLang.HolProg 64 :=
.seq RemovedBody317_19 RemovedBody317_282

def RemovedBody317_284 : StackLang.HolProg 64 :=
.seq RemovedBody317_8 RemovedBody317_283

def RemovedBody317_285 : StackLang.HolProg 64 :=
.seq RemovedBody317_7 RemovedBody317_284

def RemovedBody317_286 : StackLang.HolProg 64 :=
.seq RemovedBody317_6 RemovedBody317_285

def Removed317 : Nat × StackLang.HolProg 64 := (317, RemovedBody317_286)
theorem Removed317_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc317 = Removed317 := by
  kernel_rfl
#print axioms Removed317_eq
end InitECandidate.Proofs.BackendStages
