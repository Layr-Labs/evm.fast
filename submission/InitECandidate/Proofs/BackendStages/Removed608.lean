import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc608
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody608_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody608_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_3 : StackLang.HolProg 64 :=
.seq RemovedBody608_1 RemovedBody608_2

def RemovedBody608_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_3 RemovedBody608_4

def RemovedBody608_6 : StackLang.HolProg 64 :=
.seq RemovedBody608_0 RemovedBody608_5

def RemovedBody608_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_9 : StackLang.HolProg 64 :=
.seq RemovedBody608_7 RemovedBody608_8

def RemovedBody608_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2335#64)

def RemovedBody608_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_13 : StackLang.HolProg 64 :=
.seq RemovedBody608_11 RemovedBody608_12

def RemovedBody608_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_17 : StackLang.HolProg 64 :=
.seq RemovedBody608_15 RemovedBody608_16

def RemovedBody608_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_17 RemovedBody608_18

def RemovedBody608_20 : StackLang.HolProg 64 :=
.seq RemovedBody608_14 RemovedBody608_19

def RemovedBody608_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 3

def RemovedBody608_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_30 : StackLang.HolProg 64 :=
.seq RemovedBody608_28 RemovedBody608_29

def RemovedBody608_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_32 : StackLang.HolProg 64 :=
.seq RemovedBody608_30 RemovedBody608_31

def RemovedBody608_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_34 : StackLang.HolProg 64 :=
.seq RemovedBody608_32 RemovedBody608_33

def RemovedBody608_35 : StackLang.HolProg 64 :=
.seq RemovedBody608_27 RemovedBody608_34

def RemovedBody608_36 : StackLang.HolProg 64 :=
.seq RemovedBody608_26 RemovedBody608_35

def RemovedBody608_37 : StackLang.HolProg 64 :=
.seq RemovedBody608_25 RemovedBody608_36

def RemovedBody608_38 : StackLang.HolProg 64 :=
.seq RemovedBody608_24 RemovedBody608_37

def RemovedBody608_39 : StackLang.HolProg 64 :=
.seq RemovedBody608_23 RemovedBody608_38

def RemovedBody608_40 : StackLang.HolProg 64 :=
.seq RemovedBody608_22 RemovedBody608_39

def RemovedBody608_41 : StackLang.HolProg 64 :=
.seq RemovedBody608_21 RemovedBody608_40

def RemovedBody608_42 : StackLang.HolProg 64 :=
.seq RemovedBody608_20 RemovedBody608_41

def RemovedBody608_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody608_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_51 : StackLang.HolProg 64 :=
.seq RemovedBody608_49 RemovedBody608_50

def RemovedBody608_52 : StackLang.HolProg 64 :=
.seq RemovedBody608_48 RemovedBody608_51

def RemovedBody608_53 : StackLang.HolProg 64 :=
.seq RemovedBody608_47 RemovedBody608_52

def RemovedBody608_54 : StackLang.HolProg 64 :=
.seq RemovedBody608_46 RemovedBody608_53

def RemovedBody608_55 : StackLang.HolProg 64 :=
.seq RemovedBody608_45 RemovedBody608_54

def RemovedBody608_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_58 : StackLang.HolProg 64 :=
.seq RemovedBody608_56 RemovedBody608_57

def RemovedBody608_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_55, 0, 608, 2)) (Sum.inl 390) (some (RemovedBody608_58, 608, 3))

def RemovedBody608_60 : StackLang.HolProg 64 :=
.seq RemovedBody608_44 RemovedBody608_59

def RemovedBody608_61 : StackLang.HolProg 64 :=
.seq RemovedBody608_43 RemovedBody608_60

def RemovedBody608_62 : StackLang.HolProg 64 :=
.seq RemovedBody608_42 RemovedBody608_61

def RemovedBody608_63 : StackLang.HolProg 64 :=
.seq RemovedBody608_13 RemovedBody608_62

def RemovedBody608_64 : StackLang.HolProg 64 :=
.seq RemovedBody608_10 RemovedBody608_63

def RemovedBody608_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody608_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_71 : StackLang.HolProg 64 :=
.seq RemovedBody608_69 RemovedBody608_70

def RemovedBody608_72 : StackLang.HolProg 64 :=
.seq RemovedBody608_68 RemovedBody608_71

def RemovedBody608_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2336#64)

def RemovedBody608_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_76 : StackLang.HolProg 64 :=
.seq RemovedBody608_74 RemovedBody608_75

def RemovedBody608_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_80 : StackLang.HolProg 64 :=
.seq RemovedBody608_78 RemovedBody608_79

def RemovedBody608_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_80 RemovedBody608_81

def RemovedBody608_83 : StackLang.HolProg 64 :=
.seq RemovedBody608_77 RemovedBody608_82

def RemovedBody608_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 5

def RemovedBody608_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_93 : StackLang.HolProg 64 :=
.seq RemovedBody608_91 RemovedBody608_92

def RemovedBody608_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_95 : StackLang.HolProg 64 :=
.seq RemovedBody608_93 RemovedBody608_94

def RemovedBody608_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_97 : StackLang.HolProg 64 :=
.seq RemovedBody608_95 RemovedBody608_96

def RemovedBody608_98 : StackLang.HolProg 64 :=
.seq RemovedBody608_90 RemovedBody608_97

def RemovedBody608_99 : StackLang.HolProg 64 :=
.seq RemovedBody608_89 RemovedBody608_98

def RemovedBody608_100 : StackLang.HolProg 64 :=
.seq RemovedBody608_88 RemovedBody608_99

def RemovedBody608_101 : StackLang.HolProg 64 :=
.seq RemovedBody608_87 RemovedBody608_100

def RemovedBody608_102 : StackLang.HolProg 64 :=
.seq RemovedBody608_86 RemovedBody608_101

def RemovedBody608_103 : StackLang.HolProg 64 :=
.seq RemovedBody608_85 RemovedBody608_102

def RemovedBody608_104 : StackLang.HolProg 64 :=
.seq RemovedBody608_84 RemovedBody608_103

def RemovedBody608_105 : StackLang.HolProg 64 :=
.seq RemovedBody608_83 RemovedBody608_104

def RemovedBody608_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_113 : StackLang.HolProg 64 :=
.seq RemovedBody608_111 RemovedBody608_112

def RemovedBody608_114 : StackLang.HolProg 64 :=
.seq RemovedBody608_110 RemovedBody608_113

def RemovedBody608_115 : StackLang.HolProg 64 :=
.seq RemovedBody608_109 RemovedBody608_114

def RemovedBody608_116 : StackLang.HolProg 64 :=
.seq RemovedBody608_108 RemovedBody608_115

def RemovedBody608_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_119 : StackLang.HolProg 64 :=
.seq RemovedBody608_117 RemovedBody608_118

def RemovedBody608_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_116, 0, 608, 4)) (Sum.inl 421) (some (RemovedBody608_119, 608, 5))

def RemovedBody608_121 : StackLang.HolProg 64 :=
.seq RemovedBody608_107 RemovedBody608_120

def RemovedBody608_122 : StackLang.HolProg 64 :=
.seq RemovedBody608_106 RemovedBody608_121

def RemovedBody608_123 : StackLang.HolProg 64 :=
.seq RemovedBody608_105 RemovedBody608_122

def RemovedBody608_124 : StackLang.HolProg 64 :=
.seq RemovedBody608_76 RemovedBody608_123

def RemovedBody608_125 : StackLang.HolProg 64 :=
.seq RemovedBody608_73 RemovedBody608_124

def RemovedBody608_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody608_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_129 : StackLang.HolProg 64 :=
.seq RemovedBody608_127 RemovedBody608_128

def RemovedBody608_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2337#64)

def RemovedBody608_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_133 : StackLang.HolProg 64 :=
.seq RemovedBody608_131 RemovedBody608_132

def RemovedBody608_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_137 : StackLang.HolProg 64 :=
.seq RemovedBody608_135 RemovedBody608_136

def RemovedBody608_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_139 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_137 RemovedBody608_138

def RemovedBody608_140 : StackLang.HolProg 64 :=
.seq RemovedBody608_134 RemovedBody608_139

def RemovedBody608_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 7

def RemovedBody608_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_150 : StackLang.HolProg 64 :=
.seq RemovedBody608_148 RemovedBody608_149

def RemovedBody608_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_152 : StackLang.HolProg 64 :=
.seq RemovedBody608_150 RemovedBody608_151

def RemovedBody608_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_154 : StackLang.HolProg 64 :=
.seq RemovedBody608_152 RemovedBody608_153

def RemovedBody608_155 : StackLang.HolProg 64 :=
.seq RemovedBody608_147 RemovedBody608_154

def RemovedBody608_156 : StackLang.HolProg 64 :=
.seq RemovedBody608_146 RemovedBody608_155

def RemovedBody608_157 : StackLang.HolProg 64 :=
.seq RemovedBody608_145 RemovedBody608_156

def RemovedBody608_158 : StackLang.HolProg 64 :=
.seq RemovedBody608_144 RemovedBody608_157

def RemovedBody608_159 : StackLang.HolProg 64 :=
.seq RemovedBody608_143 RemovedBody608_158

def RemovedBody608_160 : StackLang.HolProg 64 :=
.seq RemovedBody608_142 RemovedBody608_159

def RemovedBody608_161 : StackLang.HolProg 64 :=
.seq RemovedBody608_141 RemovedBody608_160

def RemovedBody608_162 : StackLang.HolProg 64 :=
.seq RemovedBody608_140 RemovedBody608_161

def RemovedBody608_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_170 : StackLang.HolProg 64 :=
.seq RemovedBody608_168 RemovedBody608_169

def RemovedBody608_171 : StackLang.HolProg 64 :=
.seq RemovedBody608_167 RemovedBody608_170

def RemovedBody608_172 : StackLang.HolProg 64 :=
.seq RemovedBody608_166 RemovedBody608_171

def RemovedBody608_173 : StackLang.HolProg 64 :=
.seq RemovedBody608_165 RemovedBody608_172

def RemovedBody608_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_175 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_176 : StackLang.HolProg 64 :=
.seq RemovedBody608_174 RemovedBody608_175

def RemovedBody608_177 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_173, 0, 608, 6)) (Sum.inl 425) (some (RemovedBody608_176, 608, 7))

def RemovedBody608_178 : StackLang.HolProg 64 :=
.seq RemovedBody608_164 RemovedBody608_177

def RemovedBody608_179 : StackLang.HolProg 64 :=
.seq RemovedBody608_163 RemovedBody608_178

def RemovedBody608_180 : StackLang.HolProg 64 :=
.seq RemovedBody608_162 RemovedBody608_179

def RemovedBody608_181 : StackLang.HolProg 64 :=
.seq RemovedBody608_133 RemovedBody608_180

def RemovedBody608_182 : StackLang.HolProg 64 :=
.seq RemovedBody608_130 RemovedBody608_181

def RemovedBody608_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody608_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2338#64)

def RemovedBody608_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_188 : StackLang.HolProg 64 :=
.seq RemovedBody608_186 RemovedBody608_187

def RemovedBody608_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_192 : StackLang.HolProg 64 :=
.seq RemovedBody608_190 RemovedBody608_191

def RemovedBody608_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_194 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_192 RemovedBody608_193

def RemovedBody608_195 : StackLang.HolProg 64 :=
.seq RemovedBody608_189 RemovedBody608_194

def RemovedBody608_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 9

def RemovedBody608_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_205 : StackLang.HolProg 64 :=
.seq RemovedBody608_203 RemovedBody608_204

def RemovedBody608_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_207 : StackLang.HolProg 64 :=
.seq RemovedBody608_205 RemovedBody608_206

def RemovedBody608_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_209 : StackLang.HolProg 64 :=
.seq RemovedBody608_207 RemovedBody608_208

def RemovedBody608_210 : StackLang.HolProg 64 :=
.seq RemovedBody608_202 RemovedBody608_209

def RemovedBody608_211 : StackLang.HolProg 64 :=
.seq RemovedBody608_201 RemovedBody608_210

def RemovedBody608_212 : StackLang.HolProg 64 :=
.seq RemovedBody608_200 RemovedBody608_211

def RemovedBody608_213 : StackLang.HolProg 64 :=
.seq RemovedBody608_199 RemovedBody608_212

def RemovedBody608_214 : StackLang.HolProg 64 :=
.seq RemovedBody608_198 RemovedBody608_213

def RemovedBody608_215 : StackLang.HolProg 64 :=
.seq RemovedBody608_197 RemovedBody608_214

def RemovedBody608_216 : StackLang.HolProg 64 :=
.seq RemovedBody608_196 RemovedBody608_215

def RemovedBody608_217 : StackLang.HolProg 64 :=
.seq RemovedBody608_195 RemovedBody608_216

def RemovedBody608_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_225 : StackLang.HolProg 64 :=
.seq RemovedBody608_223 RemovedBody608_224

def RemovedBody608_226 : StackLang.HolProg 64 :=
.seq RemovedBody608_222 RemovedBody608_225

def RemovedBody608_227 : StackLang.HolProg 64 :=
.seq RemovedBody608_221 RemovedBody608_226

def RemovedBody608_228 : StackLang.HolProg 64 :=
.seq RemovedBody608_220 RemovedBody608_227

def RemovedBody608_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_230 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_231 : StackLang.HolProg 64 :=
.seq RemovedBody608_229 RemovedBody608_230

def RemovedBody608_232 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_228, 0, 608, 8)) (Sum.inl 430) (some (RemovedBody608_231, 608, 9))

def RemovedBody608_233 : StackLang.HolProg 64 :=
.seq RemovedBody608_219 RemovedBody608_232

def RemovedBody608_234 : StackLang.HolProg 64 :=
.seq RemovedBody608_218 RemovedBody608_233

def RemovedBody608_235 : StackLang.HolProg 64 :=
.seq RemovedBody608_217 RemovedBody608_234

def RemovedBody608_236 : StackLang.HolProg 64 :=
.seq RemovedBody608_188 RemovedBody608_235

def RemovedBody608_237 : StackLang.HolProg 64 :=
.seq RemovedBody608_185 RemovedBody608_236

def RemovedBody608_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody608_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_241 : StackLang.HolProg 64 :=
.seq RemovedBody608_239 RemovedBody608_240

def RemovedBody608_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2339#64)

def RemovedBody608_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_245 : StackLang.HolProg 64 :=
.seq RemovedBody608_243 RemovedBody608_244

def RemovedBody608_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_249 : StackLang.HolProg 64 :=
.seq RemovedBody608_247 RemovedBody608_248

def RemovedBody608_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_251 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_249 RemovedBody608_250

def RemovedBody608_252 : StackLang.HolProg 64 :=
.seq RemovedBody608_246 RemovedBody608_251

def RemovedBody608_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 11

def RemovedBody608_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_262 : StackLang.HolProg 64 :=
.seq RemovedBody608_260 RemovedBody608_261

def RemovedBody608_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_264 : StackLang.HolProg 64 :=
.seq RemovedBody608_262 RemovedBody608_263

def RemovedBody608_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_266 : StackLang.HolProg 64 :=
.seq RemovedBody608_264 RemovedBody608_265

def RemovedBody608_267 : StackLang.HolProg 64 :=
.seq RemovedBody608_259 RemovedBody608_266

def RemovedBody608_268 : StackLang.HolProg 64 :=
.seq RemovedBody608_258 RemovedBody608_267

def RemovedBody608_269 : StackLang.HolProg 64 :=
.seq RemovedBody608_257 RemovedBody608_268

def RemovedBody608_270 : StackLang.HolProg 64 :=
.seq RemovedBody608_256 RemovedBody608_269

def RemovedBody608_271 : StackLang.HolProg 64 :=
.seq RemovedBody608_255 RemovedBody608_270

def RemovedBody608_272 : StackLang.HolProg 64 :=
.seq RemovedBody608_254 RemovedBody608_271

def RemovedBody608_273 : StackLang.HolProg 64 :=
.seq RemovedBody608_253 RemovedBody608_272

def RemovedBody608_274 : StackLang.HolProg 64 :=
.seq RemovedBody608_252 RemovedBody608_273

def RemovedBody608_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody608_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_283 : StackLang.HolProg 64 :=
.seq RemovedBody608_281 RemovedBody608_282

def RemovedBody608_284 : StackLang.HolProg 64 :=
.seq RemovedBody608_280 RemovedBody608_283

def RemovedBody608_285 : StackLang.HolProg 64 :=
.seq RemovedBody608_279 RemovedBody608_284

def RemovedBody608_286 : StackLang.HolProg 64 :=
.seq RemovedBody608_278 RemovedBody608_285

def RemovedBody608_287 : StackLang.HolProg 64 :=
.seq RemovedBody608_277 RemovedBody608_286

def RemovedBody608_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_289 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_290 : StackLang.HolProg 64 :=
.seq RemovedBody608_288 RemovedBody608_289

def RemovedBody608_291 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_287, 0, 608, 10)) (Sum.inl 606) (some (RemovedBody608_290, 608, 11))

def RemovedBody608_292 : StackLang.HolProg 64 :=
.seq RemovedBody608_276 RemovedBody608_291

def RemovedBody608_293 : StackLang.HolProg 64 :=
.seq RemovedBody608_275 RemovedBody608_292

def RemovedBody608_294 : StackLang.HolProg 64 :=
.seq RemovedBody608_274 RemovedBody608_293

def RemovedBody608_295 : StackLang.HolProg 64 :=
.seq RemovedBody608_245 RemovedBody608_294

def RemovedBody608_296 : StackLang.HolProg 64 :=
.seq RemovedBody608_242 RemovedBody608_295

def RemovedBody608_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 160#64))

def RemovedBody608_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody608_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody608_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody608_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody608_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody608_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody608_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody608_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody608_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody608_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_314 : StackLang.HolProg 64 :=
.seq RemovedBody608_312 RemovedBody608_313

def RemovedBody608_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_316 : StackLang.HolProg 64 :=
.seq RemovedBody608_314 RemovedBody608_315

def RemovedBody608_317 : StackLang.HolProg 64 :=
.seq RemovedBody608_311 RemovedBody608_316

def RemovedBody608_318 : StackLang.HolProg 64 :=
.seq RemovedBody608_310 RemovedBody608_317

def RemovedBody608_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2340#64)

def RemovedBody608_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_322 : StackLang.HolProg 64 :=
.seq RemovedBody608_320 RemovedBody608_321

def RemovedBody608_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_326 : StackLang.HolProg 64 :=
.seq RemovedBody608_324 RemovedBody608_325

def RemovedBody608_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_328 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_326 RemovedBody608_327

def RemovedBody608_329 : StackLang.HolProg 64 :=
.seq RemovedBody608_323 RemovedBody608_328

def RemovedBody608_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 19

def RemovedBody608_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_339 : StackLang.HolProg 64 :=
.seq RemovedBody608_337 RemovedBody608_338

def RemovedBody608_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_341 : StackLang.HolProg 64 :=
.seq RemovedBody608_339 RemovedBody608_340

def RemovedBody608_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_343 : StackLang.HolProg 64 :=
.seq RemovedBody608_341 RemovedBody608_342

def RemovedBody608_344 : StackLang.HolProg 64 :=
.seq RemovedBody608_336 RemovedBody608_343

def RemovedBody608_345 : StackLang.HolProg 64 :=
.seq RemovedBody608_335 RemovedBody608_344

def RemovedBody608_346 : StackLang.HolProg 64 :=
.seq RemovedBody608_334 RemovedBody608_345

def RemovedBody608_347 : StackLang.HolProg 64 :=
.seq RemovedBody608_333 RemovedBody608_346

def RemovedBody608_348 : StackLang.HolProg 64 :=
.seq RemovedBody608_332 RemovedBody608_347

def RemovedBody608_349 : StackLang.HolProg 64 :=
.seq RemovedBody608_331 RemovedBody608_348

def RemovedBody608_350 : StackLang.HolProg 64 :=
.seq RemovedBody608_330 RemovedBody608_349

def RemovedBody608_351 : StackLang.HolProg 64 :=
.seq RemovedBody608_329 RemovedBody608_350

def RemovedBody608_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody608_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_361 : StackLang.HolProg 64 :=
.seq RemovedBody608_359 RemovedBody608_360

def RemovedBody608_362 : StackLang.HolProg 64 :=
.seq RemovedBody608_358 RemovedBody608_361

def RemovedBody608_363 : StackLang.HolProg 64 :=
.seq RemovedBody608_357 RemovedBody608_362

def RemovedBody608_364 : StackLang.HolProg 64 :=
.seq RemovedBody608_356 RemovedBody608_363

def RemovedBody608_365 : StackLang.HolProg 64 :=
.seq RemovedBody608_355 RemovedBody608_364

def RemovedBody608_366 : StackLang.HolProg 64 :=
.seq RemovedBody608_354 RemovedBody608_365

def RemovedBody608_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_369 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_370 : StackLang.HolProg 64 :=
.seq RemovedBody608_368 RemovedBody608_369

def RemovedBody608_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody608_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody608_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_375 : StackLang.HolProg 64 :=
.seq RemovedBody608_373 RemovedBody608_374

def RemovedBody608_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2341#64)

def RemovedBody608_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_379 : StackLang.HolProg 64 :=
.seq RemovedBody608_377 RemovedBody608_378

def RemovedBody608_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_383 : StackLang.HolProg 64 :=
.seq RemovedBody608_381 RemovedBody608_382

def RemovedBody608_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_385 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_383 RemovedBody608_384

def RemovedBody608_386 : StackLang.HolProg 64 :=
.seq RemovedBody608_380 RemovedBody608_385

def RemovedBody608_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 14

def RemovedBody608_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_396 : StackLang.HolProg 64 :=
.seq RemovedBody608_394 RemovedBody608_395

def RemovedBody608_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_398 : StackLang.HolProg 64 :=
.seq RemovedBody608_396 RemovedBody608_397

def RemovedBody608_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_400 : StackLang.HolProg 64 :=
.seq RemovedBody608_398 RemovedBody608_399

def RemovedBody608_401 : StackLang.HolProg 64 :=
.seq RemovedBody608_393 RemovedBody608_400

def RemovedBody608_402 : StackLang.HolProg 64 :=
.seq RemovedBody608_392 RemovedBody608_401

def RemovedBody608_403 : StackLang.HolProg 64 :=
.seq RemovedBody608_391 RemovedBody608_402

def RemovedBody608_404 : StackLang.HolProg 64 :=
.seq RemovedBody608_390 RemovedBody608_403

def RemovedBody608_405 : StackLang.HolProg 64 :=
.seq RemovedBody608_389 RemovedBody608_404

def RemovedBody608_406 : StackLang.HolProg 64 :=
.seq RemovedBody608_388 RemovedBody608_405

def RemovedBody608_407 : StackLang.HolProg 64 :=
.seq RemovedBody608_387 RemovedBody608_406

def RemovedBody608_408 : StackLang.HolProg 64 :=
.seq RemovedBody608_386 RemovedBody608_407

def RemovedBody608_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_416 : StackLang.HolProg 64 :=
.seq RemovedBody608_414 RemovedBody608_415

def RemovedBody608_417 : StackLang.HolProg 64 :=
.seq RemovedBody608_413 RemovedBody608_416

def RemovedBody608_418 : StackLang.HolProg 64 :=
.seq RemovedBody608_412 RemovedBody608_417

def RemovedBody608_419 : StackLang.HolProg 64 :=
.seq RemovedBody608_411 RemovedBody608_418

def RemovedBody608_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_421 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_422 : StackLang.HolProg 64 :=
.seq RemovedBody608_420 RemovedBody608_421

def RemovedBody608_423 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_419, 0, 608, 13)) (Sum.inl 391) (some (RemovedBody608_422, 608, 14))

def RemovedBody608_424 : StackLang.HolProg 64 :=
.seq RemovedBody608_410 RemovedBody608_423

def RemovedBody608_425 : StackLang.HolProg 64 :=
.seq RemovedBody608_409 RemovedBody608_424

def RemovedBody608_426 : StackLang.HolProg 64 :=
.seq RemovedBody608_408 RemovedBody608_425

def RemovedBody608_427 : StackLang.HolProg 64 :=
.seq RemovedBody608_379 RemovedBody608_426

def RemovedBody608_428 : StackLang.HolProg 64 :=
.seq RemovedBody608_376 RemovedBody608_427

def RemovedBody608_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2342#64)

def RemovedBody608_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_434 : StackLang.HolProg 64 :=
.seq RemovedBody608_432 RemovedBody608_433

def RemovedBody608_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_438 : StackLang.HolProg 64 :=
.seq RemovedBody608_436 RemovedBody608_437

def RemovedBody608_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_440 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_438 RemovedBody608_439

def RemovedBody608_441 : StackLang.HolProg 64 :=
.seq RemovedBody608_435 RemovedBody608_440

def RemovedBody608_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 16

def RemovedBody608_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_451 : StackLang.HolProg 64 :=
.seq RemovedBody608_449 RemovedBody608_450

def RemovedBody608_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_453 : StackLang.HolProg 64 :=
.seq RemovedBody608_451 RemovedBody608_452

def RemovedBody608_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_455 : StackLang.HolProg 64 :=
.seq RemovedBody608_453 RemovedBody608_454

def RemovedBody608_456 : StackLang.HolProg 64 :=
.seq RemovedBody608_448 RemovedBody608_455

def RemovedBody608_457 : StackLang.HolProg 64 :=
.seq RemovedBody608_447 RemovedBody608_456

def RemovedBody608_458 : StackLang.HolProg 64 :=
.seq RemovedBody608_446 RemovedBody608_457

def RemovedBody608_459 : StackLang.HolProg 64 :=
.seq RemovedBody608_445 RemovedBody608_458

def RemovedBody608_460 : StackLang.HolProg 64 :=
.seq RemovedBody608_444 RemovedBody608_459

def RemovedBody608_461 : StackLang.HolProg 64 :=
.seq RemovedBody608_443 RemovedBody608_460

def RemovedBody608_462 : StackLang.HolProg 64 :=
.seq RemovedBody608_442 RemovedBody608_461

def RemovedBody608_463 : StackLang.HolProg 64 :=
.seq RemovedBody608_441 RemovedBody608_462

def RemovedBody608_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_471 : StackLang.HolProg 64 :=
.seq RemovedBody608_469 RemovedBody608_470

def RemovedBody608_472 : StackLang.HolProg 64 :=
.seq RemovedBody608_468 RemovedBody608_471

def RemovedBody608_473 : StackLang.HolProg 64 :=
.seq RemovedBody608_467 RemovedBody608_472

def RemovedBody608_474 : StackLang.HolProg 64 :=
.seq RemovedBody608_466 RemovedBody608_473

def RemovedBody608_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_476 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_477 : StackLang.HolProg 64 :=
.seq RemovedBody608_475 RemovedBody608_476

def RemovedBody608_478 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_474, 0, 608, 15)) (Sum.inl 474) (some (RemovedBody608_477, 608, 16))

def RemovedBody608_479 : StackLang.HolProg 64 :=
.seq RemovedBody608_465 RemovedBody608_478

def RemovedBody608_480 : StackLang.HolProg 64 :=
.seq RemovedBody608_464 RemovedBody608_479

def RemovedBody608_481 : StackLang.HolProg 64 :=
.seq RemovedBody608_463 RemovedBody608_480

def RemovedBody608_482 : StackLang.HolProg 64 :=
.seq RemovedBody608_434 RemovedBody608_481

def RemovedBody608_483 : StackLang.HolProg 64 :=
.seq RemovedBody608_431 RemovedBody608_482

def RemovedBody608_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody608_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2343#64)

def RemovedBody608_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_489 : StackLang.HolProg 64 :=
.seq RemovedBody608_487 RemovedBody608_488

def RemovedBody608_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_493 : StackLang.HolProg 64 :=
.seq RemovedBody608_491 RemovedBody608_492

def RemovedBody608_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_495 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_493 RemovedBody608_494

def RemovedBody608_496 : StackLang.HolProg 64 :=
.seq RemovedBody608_490 RemovedBody608_495

def RemovedBody608_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 18

def RemovedBody608_500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_506 : StackLang.HolProg 64 :=
.seq RemovedBody608_504 RemovedBody608_505

def RemovedBody608_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_508 : StackLang.HolProg 64 :=
.seq RemovedBody608_506 RemovedBody608_507

def RemovedBody608_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_510 : StackLang.HolProg 64 :=
.seq RemovedBody608_508 RemovedBody608_509

def RemovedBody608_511 : StackLang.HolProg 64 :=
.seq RemovedBody608_503 RemovedBody608_510

def RemovedBody608_512 : StackLang.HolProg 64 :=
.seq RemovedBody608_502 RemovedBody608_511

def RemovedBody608_513 : StackLang.HolProg 64 :=
.seq RemovedBody608_501 RemovedBody608_512

def RemovedBody608_514 : StackLang.HolProg 64 :=
.seq RemovedBody608_500 RemovedBody608_513

def RemovedBody608_515 : StackLang.HolProg 64 :=
.seq RemovedBody608_499 RemovedBody608_514

def RemovedBody608_516 : StackLang.HolProg 64 :=
.seq RemovedBody608_498 RemovedBody608_515

def RemovedBody608_517 : StackLang.HolProg 64 :=
.seq RemovedBody608_497 RemovedBody608_516

def RemovedBody608_518 : StackLang.HolProg 64 :=
.seq RemovedBody608_496 RemovedBody608_517

def RemovedBody608_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody608_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_528 : StackLang.HolProg 64 :=
.seq RemovedBody608_526 RemovedBody608_527

def RemovedBody608_529 : StackLang.HolProg 64 :=
.seq RemovedBody608_525 RemovedBody608_528

def RemovedBody608_530 : StackLang.HolProg 64 :=
.seq RemovedBody608_524 RemovedBody608_529

def RemovedBody608_531 : StackLang.HolProg 64 :=
.seq RemovedBody608_523 RemovedBody608_530

def RemovedBody608_532 : StackLang.HolProg 64 :=
.seq RemovedBody608_522 RemovedBody608_531

def RemovedBody608_533 : StackLang.HolProg 64 :=
.seq RemovedBody608_521 RemovedBody608_532

def RemovedBody608_534 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody608_535 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody608_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_537 : StackLang.HolProg 64 :=
.seq RemovedBody608_535 RemovedBody608_536

def RemovedBody608_538 : StackLang.HolProg 64 :=
.seq RemovedBody608_534 RemovedBody608_537

def RemovedBody608_539 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_540 : StackLang.HolProg 64 :=
.seq RemovedBody608_538 RemovedBody608_539

def RemovedBody608_541 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_533, 0, 608, 17)) (Sum.inl 604) (some (RemovedBody608_540, 608, 18))

def RemovedBody608_542 : StackLang.HolProg 64 :=
.seq RemovedBody608_520 RemovedBody608_541

def RemovedBody608_543 : StackLang.HolProg 64 :=
.seq RemovedBody608_519 RemovedBody608_542

def RemovedBody608_544 : StackLang.HolProg 64 :=
.seq RemovedBody608_518 RemovedBody608_543

def RemovedBody608_545 : StackLang.HolProg 64 :=
.seq RemovedBody608_489 RemovedBody608_544

def RemovedBody608_546 : StackLang.HolProg 64 :=
.seq RemovedBody608_486 RemovedBody608_545

def RemovedBody608_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody608_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody608_550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody608_551 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody608_552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody608_553 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody608_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody608_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody608_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551352#64))

def RemovedBody608_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody608_559 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody608_560 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody608_561 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody608_562 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody608_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody608_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody608_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody608_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_568 : StackLang.HolProg 64 :=
.seq RemovedBody608_566 RemovedBody608_567

def RemovedBody608_569 : StackLang.HolProg 64 :=
.seq RemovedBody608_565 RemovedBody608_568

def RemovedBody608_570 : StackLang.HolProg 64 :=
.seq RemovedBody608_564 RemovedBody608_569

def RemovedBody608_571 : StackLang.HolProg 64 :=
.seq RemovedBody608_563 RemovedBody608_570

def RemovedBody608_572 : StackLang.HolProg 64 :=
.seq RemovedBody608_562 RemovedBody608_571

def RemovedBody608_573 : StackLang.HolProg 64 :=
.seq RemovedBody608_561 RemovedBody608_572

def RemovedBody608_574 : StackLang.HolProg 64 :=
.seq RemovedBody608_560 RemovedBody608_573

def RemovedBody608_575 : StackLang.HolProg 64 :=
.seq RemovedBody608_559 RemovedBody608_574

def RemovedBody608_576 : StackLang.HolProg 64 :=
.seq RemovedBody608_558 RemovedBody608_575

def RemovedBody608_577 : StackLang.HolProg 64 :=
.seq RemovedBody608_557 RemovedBody608_576

def RemovedBody608_578 : StackLang.HolProg 64 :=
.seq RemovedBody608_556 RemovedBody608_577

def RemovedBody608_579 : StackLang.HolProg 64 :=
.seq RemovedBody608_555 RemovedBody608_578

def RemovedBody608_580 : StackLang.HolProg 64 :=
.seq RemovedBody608_554 RemovedBody608_579

def RemovedBody608_581 : StackLang.HolProg 64 :=
.seq RemovedBody608_553 RemovedBody608_580

def RemovedBody608_582 : StackLang.HolProg 64 :=
.seq RemovedBody608_552 RemovedBody608_581

def RemovedBody608_583 : StackLang.HolProg 64 :=
.seq RemovedBody608_551 RemovedBody608_582

def RemovedBody608_584 : StackLang.HolProg 64 :=
.seq RemovedBody608_550 RemovedBody608_583

def RemovedBody608_585 : StackLang.HolProg 64 :=
.seq RemovedBody608_549 RemovedBody608_584

def RemovedBody608_586 : StackLang.HolProg 64 :=
.seq RemovedBody608_548 RemovedBody608_585

def RemovedBody608_587 : StackLang.HolProg 64 :=
.seq RemovedBody608_547 RemovedBody608_586

def RemovedBody608_588 : StackLang.HolProg 64 :=
.seq RemovedBody608_546 RemovedBody608_587

def RemovedBody608_589 : StackLang.HolProg 64 :=
.seq RemovedBody608_485 RemovedBody608_588

def RemovedBody608_590 : StackLang.HolProg 64 :=
.seq RemovedBody608_484 RemovedBody608_589

def RemovedBody608_591 : StackLang.HolProg 64 :=
.seq RemovedBody608_483 RemovedBody608_590

def RemovedBody608_592 : StackLang.HolProg 64 :=
.seq RemovedBody608_430 RemovedBody608_591

def RemovedBody608_593 : StackLang.HolProg 64 :=
.seq RemovedBody608_429 RemovedBody608_592

def RemovedBody608_594 : StackLang.HolProg 64 :=
.seq RemovedBody608_428 RemovedBody608_593

def RemovedBody608_595 : StackLang.HolProg 64 :=
.seq RemovedBody608_375 RemovedBody608_594

def RemovedBody608_596 : StackLang.HolProg 64 :=
.seq RemovedBody608_372 RemovedBody608_595

def RemovedBody608_597 : StackLang.HolProg 64 :=
.seq RemovedBody608_371 RemovedBody608_596

def RemovedBody608_598 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64) RemovedBody608_370 RemovedBody608_597

def RemovedBody608_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_601 : StackLang.HolProg 64 :=
.seq RemovedBody608_599 RemovedBody608_600

def RemovedBody608_602 : StackLang.HolProg 64 :=
.seq RemovedBody608_598 RemovedBody608_601

def RemovedBody608_603 : StackLang.HolProg 64 :=
.seq RemovedBody608_367 RemovedBody608_602

def RemovedBody608_604 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_366, 0, 608, 12)) (Sum.inl 607) (some (RemovedBody608_603, 608, 19))

def RemovedBody608_605 : StackLang.HolProg 64 :=
.seq RemovedBody608_353 RemovedBody608_604

def RemovedBody608_606 : StackLang.HolProg 64 :=
.seq RemovedBody608_352 RemovedBody608_605

def RemovedBody608_607 : StackLang.HolProg 64 :=
.seq RemovedBody608_351 RemovedBody608_606

def RemovedBody608_608 : StackLang.HolProg 64 :=
.seq RemovedBody608_322 RemovedBody608_607

def RemovedBody608_609 : StackLang.HolProg 64 :=
.seq RemovedBody608_319 RemovedBody608_608

def RemovedBody608_610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody608_612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody608_613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody608_614 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551360#64)))

def RemovedBody608_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody608_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody608_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody608_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody608_620 : StackLang.HolProg 64 :=
.seq RemovedBody608_618 RemovedBody608_619

def RemovedBody608_621 : StackLang.HolProg 64 :=
.seq RemovedBody608_617 RemovedBody608_620

def RemovedBody608_622 : StackLang.HolProg 64 :=
.seq RemovedBody608_616 RemovedBody608_621

def RemovedBody608_623 : StackLang.HolProg 64 :=
.seq RemovedBody608_615 RemovedBody608_622

def RemovedBody608_624 : StackLang.HolProg 64 :=
.seq RemovedBody608_614 RemovedBody608_623

def RemovedBody608_625 : StackLang.HolProg 64 :=
.seq RemovedBody608_613 RemovedBody608_624

def RemovedBody608_626 : StackLang.HolProg 64 :=
.seq RemovedBody608_612 RemovedBody608_625

def RemovedBody608_627 : StackLang.HolProg 64 :=
.seq RemovedBody608_611 RemovedBody608_626

def RemovedBody608_628 : StackLang.HolProg 64 :=
.seq RemovedBody608_610 RemovedBody608_627

def RemovedBody608_629 : StackLang.HolProg 64 :=
.seq RemovedBody608_609 RemovedBody608_628

def RemovedBody608_630 : StackLang.HolProg 64 :=
.seq RemovedBody608_318 RemovedBody608_629

def RemovedBody608_631 : StackLang.HolProg 64 :=
.seq RemovedBody608_309 RemovedBody608_630

def RemovedBody608_632 : StackLang.HolProg 64 :=
.seq RemovedBody608_308 RemovedBody608_631

def RemovedBody608_633 : StackLang.HolProg 64 :=
.seq RemovedBody608_307 RemovedBody608_632

def RemovedBody608_634 : StackLang.HolProg 64 :=
.seq RemovedBody608_306 RemovedBody608_633

def RemovedBody608_635 : StackLang.HolProg 64 :=
.seq RemovedBody608_305 RemovedBody608_634

def RemovedBody608_636 : StackLang.HolProg 64 :=
.seq RemovedBody608_304 RemovedBody608_635

def RemovedBody608_637 : StackLang.HolProg 64 :=
.seq RemovedBody608_303 RemovedBody608_636

def RemovedBody608_638 : StackLang.HolProg 64 :=
.seq RemovedBody608_302 RemovedBody608_637

def RemovedBody608_639 : StackLang.HolProg 64 :=
.seq RemovedBody608_301 RemovedBody608_638

def RemovedBody608_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_642 : StackLang.HolProg 64 :=
.seq RemovedBody608_640 RemovedBody608_641

def RemovedBody608_643 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody608_639 RemovedBody608_642

def RemovedBody608_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody608_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2344#64)

def RemovedBody608_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_650 : StackLang.HolProg 64 :=
.seq RemovedBody608_648 RemovedBody608_649

def RemovedBody608_651 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody608_653 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody608_654 : StackLang.HolProg 64 :=
.seq RemovedBody608_652 RemovedBody608_653

def RemovedBody608_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_656 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody608_654 RemovedBody608_655

def RemovedBody608_657 : StackLang.HolProg 64 :=
.seq RemovedBody608_651 RemovedBody608_656

def RemovedBody608_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody608_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody608_660 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 608 21

def RemovedBody608_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody608_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody608_666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody608_667 : StackLang.HolProg 64 :=
.seq RemovedBody608_665 RemovedBody608_666

def RemovedBody608_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody608_669 : StackLang.HolProg 64 :=
.seq RemovedBody608_667 RemovedBody608_668

def RemovedBody608_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_671 : StackLang.HolProg 64 :=
.seq RemovedBody608_669 RemovedBody608_670

def RemovedBody608_672 : StackLang.HolProg 64 :=
.seq RemovedBody608_664 RemovedBody608_671

def RemovedBody608_673 : StackLang.HolProg 64 :=
.seq RemovedBody608_663 RemovedBody608_672

def RemovedBody608_674 : StackLang.HolProg 64 :=
.seq RemovedBody608_662 RemovedBody608_673

def RemovedBody608_675 : StackLang.HolProg 64 :=
.seq RemovedBody608_661 RemovedBody608_674

def RemovedBody608_676 : StackLang.HolProg 64 :=
.seq RemovedBody608_660 RemovedBody608_675

def RemovedBody608_677 : StackLang.HolProg 64 :=
.seq RemovedBody608_659 RemovedBody608_676

def RemovedBody608_678 : StackLang.HolProg 64 :=
.seq RemovedBody608_658 RemovedBody608_677

def RemovedBody608_679 : StackLang.HolProg 64 :=
.seq RemovedBody608_657 RemovedBody608_678

def RemovedBody608_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_681 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_682 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody608_683 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody608_684 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody608_685 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody608_686 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_687 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_688 : StackLang.HolProg 64 :=
.seq RemovedBody608_686 RemovedBody608_687

def RemovedBody608_689 : StackLang.HolProg 64 :=
.seq RemovedBody608_685 RemovedBody608_688

def RemovedBody608_690 : StackLang.HolProg 64 :=
.seq RemovedBody608_684 RemovedBody608_689

def RemovedBody608_691 : StackLang.HolProg 64 :=
.seq RemovedBody608_683 RemovedBody608_690

def RemovedBody608_692 : StackLang.HolProg 64 :=
.seq RemovedBody608_682 RemovedBody608_691

def RemovedBody608_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody608_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody608_695 : StackLang.HolProg 64 :=
.seq RemovedBody608_693 RemovedBody608_694

def RemovedBody608_696 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody608_697 : StackLang.HolProg 64 :=
.seq RemovedBody608_695 RemovedBody608_696

def RemovedBody608_698 : StackLang.HolProg 64 :=
.call (some (RemovedBody608_692, 0, 608, 20)) (Sum.inl 391) (some (RemovedBody608_697, 608, 21))

def RemovedBody608_699 : StackLang.HolProg 64 :=
.seq RemovedBody608_681 RemovedBody608_698

def RemovedBody608_700 : StackLang.HolProg 64 :=
.seq RemovedBody608_680 RemovedBody608_699

def RemovedBody608_701 : StackLang.HolProg 64 :=
.seq RemovedBody608_679 RemovedBody608_700

def RemovedBody608_702 : StackLang.HolProg 64 :=
.seq RemovedBody608_650 RemovedBody608_701

def RemovedBody608_703 : StackLang.HolProg 64 :=
.seq RemovedBody608_647 RemovedBody608_702

def RemovedBody608_704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody608_705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody608_706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def RemovedBody608_707 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody608_708 : StackLang.HolProg 64 :=
.seq RemovedBody608_706 RemovedBody608_707

def RemovedBody608_709 : StackLang.HolProg 64 :=
.seq RemovedBody608_705 RemovedBody608_708

def RemovedBody608_710 : StackLang.HolProg 64 :=
.seq RemovedBody608_704 RemovedBody608_709

def RemovedBody608_711 : StackLang.HolProg 64 :=
.seq RemovedBody608_703 RemovedBody608_710

def RemovedBody608_712 : StackLang.HolProg 64 :=
.seq RemovedBody608_646 RemovedBody608_711

def RemovedBody608_713 : StackLang.HolProg 64 :=
.seq RemovedBody608_645 RemovedBody608_712

def RemovedBody608_714 : StackLang.HolProg 64 :=
.seq RemovedBody608_644 RemovedBody608_713

def RemovedBody608_715 : StackLang.HolProg 64 :=
.seq RemovedBody608_643 RemovedBody608_714

def RemovedBody608_716 : StackLang.HolProg 64 :=
.seq RemovedBody608_300 RemovedBody608_715

def RemovedBody608_717 : StackLang.HolProg 64 :=
.seq RemovedBody608_299 RemovedBody608_716

def RemovedBody608_718 : StackLang.HolProg 64 :=
.seq RemovedBody608_298 RemovedBody608_717

def RemovedBody608_719 : StackLang.HolProg 64 :=
.seq RemovedBody608_297 RemovedBody608_718

def RemovedBody608_720 : StackLang.HolProg 64 :=
.seq RemovedBody608_296 RemovedBody608_719

def RemovedBody608_721 : StackLang.HolProg 64 :=
.seq RemovedBody608_241 RemovedBody608_720

def RemovedBody608_722 : StackLang.HolProg 64 :=
.seq RemovedBody608_238 RemovedBody608_721

def RemovedBody608_723 : StackLang.HolProg 64 :=
.seq RemovedBody608_237 RemovedBody608_722

def RemovedBody608_724 : StackLang.HolProg 64 :=
.seq RemovedBody608_184 RemovedBody608_723

def RemovedBody608_725 : StackLang.HolProg 64 :=
.seq RemovedBody608_183 RemovedBody608_724

def RemovedBody608_726 : StackLang.HolProg 64 :=
.seq RemovedBody608_182 RemovedBody608_725

def RemovedBody608_727 : StackLang.HolProg 64 :=
.seq RemovedBody608_129 RemovedBody608_726

def RemovedBody608_728 : StackLang.HolProg 64 :=
.seq RemovedBody608_126 RemovedBody608_727

def RemovedBody608_729 : StackLang.HolProg 64 :=
.seq RemovedBody608_125 RemovedBody608_728

def RemovedBody608_730 : StackLang.HolProg 64 :=
.seq RemovedBody608_72 RemovedBody608_729

def RemovedBody608_731 : StackLang.HolProg 64 :=
.seq RemovedBody608_67 RemovedBody608_730

def RemovedBody608_732 : StackLang.HolProg 64 :=
.seq RemovedBody608_66 RemovedBody608_731

def RemovedBody608_733 : StackLang.HolProg 64 :=
.seq RemovedBody608_65 RemovedBody608_732

def RemovedBody608_734 : StackLang.HolProg 64 :=
.seq RemovedBody608_64 RemovedBody608_733

def RemovedBody608_735 : StackLang.HolProg 64 :=
.seq RemovedBody608_9 RemovedBody608_734

def RemovedBody608_736 : StackLang.HolProg 64 :=
.seq RemovedBody608_6 RemovedBody608_735

def Removed608 : Nat × StackLang.HolProg 64 := (608, RemovedBody608_736)
theorem Removed608_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc608 = Removed608 := by
  kernel_rfl
#print axioms Removed608_eq
end InitECandidate.Proofs.BackendStages
