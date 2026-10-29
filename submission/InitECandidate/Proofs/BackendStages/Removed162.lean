import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc162
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody162_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody162_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody162_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody162_3 : StackLang.HolProg 64 :=
.seq RemovedBody162_1 RemovedBody162_2

def RemovedBody162_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody162_3 RemovedBody162_4

def RemovedBody162_6 : StackLang.HolProg 64 :=
.seq RemovedBody162_0 RemovedBody162_5

def RemovedBody162_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody162_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_9 : StackLang.HolProg 64 :=
.seq RemovedBody162_7 RemovedBody162_8

def RemovedBody162_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 162#64)

def RemovedBody162_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody162_13 : StackLang.HolProg 64 :=
.seq RemovedBody162_11 RemovedBody162_12

def RemovedBody162_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody162_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody162_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody162_17 : StackLang.HolProg 64 :=
.seq RemovedBody162_15 RemovedBody162_16

def RemovedBody162_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody162_17 RemovedBody162_18

def RemovedBody162_20 : StackLang.HolProg 64 :=
.seq RemovedBody162_14 RemovedBody162_19

def RemovedBody162_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody162_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody162_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 3

def RemovedBody162_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody162_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody162_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody162_30 : StackLang.HolProg 64 :=
.seq RemovedBody162_28 RemovedBody162_29

def RemovedBody162_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody162_32 : StackLang.HolProg 64 :=
.seq RemovedBody162_30 RemovedBody162_31

def RemovedBody162_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_34 : StackLang.HolProg 64 :=
.seq RemovedBody162_32 RemovedBody162_33

def RemovedBody162_35 : StackLang.HolProg 64 :=
.seq RemovedBody162_27 RemovedBody162_34

def RemovedBody162_36 : StackLang.HolProg 64 :=
.seq RemovedBody162_26 RemovedBody162_35

def RemovedBody162_37 : StackLang.HolProg 64 :=
.seq RemovedBody162_25 RemovedBody162_36

def RemovedBody162_38 : StackLang.HolProg 64 :=
.seq RemovedBody162_24 RemovedBody162_37

def RemovedBody162_39 : StackLang.HolProg 64 :=
.seq RemovedBody162_23 RemovedBody162_38

def RemovedBody162_40 : StackLang.HolProg 64 :=
.seq RemovedBody162_22 RemovedBody162_39

def RemovedBody162_41 : StackLang.HolProg 64 :=
.seq RemovedBody162_21 RemovedBody162_40

def RemovedBody162_42 : StackLang.HolProg 64 :=
.seq RemovedBody162_20 RemovedBody162_41

def RemovedBody162_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody162_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody162_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_51 : StackLang.HolProg 64 :=
.seq RemovedBody162_49 RemovedBody162_50

def RemovedBody162_52 : StackLang.HolProg 64 :=
.seq RemovedBody162_48 RemovedBody162_51

def RemovedBody162_53 : StackLang.HolProg 64 :=
.seq RemovedBody162_47 RemovedBody162_52

def RemovedBody162_54 : StackLang.HolProg 64 :=
.seq RemovedBody162_46 RemovedBody162_53

def RemovedBody162_55 : StackLang.HolProg 64 :=
.seq RemovedBody162_45 RemovedBody162_54

def RemovedBody162_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody162_58 : StackLang.HolProg 64 :=
.seq RemovedBody162_56 RemovedBody162_57

def RemovedBody162_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody162_55, 0, 162, 2)) (Sum.inl 161) (some (RemovedBody162_58, 162, 3))

def RemovedBody162_60 : StackLang.HolProg 64 :=
.seq RemovedBody162_44 RemovedBody162_59

def RemovedBody162_61 : StackLang.HolProg 64 :=
.seq RemovedBody162_43 RemovedBody162_60

def RemovedBody162_62 : StackLang.HolProg 64 :=
.seq RemovedBody162_42 RemovedBody162_61

def RemovedBody162_63 : StackLang.HolProg 64 :=
.seq RemovedBody162_13 RemovedBody162_62

def RemovedBody162_64 : StackLang.HolProg 64 :=
.seq RemovedBody162_10 RemovedBody162_63

def RemovedBody162_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody162_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody162_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody162_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody162_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody162_73 : StackLang.HolProg 64 :=
.seq RemovedBody162_71 RemovedBody162_72

def RemovedBody162_74 : StackLang.HolProg 64 :=
.seq RemovedBody162_70 RemovedBody162_73

def RemovedBody162_75 : StackLang.HolProg 64 :=
.seq RemovedBody162_69 RemovedBody162_74

def RemovedBody162_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 163#64)

def RemovedBody162_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody162_79 : StackLang.HolProg 64 :=
.seq RemovedBody162_77 RemovedBody162_78

def RemovedBody162_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody162_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody162_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody162_83 : StackLang.HolProg 64 :=
.seq RemovedBody162_81 RemovedBody162_82

def RemovedBody162_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody162_83 RemovedBody162_84

def RemovedBody162_86 : StackLang.HolProg 64 :=
.seq RemovedBody162_80 RemovedBody162_85

def RemovedBody162_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody162_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody162_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 162 5

def RemovedBody162_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody162_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody162_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody162_96 : StackLang.HolProg 64 :=
.seq RemovedBody162_94 RemovedBody162_95

def RemovedBody162_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody162_98 : StackLang.HolProg 64 :=
.seq RemovedBody162_96 RemovedBody162_97

def RemovedBody162_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_100 : StackLang.HolProg 64 :=
.seq RemovedBody162_98 RemovedBody162_99

def RemovedBody162_101 : StackLang.HolProg 64 :=
.seq RemovedBody162_93 RemovedBody162_100

def RemovedBody162_102 : StackLang.HolProg 64 :=
.seq RemovedBody162_92 RemovedBody162_101

def RemovedBody162_103 : StackLang.HolProg 64 :=
.seq RemovedBody162_91 RemovedBody162_102

def RemovedBody162_104 : StackLang.HolProg 64 :=
.seq RemovedBody162_90 RemovedBody162_103

def RemovedBody162_105 : StackLang.HolProg 64 :=
.seq RemovedBody162_89 RemovedBody162_104

def RemovedBody162_106 : StackLang.HolProg 64 :=
.seq RemovedBody162_88 RemovedBody162_105

def RemovedBody162_107 : StackLang.HolProg 64 :=
.seq RemovedBody162_87 RemovedBody162_106

def RemovedBody162_108 : StackLang.HolProg 64 :=
.seq RemovedBody162_86 RemovedBody162_107

def RemovedBody162_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody162_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody162_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody162_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody162_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody162_120 : StackLang.HolProg 64 :=
.seq RemovedBody162_118 RemovedBody162_119

def RemovedBody162_121 : StackLang.HolProg 64 :=
.seq RemovedBody162_117 RemovedBody162_120

def RemovedBody162_122 : StackLang.HolProg 64 :=
.seq RemovedBody162_116 RemovedBody162_121

def RemovedBody162_123 : StackLang.HolProg 64 :=
.seq RemovedBody162_115 RemovedBody162_122

def RemovedBody162_124 : StackLang.HolProg 64 :=
.seq RemovedBody162_114 RemovedBody162_123

def RemovedBody162_125 : StackLang.HolProg 64 :=
.seq RemovedBody162_113 RemovedBody162_124

def RemovedBody162_126 : StackLang.HolProg 64 :=
.seq RemovedBody162_112 RemovedBody162_125

def RemovedBody162_127 : StackLang.HolProg 64 :=
.seq RemovedBody162_111 RemovedBody162_126

def RemovedBody162_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody162_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody162_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody162_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody162_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody162_133 : StackLang.HolProg 64 :=
.seq RemovedBody162_131 RemovedBody162_132

def RemovedBody162_134 : StackLang.HolProg 64 :=
.seq RemovedBody162_130 RemovedBody162_133

def RemovedBody162_135 : StackLang.HolProg 64 :=
.seq RemovedBody162_129 RemovedBody162_134

def RemovedBody162_136 : StackLang.HolProg 64 :=
.seq RemovedBody162_128 RemovedBody162_135

def RemovedBody162_137 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody162_138 : StackLang.HolProg 64 :=
.seq RemovedBody162_136 RemovedBody162_137

def RemovedBody162_139 : StackLang.HolProg 64 :=
.call (some (RemovedBody162_127, 0, 162, 4)) (Sum.inl 159) (some (RemovedBody162_138, 162, 5))

def RemovedBody162_140 : StackLang.HolProg 64 :=
.seq RemovedBody162_110 RemovedBody162_139

def RemovedBody162_141 : StackLang.HolProg 64 :=
.seq RemovedBody162_109 RemovedBody162_140

def RemovedBody162_142 : StackLang.HolProg 64 :=
.seq RemovedBody162_108 RemovedBody162_141

def RemovedBody162_143 : StackLang.HolProg 64 :=
.seq RemovedBody162_79 RemovedBody162_142

def RemovedBody162_144 : StackLang.HolProg 64 :=
.seq RemovedBody162_76 RemovedBody162_143

def RemovedBody162_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody162_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody162_147 : StackLang.HolProg 64 :=
.seq RemovedBody162_145 RemovedBody162_146

def RemovedBody162_148 : StackLang.HolProg 64 :=
.seq RemovedBody162_144 RemovedBody162_147

def RemovedBody162_149 : StackLang.HolProg 64 :=
.seq RemovedBody162_75 RemovedBody162_148

def RemovedBody162_150 : StackLang.HolProg 64 :=
.seq RemovedBody162_68 RemovedBody162_149

def RemovedBody162_151 : StackLang.HolProg 64 :=
.seq RemovedBody162_67 RemovedBody162_150

def RemovedBody162_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody162_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody162_154 : StackLang.HolProg 64 :=
.seq RemovedBody162_152 RemovedBody162_153

def RemovedBody162_155 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) RemovedBody162_151 RemovedBody162_154

def RemovedBody162_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody162_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody162_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody162_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody162_160 : StackLang.HolProg 64 :=
.seq RemovedBody162_158 RemovedBody162_159

def RemovedBody162_161 : StackLang.HolProg 64 :=
.seq RemovedBody162_157 RemovedBody162_160

def RemovedBody162_162 : StackLang.HolProg 64 :=
.seq RemovedBody162_156 RemovedBody162_161

def RemovedBody162_163 : StackLang.HolProg 64 :=
.seq RemovedBody162_155 RemovedBody162_162

def RemovedBody162_164 : StackLang.HolProg 64 :=
.seq RemovedBody162_66 RemovedBody162_163

def RemovedBody162_165 : StackLang.HolProg 64 :=
.seq RemovedBody162_65 RemovedBody162_164

def RemovedBody162_166 : StackLang.HolProg 64 :=
.seq RemovedBody162_64 RemovedBody162_165

def RemovedBody162_167 : StackLang.HolProg 64 :=
.seq RemovedBody162_9 RemovedBody162_166

def RemovedBody162_168 : StackLang.HolProg 64 :=
.seq RemovedBody162_6 RemovedBody162_167

def Removed162 : Nat × StackLang.HolProg 64 := (162, RemovedBody162_168)
theorem Removed162_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc162 = Removed162 := by
  kernel_rfl
#print axioms Removed162_eq
end InitECandidate.Proofs.BackendStages
