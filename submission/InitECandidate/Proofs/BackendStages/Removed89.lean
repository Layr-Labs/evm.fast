import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc89
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody89_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody89_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody89_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody89_3 : StackLang.HolProg 64 :=
.seq RemovedBody89_1 RemovedBody89_2

def RemovedBody89_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody89_3 RemovedBody89_4

def RemovedBody89_6 : StackLang.HolProg 64 :=
.seq RemovedBody89_0 RemovedBody89_5

def RemovedBody89_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody89_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody89_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody89_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody89_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_14 : StackLang.HolProg 64 :=
.seq RemovedBody89_12 RemovedBody89_13

def RemovedBody89_15 : StackLang.HolProg 64 :=
.seq RemovedBody89_11 RemovedBody89_14

def RemovedBody89_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 35#64)

def RemovedBody89_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_19 : StackLang.HolProg 64 :=
.seq RemovedBody89_17 RemovedBody89_18

def RemovedBody89_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody89_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody89_23 : StackLang.HolProg 64 :=
.seq RemovedBody89_21 RemovedBody89_22

def RemovedBody89_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody89_23 RemovedBody89_24

def RemovedBody89_26 : StackLang.HolProg 64 :=
.seq RemovedBody89_20 RemovedBody89_25

def RemovedBody89_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody89_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 3

def RemovedBody89_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody89_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody89_36 : StackLang.HolProg 64 :=
.seq RemovedBody89_34 RemovedBody89_35

def RemovedBody89_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody89_38 : StackLang.HolProg 64 :=
.seq RemovedBody89_36 RemovedBody89_37

def RemovedBody89_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_40 : StackLang.HolProg 64 :=
.seq RemovedBody89_38 RemovedBody89_39

def RemovedBody89_41 : StackLang.HolProg 64 :=
.seq RemovedBody89_33 RemovedBody89_40

def RemovedBody89_42 : StackLang.HolProg 64 :=
.seq RemovedBody89_32 RemovedBody89_41

def RemovedBody89_43 : StackLang.HolProg 64 :=
.seq RemovedBody89_31 RemovedBody89_42

def RemovedBody89_44 : StackLang.HolProg 64 :=
.seq RemovedBody89_30 RemovedBody89_43

def RemovedBody89_45 : StackLang.HolProg 64 :=
.seq RemovedBody89_29 RemovedBody89_44

def RemovedBody89_46 : StackLang.HolProg 64 :=
.seq RemovedBody89_28 RemovedBody89_45

def RemovedBody89_47 : StackLang.HolProg 64 :=
.seq RemovedBody89_27 RemovedBody89_46

def RemovedBody89_48 : StackLang.HolProg 64 :=
.seq RemovedBody89_26 RemovedBody89_47

def RemovedBody89_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody89_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_58 : StackLang.HolProg 64 :=
.seq RemovedBody89_56 RemovedBody89_57

def RemovedBody89_59 : StackLang.HolProg 64 :=
.seq RemovedBody89_55 RemovedBody89_58

def RemovedBody89_60 : StackLang.HolProg 64 :=
.seq RemovedBody89_54 RemovedBody89_59

def RemovedBody89_61 : StackLang.HolProg 64 :=
.seq RemovedBody89_53 RemovedBody89_60

def RemovedBody89_62 : StackLang.HolProg 64 :=
.seq RemovedBody89_52 RemovedBody89_61

def RemovedBody89_63 : StackLang.HolProg 64 :=
.seq RemovedBody89_51 RemovedBody89_62

def RemovedBody89_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_66 : StackLang.HolProg 64 :=
.seq RemovedBody89_64 RemovedBody89_65

def RemovedBody89_67 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody89_68 : StackLang.HolProg 64 :=
.seq RemovedBody89_66 RemovedBody89_67

def RemovedBody89_69 : StackLang.HolProg 64 :=
.call (some (RemovedBody89_63, 0, 89, 2)) (Sum.inl 84) (some (RemovedBody89_68, 89, 3))

def RemovedBody89_70 : StackLang.HolProg 64 :=
.seq RemovedBody89_50 RemovedBody89_69

def RemovedBody89_71 : StackLang.HolProg 64 :=
.seq RemovedBody89_49 RemovedBody89_70

def RemovedBody89_72 : StackLang.HolProg 64 :=
.seq RemovedBody89_48 RemovedBody89_71

def RemovedBody89_73 : StackLang.HolProg 64 :=
.seq RemovedBody89_19 RemovedBody89_72

def RemovedBody89_74 : StackLang.HolProg 64 :=
.seq RemovedBody89_16 RemovedBody89_73

def RemovedBody89_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody89_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody89_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody89_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def RemovedBody89_82 : StackLang.HolProg 64 :=
.seq RemovedBody89_80 RemovedBody89_81

def RemovedBody89_83 : StackLang.HolProg 64 :=
.seq RemovedBody89_79 RemovedBody89_82

def RemovedBody89_84 : StackLang.HolProg 64 :=
.seq RemovedBody89_78 RemovedBody89_83

def RemovedBody89_85 : StackLang.HolProg 64 :=
.seq RemovedBody89_77 RemovedBody89_84

def RemovedBody89_86 : StackLang.HolProg 64 :=
.seq RemovedBody89_76 RemovedBody89_85

def RemovedBody89_87 : StackLang.HolProg 64 :=
.seq RemovedBody89_75 RemovedBody89_86

def RemovedBody89_88 : StackLang.HolProg 64 :=
.seq RemovedBody89_74 RemovedBody89_87

def RemovedBody89_89 : StackLang.HolProg 64 :=
.seq RemovedBody89_15 RemovedBody89_88

def RemovedBody89_90 : StackLang.HolProg 64 :=
.seq RemovedBody89_10 RemovedBody89_89

def RemovedBody89_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody89_92 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody89_90 RemovedBody89_91

def RemovedBody89_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody89_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody89_97 : StackLang.HolProg 64 :=
.seq RemovedBody89_95 RemovedBody89_96

def RemovedBody89_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody89_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_101 : StackLang.HolProg 64 :=
.seq RemovedBody89_99 RemovedBody89_100

def RemovedBody89_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 36#64)

def RemovedBody89_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_105 : StackLang.HolProg 64 :=
.seq RemovedBody89_103 RemovedBody89_104

def RemovedBody89_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody89_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody89_109 : StackLang.HolProg 64 :=
.seq RemovedBody89_107 RemovedBody89_108

def RemovedBody89_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_111 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody89_109 RemovedBody89_110

def RemovedBody89_112 : StackLang.HolProg 64 :=
.seq RemovedBody89_106 RemovedBody89_111

def RemovedBody89_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody89_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 5

def RemovedBody89_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody89_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody89_122 : StackLang.HolProg 64 :=
.seq RemovedBody89_120 RemovedBody89_121

def RemovedBody89_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody89_124 : StackLang.HolProg 64 :=
.seq RemovedBody89_122 RemovedBody89_123

def RemovedBody89_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_126 : StackLang.HolProg 64 :=
.seq RemovedBody89_124 RemovedBody89_125

def RemovedBody89_127 : StackLang.HolProg 64 :=
.seq RemovedBody89_119 RemovedBody89_126

def RemovedBody89_128 : StackLang.HolProg 64 :=
.seq RemovedBody89_118 RemovedBody89_127

def RemovedBody89_129 : StackLang.HolProg 64 :=
.seq RemovedBody89_117 RemovedBody89_128

def RemovedBody89_130 : StackLang.HolProg 64 :=
.seq RemovedBody89_116 RemovedBody89_129

def RemovedBody89_131 : StackLang.HolProg 64 :=
.seq RemovedBody89_115 RemovedBody89_130

def RemovedBody89_132 : StackLang.HolProg 64 :=
.seq RemovedBody89_114 RemovedBody89_131

def RemovedBody89_133 : StackLang.HolProg 64 :=
.seq RemovedBody89_113 RemovedBody89_132

def RemovedBody89_134 : StackLang.HolProg 64 :=
.seq RemovedBody89_112 RemovedBody89_133

def RemovedBody89_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_143 : StackLang.HolProg 64 :=
.seq RemovedBody89_141 RemovedBody89_142

def RemovedBody89_144 : StackLang.HolProg 64 :=
.seq RemovedBody89_140 RemovedBody89_143

def RemovedBody89_145 : StackLang.HolProg 64 :=
.seq RemovedBody89_139 RemovedBody89_144

def RemovedBody89_146 : StackLang.HolProg 64 :=
.seq RemovedBody89_138 RemovedBody89_145

def RemovedBody89_147 : StackLang.HolProg 64 :=
.seq RemovedBody89_137 RemovedBody89_146

def RemovedBody89_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_150 : StackLang.HolProg 64 :=
.seq RemovedBody89_148 RemovedBody89_149

def RemovedBody89_151 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody89_152 : StackLang.HolProg 64 :=
.seq RemovedBody89_150 RemovedBody89_151

def RemovedBody89_153 : StackLang.HolProg 64 :=
.call (some (RemovedBody89_147, 0, 89, 4)) (Sum.inl 88) (some (RemovedBody89_152, 89, 5))

def RemovedBody89_154 : StackLang.HolProg 64 :=
.seq RemovedBody89_136 RemovedBody89_153

def RemovedBody89_155 : StackLang.HolProg 64 :=
.seq RemovedBody89_135 RemovedBody89_154

def RemovedBody89_156 : StackLang.HolProg 64 :=
.seq RemovedBody89_134 RemovedBody89_155

def RemovedBody89_157 : StackLang.HolProg 64 :=
.seq RemovedBody89_105 RemovedBody89_156

def RemovedBody89_158 : StackLang.HolProg 64 :=
.seq RemovedBody89_102 RemovedBody89_157

def RemovedBody89_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody89_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 37#64)

def RemovedBody89_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_166 : StackLang.HolProg 64 :=
.seq RemovedBody89_164 RemovedBody89_165

def RemovedBody89_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody89_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody89_170 : StackLang.HolProg 64 :=
.seq RemovedBody89_168 RemovedBody89_169

def RemovedBody89_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody89_170 RemovedBody89_171

def RemovedBody89_173 : StackLang.HolProg 64 :=
.seq RemovedBody89_167 RemovedBody89_172

def RemovedBody89_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody89_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody89_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 89 7

def RemovedBody89_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody89_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody89_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody89_183 : StackLang.HolProg 64 :=
.seq RemovedBody89_181 RemovedBody89_182

def RemovedBody89_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody89_185 : StackLang.HolProg 64 :=
.seq RemovedBody89_183 RemovedBody89_184

def RemovedBody89_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_187 : StackLang.HolProg 64 :=
.seq RemovedBody89_185 RemovedBody89_186

def RemovedBody89_188 : StackLang.HolProg 64 :=
.seq RemovedBody89_180 RemovedBody89_187

def RemovedBody89_189 : StackLang.HolProg 64 :=
.seq RemovedBody89_179 RemovedBody89_188

def RemovedBody89_190 : StackLang.HolProg 64 :=
.seq RemovedBody89_178 RemovedBody89_189

def RemovedBody89_191 : StackLang.HolProg 64 :=
.seq RemovedBody89_177 RemovedBody89_190

def RemovedBody89_192 : StackLang.HolProg 64 :=
.seq RemovedBody89_176 RemovedBody89_191

def RemovedBody89_193 : StackLang.HolProg 64 :=
.seq RemovedBody89_175 RemovedBody89_192

def RemovedBody89_194 : StackLang.HolProg 64 :=
.seq RemovedBody89_174 RemovedBody89_193

def RemovedBody89_195 : StackLang.HolProg 64 :=
.seq RemovedBody89_173 RemovedBody89_194

def RemovedBody89_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody89_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody89_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody89_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody89_203 : StackLang.HolProg 64 :=
.seq RemovedBody89_201 RemovedBody89_202

def RemovedBody89_204 : StackLang.HolProg 64 :=
.seq RemovedBody89_200 RemovedBody89_203

def RemovedBody89_205 : StackLang.HolProg 64 :=
.seq RemovedBody89_199 RemovedBody89_204

def RemovedBody89_206 : StackLang.HolProg 64 :=
.seq RemovedBody89_198 RemovedBody89_205

def RemovedBody89_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody89_208 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody89_209 : StackLang.HolProg 64 :=
.seq RemovedBody89_207 RemovedBody89_208

def RemovedBody89_210 : StackLang.HolProg 64 :=
.call (some (RemovedBody89_206, 0, 89, 6)) (Sum.inl 88) (some (RemovedBody89_209, 89, 7))

def RemovedBody89_211 : StackLang.HolProg 64 :=
.seq RemovedBody89_197 RemovedBody89_210

def RemovedBody89_212 : StackLang.HolProg 64 :=
.seq RemovedBody89_196 RemovedBody89_211

def RemovedBody89_213 : StackLang.HolProg 64 :=
.seq RemovedBody89_195 RemovedBody89_212

def RemovedBody89_214 : StackLang.HolProg 64 :=
.seq RemovedBody89_166 RemovedBody89_213

def RemovedBody89_215 : StackLang.HolProg 64 :=
.seq RemovedBody89_163 RemovedBody89_214

def RemovedBody89_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody89_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody89_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody89_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody89_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody89_221 : StackLang.HolProg 64 :=
.seq RemovedBody89_219 RemovedBody89_220

def RemovedBody89_222 : StackLang.HolProg 64 :=
.seq RemovedBody89_218 RemovedBody89_221

def RemovedBody89_223 : StackLang.HolProg 64 :=
.seq RemovedBody89_217 RemovedBody89_222

def RemovedBody89_224 : StackLang.HolProg 64 :=
.seq RemovedBody89_216 RemovedBody89_223

def RemovedBody89_225 : StackLang.HolProg 64 :=
.seq RemovedBody89_215 RemovedBody89_224

def RemovedBody89_226 : StackLang.HolProg 64 :=
.seq RemovedBody89_162 RemovedBody89_225

def RemovedBody89_227 : StackLang.HolProg 64 :=
.seq RemovedBody89_161 RemovedBody89_226

def RemovedBody89_228 : StackLang.HolProg 64 :=
.seq RemovedBody89_160 RemovedBody89_227

def RemovedBody89_229 : StackLang.HolProg 64 :=
.seq RemovedBody89_159 RemovedBody89_228

def RemovedBody89_230 : StackLang.HolProg 64 :=
.seq RemovedBody89_158 RemovedBody89_229

def RemovedBody89_231 : StackLang.HolProg 64 :=
.seq RemovedBody89_101 RemovedBody89_230

def RemovedBody89_232 : StackLang.HolProg 64 :=
.seq RemovedBody89_98 RemovedBody89_231

def RemovedBody89_233 : StackLang.HolProg 64 :=
.seq RemovedBody89_97 RemovedBody89_232

def RemovedBody89_234 : StackLang.HolProg 64 :=
.seq RemovedBody89_94 RemovedBody89_233

def RemovedBody89_235 : StackLang.HolProg 64 :=
.seq RemovedBody89_93 RemovedBody89_234

def RemovedBody89_236 : StackLang.HolProg 64 :=
.seq RemovedBody89_92 RemovedBody89_235

def RemovedBody89_237 : StackLang.HolProg 64 :=
.seq RemovedBody89_9 RemovedBody89_236

def RemovedBody89_238 : StackLang.HolProg 64 :=
.seq RemovedBody89_8 RemovedBody89_237

def RemovedBody89_239 : StackLang.HolProg 64 :=
.seq RemovedBody89_7 RemovedBody89_238

def RemovedBody89_240 : StackLang.HolProg 64 :=
.seq RemovedBody89_6 RemovedBody89_239

def Removed89 : Nat × StackLang.HolProg 64 := (89, RemovedBody89_240)
theorem Removed89_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc89 = Removed89 := by
  kernel_rfl
#print axioms Removed89_eq
end InitECandidate.Proofs.BackendStages
