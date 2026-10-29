import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc776
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody776_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody776_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_3 : StackLang.HolProg 64 :=
.seq RemovedBody776_1 RemovedBody776_2

def RemovedBody776_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_3 RemovedBody776_4

def RemovedBody776_6 : StackLang.HolProg 64 :=
.seq RemovedBody776_0 RemovedBody776_5

def RemovedBody776_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody776_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_10 : StackLang.HolProg 64 :=
.seq RemovedBody776_8 RemovedBody776_9

def RemovedBody776_11 : StackLang.HolProg 64 :=
.seq RemovedBody776_7 RemovedBody776_10

def RemovedBody776_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3532#64)

def RemovedBody776_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_15 : StackLang.HolProg 64 :=
.seq RemovedBody776_13 RemovedBody776_14

def RemovedBody776_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_19 : StackLang.HolProg 64 :=
.seq RemovedBody776_17 RemovedBody776_18

def RemovedBody776_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_19 RemovedBody776_20

def RemovedBody776_22 : StackLang.HolProg 64 :=
.seq RemovedBody776_16 RemovedBody776_21

def RemovedBody776_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 3

def RemovedBody776_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_32 : StackLang.HolProg 64 :=
.seq RemovedBody776_30 RemovedBody776_31

def RemovedBody776_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_34 : StackLang.HolProg 64 :=
.seq RemovedBody776_32 RemovedBody776_33

def RemovedBody776_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_36 : StackLang.HolProg 64 :=
.seq RemovedBody776_34 RemovedBody776_35

def RemovedBody776_37 : StackLang.HolProg 64 :=
.seq RemovedBody776_29 RemovedBody776_36

def RemovedBody776_38 : StackLang.HolProg 64 :=
.seq RemovedBody776_28 RemovedBody776_37

def RemovedBody776_39 : StackLang.HolProg 64 :=
.seq RemovedBody776_27 RemovedBody776_38

def RemovedBody776_40 : StackLang.HolProg 64 :=
.seq RemovedBody776_26 RemovedBody776_39

def RemovedBody776_41 : StackLang.HolProg 64 :=
.seq RemovedBody776_25 RemovedBody776_40

def RemovedBody776_42 : StackLang.HolProg 64 :=
.seq RemovedBody776_24 RemovedBody776_41

def RemovedBody776_43 : StackLang.HolProg 64 :=
.seq RemovedBody776_23 RemovedBody776_42

def RemovedBody776_44 : StackLang.HolProg 64 :=
.seq RemovedBody776_22 RemovedBody776_43

def RemovedBody776_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody776_52 : StackLang.HolProg 64 :=
.seq RemovedBody776_50 RemovedBody776_51

def RemovedBody776_53 : StackLang.HolProg 64 :=
.seq RemovedBody776_49 RemovedBody776_52

def RemovedBody776_54 : StackLang.HolProg 64 :=
.seq RemovedBody776_48 RemovedBody776_53

def RemovedBody776_55 : StackLang.HolProg 64 :=
.seq RemovedBody776_47 RemovedBody776_54

def RemovedBody776_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_58 : StackLang.HolProg 64 :=
.seq RemovedBody776_56 RemovedBody776_57

def RemovedBody776_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_55, 0, 776, 2)) (Sum.inl 69) (some (RemovedBody776_58, 776, 3))

def RemovedBody776_60 : StackLang.HolProg 64 :=
.seq RemovedBody776_46 RemovedBody776_59

def RemovedBody776_61 : StackLang.HolProg 64 :=
.seq RemovedBody776_45 RemovedBody776_60

def RemovedBody776_62 : StackLang.HolProg 64 :=
.seq RemovedBody776_44 RemovedBody776_61

def RemovedBody776_63 : StackLang.HolProg 64 :=
.seq RemovedBody776_15 RemovedBody776_62

def RemovedBody776_64 : StackLang.HolProg 64 :=
.seq RemovedBody776_12 RemovedBody776_63

def RemovedBody776_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 96#64)

def RemovedBody776_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3533#64)

def RemovedBody776_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_71 : StackLang.HolProg 64 :=
.seq RemovedBody776_69 RemovedBody776_70

def RemovedBody776_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_75 : StackLang.HolProg 64 :=
.seq RemovedBody776_73 RemovedBody776_74

def RemovedBody776_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_77 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_75 RemovedBody776_76

def RemovedBody776_78 : StackLang.HolProg 64 :=
.seq RemovedBody776_72 RemovedBody776_77

def RemovedBody776_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 5

def RemovedBody776_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_88 : StackLang.HolProg 64 :=
.seq RemovedBody776_86 RemovedBody776_87

def RemovedBody776_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_90 : StackLang.HolProg 64 :=
.seq RemovedBody776_88 RemovedBody776_89

def RemovedBody776_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_92 : StackLang.HolProg 64 :=
.seq RemovedBody776_90 RemovedBody776_91

def RemovedBody776_93 : StackLang.HolProg 64 :=
.seq RemovedBody776_85 RemovedBody776_92

def RemovedBody776_94 : StackLang.HolProg 64 :=
.seq RemovedBody776_84 RemovedBody776_93

def RemovedBody776_95 : StackLang.HolProg 64 :=
.seq RemovedBody776_83 RemovedBody776_94

def RemovedBody776_96 : StackLang.HolProg 64 :=
.seq RemovedBody776_82 RemovedBody776_95

def RemovedBody776_97 : StackLang.HolProg 64 :=
.seq RemovedBody776_81 RemovedBody776_96

def RemovedBody776_98 : StackLang.HolProg 64 :=
.seq RemovedBody776_80 RemovedBody776_97

def RemovedBody776_99 : StackLang.HolProg 64 :=
.seq RemovedBody776_79 RemovedBody776_98

def RemovedBody776_100 : StackLang.HolProg 64 :=
.seq RemovedBody776_78 RemovedBody776_99

def RemovedBody776_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody776_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_109 : StackLang.HolProg 64 :=
.seq RemovedBody776_107 RemovedBody776_108

def RemovedBody776_110 : StackLang.HolProg 64 :=
.seq RemovedBody776_106 RemovedBody776_109

def RemovedBody776_111 : StackLang.HolProg 64 :=
.seq RemovedBody776_105 RemovedBody776_110

def RemovedBody776_112 : StackLang.HolProg 64 :=
.seq RemovedBody776_104 RemovedBody776_111

def RemovedBody776_113 : StackLang.HolProg 64 :=
.seq RemovedBody776_103 RemovedBody776_112

def RemovedBody776_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_116 : StackLang.HolProg 64 :=
.seq RemovedBody776_114 RemovedBody776_115

def RemovedBody776_117 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_113, 0, 776, 4)) (Sum.inl 68) (some (RemovedBody776_116, 776, 5))

def RemovedBody776_118 : StackLang.HolProg 64 :=
.seq RemovedBody776_102 RemovedBody776_117

def RemovedBody776_119 : StackLang.HolProg 64 :=
.seq RemovedBody776_101 RemovedBody776_118

def RemovedBody776_120 : StackLang.HolProg 64 :=
.seq RemovedBody776_100 RemovedBody776_119

def RemovedBody776_121 : StackLang.HolProg 64 :=
.seq RemovedBody776_71 RemovedBody776_120

def RemovedBody776_122 : StackLang.HolProg 64 :=
.seq RemovedBody776_68 RemovedBody776_121

def RemovedBody776_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody776_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_126 : StackLang.HolProg 64 :=
.seq RemovedBody776_124 RemovedBody776_125

def RemovedBody776_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3534#64)

def RemovedBody776_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_130 : StackLang.HolProg 64 :=
.seq RemovedBody776_128 RemovedBody776_129

def RemovedBody776_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_134 : StackLang.HolProg 64 :=
.seq RemovedBody776_132 RemovedBody776_133

def RemovedBody776_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_134 RemovedBody776_135

def RemovedBody776_137 : StackLang.HolProg 64 :=
.seq RemovedBody776_131 RemovedBody776_136

def RemovedBody776_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 7

def RemovedBody776_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_147 : StackLang.HolProg 64 :=
.seq RemovedBody776_145 RemovedBody776_146

def RemovedBody776_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_149 : StackLang.HolProg 64 :=
.seq RemovedBody776_147 RemovedBody776_148

def RemovedBody776_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_151 : StackLang.HolProg 64 :=
.seq RemovedBody776_149 RemovedBody776_150

def RemovedBody776_152 : StackLang.HolProg 64 :=
.seq RemovedBody776_144 RemovedBody776_151

def RemovedBody776_153 : StackLang.HolProg 64 :=
.seq RemovedBody776_143 RemovedBody776_152

def RemovedBody776_154 : StackLang.HolProg 64 :=
.seq RemovedBody776_142 RemovedBody776_153

def RemovedBody776_155 : StackLang.HolProg 64 :=
.seq RemovedBody776_141 RemovedBody776_154

def RemovedBody776_156 : StackLang.HolProg 64 :=
.seq RemovedBody776_140 RemovedBody776_155

def RemovedBody776_157 : StackLang.HolProg 64 :=
.seq RemovedBody776_139 RemovedBody776_156

def RemovedBody776_158 : StackLang.HolProg 64 :=
.seq RemovedBody776_138 RemovedBody776_157

def RemovedBody776_159 : StackLang.HolProg 64 :=
.seq RemovedBody776_137 RemovedBody776_158

def RemovedBody776_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_168 : StackLang.HolProg 64 :=
.seq RemovedBody776_166 RemovedBody776_167

def RemovedBody776_169 : StackLang.HolProg 64 :=
.seq RemovedBody776_165 RemovedBody776_168

def RemovedBody776_170 : StackLang.HolProg 64 :=
.seq RemovedBody776_164 RemovedBody776_169

def RemovedBody776_171 : StackLang.HolProg 64 :=
.seq RemovedBody776_163 RemovedBody776_170

def RemovedBody776_172 : StackLang.HolProg 64 :=
.seq RemovedBody776_162 RemovedBody776_171

def RemovedBody776_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_175 : StackLang.HolProg 64 :=
.seq RemovedBody776_173 RemovedBody776_174

def RemovedBody776_176 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_177 : StackLang.HolProg 64 :=
.seq RemovedBody776_175 RemovedBody776_176

def RemovedBody776_178 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_172, 0, 776, 6)) (Sum.inl 773) (some (RemovedBody776_177, 776, 7))

def RemovedBody776_179 : StackLang.HolProg 64 :=
.seq RemovedBody776_161 RemovedBody776_178

def RemovedBody776_180 : StackLang.HolProg 64 :=
.seq RemovedBody776_160 RemovedBody776_179

def RemovedBody776_181 : StackLang.HolProg 64 :=
.seq RemovedBody776_159 RemovedBody776_180

def RemovedBody776_182 : StackLang.HolProg 64 :=
.seq RemovedBody776_130 RemovedBody776_181

def RemovedBody776_183 : StackLang.HolProg 64 :=
.seq RemovedBody776_127 RemovedBody776_182

def RemovedBody776_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody776_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_188 : StackLang.HolProg 64 :=
.seq RemovedBody776_186 RemovedBody776_187

def RemovedBody776_189 : StackLang.HolProg 64 :=
.seq RemovedBody776_185 RemovedBody776_188

def RemovedBody776_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3535#64)

def RemovedBody776_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_193 : StackLang.HolProg 64 :=
.seq RemovedBody776_191 RemovedBody776_192

def RemovedBody776_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_197 : StackLang.HolProg 64 :=
.seq RemovedBody776_195 RemovedBody776_196

def RemovedBody776_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_199 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_197 RemovedBody776_198

def RemovedBody776_200 : StackLang.HolProg 64 :=
.seq RemovedBody776_194 RemovedBody776_199

def RemovedBody776_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 9

def RemovedBody776_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_210 : StackLang.HolProg 64 :=
.seq RemovedBody776_208 RemovedBody776_209

def RemovedBody776_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_212 : StackLang.HolProg 64 :=
.seq RemovedBody776_210 RemovedBody776_211

def RemovedBody776_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_214 : StackLang.HolProg 64 :=
.seq RemovedBody776_212 RemovedBody776_213

def RemovedBody776_215 : StackLang.HolProg 64 :=
.seq RemovedBody776_207 RemovedBody776_214

def RemovedBody776_216 : StackLang.HolProg 64 :=
.seq RemovedBody776_206 RemovedBody776_215

def RemovedBody776_217 : StackLang.HolProg 64 :=
.seq RemovedBody776_205 RemovedBody776_216

def RemovedBody776_218 : StackLang.HolProg 64 :=
.seq RemovedBody776_204 RemovedBody776_217

def RemovedBody776_219 : StackLang.HolProg 64 :=
.seq RemovedBody776_203 RemovedBody776_218

def RemovedBody776_220 : StackLang.HolProg 64 :=
.seq RemovedBody776_202 RemovedBody776_219

def RemovedBody776_221 : StackLang.HolProg 64 :=
.seq RemovedBody776_201 RemovedBody776_220

def RemovedBody776_222 : StackLang.HolProg 64 :=
.seq RemovedBody776_200 RemovedBody776_221

def RemovedBody776_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_232 : StackLang.HolProg 64 :=
.seq RemovedBody776_230 RemovedBody776_231

def RemovedBody776_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_234 : StackLang.HolProg 64 :=
.seq RemovedBody776_232 RemovedBody776_233

def RemovedBody776_235 : StackLang.HolProg 64 :=
.seq RemovedBody776_229 RemovedBody776_234

def RemovedBody776_236 : StackLang.HolProg 64 :=
.seq RemovedBody776_228 RemovedBody776_235

def RemovedBody776_237 : StackLang.HolProg 64 :=
.seq RemovedBody776_227 RemovedBody776_236

def RemovedBody776_238 : StackLang.HolProg 64 :=
.seq RemovedBody776_226 RemovedBody776_237

def RemovedBody776_239 : StackLang.HolProg 64 :=
.seq RemovedBody776_225 RemovedBody776_238

def RemovedBody776_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_243 : StackLang.HolProg 64 :=
.seq RemovedBody776_241 RemovedBody776_242

def RemovedBody776_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_245 : StackLang.HolProg 64 :=
.seq RemovedBody776_243 RemovedBody776_244

def RemovedBody776_246 : StackLang.HolProg 64 :=
.seq RemovedBody776_240 RemovedBody776_245

def RemovedBody776_247 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_248 : StackLang.HolProg 64 :=
.seq RemovedBody776_246 RemovedBody776_247

def RemovedBody776_249 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_239, 0, 776, 8)) (Sum.inl 728) (some (RemovedBody776_248, 776, 9))

def RemovedBody776_250 : StackLang.HolProg 64 :=
.seq RemovedBody776_224 RemovedBody776_249

def RemovedBody776_251 : StackLang.HolProg 64 :=
.seq RemovedBody776_223 RemovedBody776_250

def RemovedBody776_252 : StackLang.HolProg 64 :=
.seq RemovedBody776_222 RemovedBody776_251

def RemovedBody776_253 : StackLang.HolProg 64 :=
.seq RemovedBody776_193 RemovedBody776_252

def RemovedBody776_254 : StackLang.HolProg 64 :=
.seq RemovedBody776_190 RemovedBody776_253

def RemovedBody776_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody776_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody776_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3536#64)

def RemovedBody776_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_264 : StackLang.HolProg 64 :=
.seq RemovedBody776_262 RemovedBody776_263

def RemovedBody776_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_268 : StackLang.HolProg 64 :=
.seq RemovedBody776_266 RemovedBody776_267

def RemovedBody776_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_270 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_268 RemovedBody776_269

def RemovedBody776_271 : StackLang.HolProg 64 :=
.seq RemovedBody776_265 RemovedBody776_270

def RemovedBody776_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 11

def RemovedBody776_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_281 : StackLang.HolProg 64 :=
.seq RemovedBody776_279 RemovedBody776_280

def RemovedBody776_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_283 : StackLang.HolProg 64 :=
.seq RemovedBody776_281 RemovedBody776_282

def RemovedBody776_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_285 : StackLang.HolProg 64 :=
.seq RemovedBody776_283 RemovedBody776_284

def RemovedBody776_286 : StackLang.HolProg 64 :=
.seq RemovedBody776_278 RemovedBody776_285

def RemovedBody776_287 : StackLang.HolProg 64 :=
.seq RemovedBody776_277 RemovedBody776_286

def RemovedBody776_288 : StackLang.HolProg 64 :=
.seq RemovedBody776_276 RemovedBody776_287

def RemovedBody776_289 : StackLang.HolProg 64 :=
.seq RemovedBody776_275 RemovedBody776_288

def RemovedBody776_290 : StackLang.HolProg 64 :=
.seq RemovedBody776_274 RemovedBody776_289

def RemovedBody776_291 : StackLang.HolProg 64 :=
.seq RemovedBody776_273 RemovedBody776_290

def RemovedBody776_292 : StackLang.HolProg 64 :=
.seq RemovedBody776_272 RemovedBody776_291

def RemovedBody776_293 : StackLang.HolProg 64 :=
.seq RemovedBody776_271 RemovedBody776_292

def RemovedBody776_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_301 : StackLang.HolProg 64 :=
.seq RemovedBody776_299 RemovedBody776_300

def RemovedBody776_302 : StackLang.HolProg 64 :=
.seq RemovedBody776_298 RemovedBody776_301

def RemovedBody776_303 : StackLang.HolProg 64 :=
.seq RemovedBody776_297 RemovedBody776_302

def RemovedBody776_304 : StackLang.HolProg 64 :=
.seq RemovedBody776_296 RemovedBody776_303

def RemovedBody776_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody776_306 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_307 : StackLang.HolProg 64 :=
.seq RemovedBody776_305 RemovedBody776_306

def RemovedBody776_308 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_304, 0, 776, 10)) (Sum.inl 728) (some (RemovedBody776_307, 776, 11))

def RemovedBody776_309 : StackLang.HolProg 64 :=
.seq RemovedBody776_295 RemovedBody776_308

def RemovedBody776_310 : StackLang.HolProg 64 :=
.seq RemovedBody776_294 RemovedBody776_309

def RemovedBody776_311 : StackLang.HolProg 64 :=
.seq RemovedBody776_293 RemovedBody776_310

def RemovedBody776_312 : StackLang.HolProg 64 :=
.seq RemovedBody776_264 RemovedBody776_311

def RemovedBody776_313 : StackLang.HolProg 64 :=
.seq RemovedBody776_261 RemovedBody776_312

def RemovedBody776_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody776_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3537#64)

def RemovedBody776_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_319 : StackLang.HolProg 64 :=
.seq RemovedBody776_317 RemovedBody776_318

def RemovedBody776_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody776_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody776_323 : StackLang.HolProg 64 :=
.seq RemovedBody776_321 RemovedBody776_322

def RemovedBody776_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_325 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody776_323 RemovedBody776_324

def RemovedBody776_326 : StackLang.HolProg 64 :=
.seq RemovedBody776_320 RemovedBody776_325

def RemovedBody776_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody776_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody776_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 776 13

def RemovedBody776_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody776_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody776_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody776_336 : StackLang.HolProg 64 :=
.seq RemovedBody776_334 RemovedBody776_335

def RemovedBody776_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody776_338 : StackLang.HolProg 64 :=
.seq RemovedBody776_336 RemovedBody776_337

def RemovedBody776_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_340 : StackLang.HolProg 64 :=
.seq RemovedBody776_338 RemovedBody776_339

def RemovedBody776_341 : StackLang.HolProg 64 :=
.seq RemovedBody776_333 RemovedBody776_340

def RemovedBody776_342 : StackLang.HolProg 64 :=
.seq RemovedBody776_332 RemovedBody776_341

def RemovedBody776_343 : StackLang.HolProg 64 :=
.seq RemovedBody776_331 RemovedBody776_342

def RemovedBody776_344 : StackLang.HolProg 64 :=
.seq RemovedBody776_330 RemovedBody776_343

def RemovedBody776_345 : StackLang.HolProg 64 :=
.seq RemovedBody776_329 RemovedBody776_344

def RemovedBody776_346 : StackLang.HolProg 64 :=
.seq RemovedBody776_328 RemovedBody776_345

def RemovedBody776_347 : StackLang.HolProg 64 :=
.seq RemovedBody776_327 RemovedBody776_346

def RemovedBody776_348 : StackLang.HolProg 64 :=
.seq RemovedBody776_326 RemovedBody776_347

def RemovedBody776_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody776_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody776_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody776_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody776_356 : StackLang.HolProg 64 :=
.seq RemovedBody776_354 RemovedBody776_355

def RemovedBody776_357 : StackLang.HolProg 64 :=
.seq RemovedBody776_353 RemovedBody776_356

def RemovedBody776_358 : StackLang.HolProg 64 :=
.seq RemovedBody776_352 RemovedBody776_357

def RemovedBody776_359 : StackLang.HolProg 64 :=
.seq RemovedBody776_351 RemovedBody776_358

def RemovedBody776_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody776_361 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody776_362 : StackLang.HolProg 64 :=
.seq RemovedBody776_360 RemovedBody776_361

def RemovedBody776_363 : StackLang.HolProg 64 :=
.call (some (RemovedBody776_359, 0, 776, 12)) (Sum.inl 70) (some (RemovedBody776_362, 776, 13))

def RemovedBody776_364 : StackLang.HolProg 64 :=
.seq RemovedBody776_350 RemovedBody776_363

def RemovedBody776_365 : StackLang.HolProg 64 :=
.seq RemovedBody776_349 RemovedBody776_364

def RemovedBody776_366 : StackLang.HolProg 64 :=
.seq RemovedBody776_348 RemovedBody776_365

def RemovedBody776_367 : StackLang.HolProg 64 :=
.seq RemovedBody776_319 RemovedBody776_366

def RemovedBody776_368 : StackLang.HolProg 64 :=
.seq RemovedBody776_316 RemovedBody776_367

def RemovedBody776_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody776_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody776_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody776_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody776_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody776_374 : StackLang.HolProg 64 :=
.seq RemovedBody776_372 RemovedBody776_373

def RemovedBody776_375 : StackLang.HolProg 64 :=
.seq RemovedBody776_371 RemovedBody776_374

def RemovedBody776_376 : StackLang.HolProg 64 :=
.seq RemovedBody776_370 RemovedBody776_375

def RemovedBody776_377 : StackLang.HolProg 64 :=
.seq RemovedBody776_369 RemovedBody776_376

def RemovedBody776_378 : StackLang.HolProg 64 :=
.seq RemovedBody776_368 RemovedBody776_377

def RemovedBody776_379 : StackLang.HolProg 64 :=
.seq RemovedBody776_315 RemovedBody776_378

def RemovedBody776_380 : StackLang.HolProg 64 :=
.seq RemovedBody776_314 RemovedBody776_379

def RemovedBody776_381 : StackLang.HolProg 64 :=
.seq RemovedBody776_313 RemovedBody776_380

def RemovedBody776_382 : StackLang.HolProg 64 :=
.seq RemovedBody776_260 RemovedBody776_381

def RemovedBody776_383 : StackLang.HolProg 64 :=
.seq RemovedBody776_259 RemovedBody776_382

def RemovedBody776_384 : StackLang.HolProg 64 :=
.seq RemovedBody776_258 RemovedBody776_383

def RemovedBody776_385 : StackLang.HolProg 64 :=
.seq RemovedBody776_257 RemovedBody776_384

def RemovedBody776_386 : StackLang.HolProg 64 :=
.seq RemovedBody776_256 RemovedBody776_385

def RemovedBody776_387 : StackLang.HolProg 64 :=
.seq RemovedBody776_255 RemovedBody776_386

def RemovedBody776_388 : StackLang.HolProg 64 :=
.seq RemovedBody776_254 RemovedBody776_387

def RemovedBody776_389 : StackLang.HolProg 64 :=
.seq RemovedBody776_189 RemovedBody776_388

def RemovedBody776_390 : StackLang.HolProg 64 :=
.seq RemovedBody776_184 RemovedBody776_389

def RemovedBody776_391 : StackLang.HolProg 64 :=
.seq RemovedBody776_183 RemovedBody776_390

def RemovedBody776_392 : StackLang.HolProg 64 :=
.seq RemovedBody776_126 RemovedBody776_391

def RemovedBody776_393 : StackLang.HolProg 64 :=
.seq RemovedBody776_123 RemovedBody776_392

def RemovedBody776_394 : StackLang.HolProg 64 :=
.seq RemovedBody776_122 RemovedBody776_393

def RemovedBody776_395 : StackLang.HolProg 64 :=
.seq RemovedBody776_67 RemovedBody776_394

def RemovedBody776_396 : StackLang.HolProg 64 :=
.seq RemovedBody776_66 RemovedBody776_395

def RemovedBody776_397 : StackLang.HolProg 64 :=
.seq RemovedBody776_65 RemovedBody776_396

def RemovedBody776_398 : StackLang.HolProg 64 :=
.seq RemovedBody776_64 RemovedBody776_397

def RemovedBody776_399 : StackLang.HolProg 64 :=
.seq RemovedBody776_11 RemovedBody776_398

def RemovedBody776_400 : StackLang.HolProg 64 :=
.seq RemovedBody776_6 RemovedBody776_399

def Removed776 : Nat × StackLang.HolProg 64 := (776, RemovedBody776_400)
theorem Removed776_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc776 = Removed776 := by
  kernel_rfl
#print axioms Removed776_eq
end InitECandidate.Proofs.BackendStages
