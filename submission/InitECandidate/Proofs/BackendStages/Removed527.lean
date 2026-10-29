import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc527
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody527_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody527_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody527_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody527_3 : StackLang.HolProg 64 :=
.seq RemovedBody527_1 RemovedBody527_2

def RemovedBody527_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody527_3 RemovedBody527_4

def RemovedBody527_6 : StackLang.HolProg 64 :=
.seq RemovedBody527_0 RemovedBody527_5

def RemovedBody527_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody527_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1727#64)

def RemovedBody527_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_13 : StackLang.HolProg 64 :=
.seq RemovedBody527_11 RemovedBody527_12

def RemovedBody527_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody527_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody527_17 : StackLang.HolProg 64 :=
.seq RemovedBody527_15 RemovedBody527_16

def RemovedBody527_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody527_17 RemovedBody527_18

def RemovedBody527_20 : StackLang.HolProg 64 :=
.seq RemovedBody527_14 RemovedBody527_19

def RemovedBody527_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody527_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 3

def RemovedBody527_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody527_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody527_30 : StackLang.HolProg 64 :=
.seq RemovedBody527_28 RemovedBody527_29

def RemovedBody527_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody527_32 : StackLang.HolProg 64 :=
.seq RemovedBody527_30 RemovedBody527_31

def RemovedBody527_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_34 : StackLang.HolProg 64 :=
.seq RemovedBody527_32 RemovedBody527_33

def RemovedBody527_35 : StackLang.HolProg 64 :=
.seq RemovedBody527_27 RemovedBody527_34

def RemovedBody527_36 : StackLang.HolProg 64 :=
.seq RemovedBody527_26 RemovedBody527_35

def RemovedBody527_37 : StackLang.HolProg 64 :=
.seq RemovedBody527_25 RemovedBody527_36

def RemovedBody527_38 : StackLang.HolProg 64 :=
.seq RemovedBody527_24 RemovedBody527_37

def RemovedBody527_39 : StackLang.HolProg 64 :=
.seq RemovedBody527_23 RemovedBody527_38

def RemovedBody527_40 : StackLang.HolProg 64 :=
.seq RemovedBody527_22 RemovedBody527_39

def RemovedBody527_41 : StackLang.HolProg 64 :=
.seq RemovedBody527_21 RemovedBody527_40

def RemovedBody527_42 : StackLang.HolProg 64 :=
.seq RemovedBody527_20 RemovedBody527_41

def RemovedBody527_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_50 : StackLang.HolProg 64 :=
.seq RemovedBody527_48 RemovedBody527_49

def RemovedBody527_51 : StackLang.HolProg 64 :=
.seq RemovedBody527_47 RemovedBody527_50

def RemovedBody527_52 : StackLang.HolProg 64 :=
.seq RemovedBody527_46 RemovedBody527_51

def RemovedBody527_53 : StackLang.HolProg 64 :=
.seq RemovedBody527_45 RemovedBody527_52

def RemovedBody527_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody527_56 : StackLang.HolProg 64 :=
.seq RemovedBody527_54 RemovedBody527_55

def RemovedBody527_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody527_53, 0, 527, 2)) (Sum.inl 470) (some (RemovedBody527_56, 527, 3))

def RemovedBody527_58 : StackLang.HolProg 64 :=
.seq RemovedBody527_44 RemovedBody527_57

def RemovedBody527_59 : StackLang.HolProg 64 :=
.seq RemovedBody527_43 RemovedBody527_58

def RemovedBody527_60 : StackLang.HolProg 64 :=
.seq RemovedBody527_42 RemovedBody527_59

def RemovedBody527_61 : StackLang.HolProg 64 :=
.seq RemovedBody527_13 RemovedBody527_60

def RemovedBody527_62 : StackLang.HolProg 64 :=
.seq RemovedBody527_10 RemovedBody527_61

def RemovedBody527_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody527_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody527_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody527_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody527_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def RemovedBody527_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody527_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1728#64)

def RemovedBody527_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_73 : StackLang.HolProg 64 :=
.seq RemovedBody527_71 RemovedBody527_72

def RemovedBody527_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody527_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody527_77 : StackLang.HolProg 64 :=
.seq RemovedBody527_75 RemovedBody527_76

def RemovedBody527_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody527_77 RemovedBody527_78

def RemovedBody527_80 : StackLang.HolProg 64 :=
.seq RemovedBody527_74 RemovedBody527_79

def RemovedBody527_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody527_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 5

def RemovedBody527_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody527_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody527_90 : StackLang.HolProg 64 :=
.seq RemovedBody527_88 RemovedBody527_89

def RemovedBody527_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody527_92 : StackLang.HolProg 64 :=
.seq RemovedBody527_90 RemovedBody527_91

def RemovedBody527_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_94 : StackLang.HolProg 64 :=
.seq RemovedBody527_92 RemovedBody527_93

def RemovedBody527_95 : StackLang.HolProg 64 :=
.seq RemovedBody527_87 RemovedBody527_94

def RemovedBody527_96 : StackLang.HolProg 64 :=
.seq RemovedBody527_86 RemovedBody527_95

def RemovedBody527_97 : StackLang.HolProg 64 :=
.seq RemovedBody527_85 RemovedBody527_96

def RemovedBody527_98 : StackLang.HolProg 64 :=
.seq RemovedBody527_84 RemovedBody527_97

def RemovedBody527_99 : StackLang.HolProg 64 :=
.seq RemovedBody527_83 RemovedBody527_98

def RemovedBody527_100 : StackLang.HolProg 64 :=
.seq RemovedBody527_82 RemovedBody527_99

def RemovedBody527_101 : StackLang.HolProg 64 :=
.seq RemovedBody527_81 RemovedBody527_100

def RemovedBody527_102 : StackLang.HolProg 64 :=
.seq RemovedBody527_80 RemovedBody527_101

def RemovedBody527_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_110 : StackLang.HolProg 64 :=
.seq RemovedBody527_108 RemovedBody527_109

def RemovedBody527_111 : StackLang.HolProg 64 :=
.seq RemovedBody527_107 RemovedBody527_110

def RemovedBody527_112 : StackLang.HolProg 64 :=
.seq RemovedBody527_106 RemovedBody527_111

def RemovedBody527_113 : StackLang.HolProg 64 :=
.seq RemovedBody527_105 RemovedBody527_112

def RemovedBody527_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody527_116 : StackLang.HolProg 64 :=
.seq RemovedBody527_114 RemovedBody527_115

def RemovedBody527_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody527_113, 0, 527, 4)) (Sum.inl 477) (some (RemovedBody527_116, 527, 5))

def RemovedBody527_118 : StackLang.HolProg 64 :=
.seq RemovedBody527_104 RemovedBody527_117

def RemovedBody527_119 : StackLang.HolProg 64 :=
.seq RemovedBody527_103 RemovedBody527_118

def RemovedBody527_120 : StackLang.HolProg 64 :=
.seq RemovedBody527_102 RemovedBody527_119

def RemovedBody527_121 : StackLang.HolProg 64 :=
.seq RemovedBody527_73 RemovedBody527_120

def RemovedBody527_122 : StackLang.HolProg 64 :=
.seq RemovedBody527_70 RemovedBody527_121

def RemovedBody527_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody527_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody527_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1729#64)

def RemovedBody527_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_129 : StackLang.HolProg 64 :=
.seq RemovedBody527_127 RemovedBody527_128

def RemovedBody527_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody527_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody527_133 : StackLang.HolProg 64 :=
.seq RemovedBody527_131 RemovedBody527_132

def RemovedBody527_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_135 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody527_133 RemovedBody527_134

def RemovedBody527_136 : StackLang.HolProg 64 :=
.seq RemovedBody527_130 RemovedBody527_135

def RemovedBody527_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody527_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody527_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 527 7

def RemovedBody527_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody527_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody527_146 : StackLang.HolProg 64 :=
.seq RemovedBody527_144 RemovedBody527_145

def RemovedBody527_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody527_148 : StackLang.HolProg 64 :=
.seq RemovedBody527_146 RemovedBody527_147

def RemovedBody527_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_150 : StackLang.HolProg 64 :=
.seq RemovedBody527_148 RemovedBody527_149

def RemovedBody527_151 : StackLang.HolProg 64 :=
.seq RemovedBody527_143 RemovedBody527_150

def RemovedBody527_152 : StackLang.HolProg 64 :=
.seq RemovedBody527_142 RemovedBody527_151

def RemovedBody527_153 : StackLang.HolProg 64 :=
.seq RemovedBody527_141 RemovedBody527_152

def RemovedBody527_154 : StackLang.HolProg 64 :=
.seq RemovedBody527_140 RemovedBody527_153

def RemovedBody527_155 : StackLang.HolProg 64 :=
.seq RemovedBody527_139 RemovedBody527_154

def RemovedBody527_156 : StackLang.HolProg 64 :=
.seq RemovedBody527_138 RemovedBody527_155

def RemovedBody527_157 : StackLang.HolProg 64 :=
.seq RemovedBody527_137 RemovedBody527_156

def RemovedBody527_158 : StackLang.HolProg 64 :=
.seq RemovedBody527_136 RemovedBody527_157

def RemovedBody527_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody527_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody527_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody527_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_166 : StackLang.HolProg 64 :=
.seq RemovedBody527_164 RemovedBody527_165

def RemovedBody527_167 : StackLang.HolProg 64 :=
.seq RemovedBody527_163 RemovedBody527_166

def RemovedBody527_168 : StackLang.HolProg 64 :=
.seq RemovedBody527_162 RemovedBody527_167

def RemovedBody527_169 : StackLang.HolProg 64 :=
.seq RemovedBody527_161 RemovedBody527_168

def RemovedBody527_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody527_171 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody527_172 : StackLang.HolProg 64 :=
.seq RemovedBody527_170 RemovedBody527_171

def RemovedBody527_173 : StackLang.HolProg 64 :=
.call (some (RemovedBody527_169, 0, 527, 6)) (Sum.inl 490) (some (RemovedBody527_172, 527, 7))

def RemovedBody527_174 : StackLang.HolProg 64 :=
.seq RemovedBody527_160 RemovedBody527_173

def RemovedBody527_175 : StackLang.HolProg 64 :=
.seq RemovedBody527_159 RemovedBody527_174

def RemovedBody527_176 : StackLang.HolProg 64 :=
.seq RemovedBody527_158 RemovedBody527_175

def RemovedBody527_177 : StackLang.HolProg 64 :=
.seq RemovedBody527_129 RemovedBody527_176

def RemovedBody527_178 : StackLang.HolProg 64 :=
.seq RemovedBody527_126 RemovedBody527_177

def RemovedBody527_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody527_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody527_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody527_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody527_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody527_184 : StackLang.HolProg 64 :=
.seq RemovedBody527_182 RemovedBody527_183

def RemovedBody527_185 : StackLang.HolProg 64 :=
.seq RemovedBody527_181 RemovedBody527_184

def RemovedBody527_186 : StackLang.HolProg 64 :=
.seq RemovedBody527_180 RemovedBody527_185

def RemovedBody527_187 : StackLang.HolProg 64 :=
.seq RemovedBody527_179 RemovedBody527_186

def RemovedBody527_188 : StackLang.HolProg 64 :=
.seq RemovedBody527_178 RemovedBody527_187

def RemovedBody527_189 : StackLang.HolProg 64 :=
.seq RemovedBody527_125 RemovedBody527_188

def RemovedBody527_190 : StackLang.HolProg 64 :=
.seq RemovedBody527_124 RemovedBody527_189

def RemovedBody527_191 : StackLang.HolProg 64 :=
.seq RemovedBody527_123 RemovedBody527_190

def RemovedBody527_192 : StackLang.HolProg 64 :=
.seq RemovedBody527_122 RemovedBody527_191

def RemovedBody527_193 : StackLang.HolProg 64 :=
.seq RemovedBody527_69 RemovedBody527_192

def RemovedBody527_194 : StackLang.HolProg 64 :=
.seq RemovedBody527_68 RemovedBody527_193

def RemovedBody527_195 : StackLang.HolProg 64 :=
.seq RemovedBody527_67 RemovedBody527_194

def RemovedBody527_196 : StackLang.HolProg 64 :=
.seq RemovedBody527_66 RemovedBody527_195

def RemovedBody527_197 : StackLang.HolProg 64 :=
.seq RemovedBody527_65 RemovedBody527_196

def RemovedBody527_198 : StackLang.HolProg 64 :=
.seq RemovedBody527_64 RemovedBody527_197

def RemovedBody527_199 : StackLang.HolProg 64 :=
.seq RemovedBody527_63 RemovedBody527_198

def RemovedBody527_200 : StackLang.HolProg 64 :=
.seq RemovedBody527_62 RemovedBody527_199

def RemovedBody527_201 : StackLang.HolProg 64 :=
.seq RemovedBody527_9 RemovedBody527_200

def RemovedBody527_202 : StackLang.HolProg 64 :=
.seq RemovedBody527_8 RemovedBody527_201

def RemovedBody527_203 : StackLang.HolProg 64 :=
.seq RemovedBody527_7 RemovedBody527_202

def RemovedBody527_204 : StackLang.HolProg 64 :=
.seq RemovedBody527_6 RemovedBody527_203

def Removed527 : Nat × StackLang.HolProg 64 := (527, RemovedBody527_204)
theorem Removed527_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc527 = Removed527 := by
  kernel_rfl
#print axioms Removed527_eq
end InitECandidate.Proofs.BackendStages
