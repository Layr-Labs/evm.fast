import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc836
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody836_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody836_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_3 : StackLang.HolProg 64 :=
.seq RemovedBody836_1 RemovedBody836_2

def RemovedBody836_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_3 RemovedBody836_4

def RemovedBody836_6 : StackLang.HolProg 64 :=
.seq RemovedBody836_0 RemovedBody836_5

def RemovedBody836_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody836_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody836_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody836_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def RemovedBody836_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody836_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 88#64))

def RemovedBody836_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 96#64))

def RemovedBody836_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551344#64))

def RemovedBody836_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 96#64)

def RemovedBody836_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody836_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody836_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_26 : StackLang.HolProg 64 :=
.seq RemovedBody836_24 RemovedBody836_25

def RemovedBody836_27 : StackLang.HolProg 64 :=
.seq RemovedBody836_23 RemovedBody836_26

def RemovedBody836_28 : StackLang.HolProg 64 :=
.seq RemovedBody836_22 RemovedBody836_27

def RemovedBody836_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4158#64)

def RemovedBody836_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_32 : StackLang.HolProg 64 :=
.seq RemovedBody836_30 RemovedBody836_31

def RemovedBody836_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_36 : StackLang.HolProg 64 :=
.seq RemovedBody836_34 RemovedBody836_35

def RemovedBody836_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_38 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_36 RemovedBody836_37

def RemovedBody836_39 : StackLang.HolProg 64 :=
.seq RemovedBody836_33 RemovedBody836_38

def RemovedBody836_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 3

def RemovedBody836_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_49 : StackLang.HolProg 64 :=
.seq RemovedBody836_47 RemovedBody836_48

def RemovedBody836_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_51 : StackLang.HolProg 64 :=
.seq RemovedBody836_49 RemovedBody836_50

def RemovedBody836_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_53 : StackLang.HolProg 64 :=
.seq RemovedBody836_51 RemovedBody836_52

def RemovedBody836_54 : StackLang.HolProg 64 :=
.seq RemovedBody836_46 RemovedBody836_53

def RemovedBody836_55 : StackLang.HolProg 64 :=
.seq RemovedBody836_45 RemovedBody836_54

def RemovedBody836_56 : StackLang.HolProg 64 :=
.seq RemovedBody836_44 RemovedBody836_55

def RemovedBody836_57 : StackLang.HolProg 64 :=
.seq RemovedBody836_43 RemovedBody836_56

def RemovedBody836_58 : StackLang.HolProg 64 :=
.seq RemovedBody836_42 RemovedBody836_57

def RemovedBody836_59 : StackLang.HolProg 64 :=
.seq RemovedBody836_41 RemovedBody836_58

def RemovedBody836_60 : StackLang.HolProg 64 :=
.seq RemovedBody836_40 RemovedBody836_59

def RemovedBody836_61 : StackLang.HolProg 64 :=
.seq RemovedBody836_39 RemovedBody836_60

def RemovedBody836_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_69 : StackLang.HolProg 64 :=
.seq RemovedBody836_67 RemovedBody836_68

def RemovedBody836_70 : StackLang.HolProg 64 :=
.seq RemovedBody836_66 RemovedBody836_69

def RemovedBody836_71 : StackLang.HolProg 64 :=
.seq RemovedBody836_65 RemovedBody836_70

def RemovedBody836_72 : StackLang.HolProg 64 :=
.seq RemovedBody836_64 RemovedBody836_71

def RemovedBody836_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_74 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_75 : StackLang.HolProg 64 :=
.seq RemovedBody836_73 RemovedBody836_74

def RemovedBody836_76 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_72, 0, 836, 2)) (Sum.inl 484) (some (RemovedBody836_75, 836, 3))

def RemovedBody836_77 : StackLang.HolProg 64 :=
.seq RemovedBody836_63 RemovedBody836_76

def RemovedBody836_78 : StackLang.HolProg 64 :=
.seq RemovedBody836_62 RemovedBody836_77

def RemovedBody836_79 : StackLang.HolProg 64 :=
.seq RemovedBody836_61 RemovedBody836_78

def RemovedBody836_80 : StackLang.HolProg 64 :=
.seq RemovedBody836_32 RemovedBody836_79

def RemovedBody836_81 : StackLang.HolProg 64 :=
.seq RemovedBody836_29 RemovedBody836_80

def RemovedBody836_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody836_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4159#64)

def RemovedBody836_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_89 : StackLang.HolProg 64 :=
.seq RemovedBody836_87 RemovedBody836_88

def RemovedBody836_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_93 : StackLang.HolProg 64 :=
.seq RemovedBody836_91 RemovedBody836_92

def RemovedBody836_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_95 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_93 RemovedBody836_94

def RemovedBody836_96 : StackLang.HolProg 64 :=
.seq RemovedBody836_90 RemovedBody836_95

def RemovedBody836_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 5

def RemovedBody836_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_106 : StackLang.HolProg 64 :=
.seq RemovedBody836_104 RemovedBody836_105

def RemovedBody836_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_108 : StackLang.HolProg 64 :=
.seq RemovedBody836_106 RemovedBody836_107

def RemovedBody836_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_110 : StackLang.HolProg 64 :=
.seq RemovedBody836_108 RemovedBody836_109

def RemovedBody836_111 : StackLang.HolProg 64 :=
.seq RemovedBody836_103 RemovedBody836_110

def RemovedBody836_112 : StackLang.HolProg 64 :=
.seq RemovedBody836_102 RemovedBody836_111

def RemovedBody836_113 : StackLang.HolProg 64 :=
.seq RemovedBody836_101 RemovedBody836_112

def RemovedBody836_114 : StackLang.HolProg 64 :=
.seq RemovedBody836_100 RemovedBody836_113

def RemovedBody836_115 : StackLang.HolProg 64 :=
.seq RemovedBody836_99 RemovedBody836_114

def RemovedBody836_116 : StackLang.HolProg 64 :=
.seq RemovedBody836_98 RemovedBody836_115

def RemovedBody836_117 : StackLang.HolProg 64 :=
.seq RemovedBody836_97 RemovedBody836_116

def RemovedBody836_118 : StackLang.HolProg 64 :=
.seq RemovedBody836_96 RemovedBody836_117

def RemovedBody836_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_126 : StackLang.HolProg 64 :=
.seq RemovedBody836_124 RemovedBody836_125

def RemovedBody836_127 : StackLang.HolProg 64 :=
.seq RemovedBody836_123 RemovedBody836_126

def RemovedBody836_128 : StackLang.HolProg 64 :=
.seq RemovedBody836_122 RemovedBody836_127

def RemovedBody836_129 : StackLang.HolProg 64 :=
.seq RemovedBody836_121 RemovedBody836_128

def RemovedBody836_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_131 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_132 : StackLang.HolProg 64 :=
.seq RemovedBody836_130 RemovedBody836_131

def RemovedBody836_133 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_129, 0, 836, 4)) (Sum.inl 146) (some (RemovedBody836_132, 836, 5))

def RemovedBody836_134 : StackLang.HolProg 64 :=
.seq RemovedBody836_120 RemovedBody836_133

def RemovedBody836_135 : StackLang.HolProg 64 :=
.seq RemovedBody836_119 RemovedBody836_134

def RemovedBody836_136 : StackLang.HolProg 64 :=
.seq RemovedBody836_118 RemovedBody836_135

def RemovedBody836_137 : StackLang.HolProg 64 :=
.seq RemovedBody836_89 RemovedBody836_136

def RemovedBody836_138 : StackLang.HolProg 64 :=
.seq RemovedBody836_86 RemovedBody836_137

def RemovedBody836_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4160#64)

def RemovedBody836_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_144 : StackLang.HolProg 64 :=
.seq RemovedBody836_142 RemovedBody836_143

def RemovedBody836_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_148 : StackLang.HolProg 64 :=
.seq RemovedBody836_146 RemovedBody836_147

def RemovedBody836_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_150 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_148 RemovedBody836_149

def RemovedBody836_151 : StackLang.HolProg 64 :=
.seq RemovedBody836_145 RemovedBody836_150

def RemovedBody836_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 7

def RemovedBody836_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_161 : StackLang.HolProg 64 :=
.seq RemovedBody836_159 RemovedBody836_160

def RemovedBody836_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_163 : StackLang.HolProg 64 :=
.seq RemovedBody836_161 RemovedBody836_162

def RemovedBody836_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_165 : StackLang.HolProg 64 :=
.seq RemovedBody836_163 RemovedBody836_164

def RemovedBody836_166 : StackLang.HolProg 64 :=
.seq RemovedBody836_158 RemovedBody836_165

def RemovedBody836_167 : StackLang.HolProg 64 :=
.seq RemovedBody836_157 RemovedBody836_166

def RemovedBody836_168 : StackLang.HolProg 64 :=
.seq RemovedBody836_156 RemovedBody836_167

def RemovedBody836_169 : StackLang.HolProg 64 :=
.seq RemovedBody836_155 RemovedBody836_168

def RemovedBody836_170 : StackLang.HolProg 64 :=
.seq RemovedBody836_154 RemovedBody836_169

def RemovedBody836_171 : StackLang.HolProg 64 :=
.seq RemovedBody836_153 RemovedBody836_170

def RemovedBody836_172 : StackLang.HolProg 64 :=
.seq RemovedBody836_152 RemovedBody836_171

def RemovedBody836_173 : StackLang.HolProg 64 :=
.seq RemovedBody836_151 RemovedBody836_172

def RemovedBody836_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_182 : StackLang.HolProg 64 :=
.seq RemovedBody836_180 RemovedBody836_181

def RemovedBody836_183 : StackLang.HolProg 64 :=
.seq RemovedBody836_179 RemovedBody836_182

def RemovedBody836_184 : StackLang.HolProg 64 :=
.seq RemovedBody836_178 RemovedBody836_183

def RemovedBody836_185 : StackLang.HolProg 64 :=
.seq RemovedBody836_177 RemovedBody836_184

def RemovedBody836_186 : StackLang.HolProg 64 :=
.seq RemovedBody836_176 RemovedBody836_185

def RemovedBody836_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_188 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_189 : StackLang.HolProg 64 :=
.seq RemovedBody836_187 RemovedBody836_188

def RemovedBody836_190 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_186, 0, 836, 6)) (Sum.inl 462) (some (RemovedBody836_189, 836, 7))

def RemovedBody836_191 : StackLang.HolProg 64 :=
.seq RemovedBody836_175 RemovedBody836_190

def RemovedBody836_192 : StackLang.HolProg 64 :=
.seq RemovedBody836_174 RemovedBody836_191

def RemovedBody836_193 : StackLang.HolProg 64 :=
.seq RemovedBody836_173 RemovedBody836_192

def RemovedBody836_194 : StackLang.HolProg 64 :=
.seq RemovedBody836_144 RemovedBody836_193

def RemovedBody836_195 : StackLang.HolProg 64 :=
.seq RemovedBody836_141 RemovedBody836_194

def RemovedBody836_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody836_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody836_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody836_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody836_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_205 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_206 : StackLang.HolProg 64 :=
.seq RemovedBody836_204 RemovedBody836_205

def RemovedBody836_207 : StackLang.HolProg 64 :=
.seq RemovedBody836_203 RemovedBody836_206

def RemovedBody836_208 : StackLang.HolProg 64 :=
.seq RemovedBody836_202 RemovedBody836_207

def RemovedBody836_209 : StackLang.HolProg 64 :=
.seq RemovedBody836_201 RemovedBody836_208

def RemovedBody836_210 : StackLang.HolProg 64 :=
.seq RemovedBody836_200 RemovedBody836_209

def RemovedBody836_211 : StackLang.HolProg 64 :=
.seq RemovedBody836_199 RemovedBody836_210

def RemovedBody836_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_213 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody836_211 RemovedBody836_212

def RemovedBody836_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody836_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody836_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_221 : StackLang.HolProg 64 :=
.seq RemovedBody836_219 RemovedBody836_220

def RemovedBody836_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4161#64)

def RemovedBody836_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_225 : StackLang.HolProg 64 :=
.seq RemovedBody836_223 RemovedBody836_224

def RemovedBody836_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_229 : StackLang.HolProg 64 :=
.seq RemovedBody836_227 RemovedBody836_228

def RemovedBody836_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_231 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_229 RemovedBody836_230

def RemovedBody836_232 : StackLang.HolProg 64 :=
.seq RemovedBody836_226 RemovedBody836_231

def RemovedBody836_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 9

def RemovedBody836_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_242 : StackLang.HolProg 64 :=
.seq RemovedBody836_240 RemovedBody836_241

def RemovedBody836_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_244 : StackLang.HolProg 64 :=
.seq RemovedBody836_242 RemovedBody836_243

def RemovedBody836_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_246 : StackLang.HolProg 64 :=
.seq RemovedBody836_244 RemovedBody836_245

def RemovedBody836_247 : StackLang.HolProg 64 :=
.seq RemovedBody836_239 RemovedBody836_246

def RemovedBody836_248 : StackLang.HolProg 64 :=
.seq RemovedBody836_238 RemovedBody836_247

def RemovedBody836_249 : StackLang.HolProg 64 :=
.seq RemovedBody836_237 RemovedBody836_248

def RemovedBody836_250 : StackLang.HolProg 64 :=
.seq RemovedBody836_236 RemovedBody836_249

def RemovedBody836_251 : StackLang.HolProg 64 :=
.seq RemovedBody836_235 RemovedBody836_250

def RemovedBody836_252 : StackLang.HolProg 64 :=
.seq RemovedBody836_234 RemovedBody836_251

def RemovedBody836_253 : StackLang.HolProg 64 :=
.seq RemovedBody836_233 RemovedBody836_252

def RemovedBody836_254 : StackLang.HolProg 64 :=
.seq RemovedBody836_232 RemovedBody836_253

def RemovedBody836_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_262 : StackLang.HolProg 64 :=
.seq RemovedBody836_260 RemovedBody836_261

def RemovedBody836_263 : StackLang.HolProg 64 :=
.seq RemovedBody836_259 RemovedBody836_262

def RemovedBody836_264 : StackLang.HolProg 64 :=
.seq RemovedBody836_258 RemovedBody836_263

def RemovedBody836_265 : StackLang.HolProg 64 :=
.seq RemovedBody836_257 RemovedBody836_264

def RemovedBody836_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_267 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_268 : StackLang.HolProg 64 :=
.seq RemovedBody836_266 RemovedBody836_267

def RemovedBody836_269 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_265, 0, 836, 8)) (Sum.inl 146) (some (RemovedBody836_268, 836, 9))

def RemovedBody836_270 : StackLang.HolProg 64 :=
.seq RemovedBody836_256 RemovedBody836_269

def RemovedBody836_271 : StackLang.HolProg 64 :=
.seq RemovedBody836_255 RemovedBody836_270

def RemovedBody836_272 : StackLang.HolProg 64 :=
.seq RemovedBody836_254 RemovedBody836_271

def RemovedBody836_273 : StackLang.HolProg 64 :=
.seq RemovedBody836_225 RemovedBody836_272

def RemovedBody836_274 : StackLang.HolProg 64 :=
.seq RemovedBody836_222 RemovedBody836_273

def RemovedBody836_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4162#64)

def RemovedBody836_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_280 : StackLang.HolProg 64 :=
.seq RemovedBody836_278 RemovedBody836_279

def RemovedBody836_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_284 : StackLang.HolProg 64 :=
.seq RemovedBody836_282 RemovedBody836_283

def RemovedBody836_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_286 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_284 RemovedBody836_285

def RemovedBody836_287 : StackLang.HolProg 64 :=
.seq RemovedBody836_281 RemovedBody836_286

def RemovedBody836_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 11

def RemovedBody836_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_297 : StackLang.HolProg 64 :=
.seq RemovedBody836_295 RemovedBody836_296

def RemovedBody836_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_299 : StackLang.HolProg 64 :=
.seq RemovedBody836_297 RemovedBody836_298

def RemovedBody836_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_301 : StackLang.HolProg 64 :=
.seq RemovedBody836_299 RemovedBody836_300

def RemovedBody836_302 : StackLang.HolProg 64 :=
.seq RemovedBody836_294 RemovedBody836_301

def RemovedBody836_303 : StackLang.HolProg 64 :=
.seq RemovedBody836_293 RemovedBody836_302

def RemovedBody836_304 : StackLang.HolProg 64 :=
.seq RemovedBody836_292 RemovedBody836_303

def RemovedBody836_305 : StackLang.HolProg 64 :=
.seq RemovedBody836_291 RemovedBody836_304

def RemovedBody836_306 : StackLang.HolProg 64 :=
.seq RemovedBody836_290 RemovedBody836_305

def RemovedBody836_307 : StackLang.HolProg 64 :=
.seq RemovedBody836_289 RemovedBody836_306

def RemovedBody836_308 : StackLang.HolProg 64 :=
.seq RemovedBody836_288 RemovedBody836_307

def RemovedBody836_309 : StackLang.HolProg 64 :=
.seq RemovedBody836_287 RemovedBody836_308

def RemovedBody836_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_318 : StackLang.HolProg 64 :=
.seq RemovedBody836_316 RemovedBody836_317

def RemovedBody836_319 : StackLang.HolProg 64 :=
.seq RemovedBody836_315 RemovedBody836_318

def RemovedBody836_320 : StackLang.HolProg 64 :=
.seq RemovedBody836_314 RemovedBody836_319

def RemovedBody836_321 : StackLang.HolProg 64 :=
.seq RemovedBody836_313 RemovedBody836_320

def RemovedBody836_322 : StackLang.HolProg 64 :=
.seq RemovedBody836_312 RemovedBody836_321

def RemovedBody836_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_324 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_325 : StackLang.HolProg 64 :=
.seq RemovedBody836_323 RemovedBody836_324

def RemovedBody836_326 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_322, 0, 836, 10)) (Sum.inl 462) (some (RemovedBody836_325, 836, 11))

def RemovedBody836_327 : StackLang.HolProg 64 :=
.seq RemovedBody836_311 RemovedBody836_326

def RemovedBody836_328 : StackLang.HolProg 64 :=
.seq RemovedBody836_310 RemovedBody836_327

def RemovedBody836_329 : StackLang.HolProg 64 :=
.seq RemovedBody836_309 RemovedBody836_328

def RemovedBody836_330 : StackLang.HolProg 64 :=
.seq RemovedBody836_280 RemovedBody836_329

def RemovedBody836_331 : StackLang.HolProg 64 :=
.seq RemovedBody836_277 RemovedBody836_330

def RemovedBody836_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody836_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody836_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody836_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody836_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_341 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_342 : StackLang.HolProg 64 :=
.seq RemovedBody836_340 RemovedBody836_341

def RemovedBody836_343 : StackLang.HolProg 64 :=
.seq RemovedBody836_339 RemovedBody836_342

def RemovedBody836_344 : StackLang.HolProg 64 :=
.seq RemovedBody836_338 RemovedBody836_343

def RemovedBody836_345 : StackLang.HolProg 64 :=
.seq RemovedBody836_337 RemovedBody836_344

def RemovedBody836_346 : StackLang.HolProg 64 :=
.seq RemovedBody836_336 RemovedBody836_345

def RemovedBody836_347 : StackLang.HolProg 64 :=
.seq RemovedBody836_335 RemovedBody836_346

def RemovedBody836_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_349 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody836_347 RemovedBody836_348

def RemovedBody836_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody836_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody836_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_357 : StackLang.HolProg 64 :=
.seq RemovedBody836_355 RemovedBody836_356

def RemovedBody836_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4163#64)

def RemovedBody836_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_361 : StackLang.HolProg 64 :=
.seq RemovedBody836_359 RemovedBody836_360

def RemovedBody836_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_365 : StackLang.HolProg 64 :=
.seq RemovedBody836_363 RemovedBody836_364

def RemovedBody836_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_367 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_365 RemovedBody836_366

def RemovedBody836_368 : StackLang.HolProg 64 :=
.seq RemovedBody836_362 RemovedBody836_367

def RemovedBody836_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 13

def RemovedBody836_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_378 : StackLang.HolProg 64 :=
.seq RemovedBody836_376 RemovedBody836_377

def RemovedBody836_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_380 : StackLang.HolProg 64 :=
.seq RemovedBody836_378 RemovedBody836_379

def RemovedBody836_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_382 : StackLang.HolProg 64 :=
.seq RemovedBody836_380 RemovedBody836_381

def RemovedBody836_383 : StackLang.HolProg 64 :=
.seq RemovedBody836_375 RemovedBody836_382

def RemovedBody836_384 : StackLang.HolProg 64 :=
.seq RemovedBody836_374 RemovedBody836_383

def RemovedBody836_385 : StackLang.HolProg 64 :=
.seq RemovedBody836_373 RemovedBody836_384

def RemovedBody836_386 : StackLang.HolProg 64 :=
.seq RemovedBody836_372 RemovedBody836_385

def RemovedBody836_387 : StackLang.HolProg 64 :=
.seq RemovedBody836_371 RemovedBody836_386

def RemovedBody836_388 : StackLang.HolProg 64 :=
.seq RemovedBody836_370 RemovedBody836_387

def RemovedBody836_389 : StackLang.HolProg 64 :=
.seq RemovedBody836_369 RemovedBody836_388

def RemovedBody836_390 : StackLang.HolProg 64 :=
.seq RemovedBody836_368 RemovedBody836_389

def RemovedBody836_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_398 : StackLang.HolProg 64 :=
.seq RemovedBody836_396 RemovedBody836_397

def RemovedBody836_399 : StackLang.HolProg 64 :=
.seq RemovedBody836_395 RemovedBody836_398

def RemovedBody836_400 : StackLang.HolProg 64 :=
.seq RemovedBody836_394 RemovedBody836_399

def RemovedBody836_401 : StackLang.HolProg 64 :=
.seq RemovedBody836_393 RemovedBody836_400

def RemovedBody836_402 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_403 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_404 : StackLang.HolProg 64 :=
.seq RemovedBody836_402 RemovedBody836_403

def RemovedBody836_405 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_401, 0, 836, 12)) (Sum.inl 146) (some (RemovedBody836_404, 836, 13))

def RemovedBody836_406 : StackLang.HolProg 64 :=
.seq RemovedBody836_392 RemovedBody836_405

def RemovedBody836_407 : StackLang.HolProg 64 :=
.seq RemovedBody836_391 RemovedBody836_406

def RemovedBody836_408 : StackLang.HolProg 64 :=
.seq RemovedBody836_390 RemovedBody836_407

def RemovedBody836_409 : StackLang.HolProg 64 :=
.seq RemovedBody836_361 RemovedBody836_408

def RemovedBody836_410 : StackLang.HolProg 64 :=
.seq RemovedBody836_358 RemovedBody836_409

def RemovedBody836_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4164#64)

def RemovedBody836_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_416 : StackLang.HolProg 64 :=
.seq RemovedBody836_414 RemovedBody836_415

def RemovedBody836_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_420 : StackLang.HolProg 64 :=
.seq RemovedBody836_418 RemovedBody836_419

def RemovedBody836_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_422 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_420 RemovedBody836_421

def RemovedBody836_423 : StackLang.HolProg 64 :=
.seq RemovedBody836_417 RemovedBody836_422

def RemovedBody836_424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 15

def RemovedBody836_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_433 : StackLang.HolProg 64 :=
.seq RemovedBody836_431 RemovedBody836_432

def RemovedBody836_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_435 : StackLang.HolProg 64 :=
.seq RemovedBody836_433 RemovedBody836_434

def RemovedBody836_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_437 : StackLang.HolProg 64 :=
.seq RemovedBody836_435 RemovedBody836_436

def RemovedBody836_438 : StackLang.HolProg 64 :=
.seq RemovedBody836_430 RemovedBody836_437

def RemovedBody836_439 : StackLang.HolProg 64 :=
.seq RemovedBody836_429 RemovedBody836_438

def RemovedBody836_440 : StackLang.HolProg 64 :=
.seq RemovedBody836_428 RemovedBody836_439

def RemovedBody836_441 : StackLang.HolProg 64 :=
.seq RemovedBody836_427 RemovedBody836_440

def RemovedBody836_442 : StackLang.HolProg 64 :=
.seq RemovedBody836_426 RemovedBody836_441

def RemovedBody836_443 : StackLang.HolProg 64 :=
.seq RemovedBody836_425 RemovedBody836_442

def RemovedBody836_444 : StackLang.HolProg 64 :=
.seq RemovedBody836_424 RemovedBody836_443

def RemovedBody836_445 : StackLang.HolProg 64 :=
.seq RemovedBody836_423 RemovedBody836_444

def RemovedBody836_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_455 : StackLang.HolProg 64 :=
.seq RemovedBody836_453 RemovedBody836_454

def RemovedBody836_456 : StackLang.HolProg 64 :=
.seq RemovedBody836_452 RemovedBody836_455

def RemovedBody836_457 : StackLang.HolProg 64 :=
.seq RemovedBody836_451 RemovedBody836_456

def RemovedBody836_458 : StackLang.HolProg 64 :=
.seq RemovedBody836_450 RemovedBody836_457

def RemovedBody836_459 : StackLang.HolProg 64 :=
.seq RemovedBody836_449 RemovedBody836_458

def RemovedBody836_460 : StackLang.HolProg 64 :=
.seq RemovedBody836_448 RemovedBody836_459

def RemovedBody836_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_463 : StackLang.HolProg 64 :=
.seq RemovedBody836_461 RemovedBody836_462

def RemovedBody836_464 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_465 : StackLang.HolProg 64 :=
.seq RemovedBody836_463 RemovedBody836_464

def RemovedBody836_466 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_460, 0, 836, 14)) (Sum.inl 462) (some (RemovedBody836_465, 836, 15))

def RemovedBody836_467 : StackLang.HolProg 64 :=
.seq RemovedBody836_447 RemovedBody836_466

def RemovedBody836_468 : StackLang.HolProg 64 :=
.seq RemovedBody836_446 RemovedBody836_467

def RemovedBody836_469 : StackLang.HolProg 64 :=
.seq RemovedBody836_445 RemovedBody836_468

def RemovedBody836_470 : StackLang.HolProg 64 :=
.seq RemovedBody836_416 RemovedBody836_469

def RemovedBody836_471 : StackLang.HolProg 64 :=
.seq RemovedBody836_413 RemovedBody836_470

def RemovedBody836_472 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_473 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1024#64)

def RemovedBody836_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody836_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody836_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody836_480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_481 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_482 : StackLang.HolProg 64 :=
.seq RemovedBody836_480 RemovedBody836_481

def RemovedBody836_483 : StackLang.HolProg 64 :=
.seq RemovedBody836_479 RemovedBody836_482

def RemovedBody836_484 : StackLang.HolProg 64 :=
.seq RemovedBody836_478 RemovedBody836_483

def RemovedBody836_485 : StackLang.HolProg 64 :=
.seq RemovedBody836_477 RemovedBody836_484

def RemovedBody836_486 : StackLang.HolProg 64 :=
.seq RemovedBody836_476 RemovedBody836_485

def RemovedBody836_487 : StackLang.HolProg 64 :=
.seq RemovedBody836_475 RemovedBody836_486

def RemovedBody836_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_489 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody836_487 RemovedBody836_488

def RemovedBody836_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody836_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody836_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_500 : StackLang.HolProg 64 :=
.seq RemovedBody836_498 RemovedBody836_499

def RemovedBody836_501 : StackLang.HolProg 64 :=
.seq RemovedBody836_497 RemovedBody836_500

def RemovedBody836_502 : StackLang.HolProg 64 :=
.seq RemovedBody836_496 RemovedBody836_501

def RemovedBody836_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4165#64)

def RemovedBody836_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_506 : StackLang.HolProg 64 :=
.seq RemovedBody836_504 RemovedBody836_505

def RemovedBody836_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_509 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_510 : StackLang.HolProg 64 :=
.seq RemovedBody836_508 RemovedBody836_509

def RemovedBody836_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_512 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_510 RemovedBody836_511

def RemovedBody836_513 : StackLang.HolProg 64 :=
.seq RemovedBody836_507 RemovedBody836_512

def RemovedBody836_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 17

def RemovedBody836_517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_523 : StackLang.HolProg 64 :=
.seq RemovedBody836_521 RemovedBody836_522

def RemovedBody836_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_525 : StackLang.HolProg 64 :=
.seq RemovedBody836_523 RemovedBody836_524

def RemovedBody836_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_527 : StackLang.HolProg 64 :=
.seq RemovedBody836_525 RemovedBody836_526

def RemovedBody836_528 : StackLang.HolProg 64 :=
.seq RemovedBody836_520 RemovedBody836_527

def RemovedBody836_529 : StackLang.HolProg 64 :=
.seq RemovedBody836_519 RemovedBody836_528

def RemovedBody836_530 : StackLang.HolProg 64 :=
.seq RemovedBody836_518 RemovedBody836_529

def RemovedBody836_531 : StackLang.HolProg 64 :=
.seq RemovedBody836_517 RemovedBody836_530

def RemovedBody836_532 : StackLang.HolProg 64 :=
.seq RemovedBody836_516 RemovedBody836_531

def RemovedBody836_533 : StackLang.HolProg 64 :=
.seq RemovedBody836_515 RemovedBody836_532

def RemovedBody836_534 : StackLang.HolProg 64 :=
.seq RemovedBody836_514 RemovedBody836_533

def RemovedBody836_535 : StackLang.HolProg 64 :=
.seq RemovedBody836_513 RemovedBody836_534

def RemovedBody836_536 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_537 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_539 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_547 : StackLang.HolProg 64 :=
.seq RemovedBody836_545 RemovedBody836_546

def RemovedBody836_548 : StackLang.HolProg 64 :=
.seq RemovedBody836_544 RemovedBody836_547

def RemovedBody836_549 : StackLang.HolProg 64 :=
.seq RemovedBody836_543 RemovedBody836_548

def RemovedBody836_550 : StackLang.HolProg 64 :=
.seq RemovedBody836_542 RemovedBody836_549

def RemovedBody836_551 : StackLang.HolProg 64 :=
.seq RemovedBody836_541 RemovedBody836_550

def RemovedBody836_552 : StackLang.HolProg 64 :=
.seq RemovedBody836_540 RemovedBody836_551

def RemovedBody836_553 : StackLang.HolProg 64 :=
.seq RemovedBody836_539 RemovedBody836_552

def RemovedBody836_554 : StackLang.HolProg 64 :=
.seq RemovedBody836_538 RemovedBody836_553

def RemovedBody836_555 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_556 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_557 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_558 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_559 : StackLang.HolProg 64 :=
.seq RemovedBody836_557 RemovedBody836_558

def RemovedBody836_560 : StackLang.HolProg 64 :=
.seq RemovedBody836_556 RemovedBody836_559

def RemovedBody836_561 : StackLang.HolProg 64 :=
.seq RemovedBody836_555 RemovedBody836_560

def RemovedBody836_562 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_563 : StackLang.HolProg 64 :=
.seq RemovedBody836_561 RemovedBody836_562

def RemovedBody836_564 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_554, 0, 836, 16)) (Sum.inl 92) (some (RemovedBody836_563, 836, 17))

def RemovedBody836_565 : StackLang.HolProg 64 :=
.seq RemovedBody836_537 RemovedBody836_564

def RemovedBody836_566 : StackLang.HolProg 64 :=
.seq RemovedBody836_536 RemovedBody836_565

def RemovedBody836_567 : StackLang.HolProg 64 :=
.seq RemovedBody836_535 RemovedBody836_566

def RemovedBody836_568 : StackLang.HolProg 64 :=
.seq RemovedBody836_506 RemovedBody836_567

def RemovedBody836_569 : StackLang.HolProg 64 :=
.seq RemovedBody836_503 RemovedBody836_568

def RemovedBody836_570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_572 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_573 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_577 : StackLang.HolProg 64 :=
.seq RemovedBody836_575 RemovedBody836_576

def RemovedBody836_578 : StackLang.HolProg 64 :=
.seq RemovedBody836_574 RemovedBody836_577

def RemovedBody836_579 : StackLang.HolProg 64 :=
.seq RemovedBody836_573 RemovedBody836_578

def RemovedBody836_580 : StackLang.HolProg 64 :=
.seq RemovedBody836_572 RemovedBody836_579

def RemovedBody836_581 : StackLang.HolProg 64 :=
.seq RemovedBody836_571 RemovedBody836_580

def RemovedBody836_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4166#64)

def RemovedBody836_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_585 : StackLang.HolProg 64 :=
.seq RemovedBody836_583 RemovedBody836_584

def RemovedBody836_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_589 : StackLang.HolProg 64 :=
.seq RemovedBody836_587 RemovedBody836_588

def RemovedBody836_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_591 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_589 RemovedBody836_590

def RemovedBody836_592 : StackLang.HolProg 64 :=
.seq RemovedBody836_586 RemovedBody836_591

def RemovedBody836_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 19

def RemovedBody836_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_602 : StackLang.HolProg 64 :=
.seq RemovedBody836_600 RemovedBody836_601

def RemovedBody836_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_604 : StackLang.HolProg 64 :=
.seq RemovedBody836_602 RemovedBody836_603

def RemovedBody836_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_606 : StackLang.HolProg 64 :=
.seq RemovedBody836_604 RemovedBody836_605

def RemovedBody836_607 : StackLang.HolProg 64 :=
.seq RemovedBody836_599 RemovedBody836_606

def RemovedBody836_608 : StackLang.HolProg 64 :=
.seq RemovedBody836_598 RemovedBody836_607

def RemovedBody836_609 : StackLang.HolProg 64 :=
.seq RemovedBody836_597 RemovedBody836_608

def RemovedBody836_610 : StackLang.HolProg 64 :=
.seq RemovedBody836_596 RemovedBody836_609

def RemovedBody836_611 : StackLang.HolProg 64 :=
.seq RemovedBody836_595 RemovedBody836_610

def RemovedBody836_612 : StackLang.HolProg 64 :=
.seq RemovedBody836_594 RemovedBody836_611

def RemovedBody836_613 : StackLang.HolProg 64 :=
.seq RemovedBody836_593 RemovedBody836_612

def RemovedBody836_614 : StackLang.HolProg 64 :=
.seq RemovedBody836_592 RemovedBody836_613

def RemovedBody836_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_623 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_624 : StackLang.HolProg 64 :=
.seq RemovedBody836_622 RemovedBody836_623

def RemovedBody836_625 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_626 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_627 : StackLang.HolProg 64 :=
.seq RemovedBody836_625 RemovedBody836_626

def RemovedBody836_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_629 : StackLang.HolProg 64 :=
.seq RemovedBody836_627 RemovedBody836_628

def RemovedBody836_630 : StackLang.HolProg 64 :=
.seq RemovedBody836_624 RemovedBody836_629

def RemovedBody836_631 : StackLang.HolProg 64 :=
.seq RemovedBody836_621 RemovedBody836_630

def RemovedBody836_632 : StackLang.HolProg 64 :=
.seq RemovedBody836_620 RemovedBody836_631

def RemovedBody836_633 : StackLang.HolProg 64 :=
.seq RemovedBody836_619 RemovedBody836_632

def RemovedBody836_634 : StackLang.HolProg 64 :=
.seq RemovedBody836_618 RemovedBody836_633

def RemovedBody836_635 : StackLang.HolProg 64 :=
.seq RemovedBody836_617 RemovedBody836_634

def RemovedBody836_636 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_638 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_639 : StackLang.HolProg 64 :=
.seq RemovedBody836_637 RemovedBody836_638

def RemovedBody836_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_642 : StackLang.HolProg 64 :=
.seq RemovedBody836_640 RemovedBody836_641

def RemovedBody836_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_644 : StackLang.HolProg 64 :=
.seq RemovedBody836_642 RemovedBody836_643

def RemovedBody836_645 : StackLang.HolProg 64 :=
.seq RemovedBody836_639 RemovedBody836_644

def RemovedBody836_646 : StackLang.HolProg 64 :=
.seq RemovedBody836_636 RemovedBody836_645

def RemovedBody836_647 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_648 : StackLang.HolProg 64 :=
.seq RemovedBody836_646 RemovedBody836_647

def RemovedBody836_649 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_635, 0, 836, 18)) (Sum.inl 484) (some (RemovedBody836_648, 836, 19))

def RemovedBody836_650 : StackLang.HolProg 64 :=
.seq RemovedBody836_616 RemovedBody836_649

def RemovedBody836_651 : StackLang.HolProg 64 :=
.seq RemovedBody836_615 RemovedBody836_650

def RemovedBody836_652 : StackLang.HolProg 64 :=
.seq RemovedBody836_614 RemovedBody836_651

def RemovedBody836_653 : StackLang.HolProg 64 :=
.seq RemovedBody836_585 RemovedBody836_652

def RemovedBody836_654 : StackLang.HolProg 64 :=
.seq RemovedBody836_582 RemovedBody836_653

def RemovedBody836_655 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_656 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_657 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_658 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4167#64)

def RemovedBody836_659 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_660 : StackLang.HolProg 64 :=
.seq RemovedBody836_658 RemovedBody836_659

def RemovedBody836_661 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_664 : StackLang.HolProg 64 :=
.seq RemovedBody836_662 RemovedBody836_663

def RemovedBody836_665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_666 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_664 RemovedBody836_665

def RemovedBody836_667 : StackLang.HolProg 64 :=
.seq RemovedBody836_661 RemovedBody836_666

def RemovedBody836_668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 21

def RemovedBody836_671 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_672 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_673 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_674 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_675 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_676 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_677 : StackLang.HolProg 64 :=
.seq RemovedBody836_675 RemovedBody836_676

def RemovedBody836_678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_679 : StackLang.HolProg 64 :=
.seq RemovedBody836_677 RemovedBody836_678

def RemovedBody836_680 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_681 : StackLang.HolProg 64 :=
.seq RemovedBody836_679 RemovedBody836_680

def RemovedBody836_682 : StackLang.HolProg 64 :=
.seq RemovedBody836_674 RemovedBody836_681

def RemovedBody836_683 : StackLang.HolProg 64 :=
.seq RemovedBody836_673 RemovedBody836_682

def RemovedBody836_684 : StackLang.HolProg 64 :=
.seq RemovedBody836_672 RemovedBody836_683

def RemovedBody836_685 : StackLang.HolProg 64 :=
.seq RemovedBody836_671 RemovedBody836_684

def RemovedBody836_686 : StackLang.HolProg 64 :=
.seq RemovedBody836_670 RemovedBody836_685

def RemovedBody836_687 : StackLang.HolProg 64 :=
.seq RemovedBody836_669 RemovedBody836_686

def RemovedBody836_688 : StackLang.HolProg 64 :=
.seq RemovedBody836_668 RemovedBody836_687

def RemovedBody836_689 : StackLang.HolProg 64 :=
.seq RemovedBody836_667 RemovedBody836_688

def RemovedBody836_690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody836_697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody836_698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody836_699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_703 : StackLang.HolProg 64 :=
.seq RemovedBody836_701 RemovedBody836_702

def RemovedBody836_704 : StackLang.HolProg 64 :=
.seq RemovedBody836_700 RemovedBody836_703

def RemovedBody836_705 : StackLang.HolProg 64 :=
.seq RemovedBody836_699 RemovedBody836_704

def RemovedBody836_706 : StackLang.HolProg 64 :=
.seq RemovedBody836_698 RemovedBody836_705

def RemovedBody836_707 : StackLang.HolProg 64 :=
.seq RemovedBody836_697 RemovedBody836_706

def RemovedBody836_708 : StackLang.HolProg 64 :=
.seq RemovedBody836_696 RemovedBody836_707

def RemovedBody836_709 : StackLang.HolProg 64 :=
.seq RemovedBody836_695 RemovedBody836_708

def RemovedBody836_710 : StackLang.HolProg 64 :=
.seq RemovedBody836_694 RemovedBody836_709

def RemovedBody836_711 : StackLang.HolProg 64 :=
.seq RemovedBody836_693 RemovedBody836_710

def RemovedBody836_712 : StackLang.HolProg 64 :=
.seq RemovedBody836_692 RemovedBody836_711

def RemovedBody836_713 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_714 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_715 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_716 : StackLang.HolProg 64 :=
.seq RemovedBody836_714 RemovedBody836_715

def RemovedBody836_717 : StackLang.HolProg 64 :=
.seq RemovedBody836_713 RemovedBody836_716

def RemovedBody836_718 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_719 : StackLang.HolProg 64 :=
.seq RemovedBody836_717 RemovedBody836_718

def RemovedBody836_720 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_712, 0, 836, 20)) (Sum.inl 146) (some (RemovedBody836_719, 836, 21))

def RemovedBody836_721 : StackLang.HolProg 64 :=
.seq RemovedBody836_691 RemovedBody836_720

def RemovedBody836_722 : StackLang.HolProg 64 :=
.seq RemovedBody836_690 RemovedBody836_721

def RemovedBody836_723 : StackLang.HolProg 64 :=
.seq RemovedBody836_689 RemovedBody836_722

def RemovedBody836_724 : StackLang.HolProg 64 :=
.seq RemovedBody836_660 RemovedBody836_723

def RemovedBody836_725 : StackLang.HolProg 64 :=
.seq RemovedBody836_657 RemovedBody836_724

def RemovedBody836_726 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_727 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_728 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_729 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_730 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_731 : StackLang.HolProg 64 :=
.seq RemovedBody836_729 RemovedBody836_730

def RemovedBody836_732 : StackLang.HolProg 64 :=
.seq RemovedBody836_728 RemovedBody836_731

def RemovedBody836_733 : StackLang.HolProg 64 :=
.seq RemovedBody836_727 RemovedBody836_732

def RemovedBody836_734 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_735 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4168#64)

def RemovedBody836_736 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_737 : StackLang.HolProg 64 :=
.seq RemovedBody836_735 RemovedBody836_736

def RemovedBody836_738 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_739 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_740 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_741 : StackLang.HolProg 64 :=
.seq RemovedBody836_739 RemovedBody836_740

def RemovedBody836_742 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_743 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_741 RemovedBody836_742

def RemovedBody836_744 : StackLang.HolProg 64 :=
.seq RemovedBody836_738 RemovedBody836_743

def RemovedBody836_745 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_746 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_747 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 23

def RemovedBody836_748 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_749 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_750 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_751 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_752 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_753 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_754 : StackLang.HolProg 64 :=
.seq RemovedBody836_752 RemovedBody836_753

def RemovedBody836_755 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_756 : StackLang.HolProg 64 :=
.seq RemovedBody836_754 RemovedBody836_755

def RemovedBody836_757 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_758 : StackLang.HolProg 64 :=
.seq RemovedBody836_756 RemovedBody836_757

def RemovedBody836_759 : StackLang.HolProg 64 :=
.seq RemovedBody836_751 RemovedBody836_758

def RemovedBody836_760 : StackLang.HolProg 64 :=
.seq RemovedBody836_750 RemovedBody836_759

def RemovedBody836_761 : StackLang.HolProg 64 :=
.seq RemovedBody836_749 RemovedBody836_760

def RemovedBody836_762 : StackLang.HolProg 64 :=
.seq RemovedBody836_748 RemovedBody836_761

def RemovedBody836_763 : StackLang.HolProg 64 :=
.seq RemovedBody836_747 RemovedBody836_762

def RemovedBody836_764 : StackLang.HolProg 64 :=
.seq RemovedBody836_746 RemovedBody836_763

def RemovedBody836_765 : StackLang.HolProg 64 :=
.seq RemovedBody836_745 RemovedBody836_764

def RemovedBody836_766 : StackLang.HolProg 64 :=
.seq RemovedBody836_744 RemovedBody836_765

def RemovedBody836_767 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_768 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_769 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_770 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_771 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_772 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_773 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_774 : StackLang.HolProg 64 :=
.seq RemovedBody836_772 RemovedBody836_773

def RemovedBody836_775 : StackLang.HolProg 64 :=
.seq RemovedBody836_771 RemovedBody836_774

def RemovedBody836_776 : StackLang.HolProg 64 :=
.seq RemovedBody836_770 RemovedBody836_775

def RemovedBody836_777 : StackLang.HolProg 64 :=
.seq RemovedBody836_769 RemovedBody836_776

def RemovedBody836_778 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_779 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_780 : StackLang.HolProg 64 :=
.seq RemovedBody836_778 RemovedBody836_779

def RemovedBody836_781 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_777, 0, 836, 22)) (Sum.inl 835) (some (RemovedBody836_780, 836, 23))

def RemovedBody836_782 : StackLang.HolProg 64 :=
.seq RemovedBody836_768 RemovedBody836_781

def RemovedBody836_783 : StackLang.HolProg 64 :=
.seq RemovedBody836_767 RemovedBody836_782

def RemovedBody836_784 : StackLang.HolProg 64 :=
.seq RemovedBody836_766 RemovedBody836_783

def RemovedBody836_785 : StackLang.HolProg 64 :=
.seq RemovedBody836_737 RemovedBody836_784

def RemovedBody836_786 : StackLang.HolProg 64 :=
.seq RemovedBody836_734 RemovedBody836_785

def RemovedBody836_787 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_788 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_789 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_790 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4169#64)

def RemovedBody836_791 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_792 : StackLang.HolProg 64 :=
.seq RemovedBody836_790 RemovedBody836_791

def RemovedBody836_793 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_794 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_795 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_796 : StackLang.HolProg 64 :=
.seq RemovedBody836_794 RemovedBody836_795

def RemovedBody836_797 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_798 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_796 RemovedBody836_797

def RemovedBody836_799 : StackLang.HolProg 64 :=
.seq RemovedBody836_793 RemovedBody836_798

def RemovedBody836_800 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_801 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_802 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 25

def RemovedBody836_803 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_804 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_805 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_806 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_807 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_808 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_809 : StackLang.HolProg 64 :=
.seq RemovedBody836_807 RemovedBody836_808

def RemovedBody836_810 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_811 : StackLang.HolProg 64 :=
.seq RemovedBody836_809 RemovedBody836_810

def RemovedBody836_812 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_813 : StackLang.HolProg 64 :=
.seq RemovedBody836_811 RemovedBody836_812

def RemovedBody836_814 : StackLang.HolProg 64 :=
.seq RemovedBody836_806 RemovedBody836_813

def RemovedBody836_815 : StackLang.HolProg 64 :=
.seq RemovedBody836_805 RemovedBody836_814

def RemovedBody836_816 : StackLang.HolProg 64 :=
.seq RemovedBody836_804 RemovedBody836_815

def RemovedBody836_817 : StackLang.HolProg 64 :=
.seq RemovedBody836_803 RemovedBody836_816

def RemovedBody836_818 : StackLang.HolProg 64 :=
.seq RemovedBody836_802 RemovedBody836_817

def RemovedBody836_819 : StackLang.HolProg 64 :=
.seq RemovedBody836_801 RemovedBody836_818

def RemovedBody836_820 : StackLang.HolProg 64 :=
.seq RemovedBody836_800 RemovedBody836_819

def RemovedBody836_821 : StackLang.HolProg 64 :=
.seq RemovedBody836_799 RemovedBody836_820

def RemovedBody836_822 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_823 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_824 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_825 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_826 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_827 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_828 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_829 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_830 : StackLang.HolProg 64 :=
.seq RemovedBody836_828 RemovedBody836_829

def RemovedBody836_831 : StackLang.HolProg 64 :=
.seq RemovedBody836_827 RemovedBody836_830

def RemovedBody836_832 : StackLang.HolProg 64 :=
.seq RemovedBody836_826 RemovedBody836_831

def RemovedBody836_833 : StackLang.HolProg 64 :=
.seq RemovedBody836_825 RemovedBody836_832

def RemovedBody836_834 : StackLang.HolProg 64 :=
.seq RemovedBody836_824 RemovedBody836_833

def RemovedBody836_835 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_836 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_837 : StackLang.HolProg 64 :=
.seq RemovedBody836_835 RemovedBody836_836

def RemovedBody836_838 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_839 : StackLang.HolProg 64 :=
.seq RemovedBody836_837 RemovedBody836_838

def RemovedBody836_840 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_834, 0, 836, 24)) (Sum.inl 470) (some (RemovedBody836_839, 836, 25))

def RemovedBody836_841 : StackLang.HolProg 64 :=
.seq RemovedBody836_823 RemovedBody836_840

def RemovedBody836_842 : StackLang.HolProg 64 :=
.seq RemovedBody836_822 RemovedBody836_841

def RemovedBody836_843 : StackLang.HolProg 64 :=
.seq RemovedBody836_821 RemovedBody836_842

def RemovedBody836_844 : StackLang.HolProg 64 :=
.seq RemovedBody836_792 RemovedBody836_843

def RemovedBody836_845 : StackLang.HolProg 64 :=
.seq RemovedBody836_789 RemovedBody836_844

def RemovedBody836_846 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_847 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_848 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody836_849 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_850 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody836_851 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_852 : StackLang.HolProg 64 :=
.seq RemovedBody836_850 RemovedBody836_851

def RemovedBody836_853 : StackLang.HolProg 64 :=
.seq RemovedBody836_849 RemovedBody836_852

def RemovedBody836_854 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_855 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody836_856 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_857 : StackLang.HolProg 64 :=
.seq RemovedBody836_855 RemovedBody836_856

def RemovedBody836_858 : StackLang.HolProg 64 :=
.seq RemovedBody836_854 RemovedBody836_857

def RemovedBody836_859 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody836_853 RemovedBody836_858

def RemovedBody836_860 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_861 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_862 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody836_863 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_864 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody836_865 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_866 : StackLang.HolProg 64 :=
.seq RemovedBody836_864 RemovedBody836_865

def RemovedBody836_867 : StackLang.HolProg 64 :=
.seq RemovedBody836_863 RemovedBody836_866

def RemovedBody836_868 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_869 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody836_870 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_871 : StackLang.HolProg 64 :=
.seq RemovedBody836_869 RemovedBody836_870

def RemovedBody836_872 : StackLang.HolProg 64 :=
.seq RemovedBody836_868 RemovedBody836_871

def RemovedBody836_873 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody836_867 RemovedBody836_872

def RemovedBody836_874 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_875 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_876 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody836_877 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody836_878 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody836_879 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_880 : StackLang.HolProg 64 :=
.seq RemovedBody836_878 RemovedBody836_879

def RemovedBody836_881 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_882 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4170#64)

def RemovedBody836_883 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_884 : StackLang.HolProg 64 :=
.seq RemovedBody836_882 RemovedBody836_883

def RemovedBody836_885 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_886 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_887 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_888 : StackLang.HolProg 64 :=
.seq RemovedBody836_886 RemovedBody836_887

def RemovedBody836_889 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_890 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_888 RemovedBody836_889

def RemovedBody836_891 : StackLang.HolProg 64 :=
.seq RemovedBody836_885 RemovedBody836_890

def RemovedBody836_892 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_893 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_894 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 27

def RemovedBody836_895 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_896 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_897 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_898 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_899 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_900 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_901 : StackLang.HolProg 64 :=
.seq RemovedBody836_899 RemovedBody836_900

def RemovedBody836_902 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_903 : StackLang.HolProg 64 :=
.seq RemovedBody836_901 RemovedBody836_902

def RemovedBody836_904 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_905 : StackLang.HolProg 64 :=
.seq RemovedBody836_903 RemovedBody836_904

def RemovedBody836_906 : StackLang.HolProg 64 :=
.seq RemovedBody836_898 RemovedBody836_905

def RemovedBody836_907 : StackLang.HolProg 64 :=
.seq RemovedBody836_897 RemovedBody836_906

def RemovedBody836_908 : StackLang.HolProg 64 :=
.seq RemovedBody836_896 RemovedBody836_907

def RemovedBody836_909 : StackLang.HolProg 64 :=
.seq RemovedBody836_895 RemovedBody836_908

def RemovedBody836_910 : StackLang.HolProg 64 :=
.seq RemovedBody836_894 RemovedBody836_909

def RemovedBody836_911 : StackLang.HolProg 64 :=
.seq RemovedBody836_893 RemovedBody836_910

def RemovedBody836_912 : StackLang.HolProg 64 :=
.seq RemovedBody836_892 RemovedBody836_911

def RemovedBody836_913 : StackLang.HolProg 64 :=
.seq RemovedBody836_891 RemovedBody836_912

def RemovedBody836_914 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_915 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_916 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_917 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_918 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_919 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_920 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_921 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_922 : StackLang.HolProg 64 :=
.seq RemovedBody836_920 RemovedBody836_921

def RemovedBody836_923 : StackLang.HolProg 64 :=
.seq RemovedBody836_919 RemovedBody836_922

def RemovedBody836_924 : StackLang.HolProg 64 :=
.seq RemovedBody836_918 RemovedBody836_923

def RemovedBody836_925 : StackLang.HolProg 64 :=
.seq RemovedBody836_917 RemovedBody836_924

def RemovedBody836_926 : StackLang.HolProg 64 :=
.seq RemovedBody836_916 RemovedBody836_925

def RemovedBody836_927 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_928 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_929 : StackLang.HolProg 64 :=
.seq RemovedBody836_927 RemovedBody836_928

def RemovedBody836_930 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_926, 0, 836, 26)) (Sum.inl 68) (some (RemovedBody836_929, 836, 27))

def RemovedBody836_931 : StackLang.HolProg 64 :=
.seq RemovedBody836_915 RemovedBody836_930

def RemovedBody836_932 : StackLang.HolProg 64 :=
.seq RemovedBody836_914 RemovedBody836_931

def RemovedBody836_933 : StackLang.HolProg 64 :=
.seq RemovedBody836_913 RemovedBody836_932

def RemovedBody836_934 : StackLang.HolProg 64 :=
.seq RemovedBody836_884 RemovedBody836_933

def RemovedBody836_935 : StackLang.HolProg 64 :=
.seq RemovedBody836_881 RemovedBody836_934

def RemovedBody836_936 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_937 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody836_938 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody836_939 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody836_940 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody836_941 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody836_942 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_943 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody836_944 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_945 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody836_946 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody836_947 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody836_948 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_949 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody836_950 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody836_951 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_952 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody836_953 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody836_954 : StackLang.HolProg 64 :=
.seq RemovedBody836_952 RemovedBody836_953

def RemovedBody836_955 : StackLang.HolProg 64 :=
.seq RemovedBody836_951 RemovedBody836_954

def RemovedBody836_956 : StackLang.HolProg 64 :=
.seq RemovedBody836_950 RemovedBody836_955

def RemovedBody836_957 : StackLang.HolProg 64 :=
.seq RemovedBody836_949 RemovedBody836_956

def RemovedBody836_958 : StackLang.HolProg 64 :=
.seq RemovedBody836_948 RemovedBody836_957

def RemovedBody836_959 : StackLang.HolProg 64 :=
.seq RemovedBody836_947 RemovedBody836_958

def RemovedBody836_960 : StackLang.HolProg 64 :=
.seq RemovedBody836_946 RemovedBody836_959

def RemovedBody836_961 : StackLang.HolProg 64 :=
.seq RemovedBody836_945 RemovedBody836_960

def RemovedBody836_962 : StackLang.HolProg 64 :=
.seq RemovedBody836_944 RemovedBody836_961

def RemovedBody836_963 : StackLang.HolProg 64 :=
.seq RemovedBody836_943 RemovedBody836_962

def RemovedBody836_964 : StackLang.HolProg 64 :=
.seq RemovedBody836_942 RemovedBody836_963

def RemovedBody836_965 : StackLang.HolProg 64 :=
.seq RemovedBody836_941 RemovedBody836_964

def RemovedBody836_966 : StackLang.HolProg 64 :=
.seq RemovedBody836_940 RemovedBody836_965

def RemovedBody836_967 : StackLang.HolProg 64 :=
.seq RemovedBody836_939 RemovedBody836_966

def RemovedBody836_968 : StackLang.HolProg 64 :=
.seq RemovedBody836_938 RemovedBody836_967

def RemovedBody836_969 : StackLang.HolProg 64 :=
.seq RemovedBody836_937 RemovedBody836_968

def RemovedBody836_970 : StackLang.HolProg 64 :=
.seq RemovedBody836_936 RemovedBody836_969

def RemovedBody836_971 : StackLang.HolProg 64 :=
.seq RemovedBody836_935 RemovedBody836_970

def RemovedBody836_972 : StackLang.HolProg 64 :=
.seq RemovedBody836_880 RemovedBody836_971

def RemovedBody836_973 : StackLang.HolProg 64 :=
.seq RemovedBody836_877 RemovedBody836_972

def RemovedBody836_974 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_975 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody836_973 RemovedBody836_974

def RemovedBody836_976 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_977 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_978 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody836_979 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_980 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_981 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4171#64)

def RemovedBody836_982 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_983 : StackLang.HolProg 64 :=
.seq RemovedBody836_981 RemovedBody836_982

def RemovedBody836_984 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_985 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_986 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_987 : StackLang.HolProg 64 :=
.seq RemovedBody836_985 RemovedBody836_986

def RemovedBody836_988 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_989 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_987 RemovedBody836_988

def RemovedBody836_990 : StackLang.HolProg 64 :=
.seq RemovedBody836_984 RemovedBody836_989

def RemovedBody836_991 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_992 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_993 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 29

def RemovedBody836_994 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_995 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_996 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_997 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_998 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_999 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1000 : StackLang.HolProg 64 :=
.seq RemovedBody836_998 RemovedBody836_999

def RemovedBody836_1001 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1002 : StackLang.HolProg 64 :=
.seq RemovedBody836_1000 RemovedBody836_1001

def RemovedBody836_1003 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1004 : StackLang.HolProg 64 :=
.seq RemovedBody836_1002 RemovedBody836_1003

def RemovedBody836_1005 : StackLang.HolProg 64 :=
.seq RemovedBody836_997 RemovedBody836_1004

def RemovedBody836_1006 : StackLang.HolProg 64 :=
.seq RemovedBody836_996 RemovedBody836_1005

def RemovedBody836_1007 : StackLang.HolProg 64 :=
.seq RemovedBody836_995 RemovedBody836_1006

def RemovedBody836_1008 : StackLang.HolProg 64 :=
.seq RemovedBody836_994 RemovedBody836_1007

def RemovedBody836_1009 : StackLang.HolProg 64 :=
.seq RemovedBody836_993 RemovedBody836_1008

def RemovedBody836_1010 : StackLang.HolProg 64 :=
.seq RemovedBody836_992 RemovedBody836_1009

def RemovedBody836_1011 : StackLang.HolProg 64 :=
.seq RemovedBody836_991 RemovedBody836_1010

def RemovedBody836_1012 : StackLang.HolProg 64 :=
.seq RemovedBody836_990 RemovedBody836_1011

def RemovedBody836_1013 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1014 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1015 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1016 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1017 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1018 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1019 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_1020 : StackLang.HolProg 64 :=
.seq RemovedBody836_1018 RemovedBody836_1019

def RemovedBody836_1021 : StackLang.HolProg 64 :=
.seq RemovedBody836_1017 RemovedBody836_1020

def RemovedBody836_1022 : StackLang.HolProg 64 :=
.seq RemovedBody836_1016 RemovedBody836_1021

def RemovedBody836_1023 : StackLang.HolProg 64 :=
.seq RemovedBody836_1015 RemovedBody836_1022

def RemovedBody836_1024 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1025 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1026 : StackLang.HolProg 64 :=
.seq RemovedBody836_1024 RemovedBody836_1025

def RemovedBody836_1027 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1023, 0, 836, 28)) (Sum.inl 68) (some (RemovedBody836_1026, 836, 29))

def RemovedBody836_1028 : StackLang.HolProg 64 :=
.seq RemovedBody836_1014 RemovedBody836_1027

def RemovedBody836_1029 : StackLang.HolProg 64 :=
.seq RemovedBody836_1013 RemovedBody836_1028

def RemovedBody836_1030 : StackLang.HolProg 64 :=
.seq RemovedBody836_1012 RemovedBody836_1029

def RemovedBody836_1031 : StackLang.HolProg 64 :=
.seq RemovedBody836_983 RemovedBody836_1030

def RemovedBody836_1032 : StackLang.HolProg 64 :=
.seq RemovedBody836_980 RemovedBody836_1031

def RemovedBody836_1033 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1034 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1035 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1036 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4172#64)

def RemovedBody836_1037 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1038 : StackLang.HolProg 64 :=
.seq RemovedBody836_1036 RemovedBody836_1037

def RemovedBody836_1039 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1040 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1041 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1042 : StackLang.HolProg 64 :=
.seq RemovedBody836_1040 RemovedBody836_1041

def RemovedBody836_1043 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1044 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1042 RemovedBody836_1043

def RemovedBody836_1045 : StackLang.HolProg 64 :=
.seq RemovedBody836_1039 RemovedBody836_1044

def RemovedBody836_1046 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1047 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1048 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 31

def RemovedBody836_1049 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1050 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1051 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1052 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1053 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1054 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1055 : StackLang.HolProg 64 :=
.seq RemovedBody836_1053 RemovedBody836_1054

def RemovedBody836_1056 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1057 : StackLang.HolProg 64 :=
.seq RemovedBody836_1055 RemovedBody836_1056

def RemovedBody836_1058 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1059 : StackLang.HolProg 64 :=
.seq RemovedBody836_1057 RemovedBody836_1058

def RemovedBody836_1060 : StackLang.HolProg 64 :=
.seq RemovedBody836_1052 RemovedBody836_1059

def RemovedBody836_1061 : StackLang.HolProg 64 :=
.seq RemovedBody836_1051 RemovedBody836_1060

def RemovedBody836_1062 : StackLang.HolProg 64 :=
.seq RemovedBody836_1050 RemovedBody836_1061

def RemovedBody836_1063 : StackLang.HolProg 64 :=
.seq RemovedBody836_1049 RemovedBody836_1062

def RemovedBody836_1064 : StackLang.HolProg 64 :=
.seq RemovedBody836_1048 RemovedBody836_1063

def RemovedBody836_1065 : StackLang.HolProg 64 :=
.seq RemovedBody836_1047 RemovedBody836_1064

def RemovedBody836_1066 : StackLang.HolProg 64 :=
.seq RemovedBody836_1046 RemovedBody836_1065

def RemovedBody836_1067 : StackLang.HolProg 64 :=
.seq RemovedBody836_1045 RemovedBody836_1066

def RemovedBody836_1068 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1069 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1070 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1071 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1072 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1073 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1074 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_1075 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1076 : StackLang.HolProg 64 :=
.seq RemovedBody836_1074 RemovedBody836_1075

def RemovedBody836_1077 : StackLang.HolProg 64 :=
.seq RemovedBody836_1073 RemovedBody836_1076

def RemovedBody836_1078 : StackLang.HolProg 64 :=
.seq RemovedBody836_1072 RemovedBody836_1077

def RemovedBody836_1079 : StackLang.HolProg 64 :=
.seq RemovedBody836_1071 RemovedBody836_1078

def RemovedBody836_1080 : StackLang.HolProg 64 :=
.seq RemovedBody836_1070 RemovedBody836_1079

def RemovedBody836_1081 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1082 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1083 : StackLang.HolProg 64 :=
.seq RemovedBody836_1081 RemovedBody836_1082

def RemovedBody836_1084 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1080, 0, 836, 30)) (Sum.inl 69) (some (RemovedBody836_1083, 836, 31))

def RemovedBody836_1085 : StackLang.HolProg 64 :=
.seq RemovedBody836_1069 RemovedBody836_1084

def RemovedBody836_1086 : StackLang.HolProg 64 :=
.seq RemovedBody836_1068 RemovedBody836_1085

def RemovedBody836_1087 : StackLang.HolProg 64 :=
.seq RemovedBody836_1067 RemovedBody836_1086

def RemovedBody836_1088 : StackLang.HolProg 64 :=
.seq RemovedBody836_1038 RemovedBody836_1087

def RemovedBody836_1089 : StackLang.HolProg 64 :=
.seq RemovedBody836_1035 RemovedBody836_1088

def RemovedBody836_1090 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1091 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1092 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody836_1093 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1094 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody836_1095 : StackLang.HolProg 64 :=
.seq RemovedBody836_1093 RemovedBody836_1094

def RemovedBody836_1096 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1097 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4173#64)

def RemovedBody836_1098 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1099 : StackLang.HolProg 64 :=
.seq RemovedBody836_1097 RemovedBody836_1098

def RemovedBody836_1100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1103 : StackLang.HolProg 64 :=
.seq RemovedBody836_1101 RemovedBody836_1102

def RemovedBody836_1104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1103 RemovedBody836_1104

def RemovedBody836_1106 : StackLang.HolProg 64 :=
.seq RemovedBody836_1100 RemovedBody836_1105

def RemovedBody836_1107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 33

def RemovedBody836_1110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1116 : StackLang.HolProg 64 :=
.seq RemovedBody836_1114 RemovedBody836_1115

def RemovedBody836_1117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1118 : StackLang.HolProg 64 :=
.seq RemovedBody836_1116 RemovedBody836_1117

def RemovedBody836_1119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1120 : StackLang.HolProg 64 :=
.seq RemovedBody836_1118 RemovedBody836_1119

def RemovedBody836_1121 : StackLang.HolProg 64 :=
.seq RemovedBody836_1113 RemovedBody836_1120

def RemovedBody836_1122 : StackLang.HolProg 64 :=
.seq RemovedBody836_1112 RemovedBody836_1121

def RemovedBody836_1123 : StackLang.HolProg 64 :=
.seq RemovedBody836_1111 RemovedBody836_1122

def RemovedBody836_1124 : StackLang.HolProg 64 :=
.seq RemovedBody836_1110 RemovedBody836_1123

def RemovedBody836_1125 : StackLang.HolProg 64 :=
.seq RemovedBody836_1109 RemovedBody836_1124

def RemovedBody836_1126 : StackLang.HolProg 64 :=
.seq RemovedBody836_1108 RemovedBody836_1125

def RemovedBody836_1127 : StackLang.HolProg 64 :=
.seq RemovedBody836_1107 RemovedBody836_1126

def RemovedBody836_1128 : StackLang.HolProg 64 :=
.seq RemovedBody836_1106 RemovedBody836_1127

def RemovedBody836_1129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_1136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1137 : StackLang.HolProg 64 :=
.seq RemovedBody836_1135 RemovedBody836_1136

def RemovedBody836_1138 : StackLang.HolProg 64 :=
.seq RemovedBody836_1134 RemovedBody836_1137

def RemovedBody836_1139 : StackLang.HolProg 64 :=
.seq RemovedBody836_1133 RemovedBody836_1138

def RemovedBody836_1140 : StackLang.HolProg 64 :=
.seq RemovedBody836_1132 RemovedBody836_1139

def RemovedBody836_1141 : StackLang.HolProg 64 :=
.seq RemovedBody836_1131 RemovedBody836_1140

def RemovedBody836_1142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1143 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1144 : StackLang.HolProg 64 :=
.seq RemovedBody836_1142 RemovedBody836_1143

def RemovedBody836_1145 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1141, 0, 836, 32)) (Sum.inl 68) (some (RemovedBody836_1144, 836, 33))

def RemovedBody836_1146 : StackLang.HolProg 64 :=
.seq RemovedBody836_1130 RemovedBody836_1145

def RemovedBody836_1147 : StackLang.HolProg 64 :=
.seq RemovedBody836_1129 RemovedBody836_1146

def RemovedBody836_1148 : StackLang.HolProg 64 :=
.seq RemovedBody836_1128 RemovedBody836_1147

def RemovedBody836_1149 : StackLang.HolProg 64 :=
.seq RemovedBody836_1099 RemovedBody836_1148

def RemovedBody836_1150 : StackLang.HolProg 64 :=
.seq RemovedBody836_1096 RemovedBody836_1149

def RemovedBody836_1151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody836_1154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1156 : StackLang.HolProg 64 :=
.seq RemovedBody836_1154 RemovedBody836_1155

def RemovedBody836_1157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4174#64)

def RemovedBody836_1159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1160 : StackLang.HolProg 64 :=
.seq RemovedBody836_1158 RemovedBody836_1159

def RemovedBody836_1161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1164 : StackLang.HolProg 64 :=
.seq RemovedBody836_1162 RemovedBody836_1163

def RemovedBody836_1165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1166 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1164 RemovedBody836_1165

def RemovedBody836_1167 : StackLang.HolProg 64 :=
.seq RemovedBody836_1161 RemovedBody836_1166

def RemovedBody836_1168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 35

def RemovedBody836_1171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1177 : StackLang.HolProg 64 :=
.seq RemovedBody836_1175 RemovedBody836_1176

def RemovedBody836_1178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1179 : StackLang.HolProg 64 :=
.seq RemovedBody836_1177 RemovedBody836_1178

def RemovedBody836_1180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1181 : StackLang.HolProg 64 :=
.seq RemovedBody836_1179 RemovedBody836_1180

def RemovedBody836_1182 : StackLang.HolProg 64 :=
.seq RemovedBody836_1174 RemovedBody836_1181

def RemovedBody836_1183 : StackLang.HolProg 64 :=
.seq RemovedBody836_1173 RemovedBody836_1182

def RemovedBody836_1184 : StackLang.HolProg 64 :=
.seq RemovedBody836_1172 RemovedBody836_1183

def RemovedBody836_1185 : StackLang.HolProg 64 :=
.seq RemovedBody836_1171 RemovedBody836_1184

def RemovedBody836_1186 : StackLang.HolProg 64 :=
.seq RemovedBody836_1170 RemovedBody836_1185

def RemovedBody836_1187 : StackLang.HolProg 64 :=
.seq RemovedBody836_1169 RemovedBody836_1186

def RemovedBody836_1188 : StackLang.HolProg 64 :=
.seq RemovedBody836_1168 RemovedBody836_1187

def RemovedBody836_1189 : StackLang.HolProg 64 :=
.seq RemovedBody836_1167 RemovedBody836_1188

def RemovedBody836_1190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_1197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1198 : StackLang.HolProg 64 :=
.seq RemovedBody836_1196 RemovedBody836_1197

def RemovedBody836_1199 : StackLang.HolProg 64 :=
.seq RemovedBody836_1195 RemovedBody836_1198

def RemovedBody836_1200 : StackLang.HolProg 64 :=
.seq RemovedBody836_1194 RemovedBody836_1199

def RemovedBody836_1201 : StackLang.HolProg 64 :=
.seq RemovedBody836_1193 RemovedBody836_1200

def RemovedBody836_1202 : StackLang.HolProg 64 :=
.seq RemovedBody836_1192 RemovedBody836_1201

def RemovedBody836_1203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1204 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1205 : StackLang.HolProg 64 :=
.seq RemovedBody836_1203 RemovedBody836_1204

def RemovedBody836_1206 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1202, 0, 836, 34)) (Sum.inl 68) (some (RemovedBody836_1205, 836, 35))

def RemovedBody836_1207 : StackLang.HolProg 64 :=
.seq RemovedBody836_1191 RemovedBody836_1206

def RemovedBody836_1208 : StackLang.HolProg 64 :=
.seq RemovedBody836_1190 RemovedBody836_1207

def RemovedBody836_1209 : StackLang.HolProg 64 :=
.seq RemovedBody836_1189 RemovedBody836_1208

def RemovedBody836_1210 : StackLang.HolProg 64 :=
.seq RemovedBody836_1160 RemovedBody836_1209

def RemovedBody836_1211 : StackLang.HolProg 64 :=
.seq RemovedBody836_1157 RemovedBody836_1210

def RemovedBody836_1212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def RemovedBody836_1215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1217 : StackLang.HolProg 64 :=
.seq RemovedBody836_1215 RemovedBody836_1216

def RemovedBody836_1218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4175#64)

def RemovedBody836_1220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1221 : StackLang.HolProg 64 :=
.seq RemovedBody836_1219 RemovedBody836_1220

def RemovedBody836_1222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1225 : StackLang.HolProg 64 :=
.seq RemovedBody836_1223 RemovedBody836_1224

def RemovedBody836_1226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1227 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1225 RemovedBody836_1226

def RemovedBody836_1228 : StackLang.HolProg 64 :=
.seq RemovedBody836_1222 RemovedBody836_1227

def RemovedBody836_1229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 37

def RemovedBody836_1232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1238 : StackLang.HolProg 64 :=
.seq RemovedBody836_1236 RemovedBody836_1237

def RemovedBody836_1239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1240 : StackLang.HolProg 64 :=
.seq RemovedBody836_1238 RemovedBody836_1239

def RemovedBody836_1241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1242 : StackLang.HolProg 64 :=
.seq RemovedBody836_1240 RemovedBody836_1241

def RemovedBody836_1243 : StackLang.HolProg 64 :=
.seq RemovedBody836_1235 RemovedBody836_1242

def RemovedBody836_1244 : StackLang.HolProg 64 :=
.seq RemovedBody836_1234 RemovedBody836_1243

def RemovedBody836_1245 : StackLang.HolProg 64 :=
.seq RemovedBody836_1233 RemovedBody836_1244

def RemovedBody836_1246 : StackLang.HolProg 64 :=
.seq RemovedBody836_1232 RemovedBody836_1245

def RemovedBody836_1247 : StackLang.HolProg 64 :=
.seq RemovedBody836_1231 RemovedBody836_1246

def RemovedBody836_1248 : StackLang.HolProg 64 :=
.seq RemovedBody836_1230 RemovedBody836_1247

def RemovedBody836_1249 : StackLang.HolProg 64 :=
.seq RemovedBody836_1229 RemovedBody836_1248

def RemovedBody836_1250 : StackLang.HolProg 64 :=
.seq RemovedBody836_1228 RemovedBody836_1249

def RemovedBody836_1251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody836_1258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1262 : StackLang.HolProg 64 :=
.seq RemovedBody836_1260 RemovedBody836_1261

def RemovedBody836_1263 : StackLang.HolProg 64 :=
.seq RemovedBody836_1259 RemovedBody836_1262

def RemovedBody836_1264 : StackLang.HolProg 64 :=
.seq RemovedBody836_1258 RemovedBody836_1263

def RemovedBody836_1265 : StackLang.HolProg 64 :=
.seq RemovedBody836_1257 RemovedBody836_1264

def RemovedBody836_1266 : StackLang.HolProg 64 :=
.seq RemovedBody836_1256 RemovedBody836_1265

def RemovedBody836_1267 : StackLang.HolProg 64 :=
.seq RemovedBody836_1255 RemovedBody836_1266

def RemovedBody836_1268 : StackLang.HolProg 64 :=
.seq RemovedBody836_1254 RemovedBody836_1267

def RemovedBody836_1269 : StackLang.HolProg 64 :=
.seq RemovedBody836_1253 RemovedBody836_1268

def RemovedBody836_1270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1274 : StackLang.HolProg 64 :=
.seq RemovedBody836_1272 RemovedBody836_1273

def RemovedBody836_1275 : StackLang.HolProg 64 :=
.seq RemovedBody836_1271 RemovedBody836_1274

def RemovedBody836_1276 : StackLang.HolProg 64 :=
.seq RemovedBody836_1270 RemovedBody836_1275

def RemovedBody836_1277 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1278 : StackLang.HolProg 64 :=
.seq RemovedBody836_1276 RemovedBody836_1277

def RemovedBody836_1279 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1269, 0, 836, 36)) (Sum.inl 68) (some (RemovedBody836_1278, 836, 37))

def RemovedBody836_1280 : StackLang.HolProg 64 :=
.seq RemovedBody836_1252 RemovedBody836_1279

def RemovedBody836_1281 : StackLang.HolProg 64 :=
.seq RemovedBody836_1251 RemovedBody836_1280

def RemovedBody836_1282 : StackLang.HolProg 64 :=
.seq RemovedBody836_1250 RemovedBody836_1281

def RemovedBody836_1283 : StackLang.HolProg 64 :=
.seq RemovedBody836_1221 RemovedBody836_1282

def RemovedBody836_1284 : StackLang.HolProg 64 :=
.seq RemovedBody836_1218 RemovedBody836_1283

def RemovedBody836_1285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_1287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 96#64)

def RemovedBody836_1288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1293 : StackLang.HolProg 64 :=
.seq RemovedBody836_1291 RemovedBody836_1292

def RemovedBody836_1294 : StackLang.HolProg 64 :=
.seq RemovedBody836_1290 RemovedBody836_1293

def RemovedBody836_1295 : StackLang.HolProg 64 :=
.seq RemovedBody836_1289 RemovedBody836_1294

def RemovedBody836_1296 : StackLang.HolProg 64 :=
.seq RemovedBody836_1288 RemovedBody836_1295

def RemovedBody836_1297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4176#64)

def RemovedBody836_1299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1300 : StackLang.HolProg 64 :=
.seq RemovedBody836_1298 RemovedBody836_1299

def RemovedBody836_1301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1304 : StackLang.HolProg 64 :=
.seq RemovedBody836_1302 RemovedBody836_1303

def RemovedBody836_1305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1306 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1304 RemovedBody836_1305

def RemovedBody836_1307 : StackLang.HolProg 64 :=
.seq RemovedBody836_1301 RemovedBody836_1306

def RemovedBody836_1308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 39

def RemovedBody836_1311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1317 : StackLang.HolProg 64 :=
.seq RemovedBody836_1315 RemovedBody836_1316

def RemovedBody836_1318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1319 : StackLang.HolProg 64 :=
.seq RemovedBody836_1317 RemovedBody836_1318

def RemovedBody836_1320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1321 : StackLang.HolProg 64 :=
.seq RemovedBody836_1319 RemovedBody836_1320

def RemovedBody836_1322 : StackLang.HolProg 64 :=
.seq RemovedBody836_1314 RemovedBody836_1321

def RemovedBody836_1323 : StackLang.HolProg 64 :=
.seq RemovedBody836_1313 RemovedBody836_1322

def RemovedBody836_1324 : StackLang.HolProg 64 :=
.seq RemovedBody836_1312 RemovedBody836_1323

def RemovedBody836_1325 : StackLang.HolProg 64 :=
.seq RemovedBody836_1311 RemovedBody836_1324

def RemovedBody836_1326 : StackLang.HolProg 64 :=
.seq RemovedBody836_1310 RemovedBody836_1325

def RemovedBody836_1327 : StackLang.HolProg 64 :=
.seq RemovedBody836_1309 RemovedBody836_1326

def RemovedBody836_1328 : StackLang.HolProg 64 :=
.seq RemovedBody836_1308 RemovedBody836_1327

def RemovedBody836_1329 : StackLang.HolProg 64 :=
.seq RemovedBody836_1307 RemovedBody836_1328

def RemovedBody836_1330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1341 : StackLang.HolProg 64 :=
.seq RemovedBody836_1339 RemovedBody836_1340

def RemovedBody836_1342 : StackLang.HolProg 64 :=
.seq RemovedBody836_1338 RemovedBody836_1341

def RemovedBody836_1343 : StackLang.HolProg 64 :=
.seq RemovedBody836_1337 RemovedBody836_1342

def RemovedBody836_1344 : StackLang.HolProg 64 :=
.seq RemovedBody836_1336 RemovedBody836_1343

def RemovedBody836_1345 : StackLang.HolProg 64 :=
.seq RemovedBody836_1335 RemovedBody836_1344

def RemovedBody836_1346 : StackLang.HolProg 64 :=
.seq RemovedBody836_1334 RemovedBody836_1345

def RemovedBody836_1347 : StackLang.HolProg 64 :=
.seq RemovedBody836_1333 RemovedBody836_1346

def RemovedBody836_1348 : StackLang.HolProg 64 :=
.seq RemovedBody836_1332 RemovedBody836_1347

def RemovedBody836_1349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1354 : StackLang.HolProg 64 :=
.seq RemovedBody836_1352 RemovedBody836_1353

def RemovedBody836_1355 : StackLang.HolProg 64 :=
.seq RemovedBody836_1351 RemovedBody836_1354

def RemovedBody836_1356 : StackLang.HolProg 64 :=
.seq RemovedBody836_1350 RemovedBody836_1355

def RemovedBody836_1357 : StackLang.HolProg 64 :=
.seq RemovedBody836_1349 RemovedBody836_1356

def RemovedBody836_1358 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1359 : StackLang.HolProg 64 :=
.seq RemovedBody836_1357 RemovedBody836_1358

def RemovedBody836_1360 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1348, 0, 836, 38)) (Sum.inl 484) (some (RemovedBody836_1359, 836, 39))

def RemovedBody836_1361 : StackLang.HolProg 64 :=
.seq RemovedBody836_1331 RemovedBody836_1360

def RemovedBody836_1362 : StackLang.HolProg 64 :=
.seq RemovedBody836_1330 RemovedBody836_1361

def RemovedBody836_1363 : StackLang.HolProg 64 :=
.seq RemovedBody836_1329 RemovedBody836_1362

def RemovedBody836_1364 : StackLang.HolProg 64 :=
.seq RemovedBody836_1300 RemovedBody836_1363

def RemovedBody836_1365 : StackLang.HolProg 64 :=
.seq RemovedBody836_1297 RemovedBody836_1364

def RemovedBody836_1366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_1368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1373 : StackLang.HolProg 64 :=
.seq RemovedBody836_1371 RemovedBody836_1372

def RemovedBody836_1374 : StackLang.HolProg 64 :=
.seq RemovedBody836_1370 RemovedBody836_1373

def RemovedBody836_1375 : StackLang.HolProg 64 :=
.seq RemovedBody836_1369 RemovedBody836_1374

def RemovedBody836_1376 : StackLang.HolProg 64 :=
.seq RemovedBody836_1368 RemovedBody836_1375

def RemovedBody836_1377 : StackLang.HolProg 64 :=
.seq RemovedBody836_1367 RemovedBody836_1376

def RemovedBody836_1378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4177#64)

def RemovedBody836_1380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1381 : StackLang.HolProg 64 :=
.seq RemovedBody836_1379 RemovedBody836_1380

def RemovedBody836_1382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1385 : StackLang.HolProg 64 :=
.seq RemovedBody836_1383 RemovedBody836_1384

def RemovedBody836_1386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1387 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1385 RemovedBody836_1386

def RemovedBody836_1388 : StackLang.HolProg 64 :=
.seq RemovedBody836_1382 RemovedBody836_1387

def RemovedBody836_1389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 41

def RemovedBody836_1392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1398 : StackLang.HolProg 64 :=
.seq RemovedBody836_1396 RemovedBody836_1397

def RemovedBody836_1399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1400 : StackLang.HolProg 64 :=
.seq RemovedBody836_1398 RemovedBody836_1399

def RemovedBody836_1401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1402 : StackLang.HolProg 64 :=
.seq RemovedBody836_1400 RemovedBody836_1401

def RemovedBody836_1403 : StackLang.HolProg 64 :=
.seq RemovedBody836_1395 RemovedBody836_1402

def RemovedBody836_1404 : StackLang.HolProg 64 :=
.seq RemovedBody836_1394 RemovedBody836_1403

def RemovedBody836_1405 : StackLang.HolProg 64 :=
.seq RemovedBody836_1393 RemovedBody836_1404

def RemovedBody836_1406 : StackLang.HolProg 64 :=
.seq RemovedBody836_1392 RemovedBody836_1405

def RemovedBody836_1407 : StackLang.HolProg 64 :=
.seq RemovedBody836_1391 RemovedBody836_1406

def RemovedBody836_1408 : StackLang.HolProg 64 :=
.seq RemovedBody836_1390 RemovedBody836_1407

def RemovedBody836_1409 : StackLang.HolProg 64 :=
.seq RemovedBody836_1389 RemovedBody836_1408

def RemovedBody836_1410 : StackLang.HolProg 64 :=
.seq RemovedBody836_1388 RemovedBody836_1409

def RemovedBody836_1411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1422 : StackLang.HolProg 64 :=
.seq RemovedBody836_1420 RemovedBody836_1421

def RemovedBody836_1423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1424 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1425 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody836_1426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1427 : StackLang.HolProg 64 :=
.seq RemovedBody836_1425 RemovedBody836_1426

def RemovedBody836_1428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1431 : StackLang.HolProg 64 :=
.seq RemovedBody836_1429 RemovedBody836_1430

def RemovedBody836_1432 : StackLang.HolProg 64 :=
.seq RemovedBody836_1428 RemovedBody836_1431

def RemovedBody836_1433 : StackLang.HolProg 64 :=
.seq RemovedBody836_1427 RemovedBody836_1432

def RemovedBody836_1434 : StackLang.HolProg 64 :=
.seq RemovedBody836_1424 RemovedBody836_1433

def RemovedBody836_1435 : StackLang.HolProg 64 :=
.seq RemovedBody836_1423 RemovedBody836_1434

def RemovedBody836_1436 : StackLang.HolProg 64 :=
.seq RemovedBody836_1422 RemovedBody836_1435

def RemovedBody836_1437 : StackLang.HolProg 64 :=
.seq RemovedBody836_1419 RemovedBody836_1436

def RemovedBody836_1438 : StackLang.HolProg 64 :=
.seq RemovedBody836_1418 RemovedBody836_1437

def RemovedBody836_1439 : StackLang.HolProg 64 :=
.seq RemovedBody836_1417 RemovedBody836_1438

def RemovedBody836_1440 : StackLang.HolProg 64 :=
.seq RemovedBody836_1416 RemovedBody836_1439

def RemovedBody836_1441 : StackLang.HolProg 64 :=
.seq RemovedBody836_1415 RemovedBody836_1440

def RemovedBody836_1442 : StackLang.HolProg 64 :=
.seq RemovedBody836_1414 RemovedBody836_1441

def RemovedBody836_1443 : StackLang.HolProg 64 :=
.seq RemovedBody836_1413 RemovedBody836_1442

def RemovedBody836_1444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1449 : StackLang.HolProg 64 :=
.seq RemovedBody836_1447 RemovedBody836_1448

def RemovedBody836_1450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody836_1453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1454 : StackLang.HolProg 64 :=
.seq RemovedBody836_1452 RemovedBody836_1453

def RemovedBody836_1455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1457 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1458 : StackLang.HolProg 64 :=
.seq RemovedBody836_1456 RemovedBody836_1457

def RemovedBody836_1459 : StackLang.HolProg 64 :=
.seq RemovedBody836_1455 RemovedBody836_1458

def RemovedBody836_1460 : StackLang.HolProg 64 :=
.seq RemovedBody836_1454 RemovedBody836_1459

def RemovedBody836_1461 : StackLang.HolProg 64 :=
.seq RemovedBody836_1451 RemovedBody836_1460

def RemovedBody836_1462 : StackLang.HolProg 64 :=
.seq RemovedBody836_1450 RemovedBody836_1461

def RemovedBody836_1463 : StackLang.HolProg 64 :=
.seq RemovedBody836_1449 RemovedBody836_1462

def RemovedBody836_1464 : StackLang.HolProg 64 :=
.seq RemovedBody836_1446 RemovedBody836_1463

def RemovedBody836_1465 : StackLang.HolProg 64 :=
.seq RemovedBody836_1445 RemovedBody836_1464

def RemovedBody836_1466 : StackLang.HolProg 64 :=
.seq RemovedBody836_1444 RemovedBody836_1465

def RemovedBody836_1467 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1468 : StackLang.HolProg 64 :=
.seq RemovedBody836_1466 RemovedBody836_1467

def RemovedBody836_1469 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1443, 0, 836, 40)) (Sum.inl 484) (some (RemovedBody836_1468, 836, 41))

def RemovedBody836_1470 : StackLang.HolProg 64 :=
.seq RemovedBody836_1412 RemovedBody836_1469

def RemovedBody836_1471 : StackLang.HolProg 64 :=
.seq RemovedBody836_1411 RemovedBody836_1470

def RemovedBody836_1472 : StackLang.HolProg 64 :=
.seq RemovedBody836_1410 RemovedBody836_1471

def RemovedBody836_1473 : StackLang.HolProg 64 :=
.seq RemovedBody836_1381 RemovedBody836_1472

def RemovedBody836_1474 : StackLang.HolProg 64 :=
.seq RemovedBody836_1378 RemovedBody836_1473

def RemovedBody836_1475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody836_1477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody836_1478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1480 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1481 : StackLang.HolProg 64 :=
.seq RemovedBody836_1479 RemovedBody836_1480

def RemovedBody836_1482 : StackLang.HolProg 64 :=
.seq RemovedBody836_1478 RemovedBody836_1481

def RemovedBody836_1483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4178#64)

def RemovedBody836_1485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1486 : StackLang.HolProg 64 :=
.seq RemovedBody836_1484 RemovedBody836_1485

def RemovedBody836_1487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1490 : StackLang.HolProg 64 :=
.seq RemovedBody836_1488 RemovedBody836_1489

def RemovedBody836_1491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1492 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1490 RemovedBody836_1491

def RemovedBody836_1493 : StackLang.HolProg 64 :=
.seq RemovedBody836_1487 RemovedBody836_1492

def RemovedBody836_1494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1495 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 43

def RemovedBody836_1497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1499 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1500 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1501 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1503 : StackLang.HolProg 64 :=
.seq RemovedBody836_1501 RemovedBody836_1502

def RemovedBody836_1504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1505 : StackLang.HolProg 64 :=
.seq RemovedBody836_1503 RemovedBody836_1504

def RemovedBody836_1506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1507 : StackLang.HolProg 64 :=
.seq RemovedBody836_1505 RemovedBody836_1506

def RemovedBody836_1508 : StackLang.HolProg 64 :=
.seq RemovedBody836_1500 RemovedBody836_1507

def RemovedBody836_1509 : StackLang.HolProg 64 :=
.seq RemovedBody836_1499 RemovedBody836_1508

def RemovedBody836_1510 : StackLang.HolProg 64 :=
.seq RemovedBody836_1498 RemovedBody836_1509

def RemovedBody836_1511 : StackLang.HolProg 64 :=
.seq RemovedBody836_1497 RemovedBody836_1510

def RemovedBody836_1512 : StackLang.HolProg 64 :=
.seq RemovedBody836_1496 RemovedBody836_1511

def RemovedBody836_1513 : StackLang.HolProg 64 :=
.seq RemovedBody836_1495 RemovedBody836_1512

def RemovedBody836_1514 : StackLang.HolProg 64 :=
.seq RemovedBody836_1494 RemovedBody836_1513

def RemovedBody836_1515 : StackLang.HolProg 64 :=
.seq RemovedBody836_1493 RemovedBody836_1514

def RemovedBody836_1516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1517 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1519 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1520 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1530 : StackLang.HolProg 64 :=
.seq RemovedBody836_1528 RemovedBody836_1529

def RemovedBody836_1531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1532 : StackLang.HolProg 64 :=
.seq RemovedBody836_1530 RemovedBody836_1531

def RemovedBody836_1533 : StackLang.HolProg 64 :=
.seq RemovedBody836_1527 RemovedBody836_1532

def RemovedBody836_1534 : StackLang.HolProg 64 :=
.seq RemovedBody836_1526 RemovedBody836_1533

def RemovedBody836_1535 : StackLang.HolProg 64 :=
.seq RemovedBody836_1525 RemovedBody836_1534

def RemovedBody836_1536 : StackLang.HolProg 64 :=
.seq RemovedBody836_1524 RemovedBody836_1535

def RemovedBody836_1537 : StackLang.HolProg 64 :=
.seq RemovedBody836_1523 RemovedBody836_1536

def RemovedBody836_1538 : StackLang.HolProg 64 :=
.seq RemovedBody836_1522 RemovedBody836_1537

def RemovedBody836_1539 : StackLang.HolProg 64 :=
.seq RemovedBody836_1521 RemovedBody836_1538

def RemovedBody836_1540 : StackLang.HolProg 64 :=
.seq RemovedBody836_1520 RemovedBody836_1539

def RemovedBody836_1541 : StackLang.HolProg 64 :=
.seq RemovedBody836_1519 RemovedBody836_1540

def RemovedBody836_1542 : StackLang.HolProg 64 :=
.seq RemovedBody836_1518 RemovedBody836_1541

def RemovedBody836_1543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 64#64))

def RemovedBody836_1547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 56#64))

def RemovedBody836_1548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 48#64))

def RemovedBody836_1549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody836_1550 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1551 : StackLang.HolProg 64 :=
.seq RemovedBody836_1549 RemovedBody836_1550

def RemovedBody836_1552 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody836_1553 : StackLang.HolProg 64 :=
.seq RemovedBody836_1551 RemovedBody836_1552

def RemovedBody836_1554 : StackLang.HolProg 64 :=
.seq RemovedBody836_1548 RemovedBody836_1553

def RemovedBody836_1555 : StackLang.HolProg 64 :=
.seq RemovedBody836_1547 RemovedBody836_1554

def RemovedBody836_1556 : StackLang.HolProg 64 :=
.seq RemovedBody836_1546 RemovedBody836_1555

def RemovedBody836_1557 : StackLang.HolProg 64 :=
.seq RemovedBody836_1545 RemovedBody836_1556

def RemovedBody836_1558 : StackLang.HolProg 64 :=
.seq RemovedBody836_1544 RemovedBody836_1557

def RemovedBody836_1559 : StackLang.HolProg 64 :=
.seq RemovedBody836_1543 RemovedBody836_1558

def RemovedBody836_1560 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1561 : StackLang.HolProg 64 :=
.seq RemovedBody836_1559 RemovedBody836_1560

def RemovedBody836_1562 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1542, 0, 836, 42)) (Sum.inl 484) (some (RemovedBody836_1561, 836, 43))

def RemovedBody836_1563 : StackLang.HolProg 64 :=
.seq RemovedBody836_1517 RemovedBody836_1562

def RemovedBody836_1564 : StackLang.HolProg 64 :=
.seq RemovedBody836_1516 RemovedBody836_1563

def RemovedBody836_1565 : StackLang.HolProg 64 :=
.seq RemovedBody836_1515 RemovedBody836_1564

def RemovedBody836_1566 : StackLang.HolProg 64 :=
.seq RemovedBody836_1486 RemovedBody836_1565

def RemovedBody836_1567 : StackLang.HolProg 64 :=
.seq RemovedBody836_1483 RemovedBody836_1566

def RemovedBody836_1568 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1569 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_1570 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1571 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1572 : StackLang.HolProg 64 :=
.seq RemovedBody836_1570 RemovedBody836_1571

def RemovedBody836_1573 : StackLang.HolProg 64 :=
.seq RemovedBody836_1569 RemovedBody836_1572

def RemovedBody836_1574 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1575 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4179#64)

def RemovedBody836_1576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1577 : StackLang.HolProg 64 :=
.seq RemovedBody836_1575 RemovedBody836_1576

def RemovedBody836_1578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1581 : StackLang.HolProg 64 :=
.seq RemovedBody836_1579 RemovedBody836_1580

def RemovedBody836_1582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1583 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1581 RemovedBody836_1582

def RemovedBody836_1584 : StackLang.HolProg 64 :=
.seq RemovedBody836_1578 RemovedBody836_1583

def RemovedBody836_1585 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 45

def RemovedBody836_1588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1589 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1591 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1592 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1594 : StackLang.HolProg 64 :=
.seq RemovedBody836_1592 RemovedBody836_1593

def RemovedBody836_1595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1596 : StackLang.HolProg 64 :=
.seq RemovedBody836_1594 RemovedBody836_1595

def RemovedBody836_1597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1598 : StackLang.HolProg 64 :=
.seq RemovedBody836_1596 RemovedBody836_1597

def RemovedBody836_1599 : StackLang.HolProg 64 :=
.seq RemovedBody836_1591 RemovedBody836_1598

def RemovedBody836_1600 : StackLang.HolProg 64 :=
.seq RemovedBody836_1590 RemovedBody836_1599

def RemovedBody836_1601 : StackLang.HolProg 64 :=
.seq RemovedBody836_1589 RemovedBody836_1600

def RemovedBody836_1602 : StackLang.HolProg 64 :=
.seq RemovedBody836_1588 RemovedBody836_1601

def RemovedBody836_1603 : StackLang.HolProg 64 :=
.seq RemovedBody836_1587 RemovedBody836_1602

def RemovedBody836_1604 : StackLang.HolProg 64 :=
.seq RemovedBody836_1586 RemovedBody836_1603

def RemovedBody836_1605 : StackLang.HolProg 64 :=
.seq RemovedBody836_1585 RemovedBody836_1604

def RemovedBody836_1606 : StackLang.HolProg 64 :=
.seq RemovedBody836_1584 RemovedBody836_1605

def RemovedBody836_1607 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1608 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1609 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1610 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1611 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1612 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1613 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1614 : StackLang.HolProg 64 :=
.seq RemovedBody836_1612 RemovedBody836_1613

def RemovedBody836_1615 : StackLang.HolProg 64 :=
.seq RemovedBody836_1611 RemovedBody836_1614

def RemovedBody836_1616 : StackLang.HolProg 64 :=
.seq RemovedBody836_1610 RemovedBody836_1615

def RemovedBody836_1617 : StackLang.HolProg 64 :=
.seq RemovedBody836_1609 RemovedBody836_1616

def RemovedBody836_1618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 72#64))

def RemovedBody836_1619 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1620 : StackLang.HolProg 64 :=
.seq RemovedBody836_1618 RemovedBody836_1619

def RemovedBody836_1621 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1617, 0, 836, 44)) (Sum.inl 641) (some (RemovedBody836_1620, 836, 45))

def RemovedBody836_1622 : StackLang.HolProg 64 :=
.seq RemovedBody836_1608 RemovedBody836_1621

def RemovedBody836_1623 : StackLang.HolProg 64 :=
.seq RemovedBody836_1607 RemovedBody836_1622

def RemovedBody836_1624 : StackLang.HolProg 64 :=
.seq RemovedBody836_1606 RemovedBody836_1623

def RemovedBody836_1625 : StackLang.HolProg 64 :=
.seq RemovedBody836_1577 RemovedBody836_1624

def RemovedBody836_1626 : StackLang.HolProg 64 :=
.seq RemovedBody836_1574 RemovedBody836_1625

def RemovedBody836_1627 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody836_1629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1630 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4180#64)

def RemovedBody836_1631 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1632 : StackLang.HolProg 64 :=
.seq RemovedBody836_1630 RemovedBody836_1631

def RemovedBody836_1633 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1634 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody836_1635 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody836_1636 : StackLang.HolProg 64 :=
.seq RemovedBody836_1634 RemovedBody836_1635

def RemovedBody836_1637 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1638 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody836_1636 RemovedBody836_1637

def RemovedBody836_1639 : StackLang.HolProg 64 :=
.seq RemovedBody836_1633 RemovedBody836_1638

def RemovedBody836_1640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody836_1641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody836_1642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 836 47

def RemovedBody836_1643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody836_1644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody836_1648 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody836_1649 : StackLang.HolProg 64 :=
.seq RemovedBody836_1647 RemovedBody836_1648

def RemovedBody836_1650 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody836_1651 : StackLang.HolProg 64 :=
.seq RemovedBody836_1649 RemovedBody836_1650

def RemovedBody836_1652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1653 : StackLang.HolProg 64 :=
.seq RemovedBody836_1651 RemovedBody836_1652

def RemovedBody836_1654 : StackLang.HolProg 64 :=
.seq RemovedBody836_1646 RemovedBody836_1653

def RemovedBody836_1655 : StackLang.HolProg 64 :=
.seq RemovedBody836_1645 RemovedBody836_1654

def RemovedBody836_1656 : StackLang.HolProg 64 :=
.seq RemovedBody836_1644 RemovedBody836_1655

def RemovedBody836_1657 : StackLang.HolProg 64 :=
.seq RemovedBody836_1643 RemovedBody836_1656

def RemovedBody836_1658 : StackLang.HolProg 64 :=
.seq RemovedBody836_1642 RemovedBody836_1657

def RemovedBody836_1659 : StackLang.HolProg 64 :=
.seq RemovedBody836_1641 RemovedBody836_1658

def RemovedBody836_1660 : StackLang.HolProg 64 :=
.seq RemovedBody836_1640 RemovedBody836_1659

def RemovedBody836_1661 : StackLang.HolProg 64 :=
.seq RemovedBody836_1639 RemovedBody836_1660

def RemovedBody836_1662 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1663 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1664 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1665 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody836_1666 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody836_1667 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody836_1668 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody836_1669 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1670 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1671 : StackLang.HolProg 64 :=
.seq RemovedBody836_1669 RemovedBody836_1670

def RemovedBody836_1672 : StackLang.HolProg 64 :=
.seq RemovedBody836_1668 RemovedBody836_1671

def RemovedBody836_1673 : StackLang.HolProg 64 :=
.seq RemovedBody836_1667 RemovedBody836_1672

def RemovedBody836_1674 : StackLang.HolProg 64 :=
.seq RemovedBody836_1666 RemovedBody836_1673

def RemovedBody836_1675 : StackLang.HolProg 64 :=
.seq RemovedBody836_1665 RemovedBody836_1674

def RemovedBody836_1676 : StackLang.HolProg 64 :=
.seq RemovedBody836_1664 RemovedBody836_1675

def RemovedBody836_1677 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 96#64))

def RemovedBody836_1678 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 88#64))

def RemovedBody836_1679 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 80#64))

def RemovedBody836_1680 : StackLang.HolProg 64 :=
.seq RemovedBody836_1678 RemovedBody836_1679

def RemovedBody836_1681 : StackLang.HolProg 64 :=
.seq RemovedBody836_1677 RemovedBody836_1680

def RemovedBody836_1682 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody836_1683 : StackLang.HolProg 64 :=
.seq RemovedBody836_1681 RemovedBody836_1682

def RemovedBody836_1684 : StackLang.HolProg 64 :=
.call (some (RemovedBody836_1676, 0, 836, 46)) (Sum.inl 70) (some (RemovedBody836_1683, 836, 47))

def RemovedBody836_1685 : StackLang.HolProg 64 :=
.seq RemovedBody836_1663 RemovedBody836_1684

def RemovedBody836_1686 : StackLang.HolProg 64 :=
.seq RemovedBody836_1662 RemovedBody836_1685

def RemovedBody836_1687 : StackLang.HolProg 64 :=
.seq RemovedBody836_1661 RemovedBody836_1686

def RemovedBody836_1688 : StackLang.HolProg 64 :=
.seq RemovedBody836_1632 RemovedBody836_1687

def RemovedBody836_1689 : StackLang.HolProg 64 :=
.seq RemovedBody836_1629 RemovedBody836_1688

def RemovedBody836_1690 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody836_1691 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody836_1692 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody836_1693 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody836_1694 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody836_1695 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 120#64)))

def RemovedBody836_1696 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1697 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody836_1698 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1699 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody836_1700 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody836_1701 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1702 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody836_1703 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody836_1704 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody836_1705 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 104#64)))

def RemovedBody836_1706 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody836_1707 : StackLang.HolProg 64 :=
.seq RemovedBody836_1705 RemovedBody836_1706

def RemovedBody836_1708 : StackLang.HolProg 64 :=
.seq RemovedBody836_1704 RemovedBody836_1707

def RemovedBody836_1709 : StackLang.HolProg 64 :=
.seq RemovedBody836_1703 RemovedBody836_1708

def RemovedBody836_1710 : StackLang.HolProg 64 :=
.seq RemovedBody836_1702 RemovedBody836_1709

def RemovedBody836_1711 : StackLang.HolProg 64 :=
.seq RemovedBody836_1701 RemovedBody836_1710

def RemovedBody836_1712 : StackLang.HolProg 64 :=
.seq RemovedBody836_1700 RemovedBody836_1711

def RemovedBody836_1713 : StackLang.HolProg 64 :=
.seq RemovedBody836_1699 RemovedBody836_1712

def RemovedBody836_1714 : StackLang.HolProg 64 :=
.seq RemovedBody836_1698 RemovedBody836_1713

def RemovedBody836_1715 : StackLang.HolProg 64 :=
.seq RemovedBody836_1697 RemovedBody836_1714

def RemovedBody836_1716 : StackLang.HolProg 64 :=
.seq RemovedBody836_1696 RemovedBody836_1715

def RemovedBody836_1717 : StackLang.HolProg 64 :=
.seq RemovedBody836_1695 RemovedBody836_1716

def RemovedBody836_1718 : StackLang.HolProg 64 :=
.seq RemovedBody836_1694 RemovedBody836_1717

def RemovedBody836_1719 : StackLang.HolProg 64 :=
.seq RemovedBody836_1693 RemovedBody836_1718

def RemovedBody836_1720 : StackLang.HolProg 64 :=
.seq RemovedBody836_1692 RemovedBody836_1719

def RemovedBody836_1721 : StackLang.HolProg 64 :=
.seq RemovedBody836_1691 RemovedBody836_1720

def RemovedBody836_1722 : StackLang.HolProg 64 :=
.seq RemovedBody836_1690 RemovedBody836_1721

def RemovedBody836_1723 : StackLang.HolProg 64 :=
.seq RemovedBody836_1689 RemovedBody836_1722

def RemovedBody836_1724 : StackLang.HolProg 64 :=
.seq RemovedBody836_1628 RemovedBody836_1723

def RemovedBody836_1725 : StackLang.HolProg 64 :=
.seq RemovedBody836_1627 RemovedBody836_1724

def RemovedBody836_1726 : StackLang.HolProg 64 :=
.seq RemovedBody836_1626 RemovedBody836_1725

def RemovedBody836_1727 : StackLang.HolProg 64 :=
.seq RemovedBody836_1573 RemovedBody836_1726

def RemovedBody836_1728 : StackLang.HolProg 64 :=
.seq RemovedBody836_1568 RemovedBody836_1727

def RemovedBody836_1729 : StackLang.HolProg 64 :=
.seq RemovedBody836_1567 RemovedBody836_1728

def RemovedBody836_1730 : StackLang.HolProg 64 :=
.seq RemovedBody836_1482 RemovedBody836_1729

def RemovedBody836_1731 : StackLang.HolProg 64 :=
.seq RemovedBody836_1477 RemovedBody836_1730

def RemovedBody836_1732 : StackLang.HolProg 64 :=
.seq RemovedBody836_1476 RemovedBody836_1731

def RemovedBody836_1733 : StackLang.HolProg 64 :=
.seq RemovedBody836_1475 RemovedBody836_1732

def RemovedBody836_1734 : StackLang.HolProg 64 :=
.seq RemovedBody836_1474 RemovedBody836_1733

def RemovedBody836_1735 : StackLang.HolProg 64 :=
.seq RemovedBody836_1377 RemovedBody836_1734

def RemovedBody836_1736 : StackLang.HolProg 64 :=
.seq RemovedBody836_1366 RemovedBody836_1735

def RemovedBody836_1737 : StackLang.HolProg 64 :=
.seq RemovedBody836_1365 RemovedBody836_1736

def RemovedBody836_1738 : StackLang.HolProg 64 :=
.seq RemovedBody836_1296 RemovedBody836_1737

def RemovedBody836_1739 : StackLang.HolProg 64 :=
.seq RemovedBody836_1287 RemovedBody836_1738

def RemovedBody836_1740 : StackLang.HolProg 64 :=
.seq RemovedBody836_1286 RemovedBody836_1739

def RemovedBody836_1741 : StackLang.HolProg 64 :=
.seq RemovedBody836_1285 RemovedBody836_1740

def RemovedBody836_1742 : StackLang.HolProg 64 :=
.seq RemovedBody836_1284 RemovedBody836_1741

def RemovedBody836_1743 : StackLang.HolProg 64 :=
.seq RemovedBody836_1217 RemovedBody836_1742

def RemovedBody836_1744 : StackLang.HolProg 64 :=
.seq RemovedBody836_1214 RemovedBody836_1743

def RemovedBody836_1745 : StackLang.HolProg 64 :=
.seq RemovedBody836_1213 RemovedBody836_1744

def RemovedBody836_1746 : StackLang.HolProg 64 :=
.seq RemovedBody836_1212 RemovedBody836_1745

def RemovedBody836_1747 : StackLang.HolProg 64 :=
.seq RemovedBody836_1211 RemovedBody836_1746

def RemovedBody836_1748 : StackLang.HolProg 64 :=
.seq RemovedBody836_1156 RemovedBody836_1747

def RemovedBody836_1749 : StackLang.HolProg 64 :=
.seq RemovedBody836_1153 RemovedBody836_1748

def RemovedBody836_1750 : StackLang.HolProg 64 :=
.seq RemovedBody836_1152 RemovedBody836_1749

def RemovedBody836_1751 : StackLang.HolProg 64 :=
.seq RemovedBody836_1151 RemovedBody836_1750

def RemovedBody836_1752 : StackLang.HolProg 64 :=
.seq RemovedBody836_1150 RemovedBody836_1751

def RemovedBody836_1753 : StackLang.HolProg 64 :=
.seq RemovedBody836_1095 RemovedBody836_1752

def RemovedBody836_1754 : StackLang.HolProg 64 :=
.seq RemovedBody836_1092 RemovedBody836_1753

def RemovedBody836_1755 : StackLang.HolProg 64 :=
.seq RemovedBody836_1091 RemovedBody836_1754

def RemovedBody836_1756 : StackLang.HolProg 64 :=
.seq RemovedBody836_1090 RemovedBody836_1755

def RemovedBody836_1757 : StackLang.HolProg 64 :=
.seq RemovedBody836_1089 RemovedBody836_1756

def RemovedBody836_1758 : StackLang.HolProg 64 :=
.seq RemovedBody836_1034 RemovedBody836_1757

def RemovedBody836_1759 : StackLang.HolProg 64 :=
.seq RemovedBody836_1033 RemovedBody836_1758

def RemovedBody836_1760 : StackLang.HolProg 64 :=
.seq RemovedBody836_1032 RemovedBody836_1759

def RemovedBody836_1761 : StackLang.HolProg 64 :=
.seq RemovedBody836_979 RemovedBody836_1760

def RemovedBody836_1762 : StackLang.HolProg 64 :=
.seq RemovedBody836_978 RemovedBody836_1761

def RemovedBody836_1763 : StackLang.HolProg 64 :=
.seq RemovedBody836_977 RemovedBody836_1762

def RemovedBody836_1764 : StackLang.HolProg 64 :=
.seq RemovedBody836_976 RemovedBody836_1763

def RemovedBody836_1765 : StackLang.HolProg 64 :=
.seq RemovedBody836_975 RemovedBody836_1764

def RemovedBody836_1766 : StackLang.HolProg 64 :=
.seq RemovedBody836_876 RemovedBody836_1765

def RemovedBody836_1767 : StackLang.HolProg 64 :=
.seq RemovedBody836_875 RemovedBody836_1766

def RemovedBody836_1768 : StackLang.HolProg 64 :=
.seq RemovedBody836_874 RemovedBody836_1767

def RemovedBody836_1769 : StackLang.HolProg 64 :=
.seq RemovedBody836_873 RemovedBody836_1768

def RemovedBody836_1770 : StackLang.HolProg 64 :=
.seq RemovedBody836_862 RemovedBody836_1769

def RemovedBody836_1771 : StackLang.HolProg 64 :=
.seq RemovedBody836_861 RemovedBody836_1770

def RemovedBody836_1772 : StackLang.HolProg 64 :=
.seq RemovedBody836_860 RemovedBody836_1771

def RemovedBody836_1773 : StackLang.HolProg 64 :=
.seq RemovedBody836_859 RemovedBody836_1772

def RemovedBody836_1774 : StackLang.HolProg 64 :=
.seq RemovedBody836_848 RemovedBody836_1773

def RemovedBody836_1775 : StackLang.HolProg 64 :=
.seq RemovedBody836_847 RemovedBody836_1774

def RemovedBody836_1776 : StackLang.HolProg 64 :=
.seq RemovedBody836_846 RemovedBody836_1775

def RemovedBody836_1777 : StackLang.HolProg 64 :=
.seq RemovedBody836_845 RemovedBody836_1776

def RemovedBody836_1778 : StackLang.HolProg 64 :=
.seq RemovedBody836_788 RemovedBody836_1777

def RemovedBody836_1779 : StackLang.HolProg 64 :=
.seq RemovedBody836_787 RemovedBody836_1778

def RemovedBody836_1780 : StackLang.HolProg 64 :=
.seq RemovedBody836_786 RemovedBody836_1779

def RemovedBody836_1781 : StackLang.HolProg 64 :=
.seq RemovedBody836_733 RemovedBody836_1780

def RemovedBody836_1782 : StackLang.HolProg 64 :=
.seq RemovedBody836_726 RemovedBody836_1781

def RemovedBody836_1783 : StackLang.HolProg 64 :=
.seq RemovedBody836_725 RemovedBody836_1782

def RemovedBody836_1784 : StackLang.HolProg 64 :=
.seq RemovedBody836_656 RemovedBody836_1783

def RemovedBody836_1785 : StackLang.HolProg 64 :=
.seq RemovedBody836_655 RemovedBody836_1784

def RemovedBody836_1786 : StackLang.HolProg 64 :=
.seq RemovedBody836_654 RemovedBody836_1785

def RemovedBody836_1787 : StackLang.HolProg 64 :=
.seq RemovedBody836_581 RemovedBody836_1786

def RemovedBody836_1788 : StackLang.HolProg 64 :=
.seq RemovedBody836_570 RemovedBody836_1787

def RemovedBody836_1789 : StackLang.HolProg 64 :=
.seq RemovedBody836_569 RemovedBody836_1788

def RemovedBody836_1790 : StackLang.HolProg 64 :=
.seq RemovedBody836_502 RemovedBody836_1789

def RemovedBody836_1791 : StackLang.HolProg 64 :=
.seq RemovedBody836_495 RemovedBody836_1790

def RemovedBody836_1792 : StackLang.HolProg 64 :=
.seq RemovedBody836_494 RemovedBody836_1791

def RemovedBody836_1793 : StackLang.HolProg 64 :=
.seq RemovedBody836_493 RemovedBody836_1792

def RemovedBody836_1794 : StackLang.HolProg 64 :=
.seq RemovedBody836_492 RemovedBody836_1793

def RemovedBody836_1795 : StackLang.HolProg 64 :=
.seq RemovedBody836_491 RemovedBody836_1794

def RemovedBody836_1796 : StackLang.HolProg 64 :=
.seq RemovedBody836_490 RemovedBody836_1795

def RemovedBody836_1797 : StackLang.HolProg 64 :=
.seq RemovedBody836_489 RemovedBody836_1796

def RemovedBody836_1798 : StackLang.HolProg 64 :=
.seq RemovedBody836_474 RemovedBody836_1797

def RemovedBody836_1799 : StackLang.HolProg 64 :=
.seq RemovedBody836_473 RemovedBody836_1798

def RemovedBody836_1800 : StackLang.HolProg 64 :=
.seq RemovedBody836_472 RemovedBody836_1799

def RemovedBody836_1801 : StackLang.HolProg 64 :=
.seq RemovedBody836_471 RemovedBody836_1800

def RemovedBody836_1802 : StackLang.HolProg 64 :=
.seq RemovedBody836_412 RemovedBody836_1801

def RemovedBody836_1803 : StackLang.HolProg 64 :=
.seq RemovedBody836_411 RemovedBody836_1802

def RemovedBody836_1804 : StackLang.HolProg 64 :=
.seq RemovedBody836_410 RemovedBody836_1803

def RemovedBody836_1805 : StackLang.HolProg 64 :=
.seq RemovedBody836_357 RemovedBody836_1804

def RemovedBody836_1806 : StackLang.HolProg 64 :=
.seq RemovedBody836_354 RemovedBody836_1805

def RemovedBody836_1807 : StackLang.HolProg 64 :=
.seq RemovedBody836_353 RemovedBody836_1806

def RemovedBody836_1808 : StackLang.HolProg 64 :=
.seq RemovedBody836_352 RemovedBody836_1807

def RemovedBody836_1809 : StackLang.HolProg 64 :=
.seq RemovedBody836_351 RemovedBody836_1808

def RemovedBody836_1810 : StackLang.HolProg 64 :=
.seq RemovedBody836_350 RemovedBody836_1809

def RemovedBody836_1811 : StackLang.HolProg 64 :=
.seq RemovedBody836_349 RemovedBody836_1810

def RemovedBody836_1812 : StackLang.HolProg 64 :=
.seq RemovedBody836_334 RemovedBody836_1811

def RemovedBody836_1813 : StackLang.HolProg 64 :=
.seq RemovedBody836_333 RemovedBody836_1812

def RemovedBody836_1814 : StackLang.HolProg 64 :=
.seq RemovedBody836_332 RemovedBody836_1813

def RemovedBody836_1815 : StackLang.HolProg 64 :=
.seq RemovedBody836_331 RemovedBody836_1814

def RemovedBody836_1816 : StackLang.HolProg 64 :=
.seq RemovedBody836_276 RemovedBody836_1815

def RemovedBody836_1817 : StackLang.HolProg 64 :=
.seq RemovedBody836_275 RemovedBody836_1816

def RemovedBody836_1818 : StackLang.HolProg 64 :=
.seq RemovedBody836_274 RemovedBody836_1817

def RemovedBody836_1819 : StackLang.HolProg 64 :=
.seq RemovedBody836_221 RemovedBody836_1818

def RemovedBody836_1820 : StackLang.HolProg 64 :=
.seq RemovedBody836_218 RemovedBody836_1819

def RemovedBody836_1821 : StackLang.HolProg 64 :=
.seq RemovedBody836_217 RemovedBody836_1820

def RemovedBody836_1822 : StackLang.HolProg 64 :=
.seq RemovedBody836_216 RemovedBody836_1821

def RemovedBody836_1823 : StackLang.HolProg 64 :=
.seq RemovedBody836_215 RemovedBody836_1822

def RemovedBody836_1824 : StackLang.HolProg 64 :=
.seq RemovedBody836_214 RemovedBody836_1823

def RemovedBody836_1825 : StackLang.HolProg 64 :=
.seq RemovedBody836_213 RemovedBody836_1824

def RemovedBody836_1826 : StackLang.HolProg 64 :=
.seq RemovedBody836_198 RemovedBody836_1825

def RemovedBody836_1827 : StackLang.HolProg 64 :=
.seq RemovedBody836_197 RemovedBody836_1826

def RemovedBody836_1828 : StackLang.HolProg 64 :=
.seq RemovedBody836_196 RemovedBody836_1827

def RemovedBody836_1829 : StackLang.HolProg 64 :=
.seq RemovedBody836_195 RemovedBody836_1828

def RemovedBody836_1830 : StackLang.HolProg 64 :=
.seq RemovedBody836_140 RemovedBody836_1829

def RemovedBody836_1831 : StackLang.HolProg 64 :=
.seq RemovedBody836_139 RemovedBody836_1830

def RemovedBody836_1832 : StackLang.HolProg 64 :=
.seq RemovedBody836_138 RemovedBody836_1831

def RemovedBody836_1833 : StackLang.HolProg 64 :=
.seq RemovedBody836_85 RemovedBody836_1832

def RemovedBody836_1834 : StackLang.HolProg 64 :=
.seq RemovedBody836_84 RemovedBody836_1833

def RemovedBody836_1835 : StackLang.HolProg 64 :=
.seq RemovedBody836_83 RemovedBody836_1834

def RemovedBody836_1836 : StackLang.HolProg 64 :=
.seq RemovedBody836_82 RemovedBody836_1835

def RemovedBody836_1837 : StackLang.HolProg 64 :=
.seq RemovedBody836_81 RemovedBody836_1836

def RemovedBody836_1838 : StackLang.HolProg 64 :=
.seq RemovedBody836_28 RemovedBody836_1837

def RemovedBody836_1839 : StackLang.HolProg 64 :=
.seq RemovedBody836_21 RemovedBody836_1838

def RemovedBody836_1840 : StackLang.HolProg 64 :=
.seq RemovedBody836_20 RemovedBody836_1839

def RemovedBody836_1841 : StackLang.HolProg 64 :=
.seq RemovedBody836_19 RemovedBody836_1840

def RemovedBody836_1842 : StackLang.HolProg 64 :=
.seq RemovedBody836_18 RemovedBody836_1841

def RemovedBody836_1843 : StackLang.HolProg 64 :=
.seq RemovedBody836_17 RemovedBody836_1842

def RemovedBody836_1844 : StackLang.HolProg 64 :=
.seq RemovedBody836_16 RemovedBody836_1843

def RemovedBody836_1845 : StackLang.HolProg 64 :=
.seq RemovedBody836_15 RemovedBody836_1844

def RemovedBody836_1846 : StackLang.HolProg 64 :=
.seq RemovedBody836_14 RemovedBody836_1845

def RemovedBody836_1847 : StackLang.HolProg 64 :=
.seq RemovedBody836_13 RemovedBody836_1846

def RemovedBody836_1848 : StackLang.HolProg 64 :=
.seq RemovedBody836_12 RemovedBody836_1847

def RemovedBody836_1849 : StackLang.HolProg 64 :=
.seq RemovedBody836_11 RemovedBody836_1848

def RemovedBody836_1850 : StackLang.HolProg 64 :=
.seq RemovedBody836_10 RemovedBody836_1849

def RemovedBody836_1851 : StackLang.HolProg 64 :=
.seq RemovedBody836_9 RemovedBody836_1850

def RemovedBody836_1852 : StackLang.HolProg 64 :=
.seq RemovedBody836_8 RemovedBody836_1851

def RemovedBody836_1853 : StackLang.HolProg 64 :=
.seq RemovedBody836_7 RemovedBody836_1852

def RemovedBody836_1854 : StackLang.HolProg 64 :=
.seq RemovedBody836_6 RemovedBody836_1853

def Removed836 : Nat × StackLang.HolProg 64 := (836, RemovedBody836_1854)
theorem Removed836_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc836 = Removed836 := by
  kernel_rfl
#print axioms Removed836_eq
end InitECandidate.Proofs.BackendStages
