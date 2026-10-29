import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc236
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody236_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody236_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody236_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody236_3 : StackLang.HolProg 64 :=
.seq RemovedBody236_1 RemovedBody236_2

def RemovedBody236_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody236_3 RemovedBody236_4

def RemovedBody236_6 : StackLang.HolProg 64 :=
.seq RemovedBody236_0 RemovedBody236_5

def RemovedBody236_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody236_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody236_9 : StackLang.HolProg 64 :=
.seq RemovedBody236_7 RemovedBody236_8

def RemovedBody236_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody236_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody236_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody236_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551512#64))

def RemovedBody236_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody236_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody236_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_19 : StackLang.HolProg 64 :=
.seq RemovedBody236_17 RemovedBody236_18

def RemovedBody236_20 : StackLang.HolProg 64 :=
.seq RemovedBody236_16 RemovedBody236_19

def RemovedBody236_21 : StackLang.HolProg 64 :=
.seq RemovedBody236_15 RemovedBody236_20

def RemovedBody236_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 444#64)

def RemovedBody236_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_25 : StackLang.HolProg 64 :=
.seq RemovedBody236_23 RemovedBody236_24

def RemovedBody236_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody236_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody236_29 : StackLang.HolProg 64 :=
.seq RemovedBody236_27 RemovedBody236_28

def RemovedBody236_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody236_29 RemovedBody236_30

def RemovedBody236_32 : StackLang.HolProg 64 :=
.seq RemovedBody236_26 RemovedBody236_31

def RemovedBody236_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody236_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 3

def RemovedBody236_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody236_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody236_42 : StackLang.HolProg 64 :=
.seq RemovedBody236_40 RemovedBody236_41

def RemovedBody236_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody236_44 : StackLang.HolProg 64 :=
.seq RemovedBody236_42 RemovedBody236_43

def RemovedBody236_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_46 : StackLang.HolProg 64 :=
.seq RemovedBody236_44 RemovedBody236_45

def RemovedBody236_47 : StackLang.HolProg 64 :=
.seq RemovedBody236_39 RemovedBody236_46

def RemovedBody236_48 : StackLang.HolProg 64 :=
.seq RemovedBody236_38 RemovedBody236_47

def RemovedBody236_49 : StackLang.HolProg 64 :=
.seq RemovedBody236_37 RemovedBody236_48

def RemovedBody236_50 : StackLang.HolProg 64 :=
.seq RemovedBody236_36 RemovedBody236_49

def RemovedBody236_51 : StackLang.HolProg 64 :=
.seq RemovedBody236_35 RemovedBody236_50

def RemovedBody236_52 : StackLang.HolProg 64 :=
.seq RemovedBody236_34 RemovedBody236_51

def RemovedBody236_53 : StackLang.HolProg 64 :=
.seq RemovedBody236_33 RemovedBody236_52

def RemovedBody236_54 : StackLang.HolProg 64 :=
.seq RemovedBody236_32 RemovedBody236_53

def RemovedBody236_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_64 : StackLang.HolProg 64 :=
.seq RemovedBody236_62 RemovedBody236_63

def RemovedBody236_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_67 : StackLang.HolProg 64 :=
.seq RemovedBody236_65 RemovedBody236_66

def RemovedBody236_68 : StackLang.HolProg 64 :=
.seq RemovedBody236_64 RemovedBody236_67

def RemovedBody236_69 : StackLang.HolProg 64 :=
.seq RemovedBody236_61 RemovedBody236_68

def RemovedBody236_70 : StackLang.HolProg 64 :=
.seq RemovedBody236_60 RemovedBody236_69

def RemovedBody236_71 : StackLang.HolProg 64 :=
.seq RemovedBody236_59 RemovedBody236_70

def RemovedBody236_72 : StackLang.HolProg 64 :=
.seq RemovedBody236_58 RemovedBody236_71

def RemovedBody236_73 : StackLang.HolProg 64 :=
.seq RemovedBody236_57 RemovedBody236_72

def RemovedBody236_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_77 : StackLang.HolProg 64 :=
.seq RemovedBody236_75 RemovedBody236_76

def RemovedBody236_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_80 : StackLang.HolProg 64 :=
.seq RemovedBody236_78 RemovedBody236_79

def RemovedBody236_81 : StackLang.HolProg 64 :=
.seq RemovedBody236_77 RemovedBody236_80

def RemovedBody236_82 : StackLang.HolProg 64 :=
.seq RemovedBody236_74 RemovedBody236_81

def RemovedBody236_83 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody236_84 : StackLang.HolProg 64 :=
.seq RemovedBody236_82 RemovedBody236_83

def RemovedBody236_85 : StackLang.HolProg 64 :=
.call (some (RemovedBody236_73, 0, 236, 2)) (Sum.inl 78) (some (RemovedBody236_84, 236, 3))

def RemovedBody236_86 : StackLang.HolProg 64 :=
.seq RemovedBody236_56 RemovedBody236_85

def RemovedBody236_87 : StackLang.HolProg 64 :=
.seq RemovedBody236_55 RemovedBody236_86

def RemovedBody236_88 : StackLang.HolProg 64 :=
.seq RemovedBody236_54 RemovedBody236_87

def RemovedBody236_89 : StackLang.HolProg 64 :=
.seq RemovedBody236_25 RemovedBody236_88

def RemovedBody236_90 : StackLang.HolProg 64 :=
.seq RemovedBody236_22 RemovedBody236_89

def RemovedBody236_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody236_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody236_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody236_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody236_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def RemovedBody236_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 445#64)

def RemovedBody236_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_100 : StackLang.HolProg 64 :=
.seq RemovedBody236_98 RemovedBody236_99

def RemovedBody236_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody236_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody236_104 : StackLang.HolProg 64 :=
.seq RemovedBody236_102 RemovedBody236_103

def RemovedBody236_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_106 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody236_104 RemovedBody236_105

def RemovedBody236_107 : StackLang.HolProg 64 :=
.seq RemovedBody236_101 RemovedBody236_106

def RemovedBody236_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody236_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 5

def RemovedBody236_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody236_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody236_117 : StackLang.HolProg 64 :=
.seq RemovedBody236_115 RemovedBody236_116

def RemovedBody236_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody236_119 : StackLang.HolProg 64 :=
.seq RemovedBody236_117 RemovedBody236_118

def RemovedBody236_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_121 : StackLang.HolProg 64 :=
.seq RemovedBody236_119 RemovedBody236_120

def RemovedBody236_122 : StackLang.HolProg 64 :=
.seq RemovedBody236_114 RemovedBody236_121

def RemovedBody236_123 : StackLang.HolProg 64 :=
.seq RemovedBody236_113 RemovedBody236_122

def RemovedBody236_124 : StackLang.HolProg 64 :=
.seq RemovedBody236_112 RemovedBody236_123

def RemovedBody236_125 : StackLang.HolProg 64 :=
.seq RemovedBody236_111 RemovedBody236_124

def RemovedBody236_126 : StackLang.HolProg 64 :=
.seq RemovedBody236_110 RemovedBody236_125

def RemovedBody236_127 : StackLang.HolProg 64 :=
.seq RemovedBody236_109 RemovedBody236_126

def RemovedBody236_128 : StackLang.HolProg 64 :=
.seq RemovedBody236_108 RemovedBody236_127

def RemovedBody236_129 : StackLang.HolProg 64 :=
.seq RemovedBody236_107 RemovedBody236_128

def RemovedBody236_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_138 : StackLang.HolProg 64 :=
.seq RemovedBody236_136 RemovedBody236_137

def RemovedBody236_139 : StackLang.HolProg 64 :=
.seq RemovedBody236_135 RemovedBody236_138

def RemovedBody236_140 : StackLang.HolProg 64 :=
.seq RemovedBody236_134 RemovedBody236_139

def RemovedBody236_141 : StackLang.HolProg 64 :=
.seq RemovedBody236_133 RemovedBody236_140

def RemovedBody236_142 : StackLang.HolProg 64 :=
.seq RemovedBody236_132 RemovedBody236_141

def RemovedBody236_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody236_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_145 : StackLang.HolProg 64 :=
.seq RemovedBody236_143 RemovedBody236_144

def RemovedBody236_146 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody236_147 : StackLang.HolProg 64 :=
.seq RemovedBody236_145 RemovedBody236_146

def RemovedBody236_148 : StackLang.HolProg 64 :=
.call (some (RemovedBody236_142, 0, 236, 4)) (Sum.inl 87) (some (RemovedBody236_147, 236, 5))

def RemovedBody236_149 : StackLang.HolProg 64 :=
.seq RemovedBody236_131 RemovedBody236_148

def RemovedBody236_150 : StackLang.HolProg 64 :=
.seq RemovedBody236_130 RemovedBody236_149

def RemovedBody236_151 : StackLang.HolProg 64 :=
.seq RemovedBody236_129 RemovedBody236_150

def RemovedBody236_152 : StackLang.HolProg 64 :=
.seq RemovedBody236_100 RemovedBody236_151

def RemovedBody236_153 : StackLang.HolProg 64 :=
.seq RemovedBody236_97 RemovedBody236_152

def RemovedBody236_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody236_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody236_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody236_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody236_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody236_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551512#64))

def RemovedBody236_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 446#64)

def RemovedBody236_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_164 : StackLang.HolProg 64 :=
.seq RemovedBody236_162 RemovedBody236_163

def RemovedBody236_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody236_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody236_168 : StackLang.HolProg 64 :=
.seq RemovedBody236_166 RemovedBody236_167

def RemovedBody236_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_170 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody236_168 RemovedBody236_169

def RemovedBody236_171 : StackLang.HolProg 64 :=
.seq RemovedBody236_165 RemovedBody236_170

def RemovedBody236_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody236_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody236_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 236 7

def RemovedBody236_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody236_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody236_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody236_181 : StackLang.HolProg 64 :=
.seq RemovedBody236_179 RemovedBody236_180

def RemovedBody236_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody236_183 : StackLang.HolProg 64 :=
.seq RemovedBody236_181 RemovedBody236_182

def RemovedBody236_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_185 : StackLang.HolProg 64 :=
.seq RemovedBody236_183 RemovedBody236_184

def RemovedBody236_186 : StackLang.HolProg 64 :=
.seq RemovedBody236_178 RemovedBody236_185

def RemovedBody236_187 : StackLang.HolProg 64 :=
.seq RemovedBody236_177 RemovedBody236_186

def RemovedBody236_188 : StackLang.HolProg 64 :=
.seq RemovedBody236_176 RemovedBody236_187

def RemovedBody236_189 : StackLang.HolProg 64 :=
.seq RemovedBody236_175 RemovedBody236_188

def RemovedBody236_190 : StackLang.HolProg 64 :=
.seq RemovedBody236_174 RemovedBody236_189

def RemovedBody236_191 : StackLang.HolProg 64 :=
.seq RemovedBody236_173 RemovedBody236_190

def RemovedBody236_192 : StackLang.HolProg 64 :=
.seq RemovedBody236_172 RemovedBody236_191

def RemovedBody236_193 : StackLang.HolProg 64 :=
.seq RemovedBody236_171 RemovedBody236_192

def RemovedBody236_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody236_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody236_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody236_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody236_201 : StackLang.HolProg 64 :=
.seq RemovedBody236_199 RemovedBody236_200

def RemovedBody236_202 : StackLang.HolProg 64 :=
.seq RemovedBody236_198 RemovedBody236_201

def RemovedBody236_203 : StackLang.HolProg 64 :=
.seq RemovedBody236_197 RemovedBody236_202

def RemovedBody236_204 : StackLang.HolProg 64 :=
.seq RemovedBody236_196 RemovedBody236_203

def RemovedBody236_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody236_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody236_207 : StackLang.HolProg 64 :=
.seq RemovedBody236_205 RemovedBody236_206

def RemovedBody236_208 : StackLang.HolProg 64 :=
.call (some (RemovedBody236_204, 0, 236, 6)) (Sum.inl 154) (some (RemovedBody236_207, 236, 7))

def RemovedBody236_209 : StackLang.HolProg 64 :=
.seq RemovedBody236_195 RemovedBody236_208

def RemovedBody236_210 : StackLang.HolProg 64 :=
.seq RemovedBody236_194 RemovedBody236_209

def RemovedBody236_211 : StackLang.HolProg 64 :=
.seq RemovedBody236_193 RemovedBody236_210

def RemovedBody236_212 : StackLang.HolProg 64 :=
.seq RemovedBody236_164 RemovedBody236_211

def RemovedBody236_213 : StackLang.HolProg 64 :=
.seq RemovedBody236_161 RemovedBody236_212

def RemovedBody236_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody236_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody236_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody236_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody236_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody236_219 : StackLang.HolProg 64 :=
.seq RemovedBody236_217 RemovedBody236_218

def RemovedBody236_220 : StackLang.HolProg 64 :=
.seq RemovedBody236_216 RemovedBody236_219

def RemovedBody236_221 : StackLang.HolProg 64 :=
.seq RemovedBody236_215 RemovedBody236_220

def RemovedBody236_222 : StackLang.HolProg 64 :=
.seq RemovedBody236_214 RemovedBody236_221

def RemovedBody236_223 : StackLang.HolProg 64 :=
.seq RemovedBody236_213 RemovedBody236_222

def RemovedBody236_224 : StackLang.HolProg 64 :=
.seq RemovedBody236_160 RemovedBody236_223

def RemovedBody236_225 : StackLang.HolProg 64 :=
.seq RemovedBody236_159 RemovedBody236_224

def RemovedBody236_226 : StackLang.HolProg 64 :=
.seq RemovedBody236_158 RemovedBody236_225

def RemovedBody236_227 : StackLang.HolProg 64 :=
.seq RemovedBody236_157 RemovedBody236_226

def RemovedBody236_228 : StackLang.HolProg 64 :=
.seq RemovedBody236_156 RemovedBody236_227

def RemovedBody236_229 : StackLang.HolProg 64 :=
.seq RemovedBody236_155 RemovedBody236_228

def RemovedBody236_230 : StackLang.HolProg 64 :=
.seq RemovedBody236_154 RemovedBody236_229

def RemovedBody236_231 : StackLang.HolProg 64 :=
.seq RemovedBody236_153 RemovedBody236_230

def RemovedBody236_232 : StackLang.HolProg 64 :=
.seq RemovedBody236_96 RemovedBody236_231

def RemovedBody236_233 : StackLang.HolProg 64 :=
.seq RemovedBody236_95 RemovedBody236_232

def RemovedBody236_234 : StackLang.HolProg 64 :=
.seq RemovedBody236_94 RemovedBody236_233

def RemovedBody236_235 : StackLang.HolProg 64 :=
.seq RemovedBody236_93 RemovedBody236_234

def RemovedBody236_236 : StackLang.HolProg 64 :=
.seq RemovedBody236_92 RemovedBody236_235

def RemovedBody236_237 : StackLang.HolProg 64 :=
.seq RemovedBody236_91 RemovedBody236_236

def RemovedBody236_238 : StackLang.HolProg 64 :=
.seq RemovedBody236_90 RemovedBody236_237

def RemovedBody236_239 : StackLang.HolProg 64 :=
.seq RemovedBody236_21 RemovedBody236_238

def RemovedBody236_240 : StackLang.HolProg 64 :=
.seq RemovedBody236_14 RemovedBody236_239

def RemovedBody236_241 : StackLang.HolProg 64 :=
.seq RemovedBody236_13 RemovedBody236_240

def RemovedBody236_242 : StackLang.HolProg 64 :=
.seq RemovedBody236_12 RemovedBody236_241

def RemovedBody236_243 : StackLang.HolProg 64 :=
.seq RemovedBody236_11 RemovedBody236_242

def RemovedBody236_244 : StackLang.HolProg 64 :=
.seq RemovedBody236_10 RemovedBody236_243

def RemovedBody236_245 : StackLang.HolProg 64 :=
.seq RemovedBody236_9 RemovedBody236_244

def RemovedBody236_246 : StackLang.HolProg 64 :=
.seq RemovedBody236_6 RemovedBody236_245

def Removed236 : Nat × StackLang.HolProg 64 := (236, RemovedBody236_246)
theorem Removed236_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc236 = Removed236 := by
  kernel_rfl
#print axioms Removed236_eq
end InitECandidate.Proofs.BackendStages
