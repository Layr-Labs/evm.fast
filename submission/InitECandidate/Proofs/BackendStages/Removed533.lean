import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc533
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody533_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody533_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody533_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody533_3 : StackLang.HolProg 64 :=
.seq RemovedBody533_1 RemovedBody533_2

def RemovedBody533_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody533_3 RemovedBody533_4

def RemovedBody533_6 : StackLang.HolProg 64 :=
.seq RemovedBody533_0 RemovedBody533_5

def RemovedBody533_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody533_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1752#64)

def RemovedBody533_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_13 : StackLang.HolProg 64 :=
.seq RemovedBody533_11 RemovedBody533_12

def RemovedBody533_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody533_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody533_17 : StackLang.HolProg 64 :=
.seq RemovedBody533_15 RemovedBody533_16

def RemovedBody533_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody533_17 RemovedBody533_18

def RemovedBody533_20 : StackLang.HolProg 64 :=
.seq RemovedBody533_14 RemovedBody533_19

def RemovedBody533_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody533_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 3

def RemovedBody533_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody533_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody533_30 : StackLang.HolProg 64 :=
.seq RemovedBody533_28 RemovedBody533_29

def RemovedBody533_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody533_32 : StackLang.HolProg 64 :=
.seq RemovedBody533_30 RemovedBody533_31

def RemovedBody533_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_34 : StackLang.HolProg 64 :=
.seq RemovedBody533_32 RemovedBody533_33

def RemovedBody533_35 : StackLang.HolProg 64 :=
.seq RemovedBody533_27 RemovedBody533_34

def RemovedBody533_36 : StackLang.HolProg 64 :=
.seq RemovedBody533_26 RemovedBody533_35

def RemovedBody533_37 : StackLang.HolProg 64 :=
.seq RemovedBody533_25 RemovedBody533_36

def RemovedBody533_38 : StackLang.HolProg 64 :=
.seq RemovedBody533_24 RemovedBody533_37

def RemovedBody533_39 : StackLang.HolProg 64 :=
.seq RemovedBody533_23 RemovedBody533_38

def RemovedBody533_40 : StackLang.HolProg 64 :=
.seq RemovedBody533_22 RemovedBody533_39

def RemovedBody533_41 : StackLang.HolProg 64 :=
.seq RemovedBody533_21 RemovedBody533_40

def RemovedBody533_42 : StackLang.HolProg 64 :=
.seq RemovedBody533_20 RemovedBody533_41

def RemovedBody533_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_50 : StackLang.HolProg 64 :=
.seq RemovedBody533_48 RemovedBody533_49

def RemovedBody533_51 : StackLang.HolProg 64 :=
.seq RemovedBody533_47 RemovedBody533_50

def RemovedBody533_52 : StackLang.HolProg 64 :=
.seq RemovedBody533_46 RemovedBody533_51

def RemovedBody533_53 : StackLang.HolProg 64 :=
.seq RemovedBody533_45 RemovedBody533_52

def RemovedBody533_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody533_56 : StackLang.HolProg 64 :=
.seq RemovedBody533_54 RemovedBody533_55

def RemovedBody533_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody533_53, 0, 533, 2)) (Sum.inl 470) (some (RemovedBody533_56, 533, 3))

def RemovedBody533_58 : StackLang.HolProg 64 :=
.seq RemovedBody533_44 RemovedBody533_57

def RemovedBody533_59 : StackLang.HolProg 64 :=
.seq RemovedBody533_43 RemovedBody533_58

def RemovedBody533_60 : StackLang.HolProg 64 :=
.seq RemovedBody533_42 RemovedBody533_59

def RemovedBody533_61 : StackLang.HolProg 64 :=
.seq RemovedBody533_13 RemovedBody533_60

def RemovedBody533_62 : StackLang.HolProg 64 :=
.seq RemovedBody533_10 RemovedBody533_61

def RemovedBody533_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody533_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody533_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody533_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody533_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody533_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 32#64))

def RemovedBody533_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1753#64)

def RemovedBody533_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_73 : StackLang.HolProg 64 :=
.seq RemovedBody533_71 RemovedBody533_72

def RemovedBody533_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody533_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody533_77 : StackLang.HolProg 64 :=
.seq RemovedBody533_75 RemovedBody533_76

def RemovedBody533_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody533_77 RemovedBody533_78

def RemovedBody533_80 : StackLang.HolProg 64 :=
.seq RemovedBody533_74 RemovedBody533_79

def RemovedBody533_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody533_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 5

def RemovedBody533_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody533_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody533_90 : StackLang.HolProg 64 :=
.seq RemovedBody533_88 RemovedBody533_89

def RemovedBody533_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody533_92 : StackLang.HolProg 64 :=
.seq RemovedBody533_90 RemovedBody533_91

def RemovedBody533_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_94 : StackLang.HolProg 64 :=
.seq RemovedBody533_92 RemovedBody533_93

def RemovedBody533_95 : StackLang.HolProg 64 :=
.seq RemovedBody533_87 RemovedBody533_94

def RemovedBody533_96 : StackLang.HolProg 64 :=
.seq RemovedBody533_86 RemovedBody533_95

def RemovedBody533_97 : StackLang.HolProg 64 :=
.seq RemovedBody533_85 RemovedBody533_96

def RemovedBody533_98 : StackLang.HolProg 64 :=
.seq RemovedBody533_84 RemovedBody533_97

def RemovedBody533_99 : StackLang.HolProg 64 :=
.seq RemovedBody533_83 RemovedBody533_98

def RemovedBody533_100 : StackLang.HolProg 64 :=
.seq RemovedBody533_82 RemovedBody533_99

def RemovedBody533_101 : StackLang.HolProg 64 :=
.seq RemovedBody533_81 RemovedBody533_100

def RemovedBody533_102 : StackLang.HolProg 64 :=
.seq RemovedBody533_80 RemovedBody533_101

def RemovedBody533_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_110 : StackLang.HolProg 64 :=
.seq RemovedBody533_108 RemovedBody533_109

def RemovedBody533_111 : StackLang.HolProg 64 :=
.seq RemovedBody533_107 RemovedBody533_110

def RemovedBody533_112 : StackLang.HolProg 64 :=
.seq RemovedBody533_106 RemovedBody533_111

def RemovedBody533_113 : StackLang.HolProg 64 :=
.seq RemovedBody533_105 RemovedBody533_112

def RemovedBody533_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody533_116 : StackLang.HolProg 64 :=
.seq RemovedBody533_114 RemovedBody533_115

def RemovedBody533_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody533_113, 0, 533, 4)) (Sum.inl 477) (some (RemovedBody533_116, 533, 5))

def RemovedBody533_118 : StackLang.HolProg 64 :=
.seq RemovedBody533_104 RemovedBody533_117

def RemovedBody533_119 : StackLang.HolProg 64 :=
.seq RemovedBody533_103 RemovedBody533_118

def RemovedBody533_120 : StackLang.HolProg 64 :=
.seq RemovedBody533_102 RemovedBody533_119

def RemovedBody533_121 : StackLang.HolProg 64 :=
.seq RemovedBody533_73 RemovedBody533_120

def RemovedBody533_122 : StackLang.HolProg 64 :=
.seq RemovedBody533_70 RemovedBody533_121

def RemovedBody533_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody533_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody533_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1754#64)

def RemovedBody533_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_129 : StackLang.HolProg 64 :=
.seq RemovedBody533_127 RemovedBody533_128

def RemovedBody533_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody533_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody533_133 : StackLang.HolProg 64 :=
.seq RemovedBody533_131 RemovedBody533_132

def RemovedBody533_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody533_133 RemovedBody533_134

def RemovedBody533_136 : StackLang.HolProg 64 :=
.seq RemovedBody533_130 RemovedBody533_135

def RemovedBody533_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody533_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody533_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 533 7

def RemovedBody533_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody533_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody533_146 : StackLang.HolProg 64 :=
.seq RemovedBody533_144 RemovedBody533_145

def RemovedBody533_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody533_148 : StackLang.HolProg 64 :=
.seq RemovedBody533_146 RemovedBody533_147

def RemovedBody533_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_150 : StackLang.HolProg 64 :=
.seq RemovedBody533_148 RemovedBody533_149

def RemovedBody533_151 : StackLang.HolProg 64 :=
.seq RemovedBody533_143 RemovedBody533_150

def RemovedBody533_152 : StackLang.HolProg 64 :=
.seq RemovedBody533_142 RemovedBody533_151

def RemovedBody533_153 : StackLang.HolProg 64 :=
.seq RemovedBody533_141 RemovedBody533_152

def RemovedBody533_154 : StackLang.HolProg 64 :=
.seq RemovedBody533_140 RemovedBody533_153

def RemovedBody533_155 : StackLang.HolProg 64 :=
.seq RemovedBody533_139 RemovedBody533_154

def RemovedBody533_156 : StackLang.HolProg 64 :=
.seq RemovedBody533_138 RemovedBody533_155

def RemovedBody533_157 : StackLang.HolProg 64 :=
.seq RemovedBody533_137 RemovedBody533_156

def RemovedBody533_158 : StackLang.HolProg 64 :=
.seq RemovedBody533_136 RemovedBody533_157

def RemovedBody533_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody533_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody533_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody533_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_166 : StackLang.HolProg 64 :=
.seq RemovedBody533_164 RemovedBody533_165

def RemovedBody533_167 : StackLang.HolProg 64 :=
.seq RemovedBody533_163 RemovedBody533_166

def RemovedBody533_168 : StackLang.HolProg 64 :=
.seq RemovedBody533_162 RemovedBody533_167

def RemovedBody533_169 : StackLang.HolProg 64 :=
.seq RemovedBody533_161 RemovedBody533_168

def RemovedBody533_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody533_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody533_172 : StackLang.HolProg 64 :=
.seq RemovedBody533_170 RemovedBody533_171

def RemovedBody533_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody533_169, 0, 533, 6)) (Sum.inl 490) (some (RemovedBody533_172, 533, 7))

def RemovedBody533_174 : StackLang.HolProg 64 :=
.seq RemovedBody533_160 RemovedBody533_173

def RemovedBody533_175 : StackLang.HolProg 64 :=
.seq RemovedBody533_159 RemovedBody533_174

def RemovedBody533_176 : StackLang.HolProg 64 :=
.seq RemovedBody533_158 RemovedBody533_175

def RemovedBody533_177 : StackLang.HolProg 64 :=
.seq RemovedBody533_129 RemovedBody533_176

def RemovedBody533_178 : StackLang.HolProg 64 :=
.seq RemovedBody533_126 RemovedBody533_177

def RemovedBody533_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody533_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody533_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody533_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody533_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody533_184 : StackLang.HolProg 64 :=
.seq RemovedBody533_182 RemovedBody533_183

def RemovedBody533_185 : StackLang.HolProg 64 :=
.seq RemovedBody533_181 RemovedBody533_184

def RemovedBody533_186 : StackLang.HolProg 64 :=
.seq RemovedBody533_180 RemovedBody533_185

def RemovedBody533_187 : StackLang.HolProg 64 :=
.seq RemovedBody533_179 RemovedBody533_186

def RemovedBody533_188 : StackLang.HolProg 64 :=
.seq RemovedBody533_178 RemovedBody533_187

def RemovedBody533_189 : StackLang.HolProg 64 :=
.seq RemovedBody533_125 RemovedBody533_188

def RemovedBody533_190 : StackLang.HolProg 64 :=
.seq RemovedBody533_124 RemovedBody533_189

def RemovedBody533_191 : StackLang.HolProg 64 :=
.seq RemovedBody533_123 RemovedBody533_190

def RemovedBody533_192 : StackLang.HolProg 64 :=
.seq RemovedBody533_122 RemovedBody533_191

def RemovedBody533_193 : StackLang.HolProg 64 :=
.seq RemovedBody533_69 RemovedBody533_192

def RemovedBody533_194 : StackLang.HolProg 64 :=
.seq RemovedBody533_68 RemovedBody533_193

def RemovedBody533_195 : StackLang.HolProg 64 :=
.seq RemovedBody533_67 RemovedBody533_194

def RemovedBody533_196 : StackLang.HolProg 64 :=
.seq RemovedBody533_66 RemovedBody533_195

def RemovedBody533_197 : StackLang.HolProg 64 :=
.seq RemovedBody533_65 RemovedBody533_196

def RemovedBody533_198 : StackLang.HolProg 64 :=
.seq RemovedBody533_64 RemovedBody533_197

def RemovedBody533_199 : StackLang.HolProg 64 :=
.seq RemovedBody533_63 RemovedBody533_198

def RemovedBody533_200 : StackLang.HolProg 64 :=
.seq RemovedBody533_62 RemovedBody533_199

def RemovedBody533_201 : StackLang.HolProg 64 :=
.seq RemovedBody533_9 RemovedBody533_200

def RemovedBody533_202 : StackLang.HolProg 64 :=
.seq RemovedBody533_8 RemovedBody533_201

def RemovedBody533_203 : StackLang.HolProg 64 :=
.seq RemovedBody533_7 RemovedBody533_202

def RemovedBody533_204 : StackLang.HolProg 64 :=
.seq RemovedBody533_6 RemovedBody533_203

def Removed533 : Nat × StackLang.HolProg 64 := (533, RemovedBody533_204)
theorem Removed533_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc533 = Removed533 := by
  kernel_rfl
#print axioms Removed533_eq
end InitECandidate.Proofs.BackendStages
