import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc846
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody846_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody846_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody846_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody846_3 : StackLang.HolProg 64 :=
.seq RemovedBody846_1 RemovedBody846_2

def RemovedBody846_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody846_3 RemovedBody846_4

def RemovedBody846_6 : StackLang.HolProg 64 :=
.seq RemovedBody846_0 RemovedBody846_5

def RemovedBody846_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody846_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 80#64)

def RemovedBody846_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_11 : StackLang.HolProg 64 :=
.seq RemovedBody846_9 RemovedBody846_10

def RemovedBody846_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4233#64)

def RemovedBody846_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_15 : StackLang.HolProg 64 :=
.seq RemovedBody846_13 RemovedBody846_14

def RemovedBody846_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody846_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody846_19 : StackLang.HolProg 64 :=
.seq RemovedBody846_17 RemovedBody846_18

def RemovedBody846_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody846_19 RemovedBody846_20

def RemovedBody846_22 : StackLang.HolProg 64 :=
.seq RemovedBody846_16 RemovedBody846_21

def RemovedBody846_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody846_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 3

def RemovedBody846_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody846_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody846_32 : StackLang.HolProg 64 :=
.seq RemovedBody846_30 RemovedBody846_31

def RemovedBody846_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody846_34 : StackLang.HolProg 64 :=
.seq RemovedBody846_32 RemovedBody846_33

def RemovedBody846_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_36 : StackLang.HolProg 64 :=
.seq RemovedBody846_34 RemovedBody846_35

def RemovedBody846_37 : StackLang.HolProg 64 :=
.seq RemovedBody846_29 RemovedBody846_36

def RemovedBody846_38 : StackLang.HolProg 64 :=
.seq RemovedBody846_28 RemovedBody846_37

def RemovedBody846_39 : StackLang.HolProg 64 :=
.seq RemovedBody846_27 RemovedBody846_38

def RemovedBody846_40 : StackLang.HolProg 64 :=
.seq RemovedBody846_26 RemovedBody846_39

def RemovedBody846_41 : StackLang.HolProg 64 :=
.seq RemovedBody846_25 RemovedBody846_40

def RemovedBody846_42 : StackLang.HolProg 64 :=
.seq RemovedBody846_24 RemovedBody846_41

def RemovedBody846_43 : StackLang.HolProg 64 :=
.seq RemovedBody846_23 RemovedBody846_42

def RemovedBody846_44 : StackLang.HolProg 64 :=
.seq RemovedBody846_22 RemovedBody846_43

def RemovedBody846_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody846_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_53 : StackLang.HolProg 64 :=
.seq RemovedBody846_51 RemovedBody846_52

def RemovedBody846_54 : StackLang.HolProg 64 :=
.seq RemovedBody846_50 RemovedBody846_53

def RemovedBody846_55 : StackLang.HolProg 64 :=
.seq RemovedBody846_49 RemovedBody846_54

def RemovedBody846_56 : StackLang.HolProg 64 :=
.seq RemovedBody846_48 RemovedBody846_55

def RemovedBody846_57 : StackLang.HolProg 64 :=
.seq RemovedBody846_47 RemovedBody846_56

def RemovedBody846_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_59 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody846_60 : StackLang.HolProg 64 :=
.seq RemovedBody846_58 RemovedBody846_59

def RemovedBody846_61 : StackLang.HolProg 64 :=
.call (some (RemovedBody846_57, 0, 846, 2)) (Sum.inl 68) (some (RemovedBody846_60, 846, 3))

def RemovedBody846_62 : StackLang.HolProg 64 :=
.seq RemovedBody846_46 RemovedBody846_61

def RemovedBody846_63 : StackLang.HolProg 64 :=
.seq RemovedBody846_45 RemovedBody846_62

def RemovedBody846_64 : StackLang.HolProg 64 :=
.seq RemovedBody846_44 RemovedBody846_63

def RemovedBody846_65 : StackLang.HolProg 64 :=
.seq RemovedBody846_15 RemovedBody846_64

def RemovedBody846_66 : StackLang.HolProg 64 :=
.seq RemovedBody846_12 RemovedBody846_65

def RemovedBody846_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody846_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody846_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_73 : StackLang.HolProg 64 :=
.seq RemovedBody846_71 RemovedBody846_72

def RemovedBody846_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 5#64)

def RemovedBody846_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody846_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody846_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody846_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody846_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody846_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 192#64)

def RemovedBody846_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody846_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 76#64)

def RemovedBody846_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_90 : StackLang.HolProg 64 :=
.seq RemovedBody846_88 RemovedBody846_89

def RemovedBody846_91 : StackLang.HolProg 64 :=
.seq RemovedBody846_87 RemovedBody846_90

def RemovedBody846_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_94 : StackLang.HolProg 64 :=
.seq RemovedBody846_92 RemovedBody846_93

def RemovedBody846_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody846_91 RemovedBody846_94

def RemovedBody846_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody846_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 116#64)

def RemovedBody846_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_102 : StackLang.HolProg 64 :=
.seq RemovedBody846_100 RemovedBody846_101

def RemovedBody846_103 : StackLang.HolProg 64 :=
.seq RemovedBody846_99 RemovedBody846_102

def RemovedBody846_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_106 : StackLang.HolProg 64 :=
.seq RemovedBody846_104 RemovedBody846_105

def RemovedBody846_107 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody846_103 RemovedBody846_106

def RemovedBody846_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody846_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 184#64)

def RemovedBody846_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_114 : StackLang.HolProg 64 :=
.seq RemovedBody846_112 RemovedBody846_113

def RemovedBody846_115 : StackLang.HolProg 64 :=
.seq RemovedBody846_111 RemovedBody846_114

def RemovedBody846_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_118 : StackLang.HolProg 64 :=
.seq RemovedBody846_116 RemovedBody846_117

def RemovedBody846_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody846_115 RemovedBody846_118

def RemovedBody846_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody846_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 68#64)

def RemovedBody846_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_126 : StackLang.HolProg 64 :=
.seq RemovedBody846_124 RemovedBody846_125

def RemovedBody846_127 : StackLang.HolProg 64 :=
.seq RemovedBody846_123 RemovedBody846_126

def RemovedBody846_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_130 : StackLang.HolProg 64 :=
.seq RemovedBody846_128 RemovedBody846_129

def RemovedBody846_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody846_127 RemovedBody846_130

def RemovedBody846_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody846_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_138 : StackLang.HolProg 64 :=
.seq RemovedBody846_136 RemovedBody846_137

def RemovedBody846_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody846_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody846_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody846_144 : StackLang.HolProg 64 :=
.seq RemovedBody846_142 RemovedBody846_143

def RemovedBody846_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_147 : StackLang.HolProg 64 :=
.seq RemovedBody846_145 RemovedBody846_146

def RemovedBody846_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_150 : StackLang.HolProg 64 :=
.seq RemovedBody846_148 RemovedBody846_149

def RemovedBody846_151 : StackLang.HolProg 64 :=
.seq RemovedBody846_147 RemovedBody846_150

def RemovedBody846_152 : StackLang.HolProg 64 :=
.seq RemovedBody846_144 RemovedBody846_151

def RemovedBody846_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4234#64)

def RemovedBody846_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_156 : StackLang.HolProg 64 :=
.seq RemovedBody846_154 RemovedBody846_155

def RemovedBody846_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody846_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody846_160 : StackLang.HolProg 64 :=
.seq RemovedBody846_158 RemovedBody846_159

def RemovedBody846_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_162 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody846_160 RemovedBody846_161

def RemovedBody846_163 : StackLang.HolProg 64 :=
.seq RemovedBody846_157 RemovedBody846_162

def RemovedBody846_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody846_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 5

def RemovedBody846_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody846_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody846_173 : StackLang.HolProg 64 :=
.seq RemovedBody846_171 RemovedBody846_172

def RemovedBody846_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody846_175 : StackLang.HolProg 64 :=
.seq RemovedBody846_173 RemovedBody846_174

def RemovedBody846_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_177 : StackLang.HolProg 64 :=
.seq RemovedBody846_175 RemovedBody846_176

def RemovedBody846_178 : StackLang.HolProg 64 :=
.seq RemovedBody846_170 RemovedBody846_177

def RemovedBody846_179 : StackLang.HolProg 64 :=
.seq RemovedBody846_169 RemovedBody846_178

def RemovedBody846_180 : StackLang.HolProg 64 :=
.seq RemovedBody846_168 RemovedBody846_179

def RemovedBody846_181 : StackLang.HolProg 64 :=
.seq RemovedBody846_167 RemovedBody846_180

def RemovedBody846_182 : StackLang.HolProg 64 :=
.seq RemovedBody846_166 RemovedBody846_181

def RemovedBody846_183 : StackLang.HolProg 64 :=
.seq RemovedBody846_165 RemovedBody846_182

def RemovedBody846_184 : StackLang.HolProg 64 :=
.seq RemovedBody846_164 RemovedBody846_183

def RemovedBody846_185 : StackLang.HolProg 64 :=
.seq RemovedBody846_163 RemovedBody846_184

def RemovedBody846_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody846_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_197 : StackLang.HolProg 64 :=
.seq RemovedBody846_195 RemovedBody846_196

def RemovedBody846_198 : StackLang.HolProg 64 :=
.seq RemovedBody846_194 RemovedBody846_197

def RemovedBody846_199 : StackLang.HolProg 64 :=
.seq RemovedBody846_193 RemovedBody846_198

def RemovedBody846_200 : StackLang.HolProg 64 :=
.seq RemovedBody846_192 RemovedBody846_199

def RemovedBody846_201 : StackLang.HolProg 64 :=
.seq RemovedBody846_191 RemovedBody846_200

def RemovedBody846_202 : StackLang.HolProg 64 :=
.seq RemovedBody846_190 RemovedBody846_201

def RemovedBody846_203 : StackLang.HolProg 64 :=
.seq RemovedBody846_189 RemovedBody846_202

def RemovedBody846_204 : StackLang.HolProg 64 :=
.seq RemovedBody846_188 RemovedBody846_203

def RemovedBody846_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_209 : StackLang.HolProg 64 :=
.seq RemovedBody846_207 RemovedBody846_208

def RemovedBody846_210 : StackLang.HolProg 64 :=
.seq RemovedBody846_206 RemovedBody846_209

def RemovedBody846_211 : StackLang.HolProg 64 :=
.seq RemovedBody846_205 RemovedBody846_210

def RemovedBody846_212 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody846_213 : StackLang.HolProg 64 :=
.seq RemovedBody846_211 RemovedBody846_212

def RemovedBody846_214 : StackLang.HolProg 64 :=
.call (some (RemovedBody846_204, 0, 846, 4)) (Sum.inl 68) (some (RemovedBody846_213, 846, 5))

def RemovedBody846_215 : StackLang.HolProg 64 :=
.seq RemovedBody846_187 RemovedBody846_214

def RemovedBody846_216 : StackLang.HolProg 64 :=
.seq RemovedBody846_186 RemovedBody846_215

def RemovedBody846_217 : StackLang.HolProg 64 :=
.seq RemovedBody846_185 RemovedBody846_216

def RemovedBody846_218 : StackLang.HolProg 64 :=
.seq RemovedBody846_156 RemovedBody846_217

def RemovedBody846_219 : StackLang.HolProg 64 :=
.seq RemovedBody846_153 RemovedBody846_218

def RemovedBody846_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody846_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_225 : StackLang.HolProg 64 :=
.seq RemovedBody846_223 RemovedBody846_224

def RemovedBody846_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody846_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody846_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody846_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody846_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_232 : StackLang.HolProg 64 :=
.seq RemovedBody846_230 RemovedBody846_231

def RemovedBody846_233 : StackLang.HolProg 64 :=
.seq RemovedBody846_229 RemovedBody846_232

def RemovedBody846_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4235#64)

def RemovedBody846_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_237 : StackLang.HolProg 64 :=
.seq RemovedBody846_235 RemovedBody846_236

def RemovedBody846_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody846_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody846_241 : StackLang.HolProg 64 :=
.seq RemovedBody846_239 RemovedBody846_240

def RemovedBody846_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody846_241 RemovedBody846_242

def RemovedBody846_244 : StackLang.HolProg 64 :=
.seq RemovedBody846_238 RemovedBody846_243

def RemovedBody846_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody846_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody846_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 846 7

def RemovedBody846_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody846_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody846_254 : StackLang.HolProg 64 :=
.seq RemovedBody846_252 RemovedBody846_253

def RemovedBody846_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody846_256 : StackLang.HolProg 64 :=
.seq RemovedBody846_254 RemovedBody846_255

def RemovedBody846_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_258 : StackLang.HolProg 64 :=
.seq RemovedBody846_256 RemovedBody846_257

def RemovedBody846_259 : StackLang.HolProg 64 :=
.seq RemovedBody846_251 RemovedBody846_258

def RemovedBody846_260 : StackLang.HolProg 64 :=
.seq RemovedBody846_250 RemovedBody846_259

def RemovedBody846_261 : StackLang.HolProg 64 :=
.seq RemovedBody846_249 RemovedBody846_260

def RemovedBody846_262 : StackLang.HolProg 64 :=
.seq RemovedBody846_248 RemovedBody846_261

def RemovedBody846_263 : StackLang.HolProg 64 :=
.seq RemovedBody846_247 RemovedBody846_262

def RemovedBody846_264 : StackLang.HolProg 64 :=
.seq RemovedBody846_246 RemovedBody846_263

def RemovedBody846_265 : StackLang.HolProg 64 :=
.seq RemovedBody846_245 RemovedBody846_264

def RemovedBody846_266 : StackLang.HolProg 64 :=
.seq RemovedBody846_244 RemovedBody846_265

def RemovedBody846_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody846_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody846_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody846_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody846_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_281 : StackLang.HolProg 64 :=
.seq RemovedBody846_279 RemovedBody846_280

def RemovedBody846_282 : StackLang.HolProg 64 :=
.seq RemovedBody846_278 RemovedBody846_281

def RemovedBody846_283 : StackLang.HolProg 64 :=
.seq RemovedBody846_277 RemovedBody846_282

def RemovedBody846_284 : StackLang.HolProg 64 :=
.seq RemovedBody846_276 RemovedBody846_283

def RemovedBody846_285 : StackLang.HolProg 64 :=
.seq RemovedBody846_275 RemovedBody846_284

def RemovedBody846_286 : StackLang.HolProg 64 :=
.seq RemovedBody846_274 RemovedBody846_285

def RemovedBody846_287 : StackLang.HolProg 64 :=
.seq RemovedBody846_273 RemovedBody846_286

def RemovedBody846_288 : StackLang.HolProg 64 :=
.seq RemovedBody846_272 RemovedBody846_287

def RemovedBody846_289 : StackLang.HolProg 64 :=
.seq RemovedBody846_271 RemovedBody846_288

def RemovedBody846_290 : StackLang.HolProg 64 :=
.seq RemovedBody846_270 RemovedBody846_289

def RemovedBody846_291 : StackLang.HolProg 64 :=
.seq RemovedBody846_269 RemovedBody846_290

def RemovedBody846_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody846_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody846_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody846_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody846_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody846_300 : StackLang.HolProg 64 :=
.seq RemovedBody846_298 RemovedBody846_299

def RemovedBody846_301 : StackLang.HolProg 64 :=
.seq RemovedBody846_297 RemovedBody846_300

def RemovedBody846_302 : StackLang.HolProg 64 :=
.seq RemovedBody846_296 RemovedBody846_301

def RemovedBody846_303 : StackLang.HolProg 64 :=
.seq RemovedBody846_295 RemovedBody846_302

def RemovedBody846_304 : StackLang.HolProg 64 :=
.seq RemovedBody846_294 RemovedBody846_303

def RemovedBody846_305 : StackLang.HolProg 64 :=
.seq RemovedBody846_293 RemovedBody846_304

def RemovedBody846_306 : StackLang.HolProg 64 :=
.seq RemovedBody846_292 RemovedBody846_305

def RemovedBody846_307 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody846_308 : StackLang.HolProg 64 :=
.seq RemovedBody846_306 RemovedBody846_307

def RemovedBody846_309 : StackLang.HolProg 64 :=
.call (some (RemovedBody846_291, 0, 846, 6)) (Sum.inl 77) (some (RemovedBody846_308, 846, 7))

def RemovedBody846_310 : StackLang.HolProg 64 :=
.seq RemovedBody846_268 RemovedBody846_309

def RemovedBody846_311 : StackLang.HolProg 64 :=
.seq RemovedBody846_267 RemovedBody846_310

def RemovedBody846_312 : StackLang.HolProg 64 :=
.seq RemovedBody846_266 RemovedBody846_311

def RemovedBody846_313 : StackLang.HolProg 64 :=
.seq RemovedBody846_237 RemovedBody846_312

def RemovedBody846_314 : StackLang.HolProg 64 :=
.seq RemovedBody846_234 RemovedBody846_313

def RemovedBody846_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody846_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody846_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody846_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody846_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def RemovedBody846_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody846_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody846_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody846_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_333 : StackLang.HolProg 64 :=
.seq RemovedBody846_331 RemovedBody846_332

def RemovedBody846_334 : StackLang.HolProg 64 :=
.seq RemovedBody846_330 RemovedBody846_333

def RemovedBody846_335 : StackLang.HolProg 64 :=
.seq RemovedBody846_329 RemovedBody846_334

def RemovedBody846_336 : StackLang.HolProg 64 :=
.seq RemovedBody846_328 RemovedBody846_335

def RemovedBody846_337 : StackLang.HolProg 64 :=
.seq RemovedBody846_327 RemovedBody846_336

def RemovedBody846_338 : StackLang.HolProg 64 :=
.seq RemovedBody846_326 RemovedBody846_337

def RemovedBody846_339 : StackLang.HolProg 64 :=
.seq RemovedBody846_325 RemovedBody846_338

def RemovedBody846_340 : StackLang.HolProg 64 :=
.seq RemovedBody846_324 RemovedBody846_339

def RemovedBody846_341 : StackLang.HolProg 64 :=
.seq RemovedBody846_323 RemovedBody846_340

def RemovedBody846_342 : StackLang.HolProg 64 :=
.seq RemovedBody846_322 RemovedBody846_341

def RemovedBody846_343 : StackLang.HolProg 64 :=
.seq RemovedBody846_321 RemovedBody846_342

def RemovedBody846_344 : StackLang.HolProg 64 :=
.seq RemovedBody846_320 RemovedBody846_343

def RemovedBody846_345 : StackLang.HolProg 64 :=
.seq RemovedBody846_319 RemovedBody846_344

def RemovedBody846_346 : StackLang.HolProg 64 :=
.seq RemovedBody846_318 RemovedBody846_345

def RemovedBody846_347 : StackLang.HolProg 64 :=
.seq RemovedBody846_317 RemovedBody846_346

def RemovedBody846_348 : StackLang.HolProg 64 :=
.seq RemovedBody846_316 RemovedBody846_347

def RemovedBody846_349 : StackLang.HolProg 64 :=
.seq RemovedBody846_315 RemovedBody846_348

def RemovedBody846_350 : StackLang.HolProg 64 :=
.seq RemovedBody846_314 RemovedBody846_349

def RemovedBody846_351 : StackLang.HolProg 64 :=
.seq RemovedBody846_233 RemovedBody846_350

def RemovedBody846_352 : StackLang.HolProg 64 :=
.seq RemovedBody846_228 RemovedBody846_351

def RemovedBody846_353 : StackLang.HolProg 64 :=
.seq RemovedBody846_227 RemovedBody846_352

def RemovedBody846_354 : StackLang.HolProg 64 :=
.seq RemovedBody846_226 RemovedBody846_353

def RemovedBody846_355 : StackLang.HolProg 64 :=
.seq RemovedBody846_225 RemovedBody846_354

def RemovedBody846_356 : StackLang.HolProg 64 :=
.seq RemovedBody846_222 RemovedBody846_355

def RemovedBody846_357 : StackLang.HolProg 64 :=
.seq RemovedBody846_221 RemovedBody846_356

def RemovedBody846_358 : StackLang.HolProg 64 :=
.seq RemovedBody846_220 RemovedBody846_357

def RemovedBody846_359 : StackLang.HolProg 64 :=
.seq RemovedBody846_219 RemovedBody846_358

def RemovedBody846_360 : StackLang.HolProg 64 :=
.seq RemovedBody846_152 RemovedBody846_359

def RemovedBody846_361 : StackLang.HolProg 64 :=
.seq RemovedBody846_141 RemovedBody846_360

def RemovedBody846_362 : StackLang.HolProg 64 :=
.seq RemovedBody846_140 RemovedBody846_361

def RemovedBody846_363 : StackLang.HolProg 64 :=
.seq RemovedBody846_139 RemovedBody846_362

def RemovedBody846_364 : StackLang.HolProg 64 :=
.seq RemovedBody846_138 RemovedBody846_363

def RemovedBody846_365 : StackLang.HolProg 64 :=
.seq RemovedBody846_135 RemovedBody846_364

def RemovedBody846_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody846_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_371 : StackLang.HolProg 64 :=
.seq RemovedBody846_369 RemovedBody846_370

def RemovedBody846_372 : StackLang.HolProg 64 :=
.seq RemovedBody846_368 RemovedBody846_371

def RemovedBody846_373 : StackLang.HolProg 64 :=
.seq RemovedBody846_367 RemovedBody846_372

def RemovedBody846_374 : StackLang.HolProg 64 :=
.seq RemovedBody846_366 RemovedBody846_373

def RemovedBody846_375 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody846_365 RemovedBody846_374

def RemovedBody846_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody846_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody846_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_382 : StackLang.HolProg 64 :=
.seq RemovedBody846_380 RemovedBody846_381

def RemovedBody846_383 : StackLang.HolProg 64 :=
.seq RemovedBody846_379 RemovedBody846_382

def RemovedBody846_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody846_385 : StackLang.HolProg 64 :=
.seq RemovedBody846_383 RemovedBody846_384

def RemovedBody846_386 : StackLang.HolProg 64 :=
.seq RemovedBody846_378 RemovedBody846_385

def RemovedBody846_387 : StackLang.HolProg 64 :=
.seq RemovedBody846_377 RemovedBody846_386

def RemovedBody846_388 : StackLang.HolProg 64 :=
.seq RemovedBody846_376 RemovedBody846_387

def RemovedBody846_389 : StackLang.HolProg 64 :=
.seq RemovedBody846_375 RemovedBody846_388

def RemovedBody846_390 : StackLang.HolProg 64 :=
.seq RemovedBody846_134 RemovedBody846_389

def RemovedBody846_391 : StackLang.HolProg 64 :=
.seq RemovedBody846_133 RemovedBody846_390

def RemovedBody846_392 : StackLang.HolProg 64 :=
.seq RemovedBody846_132 RemovedBody846_391

def RemovedBody846_393 : StackLang.HolProg 64 :=
.seq RemovedBody846_131 RemovedBody846_392

def RemovedBody846_394 : StackLang.HolProg 64 :=
.seq RemovedBody846_122 RemovedBody846_393

def RemovedBody846_395 : StackLang.HolProg 64 :=
.seq RemovedBody846_121 RemovedBody846_394

def RemovedBody846_396 : StackLang.HolProg 64 :=
.seq RemovedBody846_120 RemovedBody846_395

def RemovedBody846_397 : StackLang.HolProg 64 :=
.seq RemovedBody846_119 RemovedBody846_396

def RemovedBody846_398 : StackLang.HolProg 64 :=
.seq RemovedBody846_110 RemovedBody846_397

def RemovedBody846_399 : StackLang.HolProg 64 :=
.seq RemovedBody846_109 RemovedBody846_398

def RemovedBody846_400 : StackLang.HolProg 64 :=
.seq RemovedBody846_108 RemovedBody846_399

def RemovedBody846_401 : StackLang.HolProg 64 :=
.seq RemovedBody846_107 RemovedBody846_400

def RemovedBody846_402 : StackLang.HolProg 64 :=
.seq RemovedBody846_98 RemovedBody846_401

def RemovedBody846_403 : StackLang.HolProg 64 :=
.seq RemovedBody846_97 RemovedBody846_402

def RemovedBody846_404 : StackLang.HolProg 64 :=
.seq RemovedBody846_96 RemovedBody846_403

def RemovedBody846_405 : StackLang.HolProg 64 :=
.seq RemovedBody846_95 RemovedBody846_404

def RemovedBody846_406 : StackLang.HolProg 64 :=
.seq RemovedBody846_86 RemovedBody846_405

def RemovedBody846_407 : StackLang.HolProg 64 :=
.seq RemovedBody846_85 RemovedBody846_406

def RemovedBody846_408 : StackLang.HolProg 64 :=
.seq RemovedBody846_84 RemovedBody846_407

def RemovedBody846_409 : StackLang.HolProg 64 :=
.seq RemovedBody846_83 RemovedBody846_408

def RemovedBody846_410 : StackLang.HolProg 64 :=
.seq RemovedBody846_82 RemovedBody846_409

def RemovedBody846_411 : StackLang.HolProg 64 :=
.seq RemovedBody846_81 RemovedBody846_410

def RemovedBody846_412 : StackLang.HolProg 64 :=
.seq RemovedBody846_80 RemovedBody846_411

def RemovedBody846_413 : StackLang.HolProg 64 :=
.seq RemovedBody846_79 RemovedBody846_412

def RemovedBody846_414 : StackLang.HolProg 64 :=
.seq RemovedBody846_78 RemovedBody846_413

def RemovedBody846_415 : StackLang.HolProg 64 :=
.seq RemovedBody846_77 RemovedBody846_414

def RemovedBody846_416 : StackLang.HolProg 64 :=
.seq RemovedBody846_76 RemovedBody846_415

def RemovedBody846_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody846_419 : StackLang.HolProg 64 :=
.seq RemovedBody846_417 RemovedBody846_418

def RemovedBody846_420 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody846_416 RemovedBody846_419

def RemovedBody846_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_422 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_425 : StackLang.HolProg 64 :=
.seq RemovedBody846_423 RemovedBody846_424

def RemovedBody846_426 : StackLang.HolProg 64 :=
.seq RemovedBody846_422 RemovedBody846_425

def RemovedBody846_427 : StackLang.HolProg 64 :=
.seq RemovedBody846_421 RemovedBody846_426

def RemovedBody846_428 : StackLang.HolProg 64 :=
.seq RemovedBody846_420 RemovedBody846_427

def RemovedBody846_429 : StackLang.HolProg 64 :=
.seq RemovedBody846_75 RemovedBody846_428

def RemovedBody846_430 : StackLang.HolProg 64 :=
.seq RemovedBody846_74 RemovedBody846_429

def RemovedBody846_431 : StackLang.HolProg 64 :=
.loop RemovedBody846_430

def RemovedBody846_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody846_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody846_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody846_435 : StackLang.HolProg 64 :=
.seq RemovedBody846_433 RemovedBody846_434

def RemovedBody846_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody846_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody846_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody846_439 : StackLang.HolProg 64 :=
.seq RemovedBody846_437 RemovedBody846_438

def RemovedBody846_440 : StackLang.HolProg 64 :=
.seq RemovedBody846_436 RemovedBody846_439

def RemovedBody846_441 : StackLang.HolProg 64 :=
.seq RemovedBody846_435 RemovedBody846_440

def RemovedBody846_442 : StackLang.HolProg 64 :=
.seq RemovedBody846_432 RemovedBody846_441

def RemovedBody846_443 : StackLang.HolProg 64 :=
.seq RemovedBody846_431 RemovedBody846_442

def RemovedBody846_444 : StackLang.HolProg 64 :=
.seq RemovedBody846_73 RemovedBody846_443

def RemovedBody846_445 : StackLang.HolProg 64 :=
.seq RemovedBody846_70 RemovedBody846_444

def RemovedBody846_446 : StackLang.HolProg 64 :=
.seq RemovedBody846_69 RemovedBody846_445

def RemovedBody846_447 : StackLang.HolProg 64 :=
.seq RemovedBody846_68 RemovedBody846_446

def RemovedBody846_448 : StackLang.HolProg 64 :=
.seq RemovedBody846_67 RemovedBody846_447

def RemovedBody846_449 : StackLang.HolProg 64 :=
.seq RemovedBody846_66 RemovedBody846_448

def RemovedBody846_450 : StackLang.HolProg 64 :=
.seq RemovedBody846_11 RemovedBody846_449

def RemovedBody846_451 : StackLang.HolProg 64 :=
.seq RemovedBody846_8 RemovedBody846_450

def RemovedBody846_452 : StackLang.HolProg 64 :=
.seq RemovedBody846_7 RemovedBody846_451

def RemovedBody846_453 : StackLang.HolProg 64 :=
.seq RemovedBody846_6 RemovedBody846_452

def Removed846 : Nat × StackLang.HolProg 64 := (846, RemovedBody846_453)
theorem Removed846_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc846 = Removed846 := by
  kernel_rfl
#print axioms Removed846_eq
end InitECandidate.Proofs.BackendStages
