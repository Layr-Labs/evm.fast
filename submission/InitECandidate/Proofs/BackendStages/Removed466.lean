import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc466
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody466_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody466_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody466_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody466_3 : StackLang.HolProg 64 :=
.seq RemovedBody466_1 RemovedBody466_2

def RemovedBody466_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody466_3 RemovedBody466_4

def RemovedBody466_6 : StackLang.HolProg 64 :=
.seq RemovedBody466_0 RemovedBody466_5

def RemovedBody466_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody466_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody466_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody466_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody466_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody466_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 240#64)))

def RemovedBody466_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody466_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody466_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_18 : StackLang.HolProg 64 :=
.seq RemovedBody466_16 RemovedBody466_17

def RemovedBody466_19 : StackLang.HolProg 64 :=
.seq RemovedBody466_15 RemovedBody466_18

def RemovedBody466_20 : StackLang.HolProg 64 :=
.seq RemovedBody466_14 RemovedBody466_19

def RemovedBody466_21 : StackLang.HolProg 64 :=
.seq RemovedBody466_13 RemovedBody466_20

def RemovedBody466_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1490#64)

def RemovedBody466_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_25 : StackLang.HolProg 64 :=
.seq RemovedBody466_23 RemovedBody466_24

def RemovedBody466_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody466_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody466_29 : StackLang.HolProg 64 :=
.seq RemovedBody466_27 RemovedBody466_28

def RemovedBody466_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody466_29 RemovedBody466_30

def RemovedBody466_32 : StackLang.HolProg 64 :=
.seq RemovedBody466_26 RemovedBody466_31

def RemovedBody466_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody466_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 3

def RemovedBody466_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody466_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody466_42 : StackLang.HolProg 64 :=
.seq RemovedBody466_40 RemovedBody466_41

def RemovedBody466_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody466_44 : StackLang.HolProg 64 :=
.seq RemovedBody466_42 RemovedBody466_43

def RemovedBody466_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_46 : StackLang.HolProg 64 :=
.seq RemovedBody466_44 RemovedBody466_45

def RemovedBody466_47 : StackLang.HolProg 64 :=
.seq RemovedBody466_39 RemovedBody466_46

def RemovedBody466_48 : StackLang.HolProg 64 :=
.seq RemovedBody466_38 RemovedBody466_47

def RemovedBody466_49 : StackLang.HolProg 64 :=
.seq RemovedBody466_37 RemovedBody466_48

def RemovedBody466_50 : StackLang.HolProg 64 :=
.seq RemovedBody466_36 RemovedBody466_49

def RemovedBody466_51 : StackLang.HolProg 64 :=
.seq RemovedBody466_35 RemovedBody466_50

def RemovedBody466_52 : StackLang.HolProg 64 :=
.seq RemovedBody466_34 RemovedBody466_51

def RemovedBody466_53 : StackLang.HolProg 64 :=
.seq RemovedBody466_33 RemovedBody466_52

def RemovedBody466_54 : StackLang.HolProg 64 :=
.seq RemovedBody466_32 RemovedBody466_53

def RemovedBody466_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_64 : StackLang.HolProg 64 :=
.seq RemovedBody466_62 RemovedBody466_63

def RemovedBody466_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_66 : StackLang.HolProg 64 :=
.seq RemovedBody466_64 RemovedBody466_65

def RemovedBody466_67 : StackLang.HolProg 64 :=
.seq RemovedBody466_61 RemovedBody466_66

def RemovedBody466_68 : StackLang.HolProg 64 :=
.seq RemovedBody466_60 RemovedBody466_67

def RemovedBody466_69 : StackLang.HolProg 64 :=
.seq RemovedBody466_59 RemovedBody466_68

def RemovedBody466_70 : StackLang.HolProg 64 :=
.seq RemovedBody466_58 RemovedBody466_69

def RemovedBody466_71 : StackLang.HolProg 64 :=
.seq RemovedBody466_57 RemovedBody466_70

def RemovedBody466_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_75 : StackLang.HolProg 64 :=
.seq RemovedBody466_73 RemovedBody466_74

def RemovedBody466_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_77 : StackLang.HolProg 64 :=
.seq RemovedBody466_75 RemovedBody466_76

def RemovedBody466_78 : StackLang.HolProg 64 :=
.seq RemovedBody466_72 RemovedBody466_77

def RemovedBody466_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody466_80 : StackLang.HolProg 64 :=
.seq RemovedBody466_78 RemovedBody466_79

def RemovedBody466_81 : StackLang.HolProg 64 :=
.call (some (RemovedBody466_71, 0, 466, 2)) (Sum.inl 88) (some (RemovedBody466_80, 466, 3))

def RemovedBody466_82 : StackLang.HolProg 64 :=
.seq RemovedBody466_56 RemovedBody466_81

def RemovedBody466_83 : StackLang.HolProg 64 :=
.seq RemovedBody466_55 RemovedBody466_82

def RemovedBody466_84 : StackLang.HolProg 64 :=
.seq RemovedBody466_54 RemovedBody466_83

def RemovedBody466_85 : StackLang.HolProg 64 :=
.seq RemovedBody466_25 RemovedBody466_84

def RemovedBody466_86 : StackLang.HolProg 64 :=
.seq RemovedBody466_22 RemovedBody466_85

def RemovedBody466_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody466_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody466_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1491#64)

def RemovedBody466_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_94 : StackLang.HolProg 64 :=
.seq RemovedBody466_92 RemovedBody466_93

def RemovedBody466_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody466_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody466_98 : StackLang.HolProg 64 :=
.seq RemovedBody466_96 RemovedBody466_97

def RemovedBody466_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_100 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody466_98 RemovedBody466_99

def RemovedBody466_101 : StackLang.HolProg 64 :=
.seq RemovedBody466_95 RemovedBody466_100

def RemovedBody466_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody466_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 5

def RemovedBody466_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody466_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody466_111 : StackLang.HolProg 64 :=
.seq RemovedBody466_109 RemovedBody466_110

def RemovedBody466_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody466_113 : StackLang.HolProg 64 :=
.seq RemovedBody466_111 RemovedBody466_112

def RemovedBody466_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_115 : StackLang.HolProg 64 :=
.seq RemovedBody466_113 RemovedBody466_114

def RemovedBody466_116 : StackLang.HolProg 64 :=
.seq RemovedBody466_108 RemovedBody466_115

def RemovedBody466_117 : StackLang.HolProg 64 :=
.seq RemovedBody466_107 RemovedBody466_116

def RemovedBody466_118 : StackLang.HolProg 64 :=
.seq RemovedBody466_106 RemovedBody466_117

def RemovedBody466_119 : StackLang.HolProg 64 :=
.seq RemovedBody466_105 RemovedBody466_118

def RemovedBody466_120 : StackLang.HolProg 64 :=
.seq RemovedBody466_104 RemovedBody466_119

def RemovedBody466_121 : StackLang.HolProg 64 :=
.seq RemovedBody466_103 RemovedBody466_120

def RemovedBody466_122 : StackLang.HolProg 64 :=
.seq RemovedBody466_102 RemovedBody466_121

def RemovedBody466_123 : StackLang.HolProg 64 :=
.seq RemovedBody466_101 RemovedBody466_122

def RemovedBody466_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_132 : StackLang.HolProg 64 :=
.seq RemovedBody466_130 RemovedBody466_131

def RemovedBody466_133 : StackLang.HolProg 64 :=
.seq RemovedBody466_129 RemovedBody466_132

def RemovedBody466_134 : StackLang.HolProg 64 :=
.seq RemovedBody466_128 RemovedBody466_133

def RemovedBody466_135 : StackLang.HolProg 64 :=
.seq RemovedBody466_127 RemovedBody466_134

def RemovedBody466_136 : StackLang.HolProg 64 :=
.seq RemovedBody466_126 RemovedBody466_135

def RemovedBody466_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_139 : StackLang.HolProg 64 :=
.seq RemovedBody466_137 RemovedBody466_138

def RemovedBody466_140 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody466_141 : StackLang.HolProg 64 :=
.seq RemovedBody466_139 RemovedBody466_140

def RemovedBody466_142 : StackLang.HolProg 64 :=
.call (some (RemovedBody466_136, 0, 466, 4)) (Sum.inl 89) (some (RemovedBody466_141, 466, 5))

def RemovedBody466_143 : StackLang.HolProg 64 :=
.seq RemovedBody466_125 RemovedBody466_142

def RemovedBody466_144 : StackLang.HolProg 64 :=
.seq RemovedBody466_124 RemovedBody466_143

def RemovedBody466_145 : StackLang.HolProg 64 :=
.seq RemovedBody466_123 RemovedBody466_144

def RemovedBody466_146 : StackLang.HolProg 64 :=
.seq RemovedBody466_94 RemovedBody466_145

def RemovedBody466_147 : StackLang.HolProg 64 :=
.seq RemovedBody466_91 RemovedBody466_146

def RemovedBody466_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody466_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 12#64)))

def RemovedBody466_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1492#64)

def RemovedBody466_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_155 : StackLang.HolProg 64 :=
.seq RemovedBody466_153 RemovedBody466_154

def RemovedBody466_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody466_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody466_159 : StackLang.HolProg 64 :=
.seq RemovedBody466_157 RemovedBody466_158

def RemovedBody466_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_161 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody466_159 RemovedBody466_160

def RemovedBody466_162 : StackLang.HolProg 64 :=
.seq RemovedBody466_156 RemovedBody466_161

def RemovedBody466_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody466_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody466_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 466 7

def RemovedBody466_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody466_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody466_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody466_172 : StackLang.HolProg 64 :=
.seq RemovedBody466_170 RemovedBody466_171

def RemovedBody466_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody466_174 : StackLang.HolProg 64 :=
.seq RemovedBody466_172 RemovedBody466_173

def RemovedBody466_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_176 : StackLang.HolProg 64 :=
.seq RemovedBody466_174 RemovedBody466_175

def RemovedBody466_177 : StackLang.HolProg 64 :=
.seq RemovedBody466_169 RemovedBody466_176

def RemovedBody466_178 : StackLang.HolProg 64 :=
.seq RemovedBody466_168 RemovedBody466_177

def RemovedBody466_179 : StackLang.HolProg 64 :=
.seq RemovedBody466_167 RemovedBody466_178

def RemovedBody466_180 : StackLang.HolProg 64 :=
.seq RemovedBody466_166 RemovedBody466_179

def RemovedBody466_181 : StackLang.HolProg 64 :=
.seq RemovedBody466_165 RemovedBody466_180

def RemovedBody466_182 : StackLang.HolProg 64 :=
.seq RemovedBody466_164 RemovedBody466_181

def RemovedBody466_183 : StackLang.HolProg 64 :=
.seq RemovedBody466_163 RemovedBody466_182

def RemovedBody466_184 : StackLang.HolProg 64 :=
.seq RemovedBody466_162 RemovedBody466_183

def RemovedBody466_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody466_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody466_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody466_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody466_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody466_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_193 : StackLang.HolProg 64 :=
.seq RemovedBody466_191 RemovedBody466_192

def RemovedBody466_194 : StackLang.HolProg 64 :=
.seq RemovedBody466_190 RemovedBody466_193

def RemovedBody466_195 : StackLang.HolProg 64 :=
.seq RemovedBody466_189 RemovedBody466_194

def RemovedBody466_196 : StackLang.HolProg 64 :=
.seq RemovedBody466_188 RemovedBody466_195

def RemovedBody466_197 : StackLang.HolProg 64 :=
.seq RemovedBody466_187 RemovedBody466_196

def RemovedBody466_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody466_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody466_200 : StackLang.HolProg 64 :=
.seq RemovedBody466_198 RemovedBody466_199

def RemovedBody466_201 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody466_202 : StackLang.HolProg 64 :=
.seq RemovedBody466_200 RemovedBody466_201

def RemovedBody466_203 : StackLang.HolProg 64 :=
.call (some (RemovedBody466_197, 0, 466, 6)) (Sum.inl 89) (some (RemovedBody466_202, 466, 7))

def RemovedBody466_204 : StackLang.HolProg 64 :=
.seq RemovedBody466_186 RemovedBody466_203

def RemovedBody466_205 : StackLang.HolProg 64 :=
.seq RemovedBody466_185 RemovedBody466_204

def RemovedBody466_206 : StackLang.HolProg 64 :=
.seq RemovedBody466_184 RemovedBody466_205

def RemovedBody466_207 : StackLang.HolProg 64 :=
.seq RemovedBody466_155 RemovedBody466_206

def RemovedBody466_208 : StackLang.HolProg 64 :=
.seq RemovedBody466_152 RemovedBody466_207

def RemovedBody466_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody466_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody466_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody466_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody466_213 : StackLang.HolProg 64 :=
.seq RemovedBody466_211 RemovedBody466_212

def RemovedBody466_214 : StackLang.HolProg 64 :=
.seq RemovedBody466_210 RemovedBody466_213

def RemovedBody466_215 : StackLang.HolProg 64 :=
.seq RemovedBody466_209 RemovedBody466_214

def RemovedBody466_216 : StackLang.HolProg 64 :=
.seq RemovedBody466_208 RemovedBody466_215

def RemovedBody466_217 : StackLang.HolProg 64 :=
.seq RemovedBody466_151 RemovedBody466_216

def RemovedBody466_218 : StackLang.HolProg 64 :=
.seq RemovedBody466_150 RemovedBody466_217

def RemovedBody466_219 : StackLang.HolProg 64 :=
.seq RemovedBody466_149 RemovedBody466_218

def RemovedBody466_220 : StackLang.HolProg 64 :=
.seq RemovedBody466_148 RemovedBody466_219

def RemovedBody466_221 : StackLang.HolProg 64 :=
.seq RemovedBody466_147 RemovedBody466_220

def RemovedBody466_222 : StackLang.HolProg 64 :=
.seq RemovedBody466_90 RemovedBody466_221

def RemovedBody466_223 : StackLang.HolProg 64 :=
.seq RemovedBody466_89 RemovedBody466_222

def RemovedBody466_224 : StackLang.HolProg 64 :=
.seq RemovedBody466_88 RemovedBody466_223

def RemovedBody466_225 : StackLang.HolProg 64 :=
.seq RemovedBody466_87 RemovedBody466_224

def RemovedBody466_226 : StackLang.HolProg 64 :=
.seq RemovedBody466_86 RemovedBody466_225

def RemovedBody466_227 : StackLang.HolProg 64 :=
.seq RemovedBody466_21 RemovedBody466_226

def RemovedBody466_228 : StackLang.HolProg 64 :=
.seq RemovedBody466_12 RemovedBody466_227

def RemovedBody466_229 : StackLang.HolProg 64 :=
.seq RemovedBody466_11 RemovedBody466_228

def RemovedBody466_230 : StackLang.HolProg 64 :=
.seq RemovedBody466_10 RemovedBody466_229

def RemovedBody466_231 : StackLang.HolProg 64 :=
.seq RemovedBody466_9 RemovedBody466_230

def RemovedBody466_232 : StackLang.HolProg 64 :=
.seq RemovedBody466_8 RemovedBody466_231

def RemovedBody466_233 : StackLang.HolProg 64 :=
.seq RemovedBody466_7 RemovedBody466_232

def RemovedBody466_234 : StackLang.HolProg 64 :=
.seq RemovedBody466_6 RemovedBody466_233

def Removed466 : Nat × StackLang.HolProg 64 := (466, RemovedBody466_234)
theorem Removed466_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc466 = Removed466 := by
  kernel_rfl
#print axioms Removed466_eq
end InitECandidate.Proofs.BackendStages
