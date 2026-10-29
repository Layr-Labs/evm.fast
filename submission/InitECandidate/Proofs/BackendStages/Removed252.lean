import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc252
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody252_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody252_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody252_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody252_3 : StackLang.HolProg 64 :=
.seq RemovedBody252_1 RemovedBody252_2

def RemovedBody252_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody252_3 RemovedBody252_4

def RemovedBody252_6 : StackLang.HolProg 64 :=
.seq RemovedBody252_0 RemovedBody252_5

def RemovedBody252_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody252_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_9 : StackLang.HolProg 64 :=
.seq RemovedBody252_7 RemovedBody252_8

def RemovedBody252_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 516#64)

def RemovedBody252_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_13 : StackLang.HolProg 64 :=
.seq RemovedBody252_11 RemovedBody252_12

def RemovedBody252_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody252_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody252_17 : StackLang.HolProg 64 :=
.seq RemovedBody252_15 RemovedBody252_16

def RemovedBody252_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody252_17 RemovedBody252_18

def RemovedBody252_20 : StackLang.HolProg 64 :=
.seq RemovedBody252_14 RemovedBody252_19

def RemovedBody252_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody252_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 3

def RemovedBody252_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody252_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody252_30 : StackLang.HolProg 64 :=
.seq RemovedBody252_28 RemovedBody252_29

def RemovedBody252_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody252_32 : StackLang.HolProg 64 :=
.seq RemovedBody252_30 RemovedBody252_31

def RemovedBody252_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_34 : StackLang.HolProg 64 :=
.seq RemovedBody252_32 RemovedBody252_33

def RemovedBody252_35 : StackLang.HolProg 64 :=
.seq RemovedBody252_27 RemovedBody252_34

def RemovedBody252_36 : StackLang.HolProg 64 :=
.seq RemovedBody252_26 RemovedBody252_35

def RemovedBody252_37 : StackLang.HolProg 64 :=
.seq RemovedBody252_25 RemovedBody252_36

def RemovedBody252_38 : StackLang.HolProg 64 :=
.seq RemovedBody252_24 RemovedBody252_37

def RemovedBody252_39 : StackLang.HolProg 64 :=
.seq RemovedBody252_23 RemovedBody252_38

def RemovedBody252_40 : StackLang.HolProg 64 :=
.seq RemovedBody252_22 RemovedBody252_39

def RemovedBody252_41 : StackLang.HolProg 64 :=
.seq RemovedBody252_21 RemovedBody252_40

def RemovedBody252_42 : StackLang.HolProg 64 :=
.seq RemovedBody252_20 RemovedBody252_41

def RemovedBody252_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody252_50 : StackLang.HolProg 64 :=
.seq RemovedBody252_48 RemovedBody252_49

def RemovedBody252_51 : StackLang.HolProg 64 :=
.seq RemovedBody252_47 RemovedBody252_50

def RemovedBody252_52 : StackLang.HolProg 64 :=
.seq RemovedBody252_46 RemovedBody252_51

def RemovedBody252_53 : StackLang.HolProg 64 :=
.seq RemovedBody252_45 RemovedBody252_52

def RemovedBody252_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody252_56 : StackLang.HolProg 64 :=
.seq RemovedBody252_54 RemovedBody252_55

def RemovedBody252_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody252_53, 0, 252, 2)) (Sum.inl 94) (some (RemovedBody252_56, 252, 3))

def RemovedBody252_58 : StackLang.HolProg 64 :=
.seq RemovedBody252_44 RemovedBody252_57

def RemovedBody252_59 : StackLang.HolProg 64 :=
.seq RemovedBody252_43 RemovedBody252_58

def RemovedBody252_60 : StackLang.HolProg 64 :=
.seq RemovedBody252_42 RemovedBody252_59

def RemovedBody252_61 : StackLang.HolProg 64 :=
.seq RemovedBody252_13 RemovedBody252_60

def RemovedBody252_62 : StackLang.HolProg 64 :=
.seq RemovedBody252_10 RemovedBody252_61

def RemovedBody252_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody252_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 30#64)

def RemovedBody252_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 517#64)

def RemovedBody252_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_72 : StackLang.HolProg 64 :=
.seq RemovedBody252_70 RemovedBody252_71

def RemovedBody252_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody252_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody252_76 : StackLang.HolProg 64 :=
.seq RemovedBody252_74 RemovedBody252_75

def RemovedBody252_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_78 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody252_76 RemovedBody252_77

def RemovedBody252_79 : StackLang.HolProg 64 :=
.seq RemovedBody252_73 RemovedBody252_78

def RemovedBody252_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody252_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 5

def RemovedBody252_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody252_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody252_89 : StackLang.HolProg 64 :=
.seq RemovedBody252_87 RemovedBody252_88

def RemovedBody252_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody252_91 : StackLang.HolProg 64 :=
.seq RemovedBody252_89 RemovedBody252_90

def RemovedBody252_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_93 : StackLang.HolProg 64 :=
.seq RemovedBody252_91 RemovedBody252_92

def RemovedBody252_94 : StackLang.HolProg 64 :=
.seq RemovedBody252_86 RemovedBody252_93

def RemovedBody252_95 : StackLang.HolProg 64 :=
.seq RemovedBody252_85 RemovedBody252_94

def RemovedBody252_96 : StackLang.HolProg 64 :=
.seq RemovedBody252_84 RemovedBody252_95

def RemovedBody252_97 : StackLang.HolProg 64 :=
.seq RemovedBody252_83 RemovedBody252_96

def RemovedBody252_98 : StackLang.HolProg 64 :=
.seq RemovedBody252_82 RemovedBody252_97

def RemovedBody252_99 : StackLang.HolProg 64 :=
.seq RemovedBody252_81 RemovedBody252_98

def RemovedBody252_100 : StackLang.HolProg 64 :=
.seq RemovedBody252_80 RemovedBody252_99

def RemovedBody252_101 : StackLang.HolProg 64 :=
.seq RemovedBody252_79 RemovedBody252_100

def RemovedBody252_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_110 : StackLang.HolProg 64 :=
.seq RemovedBody252_108 RemovedBody252_109

def RemovedBody252_111 : StackLang.HolProg 64 :=
.seq RemovedBody252_107 RemovedBody252_110

def RemovedBody252_112 : StackLang.HolProg 64 :=
.seq RemovedBody252_106 RemovedBody252_111

def RemovedBody252_113 : StackLang.HolProg 64 :=
.seq RemovedBody252_105 RemovedBody252_112

def RemovedBody252_114 : StackLang.HolProg 64 :=
.seq RemovedBody252_104 RemovedBody252_113

def RemovedBody252_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_117 : StackLang.HolProg 64 :=
.seq RemovedBody252_115 RemovedBody252_116

def RemovedBody252_118 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody252_119 : StackLang.HolProg 64 :=
.seq RemovedBody252_117 RemovedBody252_118

def RemovedBody252_120 : StackLang.HolProg 64 :=
.call (some (RemovedBody252_114, 0, 252, 4)) (Sum.inl 245) (some (RemovedBody252_119, 252, 5))

def RemovedBody252_121 : StackLang.HolProg 64 :=
.seq RemovedBody252_103 RemovedBody252_120

def RemovedBody252_122 : StackLang.HolProg 64 :=
.seq RemovedBody252_102 RemovedBody252_121

def RemovedBody252_123 : StackLang.HolProg 64 :=
.seq RemovedBody252_101 RemovedBody252_122

def RemovedBody252_124 : StackLang.HolProg 64 :=
.seq RemovedBody252_72 RemovedBody252_123

def RemovedBody252_125 : StackLang.HolProg 64 :=
.seq RemovedBody252_69 RemovedBody252_124

def RemovedBody252_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_128 : StackLang.HolProg 64 :=
.seq RemovedBody252_126 RemovedBody252_127

def RemovedBody252_129 : StackLang.HolProg 64 :=
.seq RemovedBody252_125 RemovedBody252_128

def RemovedBody252_130 : StackLang.HolProg 64 :=
.seq RemovedBody252_68 RemovedBody252_129

def RemovedBody252_131 : StackLang.HolProg 64 :=
.seq RemovedBody252_67 RemovedBody252_130

def RemovedBody252_132 : StackLang.HolProg 64 :=
.seq RemovedBody252_66 RemovedBody252_131

def RemovedBody252_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_135 : StackLang.HolProg 64 :=
.seq RemovedBody252_133 RemovedBody252_134

def RemovedBody252_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody252_132 RemovedBody252_135

def RemovedBody252_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def RemovedBody252_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 518#64)

def RemovedBody252_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_145 : StackLang.HolProg 64 :=
.seq RemovedBody252_143 RemovedBody252_144

def RemovedBody252_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody252_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody252_149 : StackLang.HolProg 64 :=
.seq RemovedBody252_147 RemovedBody252_148

def RemovedBody252_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody252_149 RemovedBody252_150

def RemovedBody252_152 : StackLang.HolProg 64 :=
.seq RemovedBody252_146 RemovedBody252_151

def RemovedBody252_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody252_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody252_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 252 7

def RemovedBody252_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody252_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody252_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody252_162 : StackLang.HolProg 64 :=
.seq RemovedBody252_160 RemovedBody252_161

def RemovedBody252_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody252_164 : StackLang.HolProg 64 :=
.seq RemovedBody252_162 RemovedBody252_163

def RemovedBody252_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_166 : StackLang.HolProg 64 :=
.seq RemovedBody252_164 RemovedBody252_165

def RemovedBody252_167 : StackLang.HolProg 64 :=
.seq RemovedBody252_159 RemovedBody252_166

def RemovedBody252_168 : StackLang.HolProg 64 :=
.seq RemovedBody252_158 RemovedBody252_167

def RemovedBody252_169 : StackLang.HolProg 64 :=
.seq RemovedBody252_157 RemovedBody252_168

def RemovedBody252_170 : StackLang.HolProg 64 :=
.seq RemovedBody252_156 RemovedBody252_169

def RemovedBody252_171 : StackLang.HolProg 64 :=
.seq RemovedBody252_155 RemovedBody252_170

def RemovedBody252_172 : StackLang.HolProg 64 :=
.seq RemovedBody252_154 RemovedBody252_171

def RemovedBody252_173 : StackLang.HolProg 64 :=
.seq RemovedBody252_153 RemovedBody252_172

def RemovedBody252_174 : StackLang.HolProg 64 :=
.seq RemovedBody252_152 RemovedBody252_173

def RemovedBody252_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody252_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody252_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody252_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_183 : StackLang.HolProg 64 :=
.seq RemovedBody252_181 RemovedBody252_182

def RemovedBody252_184 : StackLang.HolProg 64 :=
.seq RemovedBody252_180 RemovedBody252_183

def RemovedBody252_185 : StackLang.HolProg 64 :=
.seq RemovedBody252_179 RemovedBody252_184

def RemovedBody252_186 : StackLang.HolProg 64 :=
.seq RemovedBody252_178 RemovedBody252_185

def RemovedBody252_187 : StackLang.HolProg 64 :=
.seq RemovedBody252_177 RemovedBody252_186

def RemovedBody252_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody252_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody252_190 : StackLang.HolProg 64 :=
.seq RemovedBody252_188 RemovedBody252_189

def RemovedBody252_191 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody252_192 : StackLang.HolProg 64 :=
.seq RemovedBody252_190 RemovedBody252_191

def RemovedBody252_193 : StackLang.HolProg 64 :=
.call (some (RemovedBody252_187, 0, 252, 6)) (Sum.inl 245) (some (RemovedBody252_192, 252, 7))

def RemovedBody252_194 : StackLang.HolProg 64 :=
.seq RemovedBody252_176 RemovedBody252_193

def RemovedBody252_195 : StackLang.HolProg 64 :=
.seq RemovedBody252_175 RemovedBody252_194

def RemovedBody252_196 : StackLang.HolProg 64 :=
.seq RemovedBody252_174 RemovedBody252_195

def RemovedBody252_197 : StackLang.HolProg 64 :=
.seq RemovedBody252_145 RemovedBody252_196

def RemovedBody252_198 : StackLang.HolProg 64 :=
.seq RemovedBody252_142 RemovedBody252_197

def RemovedBody252_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody252_201 : StackLang.HolProg 64 :=
.seq RemovedBody252_199 RemovedBody252_200

def RemovedBody252_202 : StackLang.HolProg 64 :=
.seq RemovedBody252_198 RemovedBody252_201

def RemovedBody252_203 : StackLang.HolProg 64 :=
.seq RemovedBody252_141 RemovedBody252_202

def RemovedBody252_204 : StackLang.HolProg 64 :=
.seq RemovedBody252_140 RemovedBody252_203

def RemovedBody252_205 : StackLang.HolProg 64 :=
.seq RemovedBody252_139 RemovedBody252_204

def RemovedBody252_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody252_208 : StackLang.HolProg 64 :=
.seq RemovedBody252_206 RemovedBody252_207

def RemovedBody252_209 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody252_205 RemovedBody252_208

def RemovedBody252_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody252_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody252_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody252_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody252_214 : StackLang.HolProg 64 :=
.seq RemovedBody252_212 RemovedBody252_213

def RemovedBody252_215 : StackLang.HolProg 64 :=
.seq RemovedBody252_211 RemovedBody252_214

def RemovedBody252_216 : StackLang.HolProg 64 :=
.seq RemovedBody252_210 RemovedBody252_215

def RemovedBody252_217 : StackLang.HolProg 64 :=
.seq RemovedBody252_209 RemovedBody252_216

def RemovedBody252_218 : StackLang.HolProg 64 :=
.seq RemovedBody252_138 RemovedBody252_217

def RemovedBody252_219 : StackLang.HolProg 64 :=
.seq RemovedBody252_137 RemovedBody252_218

def RemovedBody252_220 : StackLang.HolProg 64 :=
.seq RemovedBody252_136 RemovedBody252_219

def RemovedBody252_221 : StackLang.HolProg 64 :=
.seq RemovedBody252_65 RemovedBody252_220

def RemovedBody252_222 : StackLang.HolProg 64 :=
.seq RemovedBody252_64 RemovedBody252_221

def RemovedBody252_223 : StackLang.HolProg 64 :=
.seq RemovedBody252_63 RemovedBody252_222

def RemovedBody252_224 : StackLang.HolProg 64 :=
.seq RemovedBody252_62 RemovedBody252_223

def RemovedBody252_225 : StackLang.HolProg 64 :=
.seq RemovedBody252_9 RemovedBody252_224

def RemovedBody252_226 : StackLang.HolProg 64 :=
.seq RemovedBody252_6 RemovedBody252_225

def Removed252 : Nat × StackLang.HolProg 64 := (252, RemovedBody252_226)
theorem Removed252_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc252 = Removed252 := by
  kernel_rfl
#print axioms Removed252_eq
end InitECandidate.Proofs.BackendStages
