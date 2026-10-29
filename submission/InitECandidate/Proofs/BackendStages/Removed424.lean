import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc424
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody424_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody424_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody424_3 : StackLang.HolProg 64 :=
.seq RemovedBody424_1 RemovedBody424_2

def RemovedBody424_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody424_3 RemovedBody424_4

def RemovedBody424_6 : StackLang.HolProg 64 :=
.seq RemovedBody424_0 RemovedBody424_5

def RemovedBody424_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_9 : StackLang.HolProg 64 :=
.seq RemovedBody424_7 RemovedBody424_8

def RemovedBody424_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1264#64)

def RemovedBody424_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_13 : StackLang.HolProg 64 :=
.seq RemovedBody424_11 RemovedBody424_12

def RemovedBody424_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody424_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody424_17 : StackLang.HolProg 64 :=
.seq RemovedBody424_15 RemovedBody424_16

def RemovedBody424_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody424_17 RemovedBody424_18

def RemovedBody424_20 : StackLang.HolProg 64 :=
.seq RemovedBody424_14 RemovedBody424_19

def RemovedBody424_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody424_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 3

def RemovedBody424_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody424_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody424_30 : StackLang.HolProg 64 :=
.seq RemovedBody424_28 RemovedBody424_29

def RemovedBody424_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody424_32 : StackLang.HolProg 64 :=
.seq RemovedBody424_30 RemovedBody424_31

def RemovedBody424_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_34 : StackLang.HolProg 64 :=
.seq RemovedBody424_32 RemovedBody424_33

def RemovedBody424_35 : StackLang.HolProg 64 :=
.seq RemovedBody424_27 RemovedBody424_34

def RemovedBody424_36 : StackLang.HolProg 64 :=
.seq RemovedBody424_26 RemovedBody424_35

def RemovedBody424_37 : StackLang.HolProg 64 :=
.seq RemovedBody424_25 RemovedBody424_36

def RemovedBody424_38 : StackLang.HolProg 64 :=
.seq RemovedBody424_24 RemovedBody424_37

def RemovedBody424_39 : StackLang.HolProg 64 :=
.seq RemovedBody424_23 RemovedBody424_38

def RemovedBody424_40 : StackLang.HolProg 64 :=
.seq RemovedBody424_22 RemovedBody424_39

def RemovedBody424_41 : StackLang.HolProg 64 :=
.seq RemovedBody424_21 RemovedBody424_40

def RemovedBody424_42 : StackLang.HolProg 64 :=
.seq RemovedBody424_20 RemovedBody424_41

def RemovedBody424_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_50 : StackLang.HolProg 64 :=
.seq RemovedBody424_48 RemovedBody424_49

def RemovedBody424_51 : StackLang.HolProg 64 :=
.seq RemovedBody424_47 RemovedBody424_50

def RemovedBody424_52 : StackLang.HolProg 64 :=
.seq RemovedBody424_46 RemovedBody424_51

def RemovedBody424_53 : StackLang.HolProg 64 :=
.seq RemovedBody424_45 RemovedBody424_52

def RemovedBody424_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody424_56 : StackLang.HolProg 64 :=
.seq RemovedBody424_54 RemovedBody424_55

def RemovedBody424_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody424_53, 0, 424, 2)) (Sum.inl 421) (some (RemovedBody424_56, 424, 3))

def RemovedBody424_58 : StackLang.HolProg 64 :=
.seq RemovedBody424_44 RemovedBody424_57

def RemovedBody424_59 : StackLang.HolProg 64 :=
.seq RemovedBody424_43 RemovedBody424_58

def RemovedBody424_60 : StackLang.HolProg 64 :=
.seq RemovedBody424_42 RemovedBody424_59

def RemovedBody424_61 : StackLang.HolProg 64 :=
.seq RemovedBody424_13 RemovedBody424_60

def RemovedBody424_62 : StackLang.HolProg 64 :=
.seq RemovedBody424_10 RemovedBody424_61

def RemovedBody424_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody424_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody424_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_66 : StackLang.HolProg 64 :=
.seq RemovedBody424_64 RemovedBody424_65

def RemovedBody424_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1265#64)

def RemovedBody424_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_70 : StackLang.HolProg 64 :=
.seq RemovedBody424_68 RemovedBody424_69

def RemovedBody424_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody424_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody424_74 : StackLang.HolProg 64 :=
.seq RemovedBody424_72 RemovedBody424_73

def RemovedBody424_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody424_74 RemovedBody424_75

def RemovedBody424_77 : StackLang.HolProg 64 :=
.seq RemovedBody424_71 RemovedBody424_76

def RemovedBody424_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody424_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 5

def RemovedBody424_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody424_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody424_87 : StackLang.HolProg 64 :=
.seq RemovedBody424_85 RemovedBody424_86

def RemovedBody424_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody424_89 : StackLang.HolProg 64 :=
.seq RemovedBody424_87 RemovedBody424_88

def RemovedBody424_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_91 : StackLang.HolProg 64 :=
.seq RemovedBody424_89 RemovedBody424_90

def RemovedBody424_92 : StackLang.HolProg 64 :=
.seq RemovedBody424_84 RemovedBody424_91

def RemovedBody424_93 : StackLang.HolProg 64 :=
.seq RemovedBody424_83 RemovedBody424_92

def RemovedBody424_94 : StackLang.HolProg 64 :=
.seq RemovedBody424_82 RemovedBody424_93

def RemovedBody424_95 : StackLang.HolProg 64 :=
.seq RemovedBody424_81 RemovedBody424_94

def RemovedBody424_96 : StackLang.HolProg 64 :=
.seq RemovedBody424_80 RemovedBody424_95

def RemovedBody424_97 : StackLang.HolProg 64 :=
.seq RemovedBody424_79 RemovedBody424_96

def RemovedBody424_98 : StackLang.HolProg 64 :=
.seq RemovedBody424_78 RemovedBody424_97

def RemovedBody424_99 : StackLang.HolProg 64 :=
.seq RemovedBody424_77 RemovedBody424_98

def RemovedBody424_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody424_107 : StackLang.HolProg 64 :=
.seq RemovedBody424_105 RemovedBody424_106

def RemovedBody424_108 : StackLang.HolProg 64 :=
.seq RemovedBody424_104 RemovedBody424_107

def RemovedBody424_109 : StackLang.HolProg 64 :=
.seq RemovedBody424_103 RemovedBody424_108

def RemovedBody424_110 : StackLang.HolProg 64 :=
.seq RemovedBody424_102 RemovedBody424_109

def RemovedBody424_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_112 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody424_113 : StackLang.HolProg 64 :=
.seq RemovedBody424_111 RemovedBody424_112

def RemovedBody424_114 : StackLang.HolProg 64 :=
.call (some (RemovedBody424_110, 0, 424, 4)) (Sum.inl 407) (some (RemovedBody424_113, 424, 5))

def RemovedBody424_115 : StackLang.HolProg 64 :=
.seq RemovedBody424_101 RemovedBody424_114

def RemovedBody424_116 : StackLang.HolProg 64 :=
.seq RemovedBody424_100 RemovedBody424_115

def RemovedBody424_117 : StackLang.HolProg 64 :=
.seq RemovedBody424_99 RemovedBody424_116

def RemovedBody424_118 : StackLang.HolProg 64 :=
.seq RemovedBody424_70 RemovedBody424_117

def RemovedBody424_119 : StackLang.HolProg 64 :=
.seq RemovedBody424_67 RemovedBody424_118

def RemovedBody424_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody424_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody424_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1266#64)

def RemovedBody424_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_125 : StackLang.HolProg 64 :=
.seq RemovedBody424_123 RemovedBody424_124

def RemovedBody424_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody424_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody424_129 : StackLang.HolProg 64 :=
.seq RemovedBody424_127 RemovedBody424_128

def RemovedBody424_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_131 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody424_129 RemovedBody424_130

def RemovedBody424_132 : StackLang.HolProg 64 :=
.seq RemovedBody424_126 RemovedBody424_131

def RemovedBody424_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody424_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 7

def RemovedBody424_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody424_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody424_142 : StackLang.HolProg 64 :=
.seq RemovedBody424_140 RemovedBody424_141

def RemovedBody424_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody424_144 : StackLang.HolProg 64 :=
.seq RemovedBody424_142 RemovedBody424_143

def RemovedBody424_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_146 : StackLang.HolProg 64 :=
.seq RemovedBody424_144 RemovedBody424_145

def RemovedBody424_147 : StackLang.HolProg 64 :=
.seq RemovedBody424_139 RemovedBody424_146

def RemovedBody424_148 : StackLang.HolProg 64 :=
.seq RemovedBody424_138 RemovedBody424_147

def RemovedBody424_149 : StackLang.HolProg 64 :=
.seq RemovedBody424_137 RemovedBody424_148

def RemovedBody424_150 : StackLang.HolProg 64 :=
.seq RemovedBody424_136 RemovedBody424_149

def RemovedBody424_151 : StackLang.HolProg 64 :=
.seq RemovedBody424_135 RemovedBody424_150

def RemovedBody424_152 : StackLang.HolProg 64 :=
.seq RemovedBody424_134 RemovedBody424_151

def RemovedBody424_153 : StackLang.HolProg 64 :=
.seq RemovedBody424_133 RemovedBody424_152

def RemovedBody424_154 : StackLang.HolProg 64 :=
.seq RemovedBody424_132 RemovedBody424_153

def RemovedBody424_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody424_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_163 : StackLang.HolProg 64 :=
.seq RemovedBody424_161 RemovedBody424_162

def RemovedBody424_164 : StackLang.HolProg 64 :=
.seq RemovedBody424_160 RemovedBody424_163

def RemovedBody424_165 : StackLang.HolProg 64 :=
.seq RemovedBody424_159 RemovedBody424_164

def RemovedBody424_166 : StackLang.HolProg 64 :=
.seq RemovedBody424_158 RemovedBody424_165

def RemovedBody424_167 : StackLang.HolProg 64 :=
.seq RemovedBody424_157 RemovedBody424_166

def RemovedBody424_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_169 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody424_170 : StackLang.HolProg 64 :=
.seq RemovedBody424_168 RemovedBody424_169

def RemovedBody424_171 : StackLang.HolProg 64 :=
.call (some (RemovedBody424_167, 0, 424, 6)) (Sum.inl 395) (some (RemovedBody424_170, 424, 7))

def RemovedBody424_172 : StackLang.HolProg 64 :=
.seq RemovedBody424_156 RemovedBody424_171

def RemovedBody424_173 : StackLang.HolProg 64 :=
.seq RemovedBody424_155 RemovedBody424_172

def RemovedBody424_174 : StackLang.HolProg 64 :=
.seq RemovedBody424_154 RemovedBody424_173

def RemovedBody424_175 : StackLang.HolProg 64 :=
.seq RemovedBody424_125 RemovedBody424_174

def RemovedBody424_176 : StackLang.HolProg 64 :=
.seq RemovedBody424_122 RemovedBody424_175

def RemovedBody424_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody424_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody424_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody424_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody424_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody424_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody424_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody424_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def RemovedBody424_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody424_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody424_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1267#64)

def RemovedBody424_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_194 : StackLang.HolProg 64 :=
.seq RemovedBody424_192 RemovedBody424_193

def RemovedBody424_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody424_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody424_198 : StackLang.HolProg 64 :=
.seq RemovedBody424_196 RemovedBody424_197

def RemovedBody424_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody424_198 RemovedBody424_199

def RemovedBody424_201 : StackLang.HolProg 64 :=
.seq RemovedBody424_195 RemovedBody424_200

def RemovedBody424_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody424_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody424_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 424 9

def RemovedBody424_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody424_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody424_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody424_211 : StackLang.HolProg 64 :=
.seq RemovedBody424_209 RemovedBody424_210

def RemovedBody424_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody424_213 : StackLang.HolProg 64 :=
.seq RemovedBody424_211 RemovedBody424_212

def RemovedBody424_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_215 : StackLang.HolProg 64 :=
.seq RemovedBody424_213 RemovedBody424_214

def RemovedBody424_216 : StackLang.HolProg 64 :=
.seq RemovedBody424_208 RemovedBody424_215

def RemovedBody424_217 : StackLang.HolProg 64 :=
.seq RemovedBody424_207 RemovedBody424_216

def RemovedBody424_218 : StackLang.HolProg 64 :=
.seq RemovedBody424_206 RemovedBody424_217

def RemovedBody424_219 : StackLang.HolProg 64 :=
.seq RemovedBody424_205 RemovedBody424_218

def RemovedBody424_220 : StackLang.HolProg 64 :=
.seq RemovedBody424_204 RemovedBody424_219

def RemovedBody424_221 : StackLang.HolProg 64 :=
.seq RemovedBody424_203 RemovedBody424_220

def RemovedBody424_222 : StackLang.HolProg 64 :=
.seq RemovedBody424_202 RemovedBody424_221

def RemovedBody424_223 : StackLang.HolProg 64 :=
.seq RemovedBody424_201 RemovedBody424_222

def RemovedBody424_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody424_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_231 : StackLang.HolProg 64 :=
.seq RemovedBody424_229 RemovedBody424_230

def RemovedBody424_232 : StackLang.HolProg 64 :=
.seq RemovedBody424_228 RemovedBody424_231

def RemovedBody424_233 : StackLang.HolProg 64 :=
.seq RemovedBody424_227 RemovedBody424_232

def RemovedBody424_234 : StackLang.HolProg 64 :=
.seq RemovedBody424_226 RemovedBody424_233

def RemovedBody424_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody424_236 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody424_237 : StackLang.HolProg 64 :=
.seq RemovedBody424_235 RemovedBody424_236

def RemovedBody424_238 : StackLang.HolProg 64 :=
.call (some (RemovedBody424_234, 0, 424, 8)) (Sum.inl 423) (some (RemovedBody424_237, 424, 9))

def RemovedBody424_239 : StackLang.HolProg 64 :=
.seq RemovedBody424_225 RemovedBody424_238

def RemovedBody424_240 : StackLang.HolProg 64 :=
.seq RemovedBody424_224 RemovedBody424_239

def RemovedBody424_241 : StackLang.HolProg 64 :=
.seq RemovedBody424_223 RemovedBody424_240

def RemovedBody424_242 : StackLang.HolProg 64 :=
.seq RemovedBody424_194 RemovedBody424_241

def RemovedBody424_243 : StackLang.HolProg 64 :=
.seq RemovedBody424_191 RemovedBody424_242

def RemovedBody424_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody424_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody424_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody424_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody424_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody424_249 : StackLang.HolProg 64 :=
.seq RemovedBody424_247 RemovedBody424_248

def RemovedBody424_250 : StackLang.HolProg 64 :=
.seq RemovedBody424_246 RemovedBody424_249

def RemovedBody424_251 : StackLang.HolProg 64 :=
.seq RemovedBody424_245 RemovedBody424_250

def RemovedBody424_252 : StackLang.HolProg 64 :=
.seq RemovedBody424_244 RemovedBody424_251

def RemovedBody424_253 : StackLang.HolProg 64 :=
.seq RemovedBody424_243 RemovedBody424_252

def RemovedBody424_254 : StackLang.HolProg 64 :=
.seq RemovedBody424_190 RemovedBody424_253

def RemovedBody424_255 : StackLang.HolProg 64 :=
.seq RemovedBody424_189 RemovedBody424_254

def RemovedBody424_256 : StackLang.HolProg 64 :=
.seq RemovedBody424_188 RemovedBody424_255

def RemovedBody424_257 : StackLang.HolProg 64 :=
.seq RemovedBody424_187 RemovedBody424_256

def RemovedBody424_258 : StackLang.HolProg 64 :=
.seq RemovedBody424_186 RemovedBody424_257

def RemovedBody424_259 : StackLang.HolProg 64 :=
.seq RemovedBody424_185 RemovedBody424_258

def RemovedBody424_260 : StackLang.HolProg 64 :=
.seq RemovedBody424_184 RemovedBody424_259

def RemovedBody424_261 : StackLang.HolProg 64 :=
.seq RemovedBody424_183 RemovedBody424_260

def RemovedBody424_262 : StackLang.HolProg 64 :=
.seq RemovedBody424_182 RemovedBody424_261

def RemovedBody424_263 : StackLang.HolProg 64 :=
.seq RemovedBody424_181 RemovedBody424_262

def RemovedBody424_264 : StackLang.HolProg 64 :=
.seq RemovedBody424_180 RemovedBody424_263

def RemovedBody424_265 : StackLang.HolProg 64 :=
.seq RemovedBody424_179 RemovedBody424_264

def RemovedBody424_266 : StackLang.HolProg 64 :=
.seq RemovedBody424_178 RemovedBody424_265

def RemovedBody424_267 : StackLang.HolProg 64 :=
.seq RemovedBody424_177 RemovedBody424_266

def RemovedBody424_268 : StackLang.HolProg 64 :=
.seq RemovedBody424_176 RemovedBody424_267

def RemovedBody424_269 : StackLang.HolProg 64 :=
.seq RemovedBody424_121 RemovedBody424_268

def RemovedBody424_270 : StackLang.HolProg 64 :=
.seq RemovedBody424_120 RemovedBody424_269

def RemovedBody424_271 : StackLang.HolProg 64 :=
.seq RemovedBody424_119 RemovedBody424_270

def RemovedBody424_272 : StackLang.HolProg 64 :=
.seq RemovedBody424_66 RemovedBody424_271

def RemovedBody424_273 : StackLang.HolProg 64 :=
.seq RemovedBody424_63 RemovedBody424_272

def RemovedBody424_274 : StackLang.HolProg 64 :=
.seq RemovedBody424_62 RemovedBody424_273

def RemovedBody424_275 : StackLang.HolProg 64 :=
.seq RemovedBody424_9 RemovedBody424_274

def RemovedBody424_276 : StackLang.HolProg 64 :=
.seq RemovedBody424_6 RemovedBody424_275

def Removed424 : Nat × StackLang.HolProg 64 := (424, RemovedBody424_276)
theorem Removed424_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc424 = Removed424 := by
  kernel_rfl
#print axioms Removed424_eq
end InitECandidate.Proofs.BackendStages
