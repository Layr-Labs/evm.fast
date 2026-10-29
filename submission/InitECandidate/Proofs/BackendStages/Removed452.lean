import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc452
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody452_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody452_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody452_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody452_3 : StackLang.HolProg 64 :=
.seq RemovedBody452_1 RemovedBody452_2

def RemovedBody452_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody452_3 RemovedBody452_4

def RemovedBody452_6 : StackLang.HolProg 64 :=
.seq RemovedBody452_0 RemovedBody452_5

def RemovedBody452_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody452_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody452_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody452_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody452_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def RemovedBody452_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody452_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody452_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody452_17 : StackLang.HolProg 64 :=
.seq RemovedBody452_15 RemovedBody452_16

def RemovedBody452_18 : StackLang.HolProg 64 :=
.seq RemovedBody452_14 RemovedBody452_17

def RemovedBody452_19 : StackLang.HolProg 64 :=
.seq RemovedBody452_13 RemovedBody452_18

def RemovedBody452_20 : StackLang.HolProg 64 :=
.seq RemovedBody452_12 RemovedBody452_19

def RemovedBody452_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1374#64)

def RemovedBody452_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody452_24 : StackLang.HolProg 64 :=
.seq RemovedBody452_22 RemovedBody452_23

def RemovedBody452_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody452_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody452_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody452_28 : StackLang.HolProg 64 :=
.seq RemovedBody452_26 RemovedBody452_27

def RemovedBody452_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody452_28 RemovedBody452_29

def RemovedBody452_31 : StackLang.HolProg 64 :=
.seq RemovedBody452_25 RemovedBody452_30

def RemovedBody452_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody452_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody452_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 3

def RemovedBody452_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody452_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody452_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody452_41 : StackLang.HolProg 64 :=
.seq RemovedBody452_39 RemovedBody452_40

def RemovedBody452_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody452_43 : StackLang.HolProg 64 :=
.seq RemovedBody452_41 RemovedBody452_42

def RemovedBody452_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_45 : StackLang.HolProg 64 :=
.seq RemovedBody452_43 RemovedBody452_44

def RemovedBody452_46 : StackLang.HolProg 64 :=
.seq RemovedBody452_38 RemovedBody452_45

def RemovedBody452_47 : StackLang.HolProg 64 :=
.seq RemovedBody452_37 RemovedBody452_46

def RemovedBody452_48 : StackLang.HolProg 64 :=
.seq RemovedBody452_36 RemovedBody452_47

def RemovedBody452_49 : StackLang.HolProg 64 :=
.seq RemovedBody452_35 RemovedBody452_48

def RemovedBody452_50 : StackLang.HolProg 64 :=
.seq RemovedBody452_34 RemovedBody452_49

def RemovedBody452_51 : StackLang.HolProg 64 :=
.seq RemovedBody452_33 RemovedBody452_50

def RemovedBody452_52 : StackLang.HolProg 64 :=
.seq RemovedBody452_32 RemovedBody452_51

def RemovedBody452_53 : StackLang.HolProg 64 :=
.seq RemovedBody452_31 RemovedBody452_52

def RemovedBody452_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody452_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody452_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody452_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody452_65 : StackLang.HolProg 64 :=
.seq RemovedBody452_63 RemovedBody452_64

def RemovedBody452_66 : StackLang.HolProg 64 :=
.seq RemovedBody452_62 RemovedBody452_65

def RemovedBody452_67 : StackLang.HolProg 64 :=
.seq RemovedBody452_61 RemovedBody452_66

def RemovedBody452_68 : StackLang.HolProg 64 :=
.seq RemovedBody452_60 RemovedBody452_67

def RemovedBody452_69 : StackLang.HolProg 64 :=
.seq RemovedBody452_59 RemovedBody452_68

def RemovedBody452_70 : StackLang.HolProg 64 :=
.seq RemovedBody452_58 RemovedBody452_69

def RemovedBody452_71 : StackLang.HolProg 64 :=
.seq RemovedBody452_57 RemovedBody452_70

def RemovedBody452_72 : StackLang.HolProg 64 :=
.seq RemovedBody452_56 RemovedBody452_71

def RemovedBody452_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody452_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody452_77 : StackLang.HolProg 64 :=
.seq RemovedBody452_75 RemovedBody452_76

def RemovedBody452_78 : StackLang.HolProg 64 :=
.seq RemovedBody452_74 RemovedBody452_77

def RemovedBody452_79 : StackLang.HolProg 64 :=
.seq RemovedBody452_73 RemovedBody452_78

def RemovedBody452_80 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody452_81 : StackLang.HolProg 64 :=
.seq RemovedBody452_79 RemovedBody452_80

def RemovedBody452_82 : StackLang.HolProg 64 :=
.call (some (RemovedBody452_72, 0, 452, 2)) (Sum.inl 186) (some (RemovedBody452_81, 452, 3))

def RemovedBody452_83 : StackLang.HolProg 64 :=
.seq RemovedBody452_55 RemovedBody452_82

def RemovedBody452_84 : StackLang.HolProg 64 :=
.seq RemovedBody452_54 RemovedBody452_83

def RemovedBody452_85 : StackLang.HolProg 64 :=
.seq RemovedBody452_53 RemovedBody452_84

def RemovedBody452_86 : StackLang.HolProg 64 :=
.seq RemovedBody452_24 RemovedBody452_85

def RemovedBody452_87 : StackLang.HolProg 64 :=
.seq RemovedBody452_21 RemovedBody452_86

def RemovedBody452_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody452_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody452_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody452_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody452_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody452_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def RemovedBody452_96 : StackLang.HolProg 64 :=
.seq RemovedBody452_94 RemovedBody452_95

def RemovedBody452_97 : StackLang.HolProg 64 :=
.seq RemovedBody452_93 RemovedBody452_96

def RemovedBody452_98 : StackLang.HolProg 64 :=
.seq RemovedBody452_92 RemovedBody452_97

def RemovedBody452_99 : StackLang.HolProg 64 :=
.seq RemovedBody452_91 RemovedBody452_98

def RemovedBody452_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody452_99 RemovedBody452_100

def RemovedBody452_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody452_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody452_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody452_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody452_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody452_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_109 : StackLang.HolProg 64 :=
.seq RemovedBody452_107 RemovedBody452_108

def RemovedBody452_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1375#64)

def RemovedBody452_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody452_113 : StackLang.HolProg 64 :=
.seq RemovedBody452_111 RemovedBody452_112

def RemovedBody452_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody452_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody452_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody452_117 : StackLang.HolProg 64 :=
.seq RemovedBody452_115 RemovedBody452_116

def RemovedBody452_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_119 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody452_117 RemovedBody452_118

def RemovedBody452_120 : StackLang.HolProg 64 :=
.seq RemovedBody452_114 RemovedBody452_119

def RemovedBody452_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody452_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody452_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 5

def RemovedBody452_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody452_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody452_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody452_130 : StackLang.HolProg 64 :=
.seq RemovedBody452_128 RemovedBody452_129

def RemovedBody452_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody452_132 : StackLang.HolProg 64 :=
.seq RemovedBody452_130 RemovedBody452_131

def RemovedBody452_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_134 : StackLang.HolProg 64 :=
.seq RemovedBody452_132 RemovedBody452_133

def RemovedBody452_135 : StackLang.HolProg 64 :=
.seq RemovedBody452_127 RemovedBody452_134

def RemovedBody452_136 : StackLang.HolProg 64 :=
.seq RemovedBody452_126 RemovedBody452_135

def RemovedBody452_137 : StackLang.HolProg 64 :=
.seq RemovedBody452_125 RemovedBody452_136

def RemovedBody452_138 : StackLang.HolProg 64 :=
.seq RemovedBody452_124 RemovedBody452_137

def RemovedBody452_139 : StackLang.HolProg 64 :=
.seq RemovedBody452_123 RemovedBody452_138

def RemovedBody452_140 : StackLang.HolProg 64 :=
.seq RemovedBody452_122 RemovedBody452_139

def RemovedBody452_141 : StackLang.HolProg 64 :=
.seq RemovedBody452_121 RemovedBody452_140

def RemovedBody452_142 : StackLang.HolProg 64 :=
.seq RemovedBody452_120 RemovedBody452_141

def RemovedBody452_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody452_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody452_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody452_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_150 : StackLang.HolProg 64 :=
.seq RemovedBody452_148 RemovedBody452_149

def RemovedBody452_151 : StackLang.HolProg 64 :=
.seq RemovedBody452_147 RemovedBody452_150

def RemovedBody452_152 : StackLang.HolProg 64 :=
.seq RemovedBody452_146 RemovedBody452_151

def RemovedBody452_153 : StackLang.HolProg 64 :=
.seq RemovedBody452_145 RemovedBody452_152

def RemovedBody452_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody452_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody452_156 : StackLang.HolProg 64 :=
.seq RemovedBody452_154 RemovedBody452_155

def RemovedBody452_157 : StackLang.HolProg 64 :=
.call (some (RemovedBody452_153, 0, 452, 4)) (Sum.inl 451) (some (RemovedBody452_156, 452, 5))

def RemovedBody452_158 : StackLang.HolProg 64 :=
.seq RemovedBody452_144 RemovedBody452_157

def RemovedBody452_159 : StackLang.HolProg 64 :=
.seq RemovedBody452_143 RemovedBody452_158

def RemovedBody452_160 : StackLang.HolProg 64 :=
.seq RemovedBody452_142 RemovedBody452_159

def RemovedBody452_161 : StackLang.HolProg 64 :=
.seq RemovedBody452_113 RemovedBody452_160

def RemovedBody452_162 : StackLang.HolProg 64 :=
.seq RemovedBody452_110 RemovedBody452_161

def RemovedBody452_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody452_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody452_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody452_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody452_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody452_168 : StackLang.HolProg 64 :=
.seq RemovedBody452_166 RemovedBody452_167

def RemovedBody452_169 : StackLang.HolProg 64 :=
.seq RemovedBody452_165 RemovedBody452_168

def RemovedBody452_170 : StackLang.HolProg 64 :=
.seq RemovedBody452_164 RemovedBody452_169

def RemovedBody452_171 : StackLang.HolProg 64 :=
.seq RemovedBody452_163 RemovedBody452_170

def RemovedBody452_172 : StackLang.HolProg 64 :=
.seq RemovedBody452_162 RemovedBody452_171

def RemovedBody452_173 : StackLang.HolProg 64 :=
.seq RemovedBody452_109 RemovedBody452_172

def RemovedBody452_174 : StackLang.HolProg 64 :=
.seq RemovedBody452_106 RemovedBody452_173

def RemovedBody452_175 : StackLang.HolProg 64 :=
.seq RemovedBody452_105 RemovedBody452_174

def RemovedBody452_176 : StackLang.HolProg 64 :=
.seq RemovedBody452_104 RemovedBody452_175

def RemovedBody452_177 : StackLang.HolProg 64 :=
.seq RemovedBody452_103 RemovedBody452_176

def RemovedBody452_178 : StackLang.HolProg 64 :=
.seq RemovedBody452_102 RemovedBody452_177

def RemovedBody452_179 : StackLang.HolProg 64 :=
.seq RemovedBody452_101 RemovedBody452_178

def RemovedBody452_180 : StackLang.HolProg 64 :=
.seq RemovedBody452_90 RemovedBody452_179

def RemovedBody452_181 : StackLang.HolProg 64 :=
.seq RemovedBody452_89 RemovedBody452_180

def RemovedBody452_182 : StackLang.HolProg 64 :=
.seq RemovedBody452_88 RemovedBody452_181

def RemovedBody452_183 : StackLang.HolProg 64 :=
.seq RemovedBody452_87 RemovedBody452_182

def RemovedBody452_184 : StackLang.HolProg 64 :=
.seq RemovedBody452_20 RemovedBody452_183

def RemovedBody452_185 : StackLang.HolProg 64 :=
.seq RemovedBody452_11 RemovedBody452_184

def RemovedBody452_186 : StackLang.HolProg 64 :=
.seq RemovedBody452_10 RemovedBody452_185

def RemovedBody452_187 : StackLang.HolProg 64 :=
.seq RemovedBody452_9 RemovedBody452_186

def RemovedBody452_188 : StackLang.HolProg 64 :=
.seq RemovedBody452_8 RemovedBody452_187

def RemovedBody452_189 : StackLang.HolProg 64 :=
.seq RemovedBody452_7 RemovedBody452_188

def RemovedBody452_190 : StackLang.HolProg 64 :=
.seq RemovedBody452_6 RemovedBody452_189

def Removed452 : Nat × StackLang.HolProg 64 := (452, RemovedBody452_190)
theorem Removed452_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc452 = Removed452 := by
  kernel_rfl
#print axioms Removed452_eq
end InitECandidate.Proofs.BackendStages
