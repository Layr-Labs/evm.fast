import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc488
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody488_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody488_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody488_3 : StackLang.HolProg 64 :=
.seq RemovedBody488_1 RemovedBody488_2

def RemovedBody488_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody488_3 RemovedBody488_4

def RemovedBody488_6 : StackLang.HolProg 64 :=
.seq RemovedBody488_0 RemovedBody488_5

def RemovedBody488_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 176#64)

def RemovedBody488_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1527#64)

def RemovedBody488_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody488_13 : StackLang.HolProg 64 :=
.seq RemovedBody488_11 RemovedBody488_12

def RemovedBody488_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody488_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody488_17 : StackLang.HolProg 64 :=
.seq RemovedBody488_15 RemovedBody488_16

def RemovedBody488_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody488_17 RemovedBody488_18

def RemovedBody488_20 : StackLang.HolProg 64 :=
.seq RemovedBody488_14 RemovedBody488_19

def RemovedBody488_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody488_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody488_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 3

def RemovedBody488_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody488_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody488_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody488_30 : StackLang.HolProg 64 :=
.seq RemovedBody488_28 RemovedBody488_29

def RemovedBody488_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody488_32 : StackLang.HolProg 64 :=
.seq RemovedBody488_30 RemovedBody488_31

def RemovedBody488_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_34 : StackLang.HolProg 64 :=
.seq RemovedBody488_32 RemovedBody488_33

def RemovedBody488_35 : StackLang.HolProg 64 :=
.seq RemovedBody488_27 RemovedBody488_34

def RemovedBody488_36 : StackLang.HolProg 64 :=
.seq RemovedBody488_26 RemovedBody488_35

def RemovedBody488_37 : StackLang.HolProg 64 :=
.seq RemovedBody488_25 RemovedBody488_36

def RemovedBody488_38 : StackLang.HolProg 64 :=
.seq RemovedBody488_24 RemovedBody488_37

def RemovedBody488_39 : StackLang.HolProg 64 :=
.seq RemovedBody488_23 RemovedBody488_38

def RemovedBody488_40 : StackLang.HolProg 64 :=
.seq RemovedBody488_22 RemovedBody488_39

def RemovedBody488_41 : StackLang.HolProg 64 :=
.seq RemovedBody488_21 RemovedBody488_40

def RemovedBody488_42 : StackLang.HolProg 64 :=
.seq RemovedBody488_20 RemovedBody488_41

def RemovedBody488_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody488_50 : StackLang.HolProg 64 :=
.seq RemovedBody488_48 RemovedBody488_49

def RemovedBody488_51 : StackLang.HolProg 64 :=
.seq RemovedBody488_47 RemovedBody488_50

def RemovedBody488_52 : StackLang.HolProg 64 :=
.seq RemovedBody488_46 RemovedBody488_51

def RemovedBody488_53 : StackLang.HolProg 64 :=
.seq RemovedBody488_45 RemovedBody488_52

def RemovedBody488_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody488_56 : StackLang.HolProg 64 :=
.seq RemovedBody488_54 RemovedBody488_55

def RemovedBody488_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody488_53, 0, 488, 2)) (Sum.inl 74) (some (RemovedBody488_56, 488, 3))

def RemovedBody488_58 : StackLang.HolProg 64 :=
.seq RemovedBody488_44 RemovedBody488_57

def RemovedBody488_59 : StackLang.HolProg 64 :=
.seq RemovedBody488_43 RemovedBody488_58

def RemovedBody488_60 : StackLang.HolProg 64 :=
.seq RemovedBody488_42 RemovedBody488_59

def RemovedBody488_61 : StackLang.HolProg 64 :=
.seq RemovedBody488_13 RemovedBody488_60

def RemovedBody488_62 : StackLang.HolProg 64 :=
.seq RemovedBody488_10 RemovedBody488_61

def RemovedBody488_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody488_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody488_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 176#64)

def RemovedBody488_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody488_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1528#64)

def RemovedBody488_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody488_70 : StackLang.HolProg 64 :=
.seq RemovedBody488_68 RemovedBody488_69

def RemovedBody488_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody488_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody488_74 : StackLang.HolProg 64 :=
.seq RemovedBody488_72 RemovedBody488_73

def RemovedBody488_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody488_74 RemovedBody488_75

def RemovedBody488_77 : StackLang.HolProg 64 :=
.seq RemovedBody488_71 RemovedBody488_76

def RemovedBody488_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody488_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody488_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 488 5

def RemovedBody488_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody488_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody488_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody488_87 : StackLang.HolProg 64 :=
.seq RemovedBody488_85 RemovedBody488_86

def RemovedBody488_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody488_89 : StackLang.HolProg 64 :=
.seq RemovedBody488_87 RemovedBody488_88

def RemovedBody488_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_91 : StackLang.HolProg 64 :=
.seq RemovedBody488_89 RemovedBody488_90

def RemovedBody488_92 : StackLang.HolProg 64 :=
.seq RemovedBody488_84 RemovedBody488_91

def RemovedBody488_93 : StackLang.HolProg 64 :=
.seq RemovedBody488_83 RemovedBody488_92

def RemovedBody488_94 : StackLang.HolProg 64 :=
.seq RemovedBody488_82 RemovedBody488_93

def RemovedBody488_95 : StackLang.HolProg 64 :=
.seq RemovedBody488_81 RemovedBody488_94

def RemovedBody488_96 : StackLang.HolProg 64 :=
.seq RemovedBody488_80 RemovedBody488_95

def RemovedBody488_97 : StackLang.HolProg 64 :=
.seq RemovedBody488_79 RemovedBody488_96

def RemovedBody488_98 : StackLang.HolProg 64 :=
.seq RemovedBody488_78 RemovedBody488_97

def RemovedBody488_99 : StackLang.HolProg 64 :=
.seq RemovedBody488_77 RemovedBody488_98

def RemovedBody488_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody488_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody488_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody488_108 : StackLang.HolProg 64 :=
.seq RemovedBody488_106 RemovedBody488_107

def RemovedBody488_109 : StackLang.HolProg 64 :=
.seq RemovedBody488_105 RemovedBody488_108

def RemovedBody488_110 : StackLang.HolProg 64 :=
.seq RemovedBody488_104 RemovedBody488_109

def RemovedBody488_111 : StackLang.HolProg 64 :=
.seq RemovedBody488_103 RemovedBody488_110

def RemovedBody488_112 : StackLang.HolProg 64 :=
.seq RemovedBody488_102 RemovedBody488_111

def RemovedBody488_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody488_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody488_115 : StackLang.HolProg 64 :=
.seq RemovedBody488_113 RemovedBody488_114

def RemovedBody488_116 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody488_117 : StackLang.HolProg 64 :=
.seq RemovedBody488_115 RemovedBody488_116

def RemovedBody488_118 : StackLang.HolProg 64 :=
.call (some (RemovedBody488_112, 0, 488, 4)) (Sum.inl 78) (some (RemovedBody488_117, 488, 5))

def RemovedBody488_119 : StackLang.HolProg 64 :=
.seq RemovedBody488_101 RemovedBody488_118

def RemovedBody488_120 : StackLang.HolProg 64 :=
.seq RemovedBody488_100 RemovedBody488_119

def RemovedBody488_121 : StackLang.HolProg 64 :=
.seq RemovedBody488_99 RemovedBody488_120

def RemovedBody488_122 : StackLang.HolProg 64 :=
.seq RemovedBody488_70 RemovedBody488_121

def RemovedBody488_123 : StackLang.HolProg 64 :=
.seq RemovedBody488_67 RemovedBody488_122

def RemovedBody488_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody488_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody488_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody488_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody488_128 : StackLang.HolProg 64 :=
.seq RemovedBody488_126 RemovedBody488_127

def RemovedBody488_129 : StackLang.HolProg 64 :=
.seq RemovedBody488_125 RemovedBody488_128

def RemovedBody488_130 : StackLang.HolProg 64 :=
.seq RemovedBody488_124 RemovedBody488_129

def RemovedBody488_131 : StackLang.HolProg 64 :=
.seq RemovedBody488_123 RemovedBody488_130

def RemovedBody488_132 : StackLang.HolProg 64 :=
.seq RemovedBody488_66 RemovedBody488_131

def RemovedBody488_133 : StackLang.HolProg 64 :=
.seq RemovedBody488_65 RemovedBody488_132

def RemovedBody488_134 : StackLang.HolProg 64 :=
.seq RemovedBody488_64 RemovedBody488_133

def RemovedBody488_135 : StackLang.HolProg 64 :=
.seq RemovedBody488_63 RemovedBody488_134

def RemovedBody488_136 : StackLang.HolProg 64 :=
.seq RemovedBody488_62 RemovedBody488_135

def RemovedBody488_137 : StackLang.HolProg 64 :=
.seq RemovedBody488_9 RemovedBody488_136

def RemovedBody488_138 : StackLang.HolProg 64 :=
.seq RemovedBody488_8 RemovedBody488_137

def RemovedBody488_139 : StackLang.HolProg 64 :=
.seq RemovedBody488_7 RemovedBody488_138

def RemovedBody488_140 : StackLang.HolProg 64 :=
.seq RemovedBody488_6 RemovedBody488_139

def Removed488 : Nat × StackLang.HolProg 64 := (488, RemovedBody488_140)
theorem Removed488_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc488 = Removed488 := by
  kernel_rfl
#print axioms Removed488_eq
end InitECandidate.Proofs.BackendStages
