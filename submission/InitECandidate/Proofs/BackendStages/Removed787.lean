import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc787
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody787_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_3 : StackLang.HolProg 64 :=
.seq RemovedBody787_1 RemovedBody787_2

def RemovedBody787_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_3 RemovedBody787_4

def RemovedBody787_6 : StackLang.HolProg 64 :=
.seq RemovedBody787_0 RemovedBody787_5

def RemovedBody787_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_10 : StackLang.HolProg 64 :=
.seq RemovedBody787_8 RemovedBody787_9

def RemovedBody787_11 : StackLang.HolProg 64 :=
.seq RemovedBody787_7 RemovedBody787_10

def RemovedBody787_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3643#64)

def RemovedBody787_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_15 : StackLang.HolProg 64 :=
.seq RemovedBody787_13 RemovedBody787_14

def RemovedBody787_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_19 : StackLang.HolProg 64 :=
.seq RemovedBody787_17 RemovedBody787_18

def RemovedBody787_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_19 RemovedBody787_20

def RemovedBody787_22 : StackLang.HolProg 64 :=
.seq RemovedBody787_16 RemovedBody787_21

def RemovedBody787_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 3

def RemovedBody787_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_32 : StackLang.HolProg 64 :=
.seq RemovedBody787_30 RemovedBody787_31

def RemovedBody787_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_34 : StackLang.HolProg 64 :=
.seq RemovedBody787_32 RemovedBody787_33

def RemovedBody787_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_36 : StackLang.HolProg 64 :=
.seq RemovedBody787_34 RemovedBody787_35

def RemovedBody787_37 : StackLang.HolProg 64 :=
.seq RemovedBody787_29 RemovedBody787_36

def RemovedBody787_38 : StackLang.HolProg 64 :=
.seq RemovedBody787_28 RemovedBody787_37

def RemovedBody787_39 : StackLang.HolProg 64 :=
.seq RemovedBody787_27 RemovedBody787_38

def RemovedBody787_40 : StackLang.HolProg 64 :=
.seq RemovedBody787_26 RemovedBody787_39

def RemovedBody787_41 : StackLang.HolProg 64 :=
.seq RemovedBody787_25 RemovedBody787_40

def RemovedBody787_42 : StackLang.HolProg 64 :=
.seq RemovedBody787_24 RemovedBody787_41

def RemovedBody787_43 : StackLang.HolProg 64 :=
.seq RemovedBody787_23 RemovedBody787_42

def RemovedBody787_44 : StackLang.HolProg 64 :=
.seq RemovedBody787_22 RemovedBody787_43

def RemovedBody787_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_55 : StackLang.HolProg 64 :=
.seq RemovedBody787_53 RemovedBody787_54

def RemovedBody787_56 : StackLang.HolProg 64 :=
.seq RemovedBody787_52 RemovedBody787_55

def RemovedBody787_57 : StackLang.HolProg 64 :=
.seq RemovedBody787_51 RemovedBody787_56

def RemovedBody787_58 : StackLang.HolProg 64 :=
.seq RemovedBody787_50 RemovedBody787_57

def RemovedBody787_59 : StackLang.HolProg 64 :=
.seq RemovedBody787_49 RemovedBody787_58

def RemovedBody787_60 : StackLang.HolProg 64 :=
.seq RemovedBody787_48 RemovedBody787_59

def RemovedBody787_61 : StackLang.HolProg 64 :=
.seq RemovedBody787_47 RemovedBody787_60

def RemovedBody787_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_65 : StackLang.HolProg 64 :=
.seq RemovedBody787_63 RemovedBody787_64

def RemovedBody787_66 : StackLang.HolProg 64 :=
.seq RemovedBody787_62 RemovedBody787_65

def RemovedBody787_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_68 : StackLang.HolProg 64 :=
.seq RemovedBody787_66 RemovedBody787_67

def RemovedBody787_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_61, 0, 787, 2)) (Sum.inl 727) (some (RemovedBody787_68, 787, 3))

def RemovedBody787_70 : StackLang.HolProg 64 :=
.seq RemovedBody787_46 RemovedBody787_69

def RemovedBody787_71 : StackLang.HolProg 64 :=
.seq RemovedBody787_45 RemovedBody787_70

def RemovedBody787_72 : StackLang.HolProg 64 :=
.seq RemovedBody787_44 RemovedBody787_71

def RemovedBody787_73 : StackLang.HolProg 64 :=
.seq RemovedBody787_15 RemovedBody787_72

def RemovedBody787_74 : StackLang.HolProg 64 :=
.seq RemovedBody787_12 RemovedBody787_73

def RemovedBody787_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody787_83 : StackLang.HolProg 64 :=
.seq RemovedBody787_81 RemovedBody787_82

def RemovedBody787_84 : StackLang.HolProg 64 :=
.seq RemovedBody787_80 RemovedBody787_83

def RemovedBody787_85 : StackLang.HolProg 64 :=
.seq RemovedBody787_79 RemovedBody787_84

def RemovedBody787_86 : StackLang.HolProg 64 :=
.seq RemovedBody787_78 RemovedBody787_85

def RemovedBody787_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_88 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_86 RemovedBody787_87

def RemovedBody787_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody787_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody787_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_98 : StackLang.HolProg 64 :=
.seq RemovedBody787_96 RemovedBody787_97

def RemovedBody787_99 : StackLang.HolProg 64 :=
.seq RemovedBody787_95 RemovedBody787_98

def RemovedBody787_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3644#64)

def RemovedBody787_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_103 : StackLang.HolProg 64 :=
.seq RemovedBody787_101 RemovedBody787_102

def RemovedBody787_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_107 : StackLang.HolProg 64 :=
.seq RemovedBody787_105 RemovedBody787_106

def RemovedBody787_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_109 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_107 RemovedBody787_108

def RemovedBody787_110 : StackLang.HolProg 64 :=
.seq RemovedBody787_104 RemovedBody787_109

def RemovedBody787_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 5

def RemovedBody787_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_120 : StackLang.HolProg 64 :=
.seq RemovedBody787_118 RemovedBody787_119

def RemovedBody787_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_122 : StackLang.HolProg 64 :=
.seq RemovedBody787_120 RemovedBody787_121

def RemovedBody787_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_124 : StackLang.HolProg 64 :=
.seq RemovedBody787_122 RemovedBody787_123

def RemovedBody787_125 : StackLang.HolProg 64 :=
.seq RemovedBody787_117 RemovedBody787_124

def RemovedBody787_126 : StackLang.HolProg 64 :=
.seq RemovedBody787_116 RemovedBody787_125

def RemovedBody787_127 : StackLang.HolProg 64 :=
.seq RemovedBody787_115 RemovedBody787_126

def RemovedBody787_128 : StackLang.HolProg 64 :=
.seq RemovedBody787_114 RemovedBody787_127

def RemovedBody787_129 : StackLang.HolProg 64 :=
.seq RemovedBody787_113 RemovedBody787_128

def RemovedBody787_130 : StackLang.HolProg 64 :=
.seq RemovedBody787_112 RemovedBody787_129

def RemovedBody787_131 : StackLang.HolProg 64 :=
.seq RemovedBody787_111 RemovedBody787_130

def RemovedBody787_132 : StackLang.HolProg 64 :=
.seq RemovedBody787_110 RemovedBody787_131

def RemovedBody787_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_143 : StackLang.HolProg 64 :=
.seq RemovedBody787_141 RemovedBody787_142

def RemovedBody787_144 : StackLang.HolProg 64 :=
.seq RemovedBody787_140 RemovedBody787_143

def RemovedBody787_145 : StackLang.HolProg 64 :=
.seq RemovedBody787_139 RemovedBody787_144

def RemovedBody787_146 : StackLang.HolProg 64 :=
.seq RemovedBody787_138 RemovedBody787_145

def RemovedBody787_147 : StackLang.HolProg 64 :=
.seq RemovedBody787_137 RemovedBody787_146

def RemovedBody787_148 : StackLang.HolProg 64 :=
.seq RemovedBody787_136 RemovedBody787_147

def RemovedBody787_149 : StackLang.HolProg 64 :=
.seq RemovedBody787_135 RemovedBody787_148

def RemovedBody787_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_153 : StackLang.HolProg 64 :=
.seq RemovedBody787_151 RemovedBody787_152

def RemovedBody787_154 : StackLang.HolProg 64 :=
.seq RemovedBody787_150 RemovedBody787_153

def RemovedBody787_155 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_156 : StackLang.HolProg 64 :=
.seq RemovedBody787_154 RemovedBody787_155

def RemovedBody787_157 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_149, 0, 787, 4)) (Sum.inl 727) (some (RemovedBody787_156, 787, 5))

def RemovedBody787_158 : StackLang.HolProg 64 :=
.seq RemovedBody787_134 RemovedBody787_157

def RemovedBody787_159 : StackLang.HolProg 64 :=
.seq RemovedBody787_133 RemovedBody787_158

def RemovedBody787_160 : StackLang.HolProg 64 :=
.seq RemovedBody787_132 RemovedBody787_159

def RemovedBody787_161 : StackLang.HolProg 64 :=
.seq RemovedBody787_103 RemovedBody787_160

def RemovedBody787_162 : StackLang.HolProg 64 :=
.seq RemovedBody787_100 RemovedBody787_161

def RemovedBody787_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody787_171 : StackLang.HolProg 64 :=
.seq RemovedBody787_169 RemovedBody787_170

def RemovedBody787_172 : StackLang.HolProg 64 :=
.seq RemovedBody787_168 RemovedBody787_171

def RemovedBody787_173 : StackLang.HolProg 64 :=
.seq RemovedBody787_167 RemovedBody787_172

def RemovedBody787_174 : StackLang.HolProg 64 :=
.seq RemovedBody787_166 RemovedBody787_173

def RemovedBody787_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_176 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_174 RemovedBody787_175

def RemovedBody787_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 128#64)))

def RemovedBody787_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody787_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_186 : StackLang.HolProg 64 :=
.seq RemovedBody787_184 RemovedBody787_185

def RemovedBody787_187 : StackLang.HolProg 64 :=
.seq RemovedBody787_183 RemovedBody787_186

def RemovedBody787_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3645#64)

def RemovedBody787_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_191 : StackLang.HolProg 64 :=
.seq RemovedBody787_189 RemovedBody787_190

def RemovedBody787_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_195 : StackLang.HolProg 64 :=
.seq RemovedBody787_193 RemovedBody787_194

def RemovedBody787_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_195 RemovedBody787_196

def RemovedBody787_198 : StackLang.HolProg 64 :=
.seq RemovedBody787_192 RemovedBody787_197

def RemovedBody787_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 7

def RemovedBody787_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_208 : StackLang.HolProg 64 :=
.seq RemovedBody787_206 RemovedBody787_207

def RemovedBody787_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_210 : StackLang.HolProg 64 :=
.seq RemovedBody787_208 RemovedBody787_209

def RemovedBody787_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_212 : StackLang.HolProg 64 :=
.seq RemovedBody787_210 RemovedBody787_211

def RemovedBody787_213 : StackLang.HolProg 64 :=
.seq RemovedBody787_205 RemovedBody787_212

def RemovedBody787_214 : StackLang.HolProg 64 :=
.seq RemovedBody787_204 RemovedBody787_213

def RemovedBody787_215 : StackLang.HolProg 64 :=
.seq RemovedBody787_203 RemovedBody787_214

def RemovedBody787_216 : StackLang.HolProg 64 :=
.seq RemovedBody787_202 RemovedBody787_215

def RemovedBody787_217 : StackLang.HolProg 64 :=
.seq RemovedBody787_201 RemovedBody787_216

def RemovedBody787_218 : StackLang.HolProg 64 :=
.seq RemovedBody787_200 RemovedBody787_217

def RemovedBody787_219 : StackLang.HolProg 64 :=
.seq RemovedBody787_199 RemovedBody787_218

def RemovedBody787_220 : StackLang.HolProg 64 :=
.seq RemovedBody787_198 RemovedBody787_219

def RemovedBody787_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_231 : StackLang.HolProg 64 :=
.seq RemovedBody787_229 RemovedBody787_230

def RemovedBody787_232 : StackLang.HolProg 64 :=
.seq RemovedBody787_228 RemovedBody787_231

def RemovedBody787_233 : StackLang.HolProg 64 :=
.seq RemovedBody787_227 RemovedBody787_232

def RemovedBody787_234 : StackLang.HolProg 64 :=
.seq RemovedBody787_226 RemovedBody787_233

def RemovedBody787_235 : StackLang.HolProg 64 :=
.seq RemovedBody787_225 RemovedBody787_234

def RemovedBody787_236 : StackLang.HolProg 64 :=
.seq RemovedBody787_224 RemovedBody787_235

def RemovedBody787_237 : StackLang.HolProg 64 :=
.seq RemovedBody787_223 RemovedBody787_236

def RemovedBody787_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_241 : StackLang.HolProg 64 :=
.seq RemovedBody787_239 RemovedBody787_240

def RemovedBody787_242 : StackLang.HolProg 64 :=
.seq RemovedBody787_238 RemovedBody787_241

def RemovedBody787_243 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_244 : StackLang.HolProg 64 :=
.seq RemovedBody787_242 RemovedBody787_243

def RemovedBody787_245 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_237, 0, 787, 6)) (Sum.inl 727) (some (RemovedBody787_244, 787, 7))

def RemovedBody787_246 : StackLang.HolProg 64 :=
.seq RemovedBody787_222 RemovedBody787_245

def RemovedBody787_247 : StackLang.HolProg 64 :=
.seq RemovedBody787_221 RemovedBody787_246

def RemovedBody787_248 : StackLang.HolProg 64 :=
.seq RemovedBody787_220 RemovedBody787_247

def RemovedBody787_249 : StackLang.HolProg 64 :=
.seq RemovedBody787_191 RemovedBody787_248

def RemovedBody787_250 : StackLang.HolProg 64 :=
.seq RemovedBody787_188 RemovedBody787_249

def RemovedBody787_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody787_259 : StackLang.HolProg 64 :=
.seq RemovedBody787_257 RemovedBody787_258

def RemovedBody787_260 : StackLang.HolProg 64 :=
.seq RemovedBody787_256 RemovedBody787_259

def RemovedBody787_261 : StackLang.HolProg 64 :=
.seq RemovedBody787_255 RemovedBody787_260

def RemovedBody787_262 : StackLang.HolProg 64 :=
.seq RemovedBody787_254 RemovedBody787_261

def RemovedBody787_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_264 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_262 RemovedBody787_263

def RemovedBody787_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody787_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 144#64)))

def RemovedBody787_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_273 : StackLang.HolProg 64 :=
.seq RemovedBody787_271 RemovedBody787_272

def RemovedBody787_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3646#64)

def RemovedBody787_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_277 : StackLang.HolProg 64 :=
.seq RemovedBody787_275 RemovedBody787_276

def RemovedBody787_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_281 : StackLang.HolProg 64 :=
.seq RemovedBody787_279 RemovedBody787_280

def RemovedBody787_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_283 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_281 RemovedBody787_282

def RemovedBody787_284 : StackLang.HolProg 64 :=
.seq RemovedBody787_278 RemovedBody787_283

def RemovedBody787_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 9

def RemovedBody787_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_294 : StackLang.HolProg 64 :=
.seq RemovedBody787_292 RemovedBody787_293

def RemovedBody787_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_296 : StackLang.HolProg 64 :=
.seq RemovedBody787_294 RemovedBody787_295

def RemovedBody787_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_298 : StackLang.HolProg 64 :=
.seq RemovedBody787_296 RemovedBody787_297

def RemovedBody787_299 : StackLang.HolProg 64 :=
.seq RemovedBody787_291 RemovedBody787_298

def RemovedBody787_300 : StackLang.HolProg 64 :=
.seq RemovedBody787_290 RemovedBody787_299

def RemovedBody787_301 : StackLang.HolProg 64 :=
.seq RemovedBody787_289 RemovedBody787_300

def RemovedBody787_302 : StackLang.HolProg 64 :=
.seq RemovedBody787_288 RemovedBody787_301

def RemovedBody787_303 : StackLang.HolProg 64 :=
.seq RemovedBody787_287 RemovedBody787_302

def RemovedBody787_304 : StackLang.HolProg 64 :=
.seq RemovedBody787_286 RemovedBody787_303

def RemovedBody787_305 : StackLang.HolProg 64 :=
.seq RemovedBody787_285 RemovedBody787_304

def RemovedBody787_306 : StackLang.HolProg 64 :=
.seq RemovedBody787_284 RemovedBody787_305

def RemovedBody787_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_316 : StackLang.HolProg 64 :=
.seq RemovedBody787_314 RemovedBody787_315

def RemovedBody787_317 : StackLang.HolProg 64 :=
.seq RemovedBody787_313 RemovedBody787_316

def RemovedBody787_318 : StackLang.HolProg 64 :=
.seq RemovedBody787_312 RemovedBody787_317

def RemovedBody787_319 : StackLang.HolProg 64 :=
.seq RemovedBody787_311 RemovedBody787_318

def RemovedBody787_320 : StackLang.HolProg 64 :=
.seq RemovedBody787_310 RemovedBody787_319

def RemovedBody787_321 : StackLang.HolProg 64 :=
.seq RemovedBody787_309 RemovedBody787_320

def RemovedBody787_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_324 : StackLang.HolProg 64 :=
.seq RemovedBody787_322 RemovedBody787_323

def RemovedBody787_325 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_326 : StackLang.HolProg 64 :=
.seq RemovedBody787_324 RemovedBody787_325

def RemovedBody787_327 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_321, 0, 787, 8)) (Sum.inl 727) (some (RemovedBody787_326, 787, 9))

def RemovedBody787_328 : StackLang.HolProg 64 :=
.seq RemovedBody787_308 RemovedBody787_327

def RemovedBody787_329 : StackLang.HolProg 64 :=
.seq RemovedBody787_307 RemovedBody787_328

def RemovedBody787_330 : StackLang.HolProg 64 :=
.seq RemovedBody787_306 RemovedBody787_329

def RemovedBody787_331 : StackLang.HolProg 64 :=
.seq RemovedBody787_277 RemovedBody787_330

def RemovedBody787_332 : StackLang.HolProg 64 :=
.seq RemovedBody787_274 RemovedBody787_331

def RemovedBody787_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody787_341 : StackLang.HolProg 64 :=
.seq RemovedBody787_339 RemovedBody787_340

def RemovedBody787_342 : StackLang.HolProg 64 :=
.seq RemovedBody787_338 RemovedBody787_341

def RemovedBody787_343 : StackLang.HolProg 64 :=
.seq RemovedBody787_337 RemovedBody787_342

def RemovedBody787_344 : StackLang.HolProg 64 :=
.seq RemovedBody787_336 RemovedBody787_343

def RemovedBody787_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_346 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_344 RemovedBody787_345

def RemovedBody787_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody787_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_352 : StackLang.HolProg 64 :=
.seq RemovedBody787_350 RemovedBody787_351

def RemovedBody787_353 : StackLang.HolProg 64 :=
.seq RemovedBody787_349 RemovedBody787_352

def RemovedBody787_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3647#64)

def RemovedBody787_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_357 : StackLang.HolProg 64 :=
.seq RemovedBody787_355 RemovedBody787_356

def RemovedBody787_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_361 : StackLang.HolProg 64 :=
.seq RemovedBody787_359 RemovedBody787_360

def RemovedBody787_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_363 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_361 RemovedBody787_362

def RemovedBody787_364 : StackLang.HolProg 64 :=
.seq RemovedBody787_358 RemovedBody787_363

def RemovedBody787_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 11

def RemovedBody787_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_374 : StackLang.HolProg 64 :=
.seq RemovedBody787_372 RemovedBody787_373

def RemovedBody787_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_376 : StackLang.HolProg 64 :=
.seq RemovedBody787_374 RemovedBody787_375

def RemovedBody787_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_378 : StackLang.HolProg 64 :=
.seq RemovedBody787_376 RemovedBody787_377

def RemovedBody787_379 : StackLang.HolProg 64 :=
.seq RemovedBody787_371 RemovedBody787_378

def RemovedBody787_380 : StackLang.HolProg 64 :=
.seq RemovedBody787_370 RemovedBody787_379

def RemovedBody787_381 : StackLang.HolProg 64 :=
.seq RemovedBody787_369 RemovedBody787_380

def RemovedBody787_382 : StackLang.HolProg 64 :=
.seq RemovedBody787_368 RemovedBody787_381

def RemovedBody787_383 : StackLang.HolProg 64 :=
.seq RemovedBody787_367 RemovedBody787_382

def RemovedBody787_384 : StackLang.HolProg 64 :=
.seq RemovedBody787_366 RemovedBody787_383

def RemovedBody787_385 : StackLang.HolProg 64 :=
.seq RemovedBody787_365 RemovedBody787_384

def RemovedBody787_386 : StackLang.HolProg 64 :=
.seq RemovedBody787_364 RemovedBody787_385

def RemovedBody787_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_395 : StackLang.HolProg 64 :=
.seq RemovedBody787_393 RemovedBody787_394

def RemovedBody787_396 : StackLang.HolProg 64 :=
.seq RemovedBody787_392 RemovedBody787_395

def RemovedBody787_397 : StackLang.HolProg 64 :=
.seq RemovedBody787_391 RemovedBody787_396

def RemovedBody787_398 : StackLang.HolProg 64 :=
.seq RemovedBody787_390 RemovedBody787_397

def RemovedBody787_399 : StackLang.HolProg 64 :=
.seq RemovedBody787_389 RemovedBody787_398

def RemovedBody787_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_401 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_402 : StackLang.HolProg 64 :=
.seq RemovedBody787_400 RemovedBody787_401

def RemovedBody787_403 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_399, 0, 787, 10)) (Sum.inl 732) (some (RemovedBody787_402, 787, 11))

def RemovedBody787_404 : StackLang.HolProg 64 :=
.seq RemovedBody787_388 RemovedBody787_403

def RemovedBody787_405 : StackLang.HolProg 64 :=
.seq RemovedBody787_387 RemovedBody787_404

def RemovedBody787_406 : StackLang.HolProg 64 :=
.seq RemovedBody787_386 RemovedBody787_405

def RemovedBody787_407 : StackLang.HolProg 64 :=
.seq RemovedBody787_357 RemovedBody787_406

def RemovedBody787_408 : StackLang.HolProg 64 :=
.seq RemovedBody787_354 RemovedBody787_407

def RemovedBody787_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody787_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_414 : StackLang.HolProg 64 :=
.seq RemovedBody787_412 RemovedBody787_413

def RemovedBody787_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3648#64)

def RemovedBody787_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_418 : StackLang.HolProg 64 :=
.seq RemovedBody787_416 RemovedBody787_417

def RemovedBody787_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_422 : StackLang.HolProg 64 :=
.seq RemovedBody787_420 RemovedBody787_421

def RemovedBody787_423 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_424 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_422 RemovedBody787_423

def RemovedBody787_425 : StackLang.HolProg 64 :=
.seq RemovedBody787_419 RemovedBody787_424

def RemovedBody787_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_427 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 13

def RemovedBody787_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_435 : StackLang.HolProg 64 :=
.seq RemovedBody787_433 RemovedBody787_434

def RemovedBody787_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_437 : StackLang.HolProg 64 :=
.seq RemovedBody787_435 RemovedBody787_436

def RemovedBody787_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_439 : StackLang.HolProg 64 :=
.seq RemovedBody787_437 RemovedBody787_438

def RemovedBody787_440 : StackLang.HolProg 64 :=
.seq RemovedBody787_432 RemovedBody787_439

def RemovedBody787_441 : StackLang.HolProg 64 :=
.seq RemovedBody787_431 RemovedBody787_440

def RemovedBody787_442 : StackLang.HolProg 64 :=
.seq RemovedBody787_430 RemovedBody787_441

def RemovedBody787_443 : StackLang.HolProg 64 :=
.seq RemovedBody787_429 RemovedBody787_442

def RemovedBody787_444 : StackLang.HolProg 64 :=
.seq RemovedBody787_428 RemovedBody787_443

def RemovedBody787_445 : StackLang.HolProg 64 :=
.seq RemovedBody787_427 RemovedBody787_444

def RemovedBody787_446 : StackLang.HolProg 64 :=
.seq RemovedBody787_426 RemovedBody787_445

def RemovedBody787_447 : StackLang.HolProg 64 :=
.seq RemovedBody787_425 RemovedBody787_446

def RemovedBody787_448 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_449 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_450 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_451 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_452 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_453 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_454 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody787_455 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_456 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_457 : StackLang.HolProg 64 :=
.seq RemovedBody787_455 RemovedBody787_456

def RemovedBody787_458 : StackLang.HolProg 64 :=
.seq RemovedBody787_454 RemovedBody787_457

def RemovedBody787_459 : StackLang.HolProg 64 :=
.seq RemovedBody787_453 RemovedBody787_458

def RemovedBody787_460 : StackLang.HolProg 64 :=
.seq RemovedBody787_452 RemovedBody787_459

def RemovedBody787_461 : StackLang.HolProg 64 :=
.seq RemovedBody787_451 RemovedBody787_460

def RemovedBody787_462 : StackLang.HolProg 64 :=
.seq RemovedBody787_450 RemovedBody787_461

def RemovedBody787_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_465 : StackLang.HolProg 64 :=
.seq RemovedBody787_463 RemovedBody787_464

def RemovedBody787_466 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_467 : StackLang.HolProg 64 :=
.seq RemovedBody787_465 RemovedBody787_466

def RemovedBody787_468 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_462, 0, 787, 12)) (Sum.inl 732) (some (RemovedBody787_467, 787, 13))

def RemovedBody787_469 : StackLang.HolProg 64 :=
.seq RemovedBody787_449 RemovedBody787_468

def RemovedBody787_470 : StackLang.HolProg 64 :=
.seq RemovedBody787_448 RemovedBody787_469

def RemovedBody787_471 : StackLang.HolProg 64 :=
.seq RemovedBody787_447 RemovedBody787_470

def RemovedBody787_472 : StackLang.HolProg 64 :=
.seq RemovedBody787_418 RemovedBody787_471

def RemovedBody787_473 : StackLang.HolProg 64 :=
.seq RemovedBody787_415 RemovedBody787_472

def RemovedBody787_474 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_475 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_476 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody787_477 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_478 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody787_479 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_480 : StackLang.HolProg 64 :=
.seq RemovedBody787_478 RemovedBody787_479

def RemovedBody787_481 : StackLang.HolProg 64 :=
.seq RemovedBody787_477 RemovedBody787_480

def RemovedBody787_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_483 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody787_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_485 : StackLang.HolProg 64 :=
.seq RemovedBody787_483 RemovedBody787_484

def RemovedBody787_486 : StackLang.HolProg 64 :=
.seq RemovedBody787_482 RemovedBody787_485

def RemovedBody787_487 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_481 RemovedBody787_486

def RemovedBody787_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody787_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody787_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_494 : StackLang.HolProg 64 :=
.seq RemovedBody787_492 RemovedBody787_493

def RemovedBody787_495 : StackLang.HolProg 64 :=
.seq RemovedBody787_491 RemovedBody787_494

def RemovedBody787_496 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_497 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody787_498 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_499 : StackLang.HolProg 64 :=
.seq RemovedBody787_497 RemovedBody787_498

def RemovedBody787_500 : StackLang.HolProg 64 :=
.seq RemovedBody787_496 RemovedBody787_499

def RemovedBody787_501 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody787_495 RemovedBody787_500

def RemovedBody787_502 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_503 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_504 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody787_505 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_506 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody787_507 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_508 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_509 : StackLang.HolProg 64 :=
.seq RemovedBody787_507 RemovedBody787_508

def RemovedBody787_510 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_511 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3649#64)

def RemovedBody787_512 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_513 : StackLang.HolProg 64 :=
.seq RemovedBody787_511 RemovedBody787_512

def RemovedBody787_514 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_515 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_516 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_517 : StackLang.HolProg 64 :=
.seq RemovedBody787_515 RemovedBody787_516

def RemovedBody787_518 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_519 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_517 RemovedBody787_518

def RemovedBody787_520 : StackLang.HolProg 64 :=
.seq RemovedBody787_514 RemovedBody787_519

def RemovedBody787_521 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_522 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_523 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 15

def RemovedBody787_524 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_525 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_526 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_527 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_528 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_529 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_530 : StackLang.HolProg 64 :=
.seq RemovedBody787_528 RemovedBody787_529

def RemovedBody787_531 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_532 : StackLang.HolProg 64 :=
.seq RemovedBody787_530 RemovedBody787_531

def RemovedBody787_533 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_534 : StackLang.HolProg 64 :=
.seq RemovedBody787_532 RemovedBody787_533

def RemovedBody787_535 : StackLang.HolProg 64 :=
.seq RemovedBody787_527 RemovedBody787_534

def RemovedBody787_536 : StackLang.HolProg 64 :=
.seq RemovedBody787_526 RemovedBody787_535

def RemovedBody787_537 : StackLang.HolProg 64 :=
.seq RemovedBody787_525 RemovedBody787_536

def RemovedBody787_538 : StackLang.HolProg 64 :=
.seq RemovedBody787_524 RemovedBody787_537

def RemovedBody787_539 : StackLang.HolProg 64 :=
.seq RemovedBody787_523 RemovedBody787_538

def RemovedBody787_540 : StackLang.HolProg 64 :=
.seq RemovedBody787_522 RemovedBody787_539

def RemovedBody787_541 : StackLang.HolProg 64 :=
.seq RemovedBody787_521 RemovedBody787_540

def RemovedBody787_542 : StackLang.HolProg 64 :=
.seq RemovedBody787_520 RemovedBody787_541

def RemovedBody787_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_544 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_545 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_546 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_547 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_548 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_549 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_550 : StackLang.HolProg 64 :=
.seq RemovedBody787_548 RemovedBody787_549

def RemovedBody787_551 : StackLang.HolProg 64 :=
.seq RemovedBody787_547 RemovedBody787_550

def RemovedBody787_552 : StackLang.HolProg 64 :=
.seq RemovedBody787_546 RemovedBody787_551

def RemovedBody787_553 : StackLang.HolProg 64 :=
.seq RemovedBody787_545 RemovedBody787_552

def RemovedBody787_554 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_555 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_556 : StackLang.HolProg 64 :=
.seq RemovedBody787_554 RemovedBody787_555

def RemovedBody787_557 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_553, 0, 787, 14)) (Sum.inl 730) (some (RemovedBody787_556, 787, 15))

def RemovedBody787_558 : StackLang.HolProg 64 :=
.seq RemovedBody787_544 RemovedBody787_557

def RemovedBody787_559 : StackLang.HolProg 64 :=
.seq RemovedBody787_543 RemovedBody787_558

def RemovedBody787_560 : StackLang.HolProg 64 :=
.seq RemovedBody787_542 RemovedBody787_559

def RemovedBody787_561 : StackLang.HolProg 64 :=
.seq RemovedBody787_513 RemovedBody787_560

def RemovedBody787_562 : StackLang.HolProg 64 :=
.seq RemovedBody787_510 RemovedBody787_561

def RemovedBody787_563 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_564 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody787_565 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_566 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody787_567 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody787_568 : StackLang.HolProg 64 :=
.seq RemovedBody787_566 RemovedBody787_567

def RemovedBody787_569 : StackLang.HolProg 64 :=
.seq RemovedBody787_565 RemovedBody787_568

def RemovedBody787_570 : StackLang.HolProg 64 :=
.seq RemovedBody787_564 RemovedBody787_569

def RemovedBody787_571 : StackLang.HolProg 64 :=
.seq RemovedBody787_563 RemovedBody787_570

def RemovedBody787_572 : StackLang.HolProg 64 :=
.seq RemovedBody787_562 RemovedBody787_571

def RemovedBody787_573 : StackLang.HolProg 64 :=
.seq RemovedBody787_509 RemovedBody787_572

def RemovedBody787_574 : StackLang.HolProg 64 :=
.seq RemovedBody787_506 RemovedBody787_573

def RemovedBody787_575 : StackLang.HolProg 64 :=
.seq RemovedBody787_505 RemovedBody787_574

def RemovedBody787_576 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_577 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody787_575 RemovedBody787_576

def RemovedBody787_578 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_579 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_580 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody787_581 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_582 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_583 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3650#64)

def RemovedBody787_584 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_585 : StackLang.HolProg 64 :=
.seq RemovedBody787_583 RemovedBody787_584

def RemovedBody787_586 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_587 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_588 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_589 : StackLang.HolProg 64 :=
.seq RemovedBody787_587 RemovedBody787_588

def RemovedBody787_590 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_591 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_589 RemovedBody787_590

def RemovedBody787_592 : StackLang.HolProg 64 :=
.seq RemovedBody787_586 RemovedBody787_591

def RemovedBody787_593 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody787_594 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody787_595 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 787 17

def RemovedBody787_596 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody787_597 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_598 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_599 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_600 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody787_601 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody787_602 : StackLang.HolProg 64 :=
.seq RemovedBody787_600 RemovedBody787_601

def RemovedBody787_603 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody787_604 : StackLang.HolProg 64 :=
.seq RemovedBody787_602 RemovedBody787_603

def RemovedBody787_605 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_606 : StackLang.HolProg 64 :=
.seq RemovedBody787_604 RemovedBody787_605

def RemovedBody787_607 : StackLang.HolProg 64 :=
.seq RemovedBody787_599 RemovedBody787_606

def RemovedBody787_608 : StackLang.HolProg 64 :=
.seq RemovedBody787_598 RemovedBody787_607

def RemovedBody787_609 : StackLang.HolProg 64 :=
.seq RemovedBody787_597 RemovedBody787_608

def RemovedBody787_610 : StackLang.HolProg 64 :=
.seq RemovedBody787_596 RemovedBody787_609

def RemovedBody787_611 : StackLang.HolProg 64 :=
.seq RemovedBody787_595 RemovedBody787_610

def RemovedBody787_612 : StackLang.HolProg 64 :=
.seq RemovedBody787_594 RemovedBody787_611

def RemovedBody787_613 : StackLang.HolProg 64 :=
.seq RemovedBody787_593 RemovedBody787_612

def RemovedBody787_614 : StackLang.HolProg 64 :=
.seq RemovedBody787_592 RemovedBody787_613

def RemovedBody787_615 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_616 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_617 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_618 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_619 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody787_620 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody787_621 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_622 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_623 : StackLang.HolProg 64 :=
.seq RemovedBody787_621 RemovedBody787_622

def RemovedBody787_624 : StackLang.HolProg 64 :=
.seq RemovedBody787_620 RemovedBody787_623

def RemovedBody787_625 : StackLang.HolProg 64 :=
.seq RemovedBody787_619 RemovedBody787_624

def RemovedBody787_626 : StackLang.HolProg 64 :=
.seq RemovedBody787_618 RemovedBody787_625

def RemovedBody787_627 : StackLang.HolProg 64 :=
.seq RemovedBody787_617 RemovedBody787_626

def RemovedBody787_628 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody787_629 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody787_630 : StackLang.HolProg 64 :=
.seq RemovedBody787_628 RemovedBody787_629

def RemovedBody787_631 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody787_632 : StackLang.HolProg 64 :=
.seq RemovedBody787_630 RemovedBody787_631

def RemovedBody787_633 : StackLang.HolProg 64 :=
.call (some (RemovedBody787_627, 0, 787, 16)) (Sum.inl 731) (some (RemovedBody787_632, 787, 17))

def RemovedBody787_634 : StackLang.HolProg 64 :=
.seq RemovedBody787_616 RemovedBody787_633

def RemovedBody787_635 : StackLang.HolProg 64 :=
.seq RemovedBody787_615 RemovedBody787_634

def RemovedBody787_636 : StackLang.HolProg 64 :=
.seq RemovedBody787_614 RemovedBody787_635

def RemovedBody787_637 : StackLang.HolProg 64 :=
.seq RemovedBody787_585 RemovedBody787_636

def RemovedBody787_638 : StackLang.HolProg 64 :=
.seq RemovedBody787_582 RemovedBody787_637

def RemovedBody787_639 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_640 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody787_641 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody787_642 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_643 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_644 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody787_645 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody787_646 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody787_647 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody787_648 : StackLang.HolProg 64 :=
.seq RemovedBody787_646 RemovedBody787_647

def RemovedBody787_649 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody787_650 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody787_648 RemovedBody787_649

def RemovedBody787_651 : StackLang.HolProg 64 :=
.seq RemovedBody787_645 RemovedBody787_650

def RemovedBody787_652 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 786

def RemovedBody787_653 : StackLang.HolProg 64 :=
.seq RemovedBody787_651 RemovedBody787_652

def RemovedBody787_654 : StackLang.HolProg 64 :=
.seq RemovedBody787_644 RemovedBody787_653

def RemovedBody787_655 : StackLang.HolProg 64 :=
.seq RemovedBody787_643 RemovedBody787_654

def RemovedBody787_656 : StackLang.HolProg 64 :=
.seq RemovedBody787_642 RemovedBody787_655

def RemovedBody787_657 : StackLang.HolProg 64 :=
.seq RemovedBody787_641 RemovedBody787_656

def RemovedBody787_658 : StackLang.HolProg 64 :=
.seq RemovedBody787_640 RemovedBody787_657

def RemovedBody787_659 : StackLang.HolProg 64 :=
.seq RemovedBody787_639 RemovedBody787_658

def RemovedBody787_660 : StackLang.HolProg 64 :=
.seq RemovedBody787_638 RemovedBody787_659

def RemovedBody787_661 : StackLang.HolProg 64 :=
.seq RemovedBody787_581 RemovedBody787_660

def RemovedBody787_662 : StackLang.HolProg 64 :=
.seq RemovedBody787_580 RemovedBody787_661

def RemovedBody787_663 : StackLang.HolProg 64 :=
.seq RemovedBody787_579 RemovedBody787_662

def RemovedBody787_664 : StackLang.HolProg 64 :=
.seq RemovedBody787_578 RemovedBody787_663

def RemovedBody787_665 : StackLang.HolProg 64 :=
.seq RemovedBody787_577 RemovedBody787_664

def RemovedBody787_666 : StackLang.HolProg 64 :=
.seq RemovedBody787_504 RemovedBody787_665

def RemovedBody787_667 : StackLang.HolProg 64 :=
.seq RemovedBody787_503 RemovedBody787_666

def RemovedBody787_668 : StackLang.HolProg 64 :=
.seq RemovedBody787_502 RemovedBody787_667

def RemovedBody787_669 : StackLang.HolProg 64 :=
.seq RemovedBody787_501 RemovedBody787_668

def RemovedBody787_670 : StackLang.HolProg 64 :=
.seq RemovedBody787_490 RemovedBody787_669

def RemovedBody787_671 : StackLang.HolProg 64 :=
.seq RemovedBody787_489 RemovedBody787_670

def RemovedBody787_672 : StackLang.HolProg 64 :=
.seq RemovedBody787_488 RemovedBody787_671

def RemovedBody787_673 : StackLang.HolProg 64 :=
.seq RemovedBody787_487 RemovedBody787_672

def RemovedBody787_674 : StackLang.HolProg 64 :=
.seq RemovedBody787_476 RemovedBody787_673

def RemovedBody787_675 : StackLang.HolProg 64 :=
.seq RemovedBody787_475 RemovedBody787_674

def RemovedBody787_676 : StackLang.HolProg 64 :=
.seq RemovedBody787_474 RemovedBody787_675

def RemovedBody787_677 : StackLang.HolProg 64 :=
.seq RemovedBody787_473 RemovedBody787_676

def RemovedBody787_678 : StackLang.HolProg 64 :=
.seq RemovedBody787_414 RemovedBody787_677

def RemovedBody787_679 : StackLang.HolProg 64 :=
.seq RemovedBody787_411 RemovedBody787_678

def RemovedBody787_680 : StackLang.HolProg 64 :=
.seq RemovedBody787_410 RemovedBody787_679

def RemovedBody787_681 : StackLang.HolProg 64 :=
.seq RemovedBody787_409 RemovedBody787_680

def RemovedBody787_682 : StackLang.HolProg 64 :=
.seq RemovedBody787_408 RemovedBody787_681

def RemovedBody787_683 : StackLang.HolProg 64 :=
.seq RemovedBody787_353 RemovedBody787_682

def RemovedBody787_684 : StackLang.HolProg 64 :=
.seq RemovedBody787_348 RemovedBody787_683

def RemovedBody787_685 : StackLang.HolProg 64 :=
.seq RemovedBody787_347 RemovedBody787_684

def RemovedBody787_686 : StackLang.HolProg 64 :=
.seq RemovedBody787_346 RemovedBody787_685

def RemovedBody787_687 : StackLang.HolProg 64 :=
.seq RemovedBody787_335 RemovedBody787_686

def RemovedBody787_688 : StackLang.HolProg 64 :=
.seq RemovedBody787_334 RemovedBody787_687

def RemovedBody787_689 : StackLang.HolProg 64 :=
.seq RemovedBody787_333 RemovedBody787_688

def RemovedBody787_690 : StackLang.HolProg 64 :=
.seq RemovedBody787_332 RemovedBody787_689

def RemovedBody787_691 : StackLang.HolProg 64 :=
.seq RemovedBody787_273 RemovedBody787_690

def RemovedBody787_692 : StackLang.HolProg 64 :=
.seq RemovedBody787_270 RemovedBody787_691

def RemovedBody787_693 : StackLang.HolProg 64 :=
.seq RemovedBody787_269 RemovedBody787_692

def RemovedBody787_694 : StackLang.HolProg 64 :=
.seq RemovedBody787_268 RemovedBody787_693

def RemovedBody787_695 : StackLang.HolProg 64 :=
.seq RemovedBody787_267 RemovedBody787_694

def RemovedBody787_696 : StackLang.HolProg 64 :=
.seq RemovedBody787_266 RemovedBody787_695

def RemovedBody787_697 : StackLang.HolProg 64 :=
.seq RemovedBody787_265 RemovedBody787_696

def RemovedBody787_698 : StackLang.HolProg 64 :=
.seq RemovedBody787_264 RemovedBody787_697

def RemovedBody787_699 : StackLang.HolProg 64 :=
.seq RemovedBody787_253 RemovedBody787_698

def RemovedBody787_700 : StackLang.HolProg 64 :=
.seq RemovedBody787_252 RemovedBody787_699

def RemovedBody787_701 : StackLang.HolProg 64 :=
.seq RemovedBody787_251 RemovedBody787_700

def RemovedBody787_702 : StackLang.HolProg 64 :=
.seq RemovedBody787_250 RemovedBody787_701

def RemovedBody787_703 : StackLang.HolProg 64 :=
.seq RemovedBody787_187 RemovedBody787_702

def RemovedBody787_704 : StackLang.HolProg 64 :=
.seq RemovedBody787_182 RemovedBody787_703

def RemovedBody787_705 : StackLang.HolProg 64 :=
.seq RemovedBody787_181 RemovedBody787_704

def RemovedBody787_706 : StackLang.HolProg 64 :=
.seq RemovedBody787_180 RemovedBody787_705

def RemovedBody787_707 : StackLang.HolProg 64 :=
.seq RemovedBody787_179 RemovedBody787_706

def RemovedBody787_708 : StackLang.HolProg 64 :=
.seq RemovedBody787_178 RemovedBody787_707

def RemovedBody787_709 : StackLang.HolProg 64 :=
.seq RemovedBody787_177 RemovedBody787_708

def RemovedBody787_710 : StackLang.HolProg 64 :=
.seq RemovedBody787_176 RemovedBody787_709

def RemovedBody787_711 : StackLang.HolProg 64 :=
.seq RemovedBody787_165 RemovedBody787_710

def RemovedBody787_712 : StackLang.HolProg 64 :=
.seq RemovedBody787_164 RemovedBody787_711

def RemovedBody787_713 : StackLang.HolProg 64 :=
.seq RemovedBody787_163 RemovedBody787_712

def RemovedBody787_714 : StackLang.HolProg 64 :=
.seq RemovedBody787_162 RemovedBody787_713

def RemovedBody787_715 : StackLang.HolProg 64 :=
.seq RemovedBody787_99 RemovedBody787_714

def RemovedBody787_716 : StackLang.HolProg 64 :=
.seq RemovedBody787_94 RemovedBody787_715

def RemovedBody787_717 : StackLang.HolProg 64 :=
.seq RemovedBody787_93 RemovedBody787_716

def RemovedBody787_718 : StackLang.HolProg 64 :=
.seq RemovedBody787_92 RemovedBody787_717

def RemovedBody787_719 : StackLang.HolProg 64 :=
.seq RemovedBody787_91 RemovedBody787_718

def RemovedBody787_720 : StackLang.HolProg 64 :=
.seq RemovedBody787_90 RemovedBody787_719

def RemovedBody787_721 : StackLang.HolProg 64 :=
.seq RemovedBody787_89 RemovedBody787_720

def RemovedBody787_722 : StackLang.HolProg 64 :=
.seq RemovedBody787_88 RemovedBody787_721

def RemovedBody787_723 : StackLang.HolProg 64 :=
.seq RemovedBody787_77 RemovedBody787_722

def RemovedBody787_724 : StackLang.HolProg 64 :=
.seq RemovedBody787_76 RemovedBody787_723

def RemovedBody787_725 : StackLang.HolProg 64 :=
.seq RemovedBody787_75 RemovedBody787_724

def RemovedBody787_726 : StackLang.HolProg 64 :=
.seq RemovedBody787_74 RemovedBody787_725

def RemovedBody787_727 : StackLang.HolProg 64 :=
.seq RemovedBody787_11 RemovedBody787_726

def RemovedBody787_728 : StackLang.HolProg 64 :=
.seq RemovedBody787_6 RemovedBody787_727

def Removed787 : Nat × StackLang.HolProg 64 := (787, RemovedBody787_728)
theorem Removed787_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc787 = Removed787 := by
  kernel_rfl
#print axioms Removed787_eq
end InitECandidate.Proofs.BackendStages
