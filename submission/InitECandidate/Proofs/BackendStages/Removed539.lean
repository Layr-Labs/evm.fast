import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc539
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody539_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody539_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody539_3 : StackLang.HolProg 64 :=
.seq RemovedBody539_1 RemovedBody539_2

def RemovedBody539_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody539_3 RemovedBody539_4

def RemovedBody539_6 : StackLang.HolProg 64 :=
.seq RemovedBody539_0 RemovedBody539_5

def RemovedBody539_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody539_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody539_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_11 : StackLang.HolProg 64 :=
.seq RemovedBody539_9 RemovedBody539_10

def RemovedBody539_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1787#64)

def RemovedBody539_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_15 : StackLang.HolProg 64 :=
.seq RemovedBody539_13 RemovedBody539_14

def RemovedBody539_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody539_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody539_19 : StackLang.HolProg 64 :=
.seq RemovedBody539_17 RemovedBody539_18

def RemovedBody539_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody539_19 RemovedBody539_20

def RemovedBody539_22 : StackLang.HolProg 64 :=
.seq RemovedBody539_16 RemovedBody539_21

def RemovedBody539_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody539_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 3

def RemovedBody539_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody539_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody539_32 : StackLang.HolProg 64 :=
.seq RemovedBody539_30 RemovedBody539_31

def RemovedBody539_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody539_34 : StackLang.HolProg 64 :=
.seq RemovedBody539_32 RemovedBody539_33

def RemovedBody539_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_36 : StackLang.HolProg 64 :=
.seq RemovedBody539_34 RemovedBody539_35

def RemovedBody539_37 : StackLang.HolProg 64 :=
.seq RemovedBody539_29 RemovedBody539_36

def RemovedBody539_38 : StackLang.HolProg 64 :=
.seq RemovedBody539_28 RemovedBody539_37

def RemovedBody539_39 : StackLang.HolProg 64 :=
.seq RemovedBody539_27 RemovedBody539_38

def RemovedBody539_40 : StackLang.HolProg 64 :=
.seq RemovedBody539_26 RemovedBody539_39

def RemovedBody539_41 : StackLang.HolProg 64 :=
.seq RemovedBody539_25 RemovedBody539_40

def RemovedBody539_42 : StackLang.HolProg 64 :=
.seq RemovedBody539_24 RemovedBody539_41

def RemovedBody539_43 : StackLang.HolProg 64 :=
.seq RemovedBody539_23 RemovedBody539_42

def RemovedBody539_44 : StackLang.HolProg 64 :=
.seq RemovedBody539_22 RemovedBody539_43

def RemovedBody539_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_52 : StackLang.HolProg 64 :=
.seq RemovedBody539_50 RemovedBody539_51

def RemovedBody539_53 : StackLang.HolProg 64 :=
.seq RemovedBody539_49 RemovedBody539_52

def RemovedBody539_54 : StackLang.HolProg 64 :=
.seq RemovedBody539_48 RemovedBody539_53

def RemovedBody539_55 : StackLang.HolProg 64 :=
.seq RemovedBody539_47 RemovedBody539_54

def RemovedBody539_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody539_58 : StackLang.HolProg 64 :=
.seq RemovedBody539_56 RemovedBody539_57

def RemovedBody539_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody539_55, 0, 539, 2)) (Sum.inl 470) (some (RemovedBody539_58, 539, 3))

def RemovedBody539_60 : StackLang.HolProg 64 :=
.seq RemovedBody539_46 RemovedBody539_59

def RemovedBody539_61 : StackLang.HolProg 64 :=
.seq RemovedBody539_45 RemovedBody539_60

def RemovedBody539_62 : StackLang.HolProg 64 :=
.seq RemovedBody539_44 RemovedBody539_61

def RemovedBody539_63 : StackLang.HolProg 64 :=
.seq RemovedBody539_15 RemovedBody539_62

def RemovedBody539_64 : StackLang.HolProg 64 :=
.seq RemovedBody539_12 RemovedBody539_63

def RemovedBody539_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody539_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody539_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody539_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody539_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody539_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 2#64)

def RemovedBody539_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody539_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody539_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_78 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody539_79 : StackLang.HolProg 64 :=
.seq RemovedBody539_77 RemovedBody539_78

def RemovedBody539_80 : StackLang.HolProg 64 :=
.seq RemovedBody539_76 RemovedBody539_79

def RemovedBody539_81 : StackLang.HolProg 64 :=
.seq RemovedBody539_75 RemovedBody539_80

def RemovedBody539_82 : StackLang.HolProg 64 :=
.seq RemovedBody539_74 RemovedBody539_81

def RemovedBody539_83 : StackLang.HolProg 64 :=
.seq RemovedBody539_73 RemovedBody539_82

def RemovedBody539_84 : StackLang.HolProg 64 :=
.seq RemovedBody539_72 RemovedBody539_83

def RemovedBody539_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody539_84 RemovedBody539_85

def RemovedBody539_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody539_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1788#64)

def RemovedBody539_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_95 : StackLang.HolProg 64 :=
.seq RemovedBody539_93 RemovedBody539_94

def RemovedBody539_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody539_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody539_99 : StackLang.HolProg 64 :=
.seq RemovedBody539_97 RemovedBody539_98

def RemovedBody539_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_101 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody539_99 RemovedBody539_100

def RemovedBody539_102 : StackLang.HolProg 64 :=
.seq RemovedBody539_96 RemovedBody539_101

def RemovedBody539_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody539_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 5

def RemovedBody539_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody539_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody539_112 : StackLang.HolProg 64 :=
.seq RemovedBody539_110 RemovedBody539_111

def RemovedBody539_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody539_114 : StackLang.HolProg 64 :=
.seq RemovedBody539_112 RemovedBody539_113

def RemovedBody539_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_116 : StackLang.HolProg 64 :=
.seq RemovedBody539_114 RemovedBody539_115

def RemovedBody539_117 : StackLang.HolProg 64 :=
.seq RemovedBody539_109 RemovedBody539_116

def RemovedBody539_118 : StackLang.HolProg 64 :=
.seq RemovedBody539_108 RemovedBody539_117

def RemovedBody539_119 : StackLang.HolProg 64 :=
.seq RemovedBody539_107 RemovedBody539_118

def RemovedBody539_120 : StackLang.HolProg 64 :=
.seq RemovedBody539_106 RemovedBody539_119

def RemovedBody539_121 : StackLang.HolProg 64 :=
.seq RemovedBody539_105 RemovedBody539_120

def RemovedBody539_122 : StackLang.HolProg 64 :=
.seq RemovedBody539_104 RemovedBody539_121

def RemovedBody539_123 : StackLang.HolProg 64 :=
.seq RemovedBody539_103 RemovedBody539_122

def RemovedBody539_124 : StackLang.HolProg 64 :=
.seq RemovedBody539_102 RemovedBody539_123

def RemovedBody539_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_132 : StackLang.HolProg 64 :=
.seq RemovedBody539_130 RemovedBody539_131

def RemovedBody539_133 : StackLang.HolProg 64 :=
.seq RemovedBody539_129 RemovedBody539_132

def RemovedBody539_134 : StackLang.HolProg 64 :=
.seq RemovedBody539_128 RemovedBody539_133

def RemovedBody539_135 : StackLang.HolProg 64 :=
.seq RemovedBody539_127 RemovedBody539_134

def RemovedBody539_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody539_138 : StackLang.HolProg 64 :=
.seq RemovedBody539_136 RemovedBody539_137

def RemovedBody539_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody539_135, 0, 539, 4)) (Sum.inl 538) (some (RemovedBody539_138, 539, 5))

def RemovedBody539_140 : StackLang.HolProg 64 :=
.seq RemovedBody539_126 RemovedBody539_139

def RemovedBody539_141 : StackLang.HolProg 64 :=
.seq RemovedBody539_125 RemovedBody539_140

def RemovedBody539_142 : StackLang.HolProg 64 :=
.seq RemovedBody539_124 RemovedBody539_141

def RemovedBody539_143 : StackLang.HolProg 64 :=
.seq RemovedBody539_95 RemovedBody539_142

def RemovedBody539_144 : StackLang.HolProg 64 :=
.seq RemovedBody539_92 RemovedBody539_143

def RemovedBody539_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody539_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1789#64)

def RemovedBody539_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_151 : StackLang.HolProg 64 :=
.seq RemovedBody539_149 RemovedBody539_150

def RemovedBody539_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody539_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody539_155 : StackLang.HolProg 64 :=
.seq RemovedBody539_153 RemovedBody539_154

def RemovedBody539_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody539_155 RemovedBody539_156

def RemovedBody539_158 : StackLang.HolProg 64 :=
.seq RemovedBody539_152 RemovedBody539_157

def RemovedBody539_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody539_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody539_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 539 7

def RemovedBody539_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody539_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody539_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody539_168 : StackLang.HolProg 64 :=
.seq RemovedBody539_166 RemovedBody539_167

def RemovedBody539_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody539_170 : StackLang.HolProg 64 :=
.seq RemovedBody539_168 RemovedBody539_169

def RemovedBody539_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_172 : StackLang.HolProg 64 :=
.seq RemovedBody539_170 RemovedBody539_171

def RemovedBody539_173 : StackLang.HolProg 64 :=
.seq RemovedBody539_165 RemovedBody539_172

def RemovedBody539_174 : StackLang.HolProg 64 :=
.seq RemovedBody539_164 RemovedBody539_173

def RemovedBody539_175 : StackLang.HolProg 64 :=
.seq RemovedBody539_163 RemovedBody539_174

def RemovedBody539_176 : StackLang.HolProg 64 :=
.seq RemovedBody539_162 RemovedBody539_175

def RemovedBody539_177 : StackLang.HolProg 64 :=
.seq RemovedBody539_161 RemovedBody539_176

def RemovedBody539_178 : StackLang.HolProg 64 :=
.seq RemovedBody539_160 RemovedBody539_177

def RemovedBody539_179 : StackLang.HolProg 64 :=
.seq RemovedBody539_159 RemovedBody539_178

def RemovedBody539_180 : StackLang.HolProg 64 :=
.seq RemovedBody539_158 RemovedBody539_179

def RemovedBody539_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody539_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_188 : StackLang.HolProg 64 :=
.seq RemovedBody539_186 RemovedBody539_187

def RemovedBody539_189 : StackLang.HolProg 64 :=
.seq RemovedBody539_185 RemovedBody539_188

def RemovedBody539_190 : StackLang.HolProg 64 :=
.seq RemovedBody539_184 RemovedBody539_189

def RemovedBody539_191 : StackLang.HolProg 64 :=
.seq RemovedBody539_183 RemovedBody539_190

def RemovedBody539_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody539_193 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody539_194 : StackLang.HolProg 64 :=
.seq RemovedBody539_192 RemovedBody539_193

def RemovedBody539_195 : StackLang.HolProg 64 :=
.call (some (RemovedBody539_191, 0, 539, 6)) (Sum.inl 490) (some (RemovedBody539_194, 539, 7))

def RemovedBody539_196 : StackLang.HolProg 64 :=
.seq RemovedBody539_182 RemovedBody539_195

def RemovedBody539_197 : StackLang.HolProg 64 :=
.seq RemovedBody539_181 RemovedBody539_196

def RemovedBody539_198 : StackLang.HolProg 64 :=
.seq RemovedBody539_180 RemovedBody539_197

def RemovedBody539_199 : StackLang.HolProg 64 :=
.seq RemovedBody539_151 RemovedBody539_198

def RemovedBody539_200 : StackLang.HolProg 64 :=
.seq RemovedBody539_148 RemovedBody539_199

def RemovedBody539_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody539_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody539_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody539_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody539_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody539_206 : StackLang.HolProg 64 :=
.seq RemovedBody539_204 RemovedBody539_205

def RemovedBody539_207 : StackLang.HolProg 64 :=
.seq RemovedBody539_203 RemovedBody539_206

def RemovedBody539_208 : StackLang.HolProg 64 :=
.seq RemovedBody539_202 RemovedBody539_207

def RemovedBody539_209 : StackLang.HolProg 64 :=
.seq RemovedBody539_201 RemovedBody539_208

def RemovedBody539_210 : StackLang.HolProg 64 :=
.seq RemovedBody539_200 RemovedBody539_209

def RemovedBody539_211 : StackLang.HolProg 64 :=
.seq RemovedBody539_147 RemovedBody539_210

def RemovedBody539_212 : StackLang.HolProg 64 :=
.seq RemovedBody539_146 RemovedBody539_211

def RemovedBody539_213 : StackLang.HolProg 64 :=
.seq RemovedBody539_145 RemovedBody539_212

def RemovedBody539_214 : StackLang.HolProg 64 :=
.seq RemovedBody539_144 RemovedBody539_213

def RemovedBody539_215 : StackLang.HolProg 64 :=
.seq RemovedBody539_91 RemovedBody539_214

def RemovedBody539_216 : StackLang.HolProg 64 :=
.seq RemovedBody539_90 RemovedBody539_215

def RemovedBody539_217 : StackLang.HolProg 64 :=
.seq RemovedBody539_89 RemovedBody539_216

def RemovedBody539_218 : StackLang.HolProg 64 :=
.seq RemovedBody539_88 RemovedBody539_217

def RemovedBody539_219 : StackLang.HolProg 64 :=
.seq RemovedBody539_87 RemovedBody539_218

def RemovedBody539_220 : StackLang.HolProg 64 :=
.seq RemovedBody539_86 RemovedBody539_219

def RemovedBody539_221 : StackLang.HolProg 64 :=
.seq RemovedBody539_71 RemovedBody539_220

def RemovedBody539_222 : StackLang.HolProg 64 :=
.seq RemovedBody539_70 RemovedBody539_221

def RemovedBody539_223 : StackLang.HolProg 64 :=
.seq RemovedBody539_69 RemovedBody539_222

def RemovedBody539_224 : StackLang.HolProg 64 :=
.seq RemovedBody539_68 RemovedBody539_223

def RemovedBody539_225 : StackLang.HolProg 64 :=
.seq RemovedBody539_67 RemovedBody539_224

def RemovedBody539_226 : StackLang.HolProg 64 :=
.seq RemovedBody539_66 RemovedBody539_225

def RemovedBody539_227 : StackLang.HolProg 64 :=
.seq RemovedBody539_65 RemovedBody539_226

def RemovedBody539_228 : StackLang.HolProg 64 :=
.seq RemovedBody539_64 RemovedBody539_227

def RemovedBody539_229 : StackLang.HolProg 64 :=
.seq RemovedBody539_11 RemovedBody539_228

def RemovedBody539_230 : StackLang.HolProg 64 :=
.seq RemovedBody539_8 RemovedBody539_229

def RemovedBody539_231 : StackLang.HolProg 64 :=
.seq RemovedBody539_7 RemovedBody539_230

def RemovedBody539_232 : StackLang.HolProg 64 :=
.seq RemovedBody539_6 RemovedBody539_231

def Removed539 : Nat × StackLang.HolProg 64 := (539, RemovedBody539_232)
theorem Removed539_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc539 = Removed539 := by
  kernel_rfl
#print axioms Removed539_eq
end InitECandidate.Proofs.BackendStages
