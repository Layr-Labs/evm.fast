import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc152
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody152_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody152_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody152_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody152_3 : StackLang.HolProg 64 :=
.seq RemovedBody152_1 RemovedBody152_2

def RemovedBody152_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody152_3 RemovedBody152_4

def RemovedBody152_6 : StackLang.HolProg 64 :=
.seq RemovedBody152_0 RemovedBody152_5

def RemovedBody152_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody152_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody152_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody152_13 : StackLang.HolProg 64 :=
.seq RemovedBody152_11 RemovedBody152_12

def RemovedBody152_14 : StackLang.HolProg 64 :=
.seq RemovedBody152_10 RemovedBody152_13

def RemovedBody152_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody152_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody152_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody152_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody152_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody152_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody152_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody152_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody152_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody152_30 : StackLang.HolProg 64 :=
.seq RemovedBody152_28 RemovedBody152_29

def RemovedBody152_31 : StackLang.HolProg 64 :=
.seq RemovedBody152_27 RemovedBody152_30

def RemovedBody152_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 128#64)

def RemovedBody152_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody152_35 : StackLang.HolProg 64 :=
.seq RemovedBody152_33 RemovedBody152_34

def RemovedBody152_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody152_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody152_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody152_39 : StackLang.HolProg 64 :=
.seq RemovedBody152_37 RemovedBody152_38

def RemovedBody152_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_41 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody152_39 RemovedBody152_40

def RemovedBody152_42 : StackLang.HolProg 64 :=
.seq RemovedBody152_36 RemovedBody152_41

def RemovedBody152_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody152_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody152_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 152 3

def RemovedBody152_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody152_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody152_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody152_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody152_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody152_52 : StackLang.HolProg 64 :=
.seq RemovedBody152_50 RemovedBody152_51

def RemovedBody152_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody152_54 : StackLang.HolProg 64 :=
.seq RemovedBody152_52 RemovedBody152_53

def RemovedBody152_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody152_56 : StackLang.HolProg 64 :=
.seq RemovedBody152_54 RemovedBody152_55

def RemovedBody152_57 : StackLang.HolProg 64 :=
.seq RemovedBody152_49 RemovedBody152_56

def RemovedBody152_58 : StackLang.HolProg 64 :=
.seq RemovedBody152_48 RemovedBody152_57

def RemovedBody152_59 : StackLang.HolProg 64 :=
.seq RemovedBody152_47 RemovedBody152_58

def RemovedBody152_60 : StackLang.HolProg 64 :=
.seq RemovedBody152_46 RemovedBody152_59

def RemovedBody152_61 : StackLang.HolProg 64 :=
.seq RemovedBody152_45 RemovedBody152_60

def RemovedBody152_62 : StackLang.HolProg 64 :=
.seq RemovedBody152_44 RemovedBody152_61

def RemovedBody152_63 : StackLang.HolProg 64 :=
.seq RemovedBody152_43 RemovedBody152_62

def RemovedBody152_64 : StackLang.HolProg 64 :=
.seq RemovedBody152_42 RemovedBody152_63

def RemovedBody152_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody152_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody152_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody152_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody152_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody152_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody152_75 : StackLang.HolProg 64 :=
.seq RemovedBody152_73 RemovedBody152_74

def RemovedBody152_76 : StackLang.HolProg 64 :=
.seq RemovedBody152_72 RemovedBody152_75

def RemovedBody152_77 : StackLang.HolProg 64 :=
.seq RemovedBody152_71 RemovedBody152_76

def RemovedBody152_78 : StackLang.HolProg 64 :=
.seq RemovedBody152_70 RemovedBody152_77

def RemovedBody152_79 : StackLang.HolProg 64 :=
.seq RemovedBody152_69 RemovedBody152_78

def RemovedBody152_80 : StackLang.HolProg 64 :=
.seq RemovedBody152_68 RemovedBody152_79

def RemovedBody152_81 : StackLang.HolProg 64 :=
.seq RemovedBody152_67 RemovedBody152_80

def RemovedBody152_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody152_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody152_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody152_86 : StackLang.HolProg 64 :=
.seq RemovedBody152_84 RemovedBody152_85

def RemovedBody152_87 : StackLang.HolProg 64 :=
.seq RemovedBody152_83 RemovedBody152_86

def RemovedBody152_88 : StackLang.HolProg 64 :=
.seq RemovedBody152_82 RemovedBody152_87

def RemovedBody152_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody152_90 : StackLang.HolProg 64 :=
.seq RemovedBody152_88 RemovedBody152_89

def RemovedBody152_91 : StackLang.HolProg 64 :=
.call (some (RemovedBody152_81, 0, 152, 2)) (Sum.inl 88) (some (RemovedBody152_90, 152, 3))

def RemovedBody152_92 : StackLang.HolProg 64 :=
.seq RemovedBody152_66 RemovedBody152_91

def RemovedBody152_93 : StackLang.HolProg 64 :=
.seq RemovedBody152_65 RemovedBody152_92

def RemovedBody152_94 : StackLang.HolProg 64 :=
.seq RemovedBody152_64 RemovedBody152_93

def RemovedBody152_95 : StackLang.HolProg 64 :=
.seq RemovedBody152_35 RemovedBody152_94

def RemovedBody152_96 : StackLang.HolProg 64 :=
.seq RemovedBody152_32 RemovedBody152_95

def RemovedBody152_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody152_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody152_102 : StackLang.HolProg 64 :=
.seq RemovedBody152_100 RemovedBody152_101

def RemovedBody152_103 : StackLang.HolProg 64 :=
.seq RemovedBody152_99 RemovedBody152_102

def RemovedBody152_104 : StackLang.HolProg 64 :=
.seq RemovedBody152_98 RemovedBody152_103

def RemovedBody152_105 : StackLang.HolProg 64 :=
.seq RemovedBody152_97 RemovedBody152_104

def RemovedBody152_106 : StackLang.HolProg 64 :=
.seq RemovedBody152_96 RemovedBody152_105

def RemovedBody152_107 : StackLang.HolProg 64 :=
.seq RemovedBody152_31 RemovedBody152_106

def RemovedBody152_108 : StackLang.HolProg 64 :=
.seq RemovedBody152_26 RemovedBody152_107

def RemovedBody152_109 : StackLang.HolProg 64 :=
.seq RemovedBody152_25 RemovedBody152_108

def RemovedBody152_110 : StackLang.HolProg 64 :=
.seq RemovedBody152_24 RemovedBody152_109

def RemovedBody152_111 : StackLang.HolProg 64 :=
.seq RemovedBody152_23 RemovedBody152_110

def RemovedBody152_112 : StackLang.HolProg 64 :=
.seq RemovedBody152_22 RemovedBody152_111

def RemovedBody152_113 : StackLang.HolProg 64 :=
.seq RemovedBody152_21 RemovedBody152_112

def RemovedBody152_114 : StackLang.HolProg 64 :=
.seq RemovedBody152_20 RemovedBody152_113

def RemovedBody152_115 : StackLang.HolProg 64 :=
.seq RemovedBody152_19 RemovedBody152_114

def RemovedBody152_116 : StackLang.HolProg 64 :=
.seq RemovedBody152_18 RemovedBody152_115

def RemovedBody152_117 : StackLang.HolProg 64 :=
.seq RemovedBody152_17 RemovedBody152_116

def RemovedBody152_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody152_120 : StackLang.HolProg 64 :=
.seq RemovedBody152_118 RemovedBody152_119

def RemovedBody152_121 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody152_117 RemovedBody152_120

def RemovedBody152_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_124 : StackLang.HolProg 64 :=
.seq RemovedBody152_122 RemovedBody152_123

def RemovedBody152_125 : StackLang.HolProg 64 :=
.seq RemovedBody152_121 RemovedBody152_124

def RemovedBody152_126 : StackLang.HolProg 64 :=
.seq RemovedBody152_16 RemovedBody152_125

def RemovedBody152_127 : StackLang.HolProg 64 :=
.seq RemovedBody152_15 RemovedBody152_126

def RemovedBody152_128 : StackLang.HolProg 64 :=
.loop RemovedBody152_127

def RemovedBody152_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody152_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody152_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody152_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody152_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody152_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def RemovedBody152_135 : StackLang.HolProg 64 :=
.seq RemovedBody152_133 RemovedBody152_134

def RemovedBody152_136 : StackLang.HolProg 64 :=
.seq RemovedBody152_132 RemovedBody152_135

def RemovedBody152_137 : StackLang.HolProg 64 :=
.seq RemovedBody152_131 RemovedBody152_136

def RemovedBody152_138 : StackLang.HolProg 64 :=
.seq RemovedBody152_130 RemovedBody152_137

def RemovedBody152_139 : StackLang.HolProg 64 :=
.seq RemovedBody152_129 RemovedBody152_138

def RemovedBody152_140 : StackLang.HolProg 64 :=
.seq RemovedBody152_128 RemovedBody152_139

def RemovedBody152_141 : StackLang.HolProg 64 :=
.seq RemovedBody152_14 RemovedBody152_140

def RemovedBody152_142 : StackLang.HolProg 64 :=
.seq RemovedBody152_9 RemovedBody152_141

def RemovedBody152_143 : StackLang.HolProg 64 :=
.seq RemovedBody152_8 RemovedBody152_142

def RemovedBody152_144 : StackLang.HolProg 64 :=
.seq RemovedBody152_7 RemovedBody152_143

def RemovedBody152_145 : StackLang.HolProg 64 :=
.seq RemovedBody152_6 RemovedBody152_144

def Removed152 : Nat × StackLang.HolProg 64 := (152, RemovedBody152_145)
theorem Removed152_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc152 = Removed152 := by
  kernel_rfl
#print axioms Removed152_eq
end InitECandidate.Proofs.BackendStages
