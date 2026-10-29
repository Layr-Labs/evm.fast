import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc174
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody174_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody174_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody174_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody174_3 : StackLang.HolProg 64 :=
.seq RemovedBody174_1 RemovedBody174_2

def RemovedBody174_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody174_3 RemovedBody174_4

def RemovedBody174_6 : StackLang.HolProg 64 :=
.seq RemovedBody174_0 RemovedBody174_5

def RemovedBody174_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 55#64)

def RemovedBody174_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody174_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody174_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody174_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody174_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody174_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody174_18 : StackLang.HolProg 64 :=
.seq RemovedBody174_16 RemovedBody174_17

def RemovedBody174_19 : StackLang.HolProg 64 :=
.seq RemovedBody174_15 RemovedBody174_18

def RemovedBody174_20 : StackLang.HolProg 64 :=
.seq RemovedBody174_14 RemovedBody174_19

def RemovedBody174_21 : StackLang.HolProg 64 :=
.seq RemovedBody174_13 RemovedBody174_20

def RemovedBody174_22 : StackLang.HolProg 64 :=
.seq RemovedBody174_12 RemovedBody174_21

def RemovedBody174_23 : StackLang.HolProg 64 :=
.seq RemovedBody174_11 RemovedBody174_22

def RemovedBody174_24 : StackLang.HolProg 64 :=
.seq RemovedBody174_10 RemovedBody174_23

def RemovedBody174_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody174_28 : StackLang.HolProg 64 :=
.seq RemovedBody174_26 RemovedBody174_27

def RemovedBody174_29 : StackLang.HolProg 64 :=
.seq RemovedBody174_25 RemovedBody174_28

def RemovedBody174_30 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody174_24 RemovedBody174_29

def RemovedBody174_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody174_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody174_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody174_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody174_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody174_36 : StackLang.HolProg 64 :=
.seq RemovedBody174_34 RemovedBody174_35

def RemovedBody174_37 : StackLang.HolProg 64 :=
.seq RemovedBody174_33 RemovedBody174_36

def RemovedBody174_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 194#64)

def RemovedBody174_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody174_41 : StackLang.HolProg 64 :=
.seq RemovedBody174_39 RemovedBody174_40

def RemovedBody174_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody174_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody174_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody174_45 : StackLang.HolProg 64 :=
.seq RemovedBody174_43 RemovedBody174_44

def RemovedBody174_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody174_45 RemovedBody174_46

def RemovedBody174_48 : StackLang.HolProg 64 :=
.seq RemovedBody174_42 RemovedBody174_47

def RemovedBody174_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody174_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody174_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 3

def RemovedBody174_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody174_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody174_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody174_58 : StackLang.HolProg 64 :=
.seq RemovedBody174_56 RemovedBody174_57

def RemovedBody174_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody174_60 : StackLang.HolProg 64 :=
.seq RemovedBody174_58 RemovedBody174_59

def RemovedBody174_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_62 : StackLang.HolProg 64 :=
.seq RemovedBody174_60 RemovedBody174_61

def RemovedBody174_63 : StackLang.HolProg 64 :=
.seq RemovedBody174_55 RemovedBody174_62

def RemovedBody174_64 : StackLang.HolProg 64 :=
.seq RemovedBody174_54 RemovedBody174_63

def RemovedBody174_65 : StackLang.HolProg 64 :=
.seq RemovedBody174_53 RemovedBody174_64

def RemovedBody174_66 : StackLang.HolProg 64 :=
.seq RemovedBody174_52 RemovedBody174_65

def RemovedBody174_67 : StackLang.HolProg 64 :=
.seq RemovedBody174_51 RemovedBody174_66

def RemovedBody174_68 : StackLang.HolProg 64 :=
.seq RemovedBody174_50 RemovedBody174_67

def RemovedBody174_69 : StackLang.HolProg 64 :=
.seq RemovedBody174_49 RemovedBody174_68

def RemovedBody174_70 : StackLang.HolProg 64 :=
.seq RemovedBody174_48 RemovedBody174_69

def RemovedBody174_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody174_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody174_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody174_81 : StackLang.HolProg 64 :=
.seq RemovedBody174_79 RemovedBody174_80

def RemovedBody174_82 : StackLang.HolProg 64 :=
.seq RemovedBody174_78 RemovedBody174_81

def RemovedBody174_83 : StackLang.HolProg 64 :=
.seq RemovedBody174_77 RemovedBody174_82

def RemovedBody174_84 : StackLang.HolProg 64 :=
.seq RemovedBody174_76 RemovedBody174_83

def RemovedBody174_85 : StackLang.HolProg 64 :=
.seq RemovedBody174_75 RemovedBody174_84

def RemovedBody174_86 : StackLang.HolProg 64 :=
.seq RemovedBody174_74 RemovedBody174_85

def RemovedBody174_87 : StackLang.HolProg 64 :=
.seq RemovedBody174_73 RemovedBody174_86

def RemovedBody174_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody174_91 : StackLang.HolProg 64 :=
.seq RemovedBody174_89 RemovedBody174_90

def RemovedBody174_92 : StackLang.HolProg 64 :=
.seq RemovedBody174_88 RemovedBody174_91

def RemovedBody174_93 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody174_94 : StackLang.HolProg 64 :=
.seq RemovedBody174_92 RemovedBody174_93

def RemovedBody174_95 : StackLang.HolProg 64 :=
.call (some (RemovedBody174_87, 0, 174, 2)) (Sum.inl 172) (some (RemovedBody174_94, 174, 3))

def RemovedBody174_96 : StackLang.HolProg 64 :=
.seq RemovedBody174_72 RemovedBody174_95

def RemovedBody174_97 : StackLang.HolProg 64 :=
.seq RemovedBody174_71 RemovedBody174_96

def RemovedBody174_98 : StackLang.HolProg 64 :=
.seq RemovedBody174_70 RemovedBody174_97

def RemovedBody174_99 : StackLang.HolProg 64 :=
.seq RemovedBody174_41 RemovedBody174_98

def RemovedBody174_100 : StackLang.HolProg 64 :=
.seq RemovedBody174_38 RemovedBody174_99

def RemovedBody174_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody174_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody174_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 55#64)))

def RemovedBody174_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody174_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody174_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 195#64)

def RemovedBody174_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody174_112 : StackLang.HolProg 64 :=
.seq RemovedBody174_110 RemovedBody174_111

def RemovedBody174_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody174_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody174_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody174_116 : StackLang.HolProg 64 :=
.seq RemovedBody174_114 RemovedBody174_115

def RemovedBody174_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody174_116 RemovedBody174_117

def RemovedBody174_119 : StackLang.HolProg 64 :=
.seq RemovedBody174_113 RemovedBody174_118

def RemovedBody174_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody174_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody174_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 174 5

def RemovedBody174_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody174_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody174_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody174_129 : StackLang.HolProg 64 :=
.seq RemovedBody174_127 RemovedBody174_128

def RemovedBody174_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody174_131 : StackLang.HolProg 64 :=
.seq RemovedBody174_129 RemovedBody174_130

def RemovedBody174_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_133 : StackLang.HolProg 64 :=
.seq RemovedBody174_131 RemovedBody174_132

def RemovedBody174_134 : StackLang.HolProg 64 :=
.seq RemovedBody174_126 RemovedBody174_133

def RemovedBody174_135 : StackLang.HolProg 64 :=
.seq RemovedBody174_125 RemovedBody174_134

def RemovedBody174_136 : StackLang.HolProg 64 :=
.seq RemovedBody174_124 RemovedBody174_135

def RemovedBody174_137 : StackLang.HolProg 64 :=
.seq RemovedBody174_123 RemovedBody174_136

def RemovedBody174_138 : StackLang.HolProg 64 :=
.seq RemovedBody174_122 RemovedBody174_137

def RemovedBody174_139 : StackLang.HolProg 64 :=
.seq RemovedBody174_121 RemovedBody174_138

def RemovedBody174_140 : StackLang.HolProg 64 :=
.seq RemovedBody174_120 RemovedBody174_139

def RemovedBody174_141 : StackLang.HolProg 64 :=
.seq RemovedBody174_119 RemovedBody174_140

def RemovedBody174_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody174_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody174_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody174_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody174_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_150 : StackLang.HolProg 64 :=
.seq RemovedBody174_148 RemovedBody174_149

def RemovedBody174_151 : StackLang.HolProg 64 :=
.seq RemovedBody174_147 RemovedBody174_150

def RemovedBody174_152 : StackLang.HolProg 64 :=
.seq RemovedBody174_146 RemovedBody174_151

def RemovedBody174_153 : StackLang.HolProg 64 :=
.seq RemovedBody174_145 RemovedBody174_152

def RemovedBody174_154 : StackLang.HolProg 64 :=
.seq RemovedBody174_144 RemovedBody174_153

def RemovedBody174_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody174_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody174_157 : StackLang.HolProg 64 :=
.seq RemovedBody174_155 RemovedBody174_156

def RemovedBody174_158 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody174_159 : StackLang.HolProg 64 :=
.seq RemovedBody174_157 RemovedBody174_158

def RemovedBody174_160 : StackLang.HolProg 64 :=
.call (some (RemovedBody174_154, 0, 174, 4)) (Sum.inl 173) (some (RemovedBody174_159, 174, 5))

def RemovedBody174_161 : StackLang.HolProg 64 :=
.seq RemovedBody174_143 RemovedBody174_160

def RemovedBody174_162 : StackLang.HolProg 64 :=
.seq RemovedBody174_142 RemovedBody174_161

def RemovedBody174_163 : StackLang.HolProg 64 :=
.seq RemovedBody174_141 RemovedBody174_162

def RemovedBody174_164 : StackLang.HolProg 64 :=
.seq RemovedBody174_112 RemovedBody174_163

def RemovedBody174_165 : StackLang.HolProg 64 :=
.seq RemovedBody174_109 RemovedBody174_164

def RemovedBody174_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody174_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody174_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody174_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody174_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody174_172 : StackLang.HolProg 64 :=
.seq RemovedBody174_170 RemovedBody174_171

def RemovedBody174_173 : StackLang.HolProg 64 :=
.seq RemovedBody174_169 RemovedBody174_172

def RemovedBody174_174 : StackLang.HolProg 64 :=
.seq RemovedBody174_168 RemovedBody174_173

def RemovedBody174_175 : StackLang.HolProg 64 :=
.seq RemovedBody174_167 RemovedBody174_174

def RemovedBody174_176 : StackLang.HolProg 64 :=
.seq RemovedBody174_166 RemovedBody174_175

def RemovedBody174_177 : StackLang.HolProg 64 :=
.seq RemovedBody174_165 RemovedBody174_176

def RemovedBody174_178 : StackLang.HolProg 64 :=
.seq RemovedBody174_108 RemovedBody174_177

def RemovedBody174_179 : StackLang.HolProg 64 :=
.seq RemovedBody174_107 RemovedBody174_178

def RemovedBody174_180 : StackLang.HolProg 64 :=
.seq RemovedBody174_106 RemovedBody174_179

def RemovedBody174_181 : StackLang.HolProg 64 :=
.seq RemovedBody174_105 RemovedBody174_180

def RemovedBody174_182 : StackLang.HolProg 64 :=
.seq RemovedBody174_104 RemovedBody174_181

def RemovedBody174_183 : StackLang.HolProg 64 :=
.seq RemovedBody174_103 RemovedBody174_182

def RemovedBody174_184 : StackLang.HolProg 64 :=
.seq RemovedBody174_102 RemovedBody174_183

def RemovedBody174_185 : StackLang.HolProg 64 :=
.seq RemovedBody174_101 RemovedBody174_184

def RemovedBody174_186 : StackLang.HolProg 64 :=
.seq RemovedBody174_100 RemovedBody174_185

def RemovedBody174_187 : StackLang.HolProg 64 :=
.seq RemovedBody174_37 RemovedBody174_186

def RemovedBody174_188 : StackLang.HolProg 64 :=
.seq RemovedBody174_32 RemovedBody174_187

def RemovedBody174_189 : StackLang.HolProg 64 :=
.seq RemovedBody174_31 RemovedBody174_188

def RemovedBody174_190 : StackLang.HolProg 64 :=
.seq RemovedBody174_30 RemovedBody174_189

def RemovedBody174_191 : StackLang.HolProg 64 :=
.seq RemovedBody174_9 RemovedBody174_190

def RemovedBody174_192 : StackLang.HolProg 64 :=
.seq RemovedBody174_8 RemovedBody174_191

def RemovedBody174_193 : StackLang.HolProg 64 :=
.seq RemovedBody174_7 RemovedBody174_192

def RemovedBody174_194 : StackLang.HolProg 64 :=
.seq RemovedBody174_6 RemovedBody174_193

def Removed174 : Nat × StackLang.HolProg 64 := (174, RemovedBody174_194)
theorem Removed174_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc174 = Removed174 := by
  kernel_rfl
#print axioms Removed174_eq
end InitECandidate.Proofs.BackendStages
