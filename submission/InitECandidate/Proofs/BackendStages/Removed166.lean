import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc166
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody166_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody166_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody166_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody166_3 : StackLang.HolProg 64 :=
.seq RemovedBody166_1 RemovedBody166_2

def RemovedBody166_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody166_3 RemovedBody166_4

def RemovedBody166_6 : StackLang.HolProg 64 :=
.seq RemovedBody166_0 RemovedBody166_5

def RemovedBody166_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody166_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_9 : StackLang.HolProg 64 :=
.seq RemovedBody166_7 RemovedBody166_8

def RemovedBody166_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 182#64)

def RemovedBody166_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody166_13 : StackLang.HolProg 64 :=
.seq RemovedBody166_11 RemovedBody166_12

def RemovedBody166_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody166_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody166_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody166_17 : StackLang.HolProg 64 :=
.seq RemovedBody166_15 RemovedBody166_16

def RemovedBody166_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody166_17 RemovedBody166_18

def RemovedBody166_20 : StackLang.HolProg 64 :=
.seq RemovedBody166_14 RemovedBody166_19

def RemovedBody166_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody166_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody166_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 3

def RemovedBody166_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody166_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody166_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody166_30 : StackLang.HolProg 64 :=
.seq RemovedBody166_28 RemovedBody166_29

def RemovedBody166_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody166_32 : StackLang.HolProg 64 :=
.seq RemovedBody166_30 RemovedBody166_31

def RemovedBody166_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_34 : StackLang.HolProg 64 :=
.seq RemovedBody166_32 RemovedBody166_33

def RemovedBody166_35 : StackLang.HolProg 64 :=
.seq RemovedBody166_27 RemovedBody166_34

def RemovedBody166_36 : StackLang.HolProg 64 :=
.seq RemovedBody166_26 RemovedBody166_35

def RemovedBody166_37 : StackLang.HolProg 64 :=
.seq RemovedBody166_25 RemovedBody166_36

def RemovedBody166_38 : StackLang.HolProg 64 :=
.seq RemovedBody166_24 RemovedBody166_37

def RemovedBody166_39 : StackLang.HolProg 64 :=
.seq RemovedBody166_23 RemovedBody166_38

def RemovedBody166_40 : StackLang.HolProg 64 :=
.seq RemovedBody166_22 RemovedBody166_39

def RemovedBody166_41 : StackLang.HolProg 64 :=
.seq RemovedBody166_21 RemovedBody166_40

def RemovedBody166_42 : StackLang.HolProg 64 :=
.seq RemovedBody166_20 RemovedBody166_41

def RemovedBody166_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody166_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody166_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_51 : StackLang.HolProg 64 :=
.seq RemovedBody166_49 RemovedBody166_50

def RemovedBody166_52 : StackLang.HolProg 64 :=
.seq RemovedBody166_48 RemovedBody166_51

def RemovedBody166_53 : StackLang.HolProg 64 :=
.seq RemovedBody166_47 RemovedBody166_52

def RemovedBody166_54 : StackLang.HolProg 64 :=
.seq RemovedBody166_46 RemovedBody166_53

def RemovedBody166_55 : StackLang.HolProg 64 :=
.seq RemovedBody166_45 RemovedBody166_54

def RemovedBody166_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody166_58 : StackLang.HolProg 64 :=
.seq RemovedBody166_56 RemovedBody166_57

def RemovedBody166_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody166_55, 0, 166, 2)) (Sum.inl 163) (some (RemovedBody166_58, 166, 3))

def RemovedBody166_60 : StackLang.HolProg 64 :=
.seq RemovedBody166_44 RemovedBody166_59

def RemovedBody166_61 : StackLang.HolProg 64 :=
.seq RemovedBody166_43 RemovedBody166_60

def RemovedBody166_62 : StackLang.HolProg 64 :=
.seq RemovedBody166_42 RemovedBody166_61

def RemovedBody166_63 : StackLang.HolProg 64 :=
.seq RemovedBody166_13 RemovedBody166_62

def RemovedBody166_64 : StackLang.HolProg 64 :=
.seq RemovedBody166_10 RemovedBody166_63

def RemovedBody166_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody166_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody166_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody166_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody166_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody166_73 : StackLang.HolProg 64 :=
.seq RemovedBody166_71 RemovedBody166_72

def RemovedBody166_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 183#64)

def RemovedBody166_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody166_77 : StackLang.HolProg 64 :=
.seq RemovedBody166_75 RemovedBody166_76

def RemovedBody166_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody166_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody166_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody166_81 : StackLang.HolProg 64 :=
.seq RemovedBody166_79 RemovedBody166_80

def RemovedBody166_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_83 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody166_81 RemovedBody166_82

def RemovedBody166_84 : StackLang.HolProg 64 :=
.seq RemovedBody166_78 RemovedBody166_83

def RemovedBody166_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody166_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody166_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 166 5

def RemovedBody166_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody166_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody166_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody166_94 : StackLang.HolProg 64 :=
.seq RemovedBody166_92 RemovedBody166_93

def RemovedBody166_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody166_96 : StackLang.HolProg 64 :=
.seq RemovedBody166_94 RemovedBody166_95

def RemovedBody166_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_98 : StackLang.HolProg 64 :=
.seq RemovedBody166_96 RemovedBody166_97

def RemovedBody166_99 : StackLang.HolProg 64 :=
.seq RemovedBody166_91 RemovedBody166_98

def RemovedBody166_100 : StackLang.HolProg 64 :=
.seq RemovedBody166_90 RemovedBody166_99

def RemovedBody166_101 : StackLang.HolProg 64 :=
.seq RemovedBody166_89 RemovedBody166_100

def RemovedBody166_102 : StackLang.HolProg 64 :=
.seq RemovedBody166_88 RemovedBody166_101

def RemovedBody166_103 : StackLang.HolProg 64 :=
.seq RemovedBody166_87 RemovedBody166_102

def RemovedBody166_104 : StackLang.HolProg 64 :=
.seq RemovedBody166_86 RemovedBody166_103

def RemovedBody166_105 : StackLang.HolProg 64 :=
.seq RemovedBody166_85 RemovedBody166_104

def RemovedBody166_106 : StackLang.HolProg 64 :=
.seq RemovedBody166_84 RemovedBody166_105

def RemovedBody166_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody166_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody166_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody166_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody166_116 : StackLang.HolProg 64 :=
.seq RemovedBody166_114 RemovedBody166_115

def RemovedBody166_117 : StackLang.HolProg 64 :=
.seq RemovedBody166_113 RemovedBody166_116

def RemovedBody166_118 : StackLang.HolProg 64 :=
.seq RemovedBody166_112 RemovedBody166_117

def RemovedBody166_119 : StackLang.HolProg 64 :=
.seq RemovedBody166_111 RemovedBody166_118

def RemovedBody166_120 : StackLang.HolProg 64 :=
.seq RemovedBody166_110 RemovedBody166_119

def RemovedBody166_121 : StackLang.HolProg 64 :=
.seq RemovedBody166_109 RemovedBody166_120

def RemovedBody166_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody166_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody166_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody166_125 : StackLang.HolProg 64 :=
.seq RemovedBody166_123 RemovedBody166_124

def RemovedBody166_126 : StackLang.HolProg 64 :=
.seq RemovedBody166_122 RemovedBody166_125

def RemovedBody166_127 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody166_128 : StackLang.HolProg 64 :=
.seq RemovedBody166_126 RemovedBody166_127

def RemovedBody166_129 : StackLang.HolProg 64 :=
.call (some (RemovedBody166_121, 0, 166, 4)) (Sum.inl 165) (some (RemovedBody166_128, 166, 5))

def RemovedBody166_130 : StackLang.HolProg 64 :=
.seq RemovedBody166_108 RemovedBody166_129

def RemovedBody166_131 : StackLang.HolProg 64 :=
.seq RemovedBody166_107 RemovedBody166_130

def RemovedBody166_132 : StackLang.HolProg 64 :=
.seq RemovedBody166_106 RemovedBody166_131

def RemovedBody166_133 : StackLang.HolProg 64 :=
.seq RemovedBody166_77 RemovedBody166_132

def RemovedBody166_134 : StackLang.HolProg 64 :=
.seq RemovedBody166_74 RemovedBody166_133

def RemovedBody166_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody166_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_137 : StackLang.HolProg 64 :=
.seq RemovedBody166_135 RemovedBody166_136

def RemovedBody166_138 : StackLang.HolProg 64 :=
.seq RemovedBody166_134 RemovedBody166_137

def RemovedBody166_139 : StackLang.HolProg 64 :=
.seq RemovedBody166_73 RemovedBody166_138

def RemovedBody166_140 : StackLang.HolProg 64 :=
.seq RemovedBody166_70 RemovedBody166_139

def RemovedBody166_141 : StackLang.HolProg 64 :=
.seq RemovedBody166_69 RemovedBody166_140

def RemovedBody166_142 : StackLang.HolProg 64 :=
.seq RemovedBody166_68 RemovedBody166_141

def RemovedBody166_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody166_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody166_145 : StackLang.HolProg 64 :=
.seq RemovedBody166_143 RemovedBody166_144

def RemovedBody166_146 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody166_142 RemovedBody166_145

def RemovedBody166_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody166_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody166_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody166_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody166_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody166_153 : StackLang.HolProg 64 :=
.seq RemovedBody166_151 RemovedBody166_152

def RemovedBody166_154 : StackLang.HolProg 64 :=
.seq RemovedBody166_150 RemovedBody166_153

def RemovedBody166_155 : StackLang.HolProg 64 :=
.seq RemovedBody166_149 RemovedBody166_154

def RemovedBody166_156 : StackLang.HolProg 64 :=
.seq RemovedBody166_148 RemovedBody166_155

def RemovedBody166_157 : StackLang.HolProg 64 :=
.seq RemovedBody166_147 RemovedBody166_156

def RemovedBody166_158 : StackLang.HolProg 64 :=
.seq RemovedBody166_146 RemovedBody166_157

def RemovedBody166_159 : StackLang.HolProg 64 :=
.seq RemovedBody166_67 RemovedBody166_158

def RemovedBody166_160 : StackLang.HolProg 64 :=
.seq RemovedBody166_66 RemovedBody166_159

def RemovedBody166_161 : StackLang.HolProg 64 :=
.seq RemovedBody166_65 RemovedBody166_160

def RemovedBody166_162 : StackLang.HolProg 64 :=
.seq RemovedBody166_64 RemovedBody166_161

def RemovedBody166_163 : StackLang.HolProg 64 :=
.seq RemovedBody166_9 RemovedBody166_162

def RemovedBody166_164 : StackLang.HolProg 64 :=
.seq RemovedBody166_6 RemovedBody166_163

def Removed166 : Nat × StackLang.HolProg 64 := (166, RemovedBody166_164)
theorem Removed166_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc166 = Removed166 := by
  kernel_rfl
#print axioms Removed166_eq
end InitECandidate.Proofs.BackendStages
